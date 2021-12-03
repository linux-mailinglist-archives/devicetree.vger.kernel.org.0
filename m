Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4749C467C93
	for <lists+devicetree@lfdr.de>; Fri,  3 Dec 2021 18:32:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353369AbhLCRgR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Dec 2021 12:36:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39576 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245721AbhLCRgR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Dec 2021 12:36:17 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21C7BC061751
        for <devicetree@vger.kernel.org>; Fri,  3 Dec 2021 09:32:53 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id D7CE6B828D7
        for <devicetree@vger.kernel.org>; Fri,  3 Dec 2021 17:32:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B0613C53FD2;
        Fri,  3 Dec 2021 17:32:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1638552770;
        bh=g9WduYc0cmHyxnccKKEmFn++EBj56oFa39TWtvIvq9Y=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=AQiyP5cL8aocS/IqB1ucgRnsmNFB0Xf3y++15iFWuLnCKc4S8e56TV2Qe0EwgjUuZ
         //R+4wtk77pH3qgLpSnWQR0we3x2X0YqPPknyRBfZMThgZAqsrt9OYC3xGfwt8i9fh
         kj4O6KwyP/RIMolaVlzglzg07nZ1MtaCFjUYRlzg8enluLGY1xKRcMmApms1jLWIm/
         8+tGcRGgJbQnVb10rAdX3WONSFZ99j9i4M/piLb9uOnTlR5NiRbmvC0zQ7kcyQ/3mr
         lUrf8YFOsfYgvUSMrNErF3iwuY2SheN5ShnLFkqGx9G+uSjr7Dwxk1VFo3LLAD6ieG
         IfrqkpgF7SiTA==
From:   Dinh Nguyen <dinguyen@kernel.org>
To:     devicetree@vger.kernel.org
Cc:     dinguyen@kernel.org, broonie@kernel.org, robh+dt@kernel.org,
        p.yadav@ti.com
Subject: [PATCHv2 2/3] ARM: dts: socfpga: change qspi to "cdns,qspi-nor-ver-00-10"
Date:   Fri,  3 Dec 2021 11:32:43 -0600
Message-Id: <20211203173244.3136470-2-dinguyen@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211203173244.3136470-1-dinguyen@kernel.org>
References: <20211203173244.3136470-1-dinguyen@kernel.org>
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

