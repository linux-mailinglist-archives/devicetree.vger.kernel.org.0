Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D297873E212
	for <lists+devicetree@lfdr.de>; Mon, 26 Jun 2023 16:24:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231240AbjFZOYj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jun 2023 10:24:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229650AbjFZOYU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Jun 2023 10:24:20 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 282AE10FA
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 07:23:42 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 77FE060EAB
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 14:18:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F050FC433C8;
        Mon, 26 Jun 2023 14:18:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1687789120;
        bh=ndiYDbtOCK6BF7vBXWo/UzfWqJQEmf/9rTYycHtkgLQ=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=SceMcukoHGe5Avkn62GcN9Hhoj7dys0j1wG6ut8V0K45zSsN4GmkYimVr7kDmwT8X
         LBDpsJPG7k6DgdWwjoLiwiyDXHS6WwIY7pGz521guMQ8o89RlYisCa4tk56qqYPUuf
         hgvI8OhSfQWU6c5dzgt9ZDjnqSgcJivD7qL5eE9JJKH5RVrx3JDmK55DBHg7lxw1cJ
         eOVS4n22kViM68D5piUqHJKlkUF7j98yZVl6q7LAG6vd+H3qTBivM9UvmcuMGZBqIi
         Z+FTbkNNYawLZMX1M2zNVVf1oVgJrz69eOe1gm6WII59i7WHfT/+FbghYIYtNIRB8P
         cTZdXygtJFG7g==
From:   Dinh Nguyen <dinguyen@kernel.org>
To:     devicetree@vger.kernel.org
Cc:     dinguyen@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowskii+dt@linaro.org, conor+dt@kernel.org
Subject: [PATCH 1/5] arm64: dts: socfpga: agilex/n5x/stratix10: fix dtbs_check warning for partitions
Date:   Mon, 26 Jun 2023 09:18:22 -0500
Message-Id: <20230626141826.414777-2-dinguyen@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230626141826.414777-1-dinguyen@kernel.org>
References: <20230626141826.414777-1-dinguyen@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

flash@0: partitions: Unevaluated properties are not allowed
('partition@3FE0000' was unexpected)

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts      | 2 +-
 arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_nand.dts | 4 ++--
 arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dts          | 2 +-
 arch/arm64/boot/dts/intel/socfpga_n5x_socdk.dts             | 2 +-
 4 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts
index 38ae674f2f02..c66da5a94691 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts
@@ -205,7 +205,7 @@ qspi_boot: partition@0 {
 				reg = <0x0 0x03FE0000>;
 			};
 
-			qspi_rootfs: partition@3FE0000 {
+			qspi_rootfs: partition@3fe0000 {
 				label = "Root Filesystem - JFFS2";
 				reg = <0x03FE0000 0x0C020000>;
 			};
diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_nand.dts b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_nand.dts
index ede99dcc0558..a9ea9e6ec6b3 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_nand.dts
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_nand.dts
@@ -103,9 +103,9 @@ &nand {
 	status = "okay";
 
 	flash@0 {
+		reg = <0>;
 		#address-cells = <1>;
 		#size-cells = <1>;
-		reg = <0>;
 		nand-bus-width = <16>;
 
 		partition@0 {
@@ -194,7 +194,7 @@ qspi_boot: partition@0 {
 				reg = <0x0 0x03FE0000>;
 			};
 
-			qspi_rootfs: partition@3FE0000 {
+			qspi_rootfs: partition@3fe0000 {
 				label = "Root Filesystem - JFFS2";
 				reg = <0x03FE0000 0x0C020000>;
 			};
diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dts b/arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dts
index 07c3f8876613..b6e5e69fd8e5 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dts
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dts
@@ -131,7 +131,7 @@ qspi_boot: partition@0 {
 				reg = <0x0 0x03FE0000>;
 			};
 
-			qspi_rootfs: partition@3FE0000 {
+			qspi_rootfs: partition@3fe0000 {
 				label = "Root Filesystem - JFFS2";
 				reg = <0x03FE0000 0x0C020000>;
 			};
diff --git a/arch/arm64/boot/dts/intel/socfpga_n5x_socdk.dts b/arch/arm64/boot/dts/intel/socfpga_n5x_socdk.dts
index 08c088571270..7b1ced8e1d12 100644
--- a/arch/arm64/boot/dts/intel/socfpga_n5x_socdk.dts
+++ b/arch/arm64/boot/dts/intel/socfpga_n5x_socdk.dts
@@ -109,7 +109,7 @@ qspi_boot: partition@0 {
 				reg = <0x0 0x03FE0000>;
 			};
 
-			qspi_rootfs: partition@3FE0000 {
+			qspi_rootfs: partition@03fe0000 {
 				label = "Root Filesystem - JFFS2";
 				reg = <0x03FE0000 0x0C020000>;
 			};
-- 
2.25.1

