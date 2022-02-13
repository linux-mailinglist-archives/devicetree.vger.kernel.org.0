Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 347CA4B3E34
	for <lists+devicetree@lfdr.de>; Sun, 13 Feb 2022 23:57:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238625AbiBMW5R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 13 Feb 2022 17:57:17 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:59932 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231864AbiBMW5Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 13 Feb 2022 17:57:16 -0500
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A2D654BE0
        for <devicetree@vger.kernel.org>; Sun, 13 Feb 2022 14:57:09 -0800 (PST)
Received: by mail-ej1-x62a.google.com with SMTP id p14so9674354ejf.11
        for <devicetree@vger.kernel.org>; Sun, 13 Feb 2022 14:57:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ahBDyKkGJoSJ9jy1/Vj2IXHjIDBehskfpXYYu5ne7vU=;
        b=RxnCgmQZIKQWFYVlJZVQ+cGxcP9rIZeKTyuPRgMWIQIMm1KrSZPF5HVu2+yH6VGqnN
         ErJasVTgl6jDerxHNEVbqXce6jRh1Ei7RcpMyzAHlfQVMEZQFuEAVsYAlDQiFtaruupQ
         jvLh448n2Zvq5erF8AOIrTHxUzVdGV9ieymiKPBbq2J2brGWkDVPxg6g4mfc1l4jclhr
         4AbKRVWi6CxwLJ0hmblfOcFlPrCFG64eg2uVA+z3qMOhlG80GUh2PVvmKWkZRp+1xjyh
         p4KsHXu6v97TrfGlpHF/C3fgR7/4ljetRUfYX+EVlRhBAFkluQDJULO1RGNUnsiL0g9p
         7rHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ahBDyKkGJoSJ9jy1/Vj2IXHjIDBehskfpXYYu5ne7vU=;
        b=X4E21mNDBvbudgsf+vfzeSfeq5zn2v6+rncZEssgAyISg35SuGcs5ABV3htHyDiV81
         iKT079CNgL5mt3RK7rTj6/dOJ4AvDns3fy9PaF3019w2tgqTVVCsVl1glGpz4u4sjnSG
         GPs2ra+HZ+G6z5BinZbZesL/e/u3Njn6saDpBR/PTBIzAOQFm/DIgor22p0sGO831LHn
         PJ63G3nKIOtUo5kh5isXzr0dzbyZVDO97d3E0e6TR4U/1kxDK7NBxWjH3OBMmXb+rNG4
         22fpgjw7uo6wgHIMuTveRDCjhGPipRcZPMQ2S0gETjH2trer3+UwgRcH/Ps3gEB03rBb
         5EBA==
X-Gm-Message-State: AOAM532jjRrJI7QKZGNbFK9VvDA8ZdfhzAQRaNWeeephyXQC2LgwK+YQ
        zSFpcjqQokJ7Utf4fX0e5Jc=
X-Google-Smtp-Source: ABdhPJz2d8LI21xyitZK7B6KH0Wz5LvgdzcmMofSUlguJMCTkwb8L/68peXUZSDz3Zq894i/B/wvVw==
X-Received: by 2002:a17:906:51ce:: with SMTP id v14mr4887824ejk.424.1644793028454;
        Sun, 13 Feb 2022 14:57:08 -0800 (PST)
Received: from morpheus.home.roving-it.com (3.e.2.0.0.0.0.0.0.0.0.0.0.0.0.0.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681::2e3])
        by smtp.googlemail.com with ESMTPSA id g14sm3189163edb.55.2022.02.13.14.57.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Feb 2022 14:57:08 -0800 (PST)
From:   Peter Robinson <pbrobinson@gmail.com>
To:     Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Lee Jones <lee.jones@linaro.org>,
        Emma Anholt <emma@anholt.net>, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Russell King <linux@armlinux.org.uk>,
        Arnd Bergmann <arnd@arndb.de>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc:     Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH v4 00/15] Raspberry PI 4 V3D enablement
Date:   Sun, 13 Feb 2022 22:56:31 +0000
Message-Id: <20220213225646.67761-1-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is purely a rebased of Nicolas's v3 patch set from around a year ago.

I've tested this using mesa 21.3.x and Wayland/Gnome on Fedora 35, it's 
more or less stable with basic testing.

From his original cover letter:

This series attempts to enable V3D on BCM2711, the SoC available on the
Raspberry Pi 4 family of boards.

Due to the lack of documentation some things are taken as it from
testing/downstream implementation[1], which I'm hilighting here:

- It's not clear that the following is 100% true, maybe someone can confirm:

	"In BCM2711 the new ARGON ASB took over V3D. The old ASB is still
	present with the ISP and H264 bits, and V3D is in the same place in the
	new ASB as the old one."

- Patch #9 ("soc: bcm: bcm2835-power: Bypass power_on/off() calls"), I
  took as is from the downstream implementation, I can't really provide
  an exact explanation on what changed HW wise.

- Ultimately, I need confirmation from the Broadcom folks that they are alright
  with patch #11 ("drm/v3d: Get rid of pm code")

---

Changes since v3:
- Rebase to 5.17-rc1

Changes since v2:
 - Correct ASB names
 - Address dt-binding comments

Changes since v1:
 - Use 'reg-names'
 - Correct ASB names
 - Add missing binding patch for V3D
 - Address Stefan's comments

Nicolas Saenz Julienne (11):
  dt-bindings: soc: bcm: bcm2835-pm: Convert bindings to DT schema
  dt-bindings: soc: bcm: bcm2835-pm: Introduce reg-names
  dt-bindings: soc: bcm: bcm2835-pm: Add support for bcm2711
  ARM: dts: bcm2835/bcm2711: Introduce reg-names in watchdog node
  ARM: dts: bcm2711: Use proper compatible in PM/Watchdog node
  mfd: bcm2835-pm: Use 'reg-names' to get resources
  mfd: bcm2835-pm: Add support for BCM2711
  soc: bcm: bcm2835-power: Add support for BCM2711's RPiVid ASB
  soc: bcm: bcm2835-power: Bypass power_on/off() calls
  dt-bindings: gpu: v3d: Add BCM2711's compatible
  arm64: config: Enable DRM_V3D

Peter Robinson (4):
  drm/v3d: Get rid of pm code
  drm/v3d: Add support for bcm2711
  ARM: dts: bcm2711: Enable V3D
  ARM: configs: Enable DRM_V3D

 .../devicetree/bindings/gpu/brcm,bcm-v3d.yaml |  1 +
 .../bindings/soc/bcm/brcm,bcm2835-pm.txt      | 46 ----------
 .../bindings/soc/bcm/brcm,bcm2835-pm.yaml     | 87 +++++++++++++++++++
 arch/arm/boot/dts/bcm2711.dtsi                | 15 +++-
 arch/arm/boot/dts/bcm2835-common.dtsi         |  1 +
 arch/arm/configs/multi_v7_defconfig           |  1 +
 arch/arm64/configs/defconfig                  |  1 +
 drivers/gpu/drm/v3d/Kconfig                   |  2 +-
 drivers/gpu/drm/v3d/v3d_debugfs.c             | 18 +---
 drivers/gpu/drm/v3d/v3d_drv.c                 | 12 +--
 drivers/gpu/drm/v3d/v3d_gem.c                 | 12 +--
 drivers/mfd/bcm2835-pm.c                      | 80 ++++++++++++-----
 drivers/soc/bcm/bcm2835-power.c               | 74 ++++++++++------
 include/linux/mfd/bcm2835-pm.h                |  1 +
 14 files changed, 218 insertions(+), 133 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.txt
 create mode 100644 Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml

-- 
2.35.1

