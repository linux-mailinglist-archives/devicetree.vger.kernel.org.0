Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 67E37443068
	for <lists+devicetree@lfdr.de>; Tue,  2 Nov 2021 15:28:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229712AbhKBObJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Nov 2021 10:31:09 -0400
Received: from mail.kernel.org ([198.145.29.99]:54074 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229557AbhKBObG (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 2 Nov 2021 10:31:06 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9805D60EDF;
        Tue,  2 Nov 2021 14:28:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1635863312;
        bh=dWdXSCcnw3jZb4r6IQdTU0jM8stw16sY6pQ9ZwDV/YY=;
        h=From:To:Cc:Subject:Date:From;
        b=XpjXiLsE+cn6KB6gmM8Wy0tKNv5w0x07517PCtevNR4tWE6/Qd6GuVE/pv+EEolbZ
         vokmQVcijgf0HdhhxVw41gXVg1937TKjWGIeBlU/XIiBJ5A8T/NciVteZEZBVbRUKG
         Dy9Kl4WfGSv119B4lZx4/7qFMqZeIvp6auSluzlUOlJzgV3OuLkwMTjlAuZhnyyc/3
         6d0T3kW7UNtSc3Q035ZrmX1d6U/zj43Rrk3xL9xP85I7mfFZNb+JxnE6AJnaHpFvPI
         kTLrzvYleMQFKSSqRFqDHFzVkJlxS+vz/WNLibhLiXBAXwVpyn9EC7LSGQeZoq0tMB
         SMLOuRWDd/PPQ==
From:   Dinh Nguyen <dinguyen@kernel.org>
To:     robh+dt@kernel.org
Cc:     dinguyen@kernel.org, devicetree@vger.kernel.org
Subject: [PATCH] ARM: socfpga: dts: fix qspi node compatible
Date:   Tue,  2 Nov 2021 09:28:27 -0500
Message-Id: <20211102142827.1545889-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The QSPI flash node needs to have the required "jedec,spi-nor" in the
compatible string.

Fixes: 1df99da8953 ("ARM: dts: socfpga: Enable QSPI in Arria10 devkit")
Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm/boot/dts/socfpga_arria10_socdk_qspi.dts   | 2 +-
 arch/arm/boot/dts/socfpga_arria5_socdk.dts         | 2 +-
 arch/arm/boot/dts/socfpga_cyclone5_socdk.dts       | 2 +-
 arch/arm/boot/dts/socfpga_cyclone5_sockit.dts      | 2 +-
 arch/arm/boot/dts/socfpga_cyclone5_socrates.dts    | 2 +-
 arch/arm/boot/dts/socfpga_cyclone5_sodia.dts       | 2 +-
 arch/arm/boot/dts/socfpga_cyclone5_vining_fpga.dts | 4 ++--
 7 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boot/dts/socfpga_arria10_socdk_qspi.dts b/arch/arm/boot/dts/socfpga_arria10_socdk_qspi.dts
index 2b645642b935..2a745522404d 100644
--- a/arch/arm/boot/dts/socfpga_arria10_socdk_qspi.dts
+++ b/arch/arm/boot/dts/socfpga_arria10_socdk_qspi.dts
@@ -12,7 +12,7 @@ &qspi {
 	flash0: n25q00@0 {
 		#address-cells = <1>;
 		#size-cells = <1>;
-		compatible = "n25q00aa";
+		compatible = "micron,mt25qu02g", "jedec,spi-nor";
 		reg = <0>;
 		spi-max-frequency = <100000000>;
 
diff --git a/arch/arm/boot/dts/socfpga_arria5_socdk.dts b/arch/arm/boot/dts/socfpga_arria5_socdk.dts
index 90e676e7019f..1b02d46496a8 100644
--- a/arch/arm/boot/dts/socfpga_arria5_socdk.dts
+++ b/arch/arm/boot/dts/socfpga_arria5_socdk.dts
@@ -119,7 +119,7 @@ &qspi {
 	flash: flash@0 {
 		#address-cells = <1>;
 		#size-cells = <1>;
-		compatible = "n25q256a";
+		compatible = "micron,n25q256a", "jedec,spi-nor";
 		reg = <0>;
 		spi-max-frequency = <100000000>;
 
diff --git a/arch/arm/boot/dts/socfpga_cyclone5_socdk.dts b/arch/arm/boot/dts/socfpga_cyclone5_socdk.dts
index 6f138b2b2616..51bb436784e2 100644
--- a/arch/arm/boot/dts/socfpga_cyclone5_socdk.dts
+++ b/arch/arm/boot/dts/socfpga_cyclone5_socdk.dts
@@ -124,7 +124,7 @@ &qspi {
 	flash0: n25q00@0 {
 		#address-cells = <1>;
 		#size-cells = <1>;
-		compatible = "n25q00";
+		compatible = "micron,mt25qu02g", "jedec,spi-nor";
 		reg = <0>;	/* chip select */
 		spi-max-frequency = <100000000>;
 
diff --git a/arch/arm/boot/dts/socfpga_cyclone5_sockit.dts b/arch/arm/boot/dts/socfpga_cyclone5_sockit.dts
index c155ff02eb6e..cae9ddd5ed38 100644
--- a/arch/arm/boot/dts/socfpga_cyclone5_sockit.dts
+++ b/arch/arm/boot/dts/socfpga_cyclone5_sockit.dts
@@ -169,7 +169,7 @@ &qspi {
 	flash: flash@0 {
 		#address-cells = <1>;
 		#size-cells = <1>;
-		compatible = "n25q00";
+		compatible = "micron,mt25qu02g", "jedec,spi-nor";
 		reg = <0>;
 		spi-max-frequency = <100000000>;
 
diff --git a/arch/arm/boot/dts/socfpga_cyclone5_socrates.dts b/arch/arm/boot/dts/socfpga_cyclone5_socrates.dts
index 8d5d3996f6f2..ca18b959e655 100644
--- a/arch/arm/boot/dts/socfpga_cyclone5_socrates.dts
+++ b/arch/arm/boot/dts/socfpga_cyclone5_socrates.dts
@@ -80,7 +80,7 @@ &qspi {
 	flash: flash@0 {
 		#address-cells = <1>;
 		#size-cells = <1>;
-		compatible = "n25q256a";
+		compatible = "micron,n25q256a", "jedec,spi-nor";
 		reg = <0>;
 		spi-max-frequency = <100000000>;
 		m25p,fast-read;
diff --git a/arch/arm/boot/dts/socfpga_cyclone5_sodia.dts b/arch/arm/boot/dts/socfpga_cyclone5_sodia.dts
index 99a71757cdf4..3f7aa7bf0863 100644
--- a/arch/arm/boot/dts/socfpga_cyclone5_sodia.dts
+++ b/arch/arm/boot/dts/socfpga_cyclone5_sodia.dts
@@ -116,7 +116,7 @@ &qspi {
 	flash0: n25q512a@0 {
 		#address-cells = <1>;
 		#size-cells = <1>;
-		compatible = "n25q512a";
+		compatible = "micron,n25q512a", "jedec,spi-nor";
 		reg = <0>;
 		spi-max-frequency = <100000000>;
 
diff --git a/arch/arm/boot/dts/socfpga_cyclone5_vining_fpga.dts b/arch/arm/boot/dts/socfpga_cyclone5_vining_fpga.dts
index a060718758b6..25874e1b9c82 100644
--- a/arch/arm/boot/dts/socfpga_cyclone5_vining_fpga.dts
+++ b/arch/arm/boot/dts/socfpga_cyclone5_vining_fpga.dts
@@ -224,7 +224,7 @@ &qspi {
 	n25q128@0 {
 		#address-cells = <1>;
 		#size-cells = <1>;
-		compatible = "n25q128";
+		compatible = "micron,n25q128", "jedec,spi-nor";
 		reg = <0>;		/* chip select */
 		spi-max-frequency = <100000000>;
 		m25p,fast-read;
@@ -241,7 +241,7 @@ n25q128@0 {
 	n25q00@1 {
 		#address-cells = <1>;
 		#size-cells = <1>;
-		compatible = "n25q00";
+		compatible = "micron,mt25qu02g", "jedec,spi-nor";
 		reg = <1>;		/* chip select */
 		spi-max-frequency = <100000000>;
 		m25p,fast-read;
-- 
2.25.1

