Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2393D580547
	for <lists+devicetree@lfdr.de>; Mon, 25 Jul 2022 22:14:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237101AbiGYUOA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jul 2022 16:14:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45670 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236908AbiGYUNJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jul 2022 16:13:09 -0400
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D71F2228D
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 13:12:51 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by sin.source.kernel.org (Postfix) with ESMTPS id 68634CE13A5
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 20:12:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 24BCBC341CE;
        Mon, 25 Jul 2022 20:12:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1658779967;
        bh=A4flhkeq1zsfmim3iACKHuB4Cu2AgFeh8mZAnq1l7KA=;
        h=From:To:Cc:Subject:Date:From;
        b=l9c5mBbrpxU6S+pr1sXa1zJ6gaLO5zZiHiazdom4hkLiFOHn6Bs+/fBgGvhENXdHQ
         3NjvpLVXDIvB3OkW/BV7reV0RfeTOZEDED9yFFOyk7Jum/YZ2wfpM0USXJmPUZ/pFp
         oJP4ZGVCIx2inZ0v/w0tYV8J9JLFpqXW/KiWlB70XKl4Agzrm+HO2bCA2Ja/w3tRJJ
         aFP5krMYxPtsukMnfbBME7k4cMwX9aCA3oqW9QOJSB7xgGF5ApFJS+CEpNne4NjgWv
         Kd9W7Ktax1w6nlMXoYnte0v61Amf6jGrTtBSYukQHTpgaJKB0/5DFKJbJm1ODKvaSI
         ut5E8HxiyHIHA==
From:   Dinh Nguyen <dinguyen@kernel.org>
To:     devicetree@vger.kernel.org
Cc:     dinguyen@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Subject: [PATCH] ARM: dts: add EMAC AXI settings for Cyclone5
Date:   Mon, 25 Jul 2022 15:12:39 -0500
Message-Id: <20220725201239.3040848-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-7.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the dts entries needed to support the EMAC AXI bus settings on the
Cyclone5.

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm/boot/dts/socfpga.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/socfpga.dtsi b/arch/arm/boot/dts/socfpga.dtsi
index bfaef45bdd04..2459f3cd7dd9 100644
--- a/arch/arm/boot/dts/socfpga.dtsi
+++ b/arch/arm/boot/dts/socfpga.dtsi
@@ -561,6 +561,12 @@ fpgamgr0: fpgamgr@ff706000 {
 			interrupts = <0 175 4>;
 		};
 
+		socfpga_axi_setup: stmmac-axi-config {
+			snps,wr_osr_lmt = <0xf>;
+			snps,rd_osr_lmt = <0xf>;
+			snps,blen = <0 0 0 0 16 0 0>;
+		};
+
 		gmac0: ethernet@ff700000 {
 			compatible = "altr,socfpga-stmmac", "snps,dwmac-3.70a", "snps,dwmac";
 			altr,sysmgr-syscon = <&sysmgr 0x60 0>;
@@ -576,6 +582,7 @@ gmac0: ethernet@ff700000 {
 			snps,perfect-filter-entries = <128>;
 			tx-fifo-depth = <4096>;
 			rx-fifo-depth = <4096>;
+			snps,axi-config = <&socfpga_axi_setup>;
 			status = "disabled";
 		};
 
@@ -594,6 +601,7 @@ gmac1: ethernet@ff702000 {
 			snps,perfect-filter-entries = <128>;
 			tx-fifo-depth = <4096>;
 			rx-fifo-depth = <4096>;
+			snps,axi-config = <&socfpga_axi_setup>;
 			status = "disabled";
 		};
 
-- 
2.25.1

