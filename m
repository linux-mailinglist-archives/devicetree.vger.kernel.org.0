Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D37A4478025
	for <lists+devicetree@lfdr.de>; Thu, 16 Dec 2021 23:49:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231958AbhLPWtR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Dec 2021 17:49:17 -0500
Received: from dfw.source.kernel.org ([139.178.84.217]:56770 "EHLO
        dfw.source.kernel.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232778AbhLPWtQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Dec 2021 17:49:16 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 81CCD61F7C
        for <devicetree@vger.kernel.org>; Thu, 16 Dec 2021 22:49:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 22F83C36AE2;
        Thu, 16 Dec 2021 22:49:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1639694956;
        bh=f33BSFUTFzCkW5L3iBzfWPVfso2duIgKfzGCdqlSpKo=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=uf4LannlCUCFFMFrNegEkchjFmRbPOublrRDviRUritrXnygDvn7LcdQHTULRJ26X
         QdcRPqyKZQCiwEhJV1FktYYOgPIZevJ4AWbAPKhtGxRECp4QMnrvbBQ6zSbhkGHTmm
         rzBYuL9YTjohglIjLOPDjFX2qxacvh6Ny+uOvKYc3zPUd3p9RbtN07SJvSROeBKJDj
         H+eVtrV1/IQ8Jn0iMIB3thkbhvhefp28Pz3+hPa9eID3Nqq0pP9kd/j8jvW1nR/IiV
         NqDFXq2PmoAvMqTjNi0o+eD7uKr90rUU4WyU9RTu7LKr80E3HRm2ouJwCUkWpdCL3O
         WWY3LkNc+mezw==
From:   Dinh Nguyen <dinguyen@kernel.org>
To:     devicetree@vger.kernel.org
Cc:     dinguyen@kernel.org, robh+dt@kernel.org, p.yadav@ti.com
Subject: [PATCHv3 2/2] ARM: dts: socfpga: change qspi to "intel,socfpga-qspi"
Date:   Thu, 16 Dec 2021 16:49:02 -0600
Message-Id: <20211216224902.374403-3-dinguyen@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211216224902.374403-1-dinguyen@kernel.org>
References: <20211216224902.374403-1-dinguyen@kernel.org>
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
which adds the dts compatible "intel,socfpga-qspi" that is specific for
versions that doesn't have the CQSPI_REG_WR_COMPLETION_CTRL register implemented.

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
v3: revert back to "intel,socfpga-qspi"
v2: use both "cdns,qspi-nor" and "cdns,qspi-nor-0010"
---
 arch/arm/boot/dts/socfpga.dtsi                    | 2 +-
 arch/arm/boot/dts/socfpga_arria10.dtsi            | 2 +-
 arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi | 2 +-
 arch/arm64/boot/dts/intel/socfpga_agilex.dtsi     | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/socfpga.dtsi b/arch/arm/boot/dts/socfpga.dtsi
index 0b021eef0b53..7c1d6423d7f8 100644
--- a/arch/arm/boot/dts/socfpga.dtsi
+++ b/arch/arm/boot/dts/socfpga.dtsi
@@ -782,7 +782,7 @@ ocram: sram@ffff0000 {
 		};
 
 		qspi: spi@ff705000 {
-			compatible = "cdns,qspi-nor";
+			compatible = "intel,socfpga-qspi", "cdns,qspi-nor";
 			#address-cells = <1>;
 			#size-cells = <0>;
 			reg = <0xff705000 0x1000>,
diff --git a/arch/arm/boot/dts/socfpga_arria10.dtsi b/arch/arm/boot/dts/socfpga_arria10.dtsi
index a574ea91d9d3..3ba431dfa8c9 100644
--- a/arch/arm/boot/dts/socfpga_arria10.dtsi
+++ b/arch/arm/boot/dts/socfpga_arria10.dtsi
@@ -756,7 +756,7 @@ usb0-ecc@ff8c8800 {
 		};
 
 		qspi: spi@ff809000 {
-			compatible = "cdns,qspi-nor";
+			compatible = "intel,socfpga-qspi", "cdns,qspi-nor";
 			#address-cells = <1>;
 			#size-cells = <0>;
 			reg = <0xff809000 0x100>,
diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
index d301ac0d406b..3ec301bd08a9 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
@@ -594,7 +594,7 @@ emac0-tx-ecc@ff8c0400 {
 		};
 
 		qspi: spi@ff8d2000 {
-			compatible = "cdns,qspi-nor";
+			compatible =  "intel,socfpga-qspi", "cdns,qspi-nor";
 			#address-cells = <1>;
 			#size-cells = <0>;
 			reg = <0xff8d2000 0x100>,
diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
index 163f33b46e4f..0dd2d2ee765a 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
@@ -628,7 +628,7 @@ sdmmca-ecc@ff8c8c00 {
 		};
 
 		qspi: spi@ff8d2000 {
-			compatible = "cdns,qspi-nor";
+			compatible = "intel,socfpga-qspi", "cdns,qspi-nor";
 			#address-cells = <1>;
 			#size-cells = <0>;
 			reg = <0xff8d2000 0x100>,
-- 
2.25.1

