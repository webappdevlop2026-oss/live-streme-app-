# LOVE Life — Development Started

Flutter-based Live Streaming Social App (Phase 1 UI foundation).

## Planned
- Android user app: Video Live, Audio Live Rooms, text chat, gifts, games, wallet
- Host dashboard, Agent Panel, Admin Panel, Super Admin Panel
- Backend, streaming SDK, secure authentication, moderation

## Explicitly excluded
- Video Calling (1:1)
- Post Upload / Short Video Upload

## Current status
**UI starter / prototype only**. Actual streams, payments, withdrawals, roles, API, hosting, security, and production release are not implemented yet. Do not use demonstration figures as real balances.

## To run the complete Phase-1 codebase
Upload the provided LOVE_Life_Flutter_Phase1.zip files into this repository, then run:

```powershell
flutter create --platforms=android,web .
flutter pub get
flutter run -d chrome
```

Keep SDK secret keys, server credentials, and client KYC files out of this public repository.
