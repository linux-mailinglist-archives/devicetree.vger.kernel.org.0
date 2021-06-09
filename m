Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3961A3A1344
	for <lists+devicetree@lfdr.de>; Wed,  9 Jun 2021 13:48:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239469AbhFILsp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Jun 2021 07:48:45 -0400
Received: from mail-wm1-f50.google.com ([209.85.128.50]:42988 "EHLO
        mail-wm1-f50.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239475AbhFILs2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Jun 2021 07:48:28 -0400
Received: by mail-wm1-f50.google.com with SMTP id l7-20020a05600c1d07b02901b0e2ebd6deso3990104wms.1
        for <devicetree@vger.kernel.org>; Wed, 09 Jun 2021 04:46:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Fz6PtoBNrXggGvHCv/ERGGBDM9Ib0qTjZiZAcbm2N6Q=;
        b=TRpqXxR32bEJkTNwU6AOJ2rVb69udkIyrqqK5qj+CUnlZzcyW77zBc90L6cLc+JCKp
         ipe5Tiwctjsf2IBozXvHQ2m/ZvZR/QrcaQJCMyYZdxOSIO1VT9PZ2szi+HpGlUhfQZ+I
         0t67PVEnNf9gAtPgFlaehUofawfToYmk2Tbp63WwtJgqRPdYlhIMJU0iHM9jyKT16bhP
         Y4vL6fFi4M0xdPqNic5BiNY17QvEdWZpGip7BNHYL7XSCMJF1uBHJOuWxfhKBKaAmfxO
         hn/I5SnJoXLBokQho0hKfK0YHWCg4cSfb61MEt70P5an1bQhs4hLGiq9qKSynB4R4o6B
         0H6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=Fz6PtoBNrXggGvHCv/ERGGBDM9Ib0qTjZiZAcbm2N6Q=;
        b=XHsNRdCUYxNTLz+DP6+uGpCCpOPvyjDYgmX9F/81LXKi26C4yvpa8JEEZSjKcd+OIt
         uXT4+RikgJhA49lX40NVwvwvI3FUv6BAR28SoxHanLwo6AimIEHauV+JlYVZCGlf1ocf
         G3sW7zHLL9EUuktUPHJr2kwQb+0fzL/v7+PkhV6WjJ/lcKPDNlwUmRoOz3QAaJW/5czX
         i8Q35kCM2j5WB8ws+SbqDGZ7qWUHQ6hk+AfZFqrXGuvRWtkZ5MDBCPahF2CDL72QJE6a
         aAqJcBiz2UzwNyK2fXhYDoRsuDy8mEg9cH2ROgeWIAMZdF2HDYELrmYOm5V6TEOh5JxY
         aFTg==
X-Gm-Message-State: AOAM532+JwTjQJ5jolwYXm4vIhBHBcCvwaFVlUIPccBN0G/h/kcVW9Or
        eXuPxZ8FM3RdsmxWhi+YOWkkZ46x012sMYZT
X-Google-Smtp-Source: ABdhPJziy6biO08+CwH8Iuxinnm2yLnRF21q5hf9BgUMrEGrS9g/z3Pb/wClgPiioTo1etfJUC7sYQ==
X-Received: by 2002:a7b:cbd2:: with SMTP id n18mr3391962wmi.112.1623239133007;
        Wed, 09 Jun 2021 04:45:33 -0700 (PDT)
Received: from localhost ([2a02:768:2307:40d6::45a])
        by smtp.gmail.com with ESMTPSA id r4sm23760486wre.84.2021.06.09.04.45.32
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 09 Jun 2021 04:45:32 -0700 (PDT)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com,
        Viresh Kumar <viresh.kumar@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 07/31] arm64: zynqmp: Wire psgtr for zc1751-xm015
Date:   Wed,  9 Jun 2021 13:44:43 +0200
Message-Id: <3fb11fdb9ade828fa174379515e45ba02bc17247.1623239033.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1623239033.git.michal.simek@xilinx.com>
References: <cover.1623239033.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add psgtr description for SATA and USB. Display Port could be also added
but it wasn't tested yet.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

 .../dts/xilinx/zynqmp-zc1751-xm015-dc1.dts    | 31 +++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts
index 5b258129c7ef..f57cb5356cef 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts
@@ -11,6 +11,7 @@
 
 #include "zynqmp.dtsi"
 #include "zynqmp-clk-ccf.dtsi"
+#include <dt-bindings/phy/phy.h>
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/pinctrl/pinctrl-zynqmp.h>
 
@@ -36,6 +37,31 @@ memory@0 {
 		device_type = "memory";
 		reg = <0x0 0x0 0x0 0x80000000>, <0x8 0x00000000 0x0 0x80000000>;
 	};
+
+	clock_si5338_0: clk27 {	/* u55 SI5338-GM */
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <27000000>;
+	};
+
+	clock_si5338_2: clk26 {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <26000000>;
+	};
+
+	clock_si5338_3: clk150 {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <150000000>;
+	};
+};
+
+&psgtr {
+	status = "okay";
+	/* dp, usb3, sata */
+	clocks = <&clock_si5338_0>, <&clock_si5338_2>, <&clock_si5338_3>;
+	clock-names = "ref1", "ref2", "ref3";
 };
 
 &fpd_dma_chan1 {
@@ -328,6 +354,8 @@ &sata {
 	ceva,p1-comwake-params = /bits/ 8 <0x06 0x19 0x08 0x0E>;
 	ceva,p1-burst-params = /bits/ 8 <0x13 0x08 0x4A 0x06>;
 	ceva,p1-retry-params = /bits/ 16 <0x96A4 0x3FFC>;
+	phy-names = "sata-phy";
+	phys = <&psgtr 3 PHY_TYPE_SATA 1 3>;
 };
 
 /* eMMC */
@@ -357,4 +385,7 @@ &usb0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_usb0_default>;
 	dr_mode = "host";
+	phy-names = "usb3-phy";
+	phys = <&psgtr 2 PHY_TYPE_USB3 0 2>;
+	maximum-speed = "super-speed";
 };
-- 
2.31.1

