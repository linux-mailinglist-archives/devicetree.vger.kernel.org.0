Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 942B62FE7A1
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 11:31:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729227AbhAUK37 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jan 2021 05:29:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56762 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729370AbhAUK3T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jan 2021 05:29:19 -0500
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58E17C06179F
        for <devicetree@vger.kernel.org>; Thu, 21 Jan 2021 02:27:22 -0800 (PST)
Received: by mail-ed1-x52c.google.com with SMTP id b21so1803077edy.6
        for <devicetree@vger.kernel.org>; Thu, 21 Jan 2021 02:27:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=GNK9N3T38YhUgrGC5k8OofogzzGXsoOOgdmBxZQfsto=;
        b=HYyuQYhb3vlambuevU2qg2glhaHQfUL6mSxu5Ia29/jyY8dKjN+Qwsh/lSsG6zfUnu
         CzLpvhg5FXccAW+CRtcm21ysFXZ5WBNOgU7xm58ESR+Jo6hWOfoJ+YcenKmsyaOHsSev
         uu/0msOh0QStE46FnqnkmCuvwqTrh6sl069sSchhQdrfCbUuo7uTR5e9oE/QK6ox59qt
         9nIhM7m19smeFfhhJIJkqAK9lTIRvLPStI9sOXyGDF2tkVaLQaqU1+fK9/f0O3TLsoI+
         SL4cKRwQIE/kjt7NZzGqM2g4mQxK85+VKxgeWSBTMZOxz6cGzqg+N19QKzD2u6WZcyel
         ZPaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=GNK9N3T38YhUgrGC5k8OofogzzGXsoOOgdmBxZQfsto=;
        b=Qs6hM1o1Rx19C1EZ9/CLy2hjml3n8iRnO9ILrtQBOfuMfYCHj1+d3sstQ2Sd4BhmTE
         v6Vgz8L4Fq/7evSNUUbf5h8uEB1QsSJzTew2cgJ2188pURoP/NO+2MK+NKkZOA+98xP/
         ARgUwevqW2JacDefbexkm8XaiPsOtcFZ0z4I6yBgqyI68n79qjmHejz1maY6gFs37qxC
         6wlXERZwL5mVDCac6ykfDcoPhr+fzROhkZv5FphLBsovLkcq/Vg1R7r1yWGHPrt3pjAt
         qlFBZZ4presMy+/peVol+lmFaKm1MbzDBRfoZSThP52Tmp7xWIv336Ws89iHpwxMVKyN
         lzIw==
X-Gm-Message-State: AOAM530oD/sx/FlRDK7mqfBMuUz/bf9atepbRe1HYyPo7ykQQqYJ3GQ4
        VghqcQ66mzRbKE/zWygFDSt8DQ==
X-Google-Smtp-Source: ABdhPJzVDZilXB8vF30xYM1cxZML55xMoXet5ush1lgqIu5cj0B5g8/s3k4+VMc8XCxR1x3u/9nFNQ==
X-Received: by 2002:a50:a086:: with SMTP id 6mr10506311edo.70.1611224841107;
        Thu, 21 Jan 2021 02:27:21 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
        by smtp.gmail.com with ESMTPSA id n15sm2037406ejg.5.2021.01.21.02.27.20
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 21 Jan 2021 02:27:20 -0800 (PST)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com
Cc:     Kalyani Akula <kalyani.akula@xilinx.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 09/12] arm64: dts: zynqmp: Wire zynqmp qspi controller
Date:   Thu, 21 Jan 2021 11:26:57 +0100
Message-Id: <5cebbc59a452f282c4ce0f0e1dffecadac8f126a.1611224800.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <cover.1611224800.git.michal.simek@xilinx.com>
References: <cover.1611224800.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add missing ZynqMP qspi IP. It works in single mode only.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

Changes in v2: None

 arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi |  4 ++++
 arch/arm64/boot/dts/xilinx/zynqmp.dtsi         | 14 ++++++++++++++
 2 files changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi
index 7af57619436d..6a577e1383c1 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi
@@ -164,6 +164,10 @@ &pcie {
 	clocks = <&zynqmp_clk PCIE_REF>;
 };
 
+&qspi {
+	clocks = <&zynqmp_clk QSPI_REF>, <&zynqmp_clk LPD_LSBUS>;
+};
+
 &sata {
 	clocks = <&zynqmp_clk SATA_REF>;
 };
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
index 19b349f00ce7..533c19b80283 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
+++ b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
@@ -595,6 +595,20 @@ pcie_intc: legacy-interrupt-controller {
 			};
 		};
 
+		qspi: spi@ff0f0000 {
+			compatible = "xlnx,zynqmp-qspi-1.0";
+			status = "disabled";
+			clock-names = "ref_clk", "pclk";
+			interrupts = <0 15 4>;
+			interrupt-parent = <&gic>;
+			num-cs = <1>;
+			reg = <0x0 0xff0f0000 0x0 0x1000>,
+			      <0x0 0xc0000000 0x0 0x8000000>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			power-domains = <&zynqmp_firmware PD_QSPI>;
+		};
+
 		psgtr: phy@fd400000 {
 			compatible = "xlnx,zynqmp-psgtr-v1.1";
 			status = "disabled";
-- 
2.30.0

