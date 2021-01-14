//
//  EditView.swift
//  Scrumdinger
//
//  Created by lingjie on 2020/12/19.
//

import SwiftUI

struct EditView: View {
    @Binding var scrumData: DailyScrum.Data
    @State private var newAttendee = ""
    
    var body: some View {
        List {
            Section(header: Text("Meeting Info")) {
                TextField("Title", text: $scrumData.title)
                HStack {
                    Slider(value: $scrumData.lengthInMinutes, in: 5...30, step: 1.0) { (editing) in
                        
                    } label: {
                        // Text用于VoiceOver
                        Text("Length")
                    }
                    .accessibilityValue(Text("\(Int(scrumData.lengthInMinutes)) minutes"))
                    Spacer()
                    Text("\(Int(scrumData.lengthInMinutes)) minutes")
                        .accessibilityHidden(true)
                }
                ColorPicker("Color", selection: $scrumData.color)
                    .accessibilityLabel(Text("Color Picker"))
            }
            Section(header: Text("Attendees")) {
                ForEach(scrumData.attendees, id: \.self) { attendees in
                    Text(attendees)
                }
                .onDelete(perform: { indexSet in
                    scrumData.attendees.remove(atOffsets: indexSet)
                })
                .onMove(perform: { indices, newOffset in
                    scrumData.attendees.move(fromOffsets: indices, toOffset: newOffset)
                })
                HStack {
                    TextField("New Attendee", text: $newAttendee)
                    Button(action: {
                        withAnimation {
                            scrumData.attendees.append(newAttendee)
                            newAttendee = ""
                        }
                    }, label: {
                        Image(systemName: "plus.circle.fill")
                            .accessibilityLabel(Text("Add attendee"))
                    })
                    .disabled(newAttendee.isEmpty)
                }
            }
        }
        .listStyle(InsetGroupedListStyle())
    }
}

struct EditView_Previews: PreviewProvider {
    static var previews: some View {
        EditView(scrumData: .constant(DailyScrum.data[0].data))
    }
}
