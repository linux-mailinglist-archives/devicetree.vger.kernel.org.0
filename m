Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B87902CBF1A
	for <lists+devicetree@lfdr.de>; Wed,  2 Dec 2020 15:10:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387451AbgLBOIY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Dec 2020 09:08:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39300 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388779AbgLBOIX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Dec 2020 09:08:23 -0500
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2389FC061A52
        for <devicetree@vger.kernel.org>; Wed,  2 Dec 2020 06:06:32 -0800 (PST)
Received: by mail-ed1-x534.google.com with SMTP id d18so3999038edt.7
        for <devicetree@vger.kernel.org>; Wed, 02 Dec 2020 06:06:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=5kGGPno4KI9ROcXeIw+hoBmYc900cxDg8Hcle1V5lUQ=;
        b=DLzggIsXic3gDWS3B+/O+k8OsLTtT9P/uXNnfO/n8/qHXlLRDdJCcl8/78SEjGnjyH
         1H58uCj8sXNHjbOpjvLO7+/jNeiXcKIOaUmtT1BiICyj2WJIx/K9+Hr8X9S8wTm8dN5v
         sN6iMxYGh6lLyYWniWdYnpPGBtNAXNK66CadVK5at96VnIQETGaqkW01wWd6/iOtUpFI
         rBpF5Tbjr1SYqFCmxSIsdp50P4uYfLsZxnMb30eDZ82pomTimp3BFsL8Cos0dw4gxlPY
         2Mxl5naqChNtQ8vOWEiVv0Jw1jSxhVX7ZTCbXnFuOX0OHPBduxmj6u/opvISqNOneR/X
         /1wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=5kGGPno4KI9ROcXeIw+hoBmYc900cxDg8Hcle1V5lUQ=;
        b=uJDFuYMM5RTHBPbg8kgNHqCebuH/RUHTAg3P9dwaQFnLrEZY5sMuVJs6MZzxbdpK7I
         ErWeGJEGcZ8Bggr3HbhsnLM5nQXsUzfZGtehJca70+zUS5IfWA1El+aNAD4fKceLcO/8
         vtje4sfhzIH6uvv+fsU+O4OSYDvizfhI0/gC5/lHvq4UF9+OJcYQYR9V2Z1CEZ8sl5xw
         Y744s2vcmPrpw4n4EyYo3Kum2dR6UGmFIp3CYjap7Rhz2sO4G8fA20yzp5AVSQv1dyp4
         fWFpNfYQJtc3AS975ou7l91WHhzenjDoL8UDnaPYxYZH635a8Kgi3+Us+ajmL0mQoxQp
         1xrA==
X-Gm-Message-State: AOAM532otNFeSCq4iUOkhCEgzc60kbpiy7WH4Y1c1sml4MevTBSO8fzW
        ywD1My/xkWpbYbobPFaHpObJlw==
X-Google-Smtp-Source: ABdhPJw0CUnH2U4CKTf8DG2npagiJTq9FOyhn3VMwLcXFOcpgbuPdND55lyr+JwYBN1bQjEG4QvVlg==
X-Received: by 2002:a50:bec4:: with SMTP id e4mr39574edk.65.1606917990789;
        Wed, 02 Dec 2020 06:06:30 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
        by smtp.gmail.com with ESMTPSA id da9sm26813edb.13.2020.12.02.06.06.29
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 02 Dec 2020 06:06:30 -0800 (PST)
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
Subject: [PATCH 08/12] arm64: dts: zynqmp: Wire arasan nand controller
Date:   Wed,  2 Dec 2020 15:06:07 +0100
Message-Id: <96d84568afbbe97e3520b71d8e3e1da7ef10dc66.1606917949.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <cover.1606917949.git.michal.simek@xilinx.com>
References: <cover.1606917949.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add missing arasan controller with clocks. Disable it by default. Every
board can enable it with specifying others properties.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

 arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi |  4 ++++
 arch/arm64/boot/dts/xilinx/zynqmp.dtsi         | 12 ++++++++++++
 2 files changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi
index c94c3bb67edc..7af57619436d 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi
@@ -116,6 +116,10 @@ &lpd_dma_chan8 {
 	clocks = <&zynqmp_clk ADMA_REF>, <&zynqmp_clk LPD_LSBUS>;
 };
 
+&nand0 {
+	clocks = <&zynqmp_clk NAND_REF>, <&zynqmp_clk LPD_LSBUS>;
+};
+
 &gem0 {
 	clocks = <&zynqmp_clk LPD_LSBUS>, <&zynqmp_clk GEM0_REF>,
 		 <&zynqmp_clk GEM0_TX>, <&zynqmp_clk GEM0_RX>,
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
index 8e9b54b5e70c..fa7ea7f56299 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
+++ b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
@@ -461,6 +461,18 @@ mc: memory-controller@fd070000 {
 			interrupts = <0 112 4>;
 		};
 
+		nand0: nand-controller@ff100000 {
+			compatible = "xlnx,zynqmp-nand-controller", "arasan,nfc-v3p10";
+			status = "disabled";
+			reg = <0x0 0xff100000 0x0 0x1000>;
+			clock-names = "controller", "bus";
+			interrupt-parent = <&gic>;
+			interrupts = <0 14 4>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			power-domains = <&zynqmp_firmware PD_NAND>;
+		};
+
 		gem0: ethernet@ff0b0000 {
 			compatible = "cdns,zynqmp-gem", "cdns,gem";
 			status = "disabled";
-- 
2.29.2

