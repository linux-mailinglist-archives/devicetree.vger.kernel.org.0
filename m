Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 313392CBF1B
	for <lists+devicetree@lfdr.de>; Wed,  2 Dec 2020 15:10:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388857AbgLBOIZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Dec 2020 09:08:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388779AbgLBOIY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Dec 2020 09:08:24 -0500
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A087FC061A56
        for <devicetree@vger.kernel.org>; Wed,  2 Dec 2020 06:06:36 -0800 (PST)
Received: by mail-ej1-x635.google.com with SMTP id m19so4427259ejj.11
        for <devicetree@vger.kernel.org>; Wed, 02 Dec 2020 06:06:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=zvj9L8sor8CyXho3VJNOStq16ikUZFmX+/hnEaB78Fg=;
        b=tUDiuwnMlvYXKyUbget5sHaWpVGEzFIXOzFPVrC+hhScmTZNlbAai4lW/9WjcVkvwB
         w0G9qh1avdlNUvL5iybcp0i+2w5mLc/JCoXtlajxBTHcU2BkHmghM15EyNIA55D5pK2O
         j9y+k9KfW263WQTtmk9AohfK8DCOZzoliZoNH7+sZdKvvv86QbxJfp9wGE046KWq1rE/
         HtzMpEMuAcfRVbK2Upbh69BwYk8c6CANVX9Ft/hpL8r6zcAPM3x9+miDeUVBFhaMRmYw
         NX7FLJWCQSawY49+1lYCPOuS2XQzIssvF6sSmyB4ZY3PejfmudT8SNV8vZGh7SAo8W2t
         1/mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=zvj9L8sor8CyXho3VJNOStq16ikUZFmX+/hnEaB78Fg=;
        b=S6L8bJyy071i+Yh/htdj0laF3JxZNwN5LxOcdu+urVypRW5bhtZwqamBRHkY1G6cBr
         DSTch03I3ptGlGirB8+0DPBefl3ZosDXJPgilbugqm7gRR/4ta5HoCq+BW/3DL8qGurR
         D81pVIYc4Uc/Vnb0D6MFD1ddE/qqTTmkPvxNPKXRQb/7n93OykHDxOnF0ufmPxH+WdUU
         py9e56gTqUrPTdEoTHtyaVMG0c1hqyVBbIzf0tl5+6Y2KrItbpsuxEAOT4QXgk3zCvmk
         vfy8yqSpq0bBlrpor/lUGRjeXYnVifN551ivoMHkCokMuycNlMmEwntwclkNhLLrs+hZ
         qByg==
X-Gm-Message-State: AOAM531E0c4n1JaJtS4zmp2maL3QLSKuXHAk8Sy+3FDUJsAUEZG+QZ8L
        ADlEUI3xQtNjcVvmMqcQXy+/Tg==
X-Google-Smtp-Source: ABdhPJzwbTfV0676rWepFUWvNAYHfb0uHZGjPN2u6o84yNTOfdjUmdy1K5CDwdPouZvZvQ8AORZlPA==
X-Received: by 2002:a17:906:81ca:: with SMTP id e10mr2385845ejx.449.1606917995393;
        Wed, 02 Dec 2020 06:06:35 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
        by smtp.gmail.com with ESMTPSA id v8sm32493edt.3.2020.12.02.06.06.33
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 02 Dec 2020 06:06:34 -0800 (PST)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com
Cc:     Kalyani Akula <kalyani.akula@xilinx.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Manish Narani <manish.narani@xilinx.com>,
        Rajan Vaja <rajan.vaja@xilinx.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 10/12] arm64: dts: zynqmp: Add missing lpd watchdog node
Date:   Wed,  2 Dec 2020 15:06:09 +0100
Message-Id: <645e5dc57a57bca766bf2a7967ac19ca43b68df2.1606917949.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <cover.1606917949.git.michal.simek@xilinx.com>
References: <cover.1606917949.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Xilinx ZynqMP SoC has FPD (Full Power Domain) and LPD (Low Power Domain)
watchdogs. There are cases where also LPD WDT should be used by Arm cores
that's why list it with disabled status.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

 arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi | 4 ++++
 arch/arm64/boot/dts/xilinx/zynqmp.dtsi         | 9 +++++++++
 2 files changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi
index 6a577e1383c1..3ca7e4ee51b5 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi
@@ -223,3 +223,7 @@ &usb1 {
 &watchdog0 {
 	clocks = <&zynqmp_clk WDT>;
 };
+
+&lpd_watchdog {
+	clocks = <&zynqmp_clk LPD_WDT>;
+};
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
index 4312d4594dba..704696811116 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
+++ b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
@@ -808,5 +808,14 @@ watchdog0: watchdog@fd4d0000 {
 			reg = <0x0 0xfd4d0000 0x0 0x1000>;
 			timeout-sec = <10>;
 		};
+
+		lpd_watchdog: watchdog@ff150000 {
+			compatible = "cdns,wdt-r1p2";
+			status = "disabled";
+			interrupt-parent = <&gic>;
+			interrupts = <0 52 1>;
+			reg = <0x0 0xff150000 0x0 0x1000>;
+			timeout-sec = <10>;
+		};
 	};
 };
-- 
2.29.2

