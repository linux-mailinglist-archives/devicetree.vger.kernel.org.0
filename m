Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1C5AB20203D
	for <lists+devicetree@lfdr.de>; Sat, 20 Jun 2020 05:28:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732633AbgFTD2g (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Jun 2020 23:28:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57922 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732271AbgFTD2f (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 Jun 2020 23:28:35 -0400
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com [IPv6:2607:f8b0:4864:20::1043])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4CF19C0613EE
        for <devicetree@vger.kernel.org>; Fri, 19 Jun 2020 20:28:35 -0700 (PDT)
Received: by mail-pj1-x1043.google.com with SMTP id i4so5294348pjd.0
        for <devicetree@vger.kernel.org>; Fri, 19 Jun 2020 20:28:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=wEs1bwDB/TtDfJTP+rfPS/eV3OYFDhVkY2AGM1gTF5E=;
        b=pK8cqQB0iaxFCQTro5VYTVkbeMbmlffBMiXp4BLcWkJ+Hi7VYupgMvngrbaIMZ23DE
         T+sYQDXM46cA+pIckwp9yhK7KHfNEC/LyhVnBh7tSDZndbi7OQ5Bl1ZQvOTPhd3H4LrN
         8qqoaH12Q0DH4IzoR7TTDzAyeBqduNOJLKUq8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=wEs1bwDB/TtDfJTP+rfPS/eV3OYFDhVkY2AGM1gTF5E=;
        b=D7GLyNRbVwIC/FuPZdZpvGbJXFKUOMnMAl3zt/80jP7QDlQlN/VfaWWDFFEmE3fKsZ
         votemJNeZiPzCDMrDUiwidNp9BvalCGt19LJHFKyRalY9U+uioBXD/+OoseDlBlj9p9N
         0uAPFEJjjfQiJpKhmWzZ1Zyop39728k/rZhFTpS8HW1RBPqvDGbsmwswSOP0zsrVZkvq
         mSyyjNGzCl8qbzEbOLdM3q5BoSYlroXWNY4bcz9tVTAwu3PA9hRZPU+Sjb/YNCcdkRvG
         md8uu9THrEWh0660acG6LvdCSbfKqKyVQIY4oi7VZzNloPuZNV1f9jaYOkXVi5wfVrdA
         wfNg==
X-Gm-Message-State: AOAM532F4O3ccPJ+PBizW9MQ8Z5bC75vLjd4JABHjQWx4OyrL2KQarXS
        kXeokgfV7b+fu559ZAWuWfrorQ==
X-Google-Smtp-Source: ABdhPJzyfQElYK0QcW79S/OVQnqqlVKouBZCgo8zhKaHIx8bCkDGQavnty0ung243w0p9t0m9hE+KQ==
X-Received: by 2002:a17:902:6a83:: with SMTP id n3mr10826477plk.42.1592623714598;
        Fri, 19 Jun 2020 20:28:34 -0700 (PDT)
Received: from localhost.localdomain ([42.111.160.67])
        by smtp.gmail.com with ESMTPSA id 67sm6182262pga.44.2020.06.19.20.28.29
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Jun 2020 20:28:34 -0700 (PDT)
From:   Suniel Mahesh <sunil@amarulasolutions.com>
To:     robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
        kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        gregkh@linuxfoundation.org, sashal@kernel.org
Cc:     jagan@amarulasolutions.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-amarula@amarulasolutions.com,
        Michael Trimarchi <michael@amarulasolutions.com>
Subject: [PATCH v2] arch: arm: imx6qdl-icore: Fix OTG_ID pin and sdcard detect
Date:   Sat, 20 Jun 2020 08:58:16 +0530
Message-Id: <1592623696-21485-1-git-send-email-sunil@amarulasolutions.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <CAOf5uwkrjj98+_8Hn40ujn2bLz_oYb7FCWcuO8yNn2y0ewMehg@mail.gmail.com>
References: <CAOf5uwkrjj98+_8Hn40ujn2bLz_oYb7FCWcuO8yNn2y0ewMehg@mail.gmail.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Michael Trimarchi <michael@amarulasolutions.com>

The current pin muxing scheme muxes GPIO_1 pad for USB_OTG_ID
because of which when card is inserted, usb otg is enumerated
and the card is never detected.

[   64.492645] cfg80211: failed to load regulatory.db
[   64.492657] imx-sdma 20ec000.sdma: external firmware not found, using ROM firmware
[   76.343711] ci_hdrc ci_hdrc.0: EHCI Host Controller
[   76.349742] ci_hdrc ci_hdrc.0: new USB bus registered, assigned bus number 2
[   76.388862] ci_hdrc ci_hdrc.0: USB 2.0 started, EHCI 1.00
[   76.396650] usb usb2: New USB device found, idVendor=1d6b, idProduct=0002, bcdDevice= 5.08
[   76.405412] usb usb2: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[   76.412763] usb usb2: Product: EHCI Host Controller
[   76.417666] usb usb2: Manufacturer: Linux 5.8.0-rc1-next-20200618 ehci_hcd
[   76.424623] usb usb2: SerialNumber: ci_hdrc.0
[   76.431755] hub 2-0:1.0: USB hub found
[   76.435862] hub 2-0:1.0: 1 port detected

The TRM mentions GPIO_1 pad should be muxed/assigned for card detect
and ENET_RX_ER pad for USB_OTG_ID for proper operation.

This patch fixes pin muxing as per TRM and is tested on a
i.Core 1.5 MX6 DL SOM.

[   22.449165] mmc0: host does not support reading read-only switch, assuming write-enable
[   22.459992] mmc0: new high speed SDHC card at address 0001
[   22.469725] mmcblk0: mmc0:0001 EB1QT 29.8 GiB
[   22.478856]  mmcblk0: p1 p2

Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
Signed-off-by: Suniel Mahesh <sunil@amarulasolutions.com>
---
Changes for v2:
- Changed patch description as suggested by Michael Trimarchi to make it
  more readable/understandable.
---
 arch/arm/boot/dts/imx6qdl-icore.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6qdl-icore.dtsi b/arch/arm/boot/dts/imx6qdl-icore.dtsi
index 756f3a9..12997da 100644
--- a/arch/arm/boot/dts/imx6qdl-icore.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-icore.dtsi
@@ -397,7 +397,7 @@
 
 	pinctrl_usbotg: usbotggrp {
 		fsl,pins = <
-			MX6QDL_PAD_GPIO_1__USB_OTG_ID 0x17059
+			MX6QDL_PAD_ENET_RX_ER__USB_OTG_ID 0x17059
 		>;
 	};
 
@@ -409,6 +409,7 @@
 			MX6QDL_PAD_SD1_DAT1__SD1_DATA1 0x17070
 			MX6QDL_PAD_SD1_DAT2__SD1_DATA2 0x17070
 			MX6QDL_PAD_SD1_DAT3__SD1_DATA3 0x17070
+			MX6QDL_PAD_GPIO_1__GPIO1_IO01  0x1b0b0
 		>;
 	};
 
-- 
2.7.4

