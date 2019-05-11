Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 76B681A8E1
	for <lists+devicetree@lfdr.de>; Sat, 11 May 2019 19:45:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725903AbfEKRps (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 11 May 2019 13:45:48 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:36853 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725895AbfEKRps (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 11 May 2019 13:45:48 -0400
Received: by mail-wm1-f67.google.com with SMTP id j187so10164111wmj.1
        for <devicetree@vger.kernel.org>; Sat, 11 May 2019 10:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=92ZA36IfdaOtsZw80t2M4+MXEzMldpioQlWAUTdSiyM=;
        b=GNZ67HorQfYfzNJYPsTQiKiEZ1u9f9aUoZ/E1qQniEFWPFzxEhxkB6iTFfKGLmCiNV
         9wViPgp4PdVYAeU7i5PBjtHyBLZ1Qas6ehl9CBX7rmqCWHbwdRg88AK9ej6MlF2NH7Jr
         FTrgMkhTdZUsvtmgGToQXOQh3i/VFjtjMM7SMUFQk+LO8naQb2HJx46EPKteI/Ksk3U6
         M+0gr59EHZTEqmqajUq3dF+JLvcdmH5f2eN8YZ+cVX3mz7xvo9u4XvB1aM+CFjoSPRnQ
         iKZ/zjq6j9vzEVscp7nT6rilo4X4L2g7oCVPrajeaP4ZIPpsW9MoBYclI5vndvwtFWj4
         lF0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=92ZA36IfdaOtsZw80t2M4+MXEzMldpioQlWAUTdSiyM=;
        b=c3GhJIo3QZ1UWelncC/GcOW58zdFtGyYNg6yZ8oAkwWRAsS2uxwEDyFVqiA3mjNsN1
         Gm5c44QNUccwAh5toLUPw7dqHjiHK9cXWc3+kpfvL6rT5IDJcNoTiXyLC0npQw1OlOzv
         /HIGIXkEMHzGXubRMO8IMu85xsxKiO2q1gaarJ66YHWq/dfd8Nzsr4aKHcwo/Vkl5eXp
         o+LT+hdKL/3Q6ONyhCClwwNkLfOD4Dab8kE/8++oR3aABAzGhcy3HVZJiPZWCA9qg1fz
         eK/9gIq4mqTDIuJbQ7qcLNDo2Iu4dHTyP1apu7P9EZyILOF94v4MZwW14Cp/iY9Zgi81
         nZxA==
X-Gm-Message-State: APjAAAXxsZTOkaF3jc82yvFw8b6rnWCrHsA0qwZnAzr72FYz3kvLTDgD
        6BIx9foNMUyR9b7MYzZaTcI=
X-Google-Smtp-Source: APXvYqyBv+xZzZ9rpWv+EUHwPoSsPYeaBjz1deSYDtLsTCx/vqUrbrwe8U8OOTlcrUM78XGzTpDYMw==
X-Received: by 2002:a05:600c:2248:: with SMTP id a8mr11140164wmm.75.1557596746018;
        Sat, 11 May 2019 10:45:46 -0700 (PDT)
Received: from blackbox.darklights.net (p200300F133C8AD0059E186517133DF77.dip0.t-ipconnect.de. [2003:f1:33c8:ad00:59e1:8651:7133:df77])
        by smtp.googlemail.com with ESMTPSA id h188sm10309538wmf.48.2019.05.11.10.45.44
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 May 2019 10:45:45 -0700 (PDT)
From:   Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To:     khilman@baylibre.com, linux-amlogic@lists.infradead.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        jbrunet@baylibre.com,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [PATCH] arm64: dts: amlogic: remove ethernet-phy-idAAAA.BBBB compatible strings
Date:   Sat, 11 May 2019 19:45:34 +0200
Message-Id: <20190511174534.2403-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Ethernet PHY documentation
(Documentation/devicetree/bindings/net/phy.txt) states that:
  If the PHY reports an incorrect ID (or none at all) then the
  "compatible" list may contain an entry with the correct PHY ID in the
  form: "ethernet-phy-idAAAA.BBBB"

An older version of the documentation suggested that the compatible
string can be used when the PHY ID is known.

Remove the ethernet-phy-id compatible string and add a comment with the
PHY ID instead.
This is a no-op on boards which are shipped with the PHY that was
listed (= all known cases). However, if a board manufacturer decides to
ship a different PHY we will now load and use the correct driver because
we ask the PHY to identify itself.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm64/boot/dts/amlogic/meson-gxl-s905d-p230.dts | 2 +-
 arch/arm64/boot/dts/amlogic/meson-gxm-nexbox-a1.dts  | 2 +-
 arch/arm64/boot/dts/amlogic/meson-gxm-q200.dts       | 2 +-
 arch/arm64/boot/dts/amlogic/meson-gxm-rbox-pro.dts   | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905d-p230.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s905d-p230.dts
index 0c8e8305b1f3..767b1763a612 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl-s905d-p230.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905d-p230.dts
@@ -81,7 +81,7 @@
 
 &external_mdio {
 	external_phy: ethernet-phy@0 {
-		compatible = "ethernet-phy-id001c.c916", "ethernet-phy-ieee802.3-c22";
+		/* Realtek RTL8211F (0x001cc916) */
 		reg = <0>;
 		max-speed = <1000>;
 		interrupt-parent = <&gpio_intc>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm-nexbox-a1.dts b/arch/arm64/boot/dts/amlogic/meson-gxm-nexbox-a1.dts
index 8acfd40090d2..a99c1ba3131c 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxm-nexbox-a1.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxm-nexbox-a1.dts
@@ -111,7 +111,7 @@
 
 &external_mdio {
 	external_phy: ethernet-phy@0 {
-		compatible = "ethernet-phy-id001c.c916", "ethernet-phy-ieee802.3-c22";
+		/* Realtek RTL8211F (0x001cc916) */
 		reg = <0>;
 		max-speed = <1000>;
 	};
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm-q200.dts b/arch/arm64/boot/dts/amlogic/meson-gxm-q200.dts
index 73d656e4aade..8939c0fc5b62 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxm-q200.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxm-q200.dts
@@ -63,7 +63,7 @@
 
 &external_mdio {
 	external_phy: ethernet-phy@0 {
-		compatible = "ethernet-phy-id001c.c916", "ethernet-phy-ieee802.3-c22";
+		/* Realtek RTL8211F (0x001cc916) */
 		reg = <0>;
 		max-speed = <1000>;
 		interrupt-parent = <&gpio_intc>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm-rbox-pro.dts b/arch/arm64/boot/dts/amlogic/meson-gxm-rbox-pro.dts
index 7fa20a8ede17..acb4aaf9b956 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxm-rbox-pro.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxm-rbox-pro.dts
@@ -113,7 +113,7 @@
 
 &external_mdio {
 	external_phy: ethernet-phy@0 {
-		compatible = "ethernet-phy-id001c.c916", "ethernet-phy-ieee802.3-c22";
+		/* Realtek RTL8211F (0x001cc916) */
 		reg = <0>;
 		max-speed = <1000>;
 	};
-- 
2.21.0

