Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3D34F2D7D00
	for <lists+devicetree@lfdr.de>; Fri, 11 Dec 2020 18:38:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2395305AbgLKRgl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Dec 2020 12:36:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2395369AbgLKRgf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Dec 2020 12:36:35 -0500
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com [IPv6:2607:f8b0:4864:20::542])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B1D8C0613D6
        for <devicetree@vger.kernel.org>; Fri, 11 Dec 2020 09:35:55 -0800 (PST)
Received: by mail-pg1-x542.google.com with SMTP id e2so7593762pgi.5
        for <devicetree@vger.kernel.org>; Fri, 11 Dec 2020 09:35:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=UC8VDOR6bWYQSMmSbZ73sFRI2d4knlSzKHhJz1r8X5s=;
        b=iYXRXtIY7Ts57AbagWtK7P0ETy/M0tesF+OC5a1t1C7sZzmBuFX489lEemCKFrG4cj
         pyZo646JynIR6uIadKBPzDYJ+nHr8BGRBVl5a+dBMaJsANXFfhTKcak7Dv7M7OM1ecj9
         5JYvcE3YlWszLn8gLyOBKlXcRzAv4ojOsJdmQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=UC8VDOR6bWYQSMmSbZ73sFRI2d4knlSzKHhJz1r8X5s=;
        b=Kr2JDoQVy/HCr/5ovN863rQPbW/GQ0PyZ+goSrBezmA/Ey9KqhfPqb3esXOmcGCtyX
         es4c9A8uO3VnbNVCUzNgctP6BZkR0Ss7o1F58w6qlfuPLdm+XEZguKCXtTigHAjq6LZ/
         Yki/HKGe7gGm4F1jzc55Fbr/5tv/DqhhDoFSS9iDyG1e3eSLIryq8eEEHmGSRczRoEIN
         8leQgc6JP6Rel3g7bSG13/EIOetyv5ZfppEUCn7AT5Xzt0gJg3Wc0m9850jq8iEH4bdo
         WtwLzzuzVSpopqgq60ls18jbau/LVJgTSdw51Qa702wOobA3eBZhwG+OwR4e1GMO1H6I
         qC6w==
X-Gm-Message-State: AOAM533vJNDdoZMBi77YZn5aZDWSQPD87/Xhwz61d2q4VlC6A16l+wzn
        +5R1zDuR6Vny0CzUOg67jP+W/A==
X-Google-Smtp-Source: ABdhPJwCA17O2+gXshC38oWub2baCqhVIqKgdoN6JLXeoscngGE2G66TMOyaeL8VNZsjuQUZ4mBAFQ==
X-Received: by 2002:a63:f501:: with SMTP id w1mr12656744pgh.142.1607708154707;
        Fri, 11 Dec 2020 09:35:54 -0800 (PST)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:1:42b0:34ff:fe3d:58e6])
        by smtp.gmail.com with ESMTPSA id r185sm11402765pfc.53.2020.12.11.09.35.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Dec 2020 09:35:54 -0800 (PST)
From:   Douglas Anderson <dianders@chromium.org>
To:     jkosina@suse.cz, benjamin.tissoires@redhat.com,
        gregkh@linuxfoundation.org,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc:     hdegoede@redhat.com, swboyd@chromium.org, robh+dt@kernel.org,
        linux-input@vger.kernel.org, andrea@borgia.bo.it,
        kai.heng.feng@canonical.com,
        Douglas Anderson <dianders@chromium.org>,
        Anson Huang <Anson.Huang@nxp.com>,
        Arnd Bergmann <arnd@arndb.de>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Coiby Xu <coiby.xu@gmail.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
        Jiri Kosina <jikos@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Max Krummenacher <max.oss.09@gmail.com>,
        Michael Walle <michael@walle.cc>,
        Pavel Balan <admin@kryma.net>, Shawn Guo <shawnguo@kernel.org>,
        Will Deacon <will@kernel.org>,
        Xiaofei Tan <tanxiaofei@huawei.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v7 0/4] HID: i2c-hid: Reorganize to allow supporting goodix,gt7375p
