Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A3110467D1B
	for <lists+devicetree@lfdr.de>; Fri,  3 Dec 2021 19:17:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1382522AbhLCSUs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Dec 2021 13:20:48 -0500
Received: from ams.source.kernel.org ([145.40.68.75]:57498 "EHLO
        ams.source.kernel.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1382517AbhLCSUs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Dec 2021 13:20:48 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 95DE4B828E6
        for <devicetree@vger.kernel.org>; Fri,  3 Dec 2021 18:17:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6CDB8C53FCE;
        Fri,  3 Dec 2021 18:17:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1638555442;
        bh=g9WduYc0cmHyxnccKKEmFn++EBj56oFa39TWtvIvq9Y=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=qdEQW9CA6CaBFGn2nT7W4bMJPEGJvPioGxffjChVTXiMrrs82BZwfWZHJ4Q59gAiA
         s0yG0BJ2XWEs6xp9K0d3GYomjT9MuCuVdp9EJK+dC1f5vcFrI7AVNm2y88DdyrK+ZU
         a2GR70vFsn5v3gwPqHuSn/UlOF0Em7mzF6/ALnc1MjD9Mo2009bm6KP/XR2YAZa1xm
         SQC2Ly/46iH2GHnAh3VYT9Vh77k3jiHMMMa/fAsrhTkeQWPWYcyGBg2M6Jyvt8b+Dv
         s8aJ43F6LlybsGwqBsNjOK6lcreq4r5akStxQNTAB1TmdlHHkw6xWrY6YZ1Fco35Sp
         E34D62iv7p4eQ==
From:   Dinh Nguyen <dinguyen@kernel.org>
To:     devicetree@vger.kernel.org
Cc:     dinguyen@kernel.org, broonie@kernel.org, robh+dt@kernel.org,
        p.yadav@ti.com
Subject: [PATCHv2 2/3] ARM: dts: socfpga: change qspi to "cdns,qspi-nor-ver-00-10"
Date:   Fri,  3 Dec 2021 12:17:13 -0600
Message-Id: <20211203181714.3138611-2-dinguyen@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211203181714.3138611-1-dinguyen@kernel.org>
References: <20211203181714.3138611-1-dinguyen@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Because of commit 9cb2ff111712 ("spi: cadence-quadspi: Disable Auto-HW polling"),
which does a write to the CQSPI_REG_WR_COMPLETION_CTRL register
regardless of any condition. Well, the Cadence QuadSPI controller on
Intel's SoCFPGA platforms does not implement the
CQSPI_REG_WR_COMPLETION_CTRL register, thus a write to this register
results in a crash!

So starting with v5.16, I introduced the patch
98d948eb833 ("spi: cadence-quadspi: fix write completion support"),
which adds the dts property "cdns,qspi-nor-ver-00-10" that is specific for
versions that doesn't have the CQSPI_REG_WR_COMPLETION_CTRL register implemented.

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
v2: use both "cdns,qspi-nor" and "cdns,qspi-nor-0010"
---
 arch/arm/boot/dts/socfpga.dtsi                    | 2 +-
 arch/arm/boot/dts/socfpga_arria10.dtsi            | 2 +-
 arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi | 2 +-
 arch/arm64/boot/dts/intel/socfpga_agilex.dtsi     | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/socfpga.dtsi b/arch/arm/boot/dts/socfpga.dtsi
index 0b021eef0b53..c1f85d57ee96 100644
--- a/arch/arm/boot/dts/socfpga.dtsi
+++ b/arch/arm/boot/dts/socfpga.dtsi
@@ -782,7 +782,7 @@ ocram: sram@ffff0000 {
 		};
 
 		qspi: spi@ff705000 {
-			compatible = "cdns,qspi-nor";
+			compatible = "cdns,qspi-nor-ver-00-10", "cdns,qspi-nor";
 			#address-cells = <1>;
 			#size-cells = <0>;
 			reg = <0xff705000 0x1000>,
diff --git a/arch/arm/boot/dts/socfpga_arria10.dtsi b/arch/arm/boot/dts/socfpga_arria10.dtsi
index a574ea91d9d3..98166ad0b098 100644
--- a/arch/arm/boot/dts/socfpga_arria10.dtsi
+++ b/arch/arm/boot/dts/socfpga_arria10.dtsi
@@ -756,7 +756,7 @@ usb0-ecc@ff8c8800 {
 		};
 
 		qspi: spi@ff809000 {
-			compatible = "cdns,qspi-nor";
+			compatible = "cdns,qspi-nor-ver-00-10", "cdns,qspi-nor";
 			#address-cells = <1>;
 			#size-cells = <0>;
 			reg = <0xff809000 0x100>,
diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
index d301ac0d406b..aac29503a3a3 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
@@ -594,7 +594,7 @@ emac0-tx-ecc@ff8c0400 {
 		};
 
 		qspi: spi@ff8d2000 {
-			compatible = "cdns,qspi-nor";
+			compatible =  "cdns,qspi-nor-ver-00-10", "cdns,qspi-nor";
 			#address-cells = <1>;
 			#size-cells = <0>;
 			reg = <0xff8d2000 0x100>,
diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
index 163f33b46e4f..c72d5c9253fb 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
@@ -628,7 +628,7 @@ sdmmca-ecc@ff8c8c00 {
 		};
 
 		qspi: spi@ff8d2000 {
-			compatible = "cdns,qspi-nor";
+			compatible = "cdns,qspi-nor-ver-00-10", "cdns,qspi-nor";
 			#address-cells = <1>;
 			#size-cells = <0>;
 			reg = <0xff8d2000 0x100>,
-- 
2.25.1

