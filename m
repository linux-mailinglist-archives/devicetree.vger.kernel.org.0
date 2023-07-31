Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EC22A7691A5
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 11:25:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232324AbjGaJZl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 05:25:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50566 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229701AbjGaJZG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 05:25:06 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF7E11AC
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 02:23:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1690795420; x=1722331420;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=oNBsD68GrHblpwcBQPrE+eAGi8ZDJc0nSzkSWY1mV24=;
  b=mN6OLZTq1MIHbYpBKmWsCmR2SLwdFn65HmhwW2bXDo2RFdkECw4uaTsV
   /0ypHzswNneiMfliSEBOjCj1kzkYHlL9hrqdvI8k5nW/RcX1hDa+Ltm19
   fBF29PkgwZPoOrVKZGbf84IgAERvMwOTxhFwlVazmNiqrGj0NrPGCLY2T
   +Yf5j2Ngclcbak/UMB8oMKhxbe4idRBMfPFeNJrASAqjh5mQxQzhzEoey
   Gwm25zQwGpJAtuvTbmUj+zPGtZpPHebof8VVQ4OMHtAGoIy/EaqWDM0BC
   bSBl1Oe+1jcKa3ZS6rVa4Wg9Pm9xxdl+ZsTAfc/0M8W0g2QzIyRBcrZSw
   g==;
X-IronPort-AV: E=Sophos;i="6.01,244,1684792800"; 
   d="scan'208";a="32199755"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 31 Jul 2023 11:23:38 +0200
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 29CD1280087;
        Mon, 31 Jul 2023 11:23:38 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Markus Niebel <Markus.Niebel@ew.tq-group.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 3/3] ARM: dts: ls1021a: add TQMLS1021A flash partition layout
Date:   Mon, 31 Jul 2023 11:23:31 +0200
Message-Id: <20230731092331.358427-4-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230731092331.358427-1-alexander.stein@ew.tq-group.com>
References: <20230731092331.358427-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The bootloader does not add the partitions into DT, so add them manually
here.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 .../boot/dts/nxp/ls/ls1021a-tqmls1021a.dtsi   | 31 +++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/ls/ls1021a-tqmls1021a.dtsi b/arch/arm/boot/dts/nxp/ls/ls1021a-tqmls1021a.dtsi
index 7fd35d124fba..1b13851ad997 100644
--- a/arch/arm/boot/dts/nxp/ls/ls1021a-tqmls1021a.dtsi
+++ b/arch/arm/boot/dts/nxp/ls/ls1021a-tqmls1021a.dtsi
@@ -72,5 +72,36 @@ qflash0: flash@0 {
 		spi-rx-bus-width = <4>;
 		spi-tx-bus-width = <4>;
 		reg = <0>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			uboot@0 {
+				label = "U-Boot-PBL";
+				reg = <0x0 0xe0000>;
+			};
+
+			env@e0000 {
+				label = "U-Boot Environment";
+				reg = <0xe0000 0x10000>;
+			};
+
+			dtb@f0000 {
+				label = "DTB";
+				reg = <0xf0000 0x10000>;
+			};
+
+			linux@100000 {
+				label = "Linux";
+				reg = <0x100000 0x700000>;
+			};
+
+			rootfs@800000 {
+				label = "RootFS";
+				reg = <0x800000 0x3800000>;
+			};
+		};
 	};
 };
-- 
2.34.1

