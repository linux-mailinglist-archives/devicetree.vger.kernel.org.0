Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7C7FC475B57
	for <lists+devicetree@lfdr.de>; Wed, 15 Dec 2021 16:06:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239120AbhLOPEa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Dec 2021 10:04:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234891AbhLOPEa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Dec 2021 10:04:30 -0500
Received: from mail-wm1-x349.google.com (mail-wm1-x349.google.com [IPv6:2a00:1450:4864:20::349])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1864C06173E
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 07:04:29 -0800 (PST)
Received: by mail-wm1-x349.google.com with SMTP id l34-20020a05600c1d2200b00344d34754e4so2040643wms.7
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 07:04:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=3MGyHfMgcDPgZOcSAPfK6ZZutCadJguHKbkaImiBFqE=;
        b=PFgtBLzyo0gvk5ps0K5dpX3B8iNMUCk/TQKc+/zKqY1Lp5Y2yjGCpkxJBCPwKpZ3uZ
         edfiBz87m+3SthpiD5fB+obnysIohqQenOO09mM0JbXVDmF2Ack7A+GQFX9TsHcH4LNL
         rcDwWMOjrzVT2BUn0o3iur5cDZYbd1K3a9o2vUqeTsRZOjfGZ/QLxpr6Ph2ao8iAVXC4
         1Kyk1K4iEE8pSktHwiK+TksjFYSbYMzFsJmfL1kcKt8mbRC1Bp0ERhyyaC8M5YeUp46y
         cxWoMhWAbZig3XqTPoDt9Cs/4CePxJBU0O1+P4Zr+nHNyhVm+T4cprXIkxMYo8ZX4CRo
         zX2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=3MGyHfMgcDPgZOcSAPfK6ZZutCadJguHKbkaImiBFqE=;
        b=a+KsveY6hQ7ENbpHdXKLGx/VO3sfku225MH8uVlFR+vGDKvkggsOXfOlxViNPITCyY
         waj43BxwTA1gSdmapYteYOyWw0juVZWQfybAxpR7DbeCYff6ZGMHzeAgHliDm85HHWrw
         jCOU0X/NWNuVX4/VTAFBNz2RX8eS66RZ0YjtSgm+q9W60nTZwW9IBrM8CxfoCB99jcAD
         Ql59Un9E+VPIPGlj1q6AiXHoysSh2RoqJAnofHmBS5u98hnJCb5+TM1JEx1hR/swsfyU
         4iKikJZoLZP9x+UTc6epPG4VRTzjNm+sWQttTHKeA4GOYvZyN6EwCTNFXhsiLsKM9nuE
         T+gA==
X-Gm-Message-State: AOAM530ndJs0QCZ/WTeia4Iac0xlfO/93kjp2HJxN3cGC+fVvZXIpg8U
        llnP6I93IwvgE99DvYtky+J2HjZfyn7T7Q==
X-Google-Smtp-Source: ABdhPJyZDsajc//ULSpV7ObTDQ9OXdUKVStTQP9CA9fW5Kbwy4QqRdmCLyvPECRmVGECsa4bc7f9XKU23HEzSA==
X-Received: from dbrazdil.lon.corp.google.com ([2a00:79e0:d:209:8505:8095:9f82:42b7])
 (user=dbrazdil job=sendgmr) by 2002:a05:600c:1c8d:: with SMTP id
 k13mr39011wms.0.1639580667628; Wed, 15 Dec 2021 07:04:27 -0800 (PST)
Date:   Wed, 15 Dec 2021 15:04:08 +0000
Message-Id: <20211215150410.1707849-1-dbrazdil@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.34.1.173.g76aa8bc2d0-goog
Subject: [PATCH v4 0/2] Driver for Open Profile for DICE
From:   David Brazdil <dbrazdil@google.com>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        David Brazdil <dbrazdil@google.com>,
        Will Deacon <will@kernel.org>,
        Andrew Scull <ascull@google.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Open Profile for DICE is an open protocol for measured boot compatible
with the Trusted Computing Group's Device Identifier Composition
Engine (DICE) specification. The generated Compound Device Identifier
(CDI) certificates represent the measured hardware/software combination
and can be used by userspace for remote attestation and sealing.

This patchset adds DeviceTree bindings for the DICE device referencing
a reserved memory region containing the CDIs, and a driver that exposes
the memory region to userspace via a misc device.

See https://pigweed.googlesource.com/open-dice for more details.

The patches are based on top of v5.16-rc5 and can also be found here:
  https://android-kvm.googlesource.com/linux topic/dice_v4

Changes since v3:
  * align with semantics of read/write
  * fix kerneldoc warnings
  * fix printf format warnings

Changes since v2:
  * renamed from 'dice' to 'open-dice'
  * replaced ioctls with read/write
  * replaced memzero_explicit with memset
  * allowed multiple instances
  * expanded Kconfig description

Changes since v1:
  * converted to miscdevice
  * all mappings now write-combine to simplify semantics
  * removed atomic state, any attempt at exclusive access
  * simplified wipe, applied on ioctl, not on release
  * fixed ioctl return value

David Brazdil (2):
  dt-bindings: firmware: Add Open Profile for DICE
  misc: open-dice: Add driver to expose DICE data to userspace

 .../bindings/firmware/google,open-dice.yaml   |  51 +++++
 drivers/misc/Kconfig                          |  12 ++
 drivers/misc/Makefile                         |   1 +
 drivers/misc/open-dice.c                      | 197 ++++++++++++++++++
 4 files changed, 261 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/firmware/google,open-dice.yaml
 create mode 100644 drivers/misc/open-dice.c

--
2.34.1.173.g76aa8bc2d0-goog