Date:   Fri, 11 Dec 2020 09:35:22 -0800
Message-Id: <20201211173526.1516653-1-dianders@chromium.org>
X-Mailer: git-send-email 2.29.2.576.ga3fc446d84-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


The goal of this series is to support the Goodix GT7375P touchscreen.
This touchscreen is special because it has power sequencing
requirements that necessitate driving a reset GPIO.

To do this, we totally rejigger the way i2c-hid is organized so that
it's easier to jam the Goodix support in there.

This series was:
- Tested on a device that uses normal i2c-hid.
- Tested on a device that has a Goodix i2c-hid device.
- Tested on an ACPI device, but an earlier version of the series.

I believe the plan is for Benjamin to land the whole series.  Will
said this about the arm64 defconfig change (and provided his Ack):
> ...there are a few things I really care about
> in defconfig (e.g. things like page size!), generally speaking we don't
> need to Ack everything that changes in there.
>
> That said, might be worth checking whether arm-soc have any defconfig
> changes queued in -next so you don't end up with conflicts.

Changes in v7:
- Rebase atop commit afdd34c5fa40 ("HID: i2c-hid: show the error ...")

Changes in v6:
- ACPI probe function should have been "static"
- Don't export suspend/resume, just export dev_pm_ops from core.
- Fixed crash in ACPI module (missing init of "client")
- No need for regulator include in the core.
- Removed i2c_device_id table from ACPI module.
- Suspend/resume are no longer exported from the core.

Changes in v5:
- Add shutdown_tail op and use it in ACPI.
- Added mention of i2c-hid in the yaml itself as per Rob.
- Adjusted subject as per Rob.
- i2chid_subclass_data => i2chid_ops.
- power_up_device => power_up (same with power_down).
- subclass => ops.

Changes in v4:
- ("arm64: defconfig: Update config names for i2c-hid rejigger") new for v4.
- Fully rejigger so ACPI and OF are full subclasses.
- Totally redid based on the new subclass system.

Changes in v3:
- Fixed compatible in example.
- Removed Benjamin as a maintainer.
- Rework to use subclassing.
- Updated description.

Changes in v2:
- ("dt-bindings: HID: i2c-hid: Introduce bindings for the Goodix GT7375P") new in v2.
- Get timings based on the compatible string.
- Use a separate compatible string for this new touchscreen.

Douglas Anderson (4):
  HID: i2c-hid: Reorganize so ACPI and OF are separate modules
  arm64: defconfig: Update config names for i2c-hid rejigger
  dt-bindings: input: HID: i2c-hid: Introduce bindings for the Goodix
    GT7375P
  HID: i2c-hid: Introduce goodix-i2c-hid using i2c-hid core

 .../bindings/input/goodix,gt7375p.yaml        |  65 +++++
 arch/arm64/configs/defconfig                  |   3 +-
 drivers/hid/Makefile                          |   2 +-
 drivers/hid/i2c-hid/Kconfig                   |  47 +++-
 drivers/hid/i2c-hid/Makefile                  |   6 +-
 drivers/hid/i2c-hid/i2c-hid-acpi.c            | 159 +++++++++++
 drivers/hid/i2c-hid/i2c-hid-core.c            | 254 +++---------------
 drivers/hid/i2c-hid/i2c-hid-of-goodix.c       | 116 ++++++++
 drivers/hid/i2c-hid/i2c-hid-of.c              | 143 ++++++++++
 drivers/hid/i2c-hid/i2c-hid.h                 |  22 ++
 include/linux/platform_data/i2c-hid.h         |  41 ---
 11 files changed, 596 insertions(+), 262 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/input/goodix,gt7375p.yaml
 create mode 100644 drivers/hid/i2c-hid/i2c-hid-acpi.c
 create mode 100644 drivers/hid/i2c-hid/i2c-hid-of-goodix.c
 create mode 100644 drivers/hid/i2c-hid/i2c-hid-of.c
 delete mode 100644 include/linux/platform_data/i2c-hid.h

-- 
2.29.2.576.ga3fc446d84-goog

