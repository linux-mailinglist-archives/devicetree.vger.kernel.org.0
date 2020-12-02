Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4CAD62CBF19
	for <lists+devicetree@lfdr.de>; Wed,  2 Dec 2020 15:10:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388847AbgLBOIY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Dec 2020 09:08:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387451AbgLBOIX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Dec 2020 09:08:23 -0500
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D944C061A54
        for <devicetree@vger.kernel.org>; Wed,  2 Dec 2020 06:06:34 -0800 (PST)
Received: by mail-ed1-x52c.google.com with SMTP id l5so3974947edq.11
        for <devicetree@vger.kernel.org>; Wed, 02 Dec 2020 06:06:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=7BFCHrmzrOqkLjq4ZogRCirDfiv1ADrbWNpSxaRd9L8=;
        b=ms9iWFkReozQrKn/0bBAfxCaEEUVxvE8oH/ihmQ95Z8EM51FYNL2tezD9XUGDzN9g/
         0E+csaOzWjXrTA9d0BJVI3WXsPVdVJaRQMdDRAlH7+uDzHXuv0IpfGVs1uX9dw4h3PB3
         KzNrmfM+rGoAGxSlQg8oJKJYPO98Lp2DL/HLhlh3yeoDqDOVRLUCE0UbBYaBUZ96d7OS
         K3GUzQgmPIuJBlwoEoHY13Xt3cQ9azn1cC1zAKJNxVnoV1nkb79hEaNX5iDb2rO/18Pd
         RTBovpmWuaevagI8FqjUgOFPPawQjpo1gV/9se8tNSnVG1Wqu+fqLHv31IoZNFOtgdoG
         KyEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=7BFCHrmzrOqkLjq4ZogRCirDfiv1ADrbWNpSxaRd9L8=;
        b=XQUDmuqALnqam1NSLTqy5EUQh/Lzxe2Ay8C1Imopg0wyifnJftI/qN2OjDlxojHqyH
         56bztNsxqrKHZS+ubCje5AtRzHcHFk6QV7w4/XjkZdFCeCL6dDykfwne9Nm0aYRkKgEK
         wu9cgfH1l5LHix2w8hKxZlsZ17ivTfpGy0wt39RzuCe1X9JfWt8fQ5RU5ACzipVdcVgr
         gBImh6/dBRwkCpvlMxrWCjDqoH1qi4d8rsmZTOfflLbbL5uk5smxtWfC+TeoQNx51qlV
         zUNArXpe1vlju6Cep7OAMlSerGR3AbBzpdQdDoHKyci4OOgwRT/BczfoWjuG/au3tsyy
         Nruw==
X-Gm-Message-State: AOAM530bKOn0uGJKqlx/7a4m++ClepltScF7hLglxN9DWX+vnVBboXEZ
        6ZqoNqth8AiXqa3YHReorIOGhQ==
X-Google-Smtp-Source: ABdhPJwm4XCItwDaa1EUc8MFClCW8lSiRf6xeHowl7GdIA+tAYIyrrW6NhwdeIyqwlCWnUNadqShrw==
X-Received: by 2002:a50:c19a:: with SMTP id m26mr53744edf.302.1606917992907;
        Wed, 02 Dec 2020 06:06:32 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
        by smtp.gmail.com with ESMTPSA id z19sm1282757ejj.101.2020.12.02.06.06.32
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 02 Dec 2020 06:06:32 -0800 (PST)
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
Subject: [PATCH 09/12] arm64: dts: zynqmp: Wire zynqmp qspi controller
Date:   Wed,  2 Dec 2020 15:06:08 +0100
Message-Id: <13f970a9859ac0c15381e532f05371d939c138c6.1606917949.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <cover.1606917949.git.michal.simek@xilinx.com>
References: <cover.1606917949.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add missing ZynqMP qspi IP. It works in single mode only.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

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
index fa7ea7f56299..4312d4594dba 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
+++ b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
@@ -607,6 +607,20 @@ pcie_intc: legacy-interrupt-controller {
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
2.29.2

