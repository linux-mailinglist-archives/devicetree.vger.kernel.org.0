Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1D2FD483F96
	for <lists+devicetree@lfdr.de>; Tue,  4 Jan 2022 11:06:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230457AbiADKGw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Jan 2022 05:06:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230460AbiADKGw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Jan 2022 05:06:52 -0500
Received: from mail-wm1-x349.google.com (mail-wm1-x349.google.com [IPv6:2a00:1450:4864:20::349])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7170C061784
        for <devicetree@vger.kernel.org>; Tue,  4 Jan 2022 02:06:51 -0800 (PST)
Received: by mail-wm1-x349.google.com with SMTP id j8-20020a05600c1c0800b00346504f5743so2895559wms.6
        for <devicetree@vger.kernel.org>; Tue, 04 Jan 2022 02:06:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=ZF/3kM88eYNmLwiH7enFxPeZPNmlUYuGyJsxSp7W0UQ=;
        b=AO2G9GCmtDI1S0TdgEwc9atBqF6ggMDatPASrXizKs+yt+Yj9b3AsoInVVt1Lvo6M3
         wKYpD03CvKbmKy/WETtinCXSJiYj4eCqKWUpn8w3ilGROMQJTkv4bGw49FWOPmuZlJKG
         LOxsqV8mCinEv81N3CIrucNEijRFQI8DgHVGjKxKeisnYWmJSWJyHLCFrRZw0KT+7rzv
         0GE0yPwzzVikbrF8P7y4FfFpD/F656TYADPFcAail7iqmUUYSi2bpNa8EHGgCPLDzWOd
         J8iz2NkgBd5y8sYUhqcAleuM9GD9R5lGPz2r81A16H/wEmZJziaclsvGlqemZU7EjiiP
         puTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=ZF/3kM88eYNmLwiH7enFxPeZPNmlUYuGyJsxSp7W0UQ=;
        b=IjQhZqGjP5GEHLMAGYKfvWS3xPEPCcSv+CkwPdYGxHkiuQuUSQ4NjfaYAeYG6+Z4vY
         kt66A4VyHmK3HoCaltNqw9DtlJnbx+PASzeOlxNZnvbV6Cchckry82MvS+P6Zw7yVp5N
         uD+lKdjVFUzY6pGfQ9fHp9KRb2Q6PJXZYkjTpykSy6pPe/epUsN6d6QoiH/MXBuUh0PU
         U5fNLsaD5O4JD44UUCy4bcUO6T/o1rEOAqADO8xnde0R4pObvqWfVioKXdJeuc+wdqyV
         B/+siwYK79TPXo6X5fAuMCPo49O9M5i8SRx1dyF5m7tl4loQYjb8tK6JWntYJZB2PxXG
         cZdA==
X-Gm-Message-State: AOAM533toULBAX14FOCKXd+D4SJOdSImLoliiW3jIMmc4tA/5m85b4WH
        cXgdW0oKlM4vaAn/4TmjkESO56egfsslMg==
X-Google-Smtp-Source: ABdhPJxVFY2DF6gdT3LCzjnsR5snRCP7ilJMyLq49qyjawxz4gHA8BB5t6nHJXG7hseAK+SLR3DDBSk08Iv/AQ==
X-Received: from dbrazdil.lon.corp.google.com ([2a00:79e0:d:209:ab7e:2ff0:8fa0:3029])
 (user=dbrazdil job=sendgmr) by 2002:a05:600c:4410:: with SMTP id
 u16mr41101715wmn.46.1641290809819; Tue, 04 Jan 2022 02:06:49 -0800 (PST)
Date:   Tue,  4 Jan 2022 10:06:43 +0000
Message-Id: <20220104100645.1810028-1-dbrazdil@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.34.1.448.ga2b2bfdf31-goog
Subject: [PATCH v6 0/2] Driver for Open Profile for DICE
From:   David Brazdil <dbrazdil@google.com>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Frank Rowand <frowand.list@gmail.com>,
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

The patches are based on top of v5.16-rc8 and can also be found here:
  https://android-kvm.googlesource.com/linux topic/dice_v6

Changes since v5:
  * replaced 'additionalProperties' with 'unevaluatedProperties' in DT YAML

Changes since v4:
  * registered compatible in 'reserved_mem_matches'
  * removed unnecessary DT node, only reserved-memory
  * fixed typos in comments

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
  dt-bindings: reserved-memory: Open Profile for DICE
  misc: open-dice: Add driver to expose DICE data to userspace

 .../reserved-memory/google,open-dice.yaml     |  45 +++++
 drivers/misc/Kconfig                          |  12 ++
 drivers/misc/Makefile                         |   1 +
 drivers/misc/open-dice.c                      | 188 ++++++++++++++++++
 drivers/of/platform.c                         |   1 +
 5 files changed, 247 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/reserved-memory/google,open-dice.yaml
 create mode 100644 drivers/misc/open-dice.c

--
2.34.1.448.ga2b2bfdf31-goog
