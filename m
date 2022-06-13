Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D4E7154899E
	for <lists+devicetree@lfdr.de>; Mon, 13 Jun 2022 18:05:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243322AbiFMPQW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Jun 2022 11:16:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1386936AbiFMPPQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Jun 2022 11:15:16 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D4321AF11
        for <devicetree@vger.kernel.org>; Mon, 13 Jun 2022 05:34:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1655123645; x=1686659645;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=CYHQbNQFfLTPmy8zzVRQnxIy3+jAYiM8N2MQGnA2XE4=;
  b=qgLjiJitRTXZW8kT/FBmygFXKNHdJ339HJI5D/j9TPYN7mLDSYXpPfwi
   6jcVNNeADL0Lye2a9rdiWh4KNPctf2irvjVOm7AMthrtZBA6KWVwU/Bdc
   SizpKdbgTiT2aIWDxjqi3GwWvcixi5wGnqBX8Vz1y7csw/mbmNVHMYx+q
   ZGwegBP4VuPh2VpEzA7aF+uCHAi4ylSzCs2w0VYBx6MKd7XPFSKSWNclD
   flsX2/psLTHs7dUJ/Ch5tv3GzavWqFWblVwa5F42lyR4dpBseXW7wzBVE
   fy7hlCaikpXpRKCRxdITafJDjiHlpWC12IRaTESdIAmIHEIQhy6EZ0TV9
   w==;
X-IronPort-AV: E=Sophos;i="5.91,297,1647298800"; 
   d="scan'208";a="24418700"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 13 Jun 2022 14:34:03 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Mon, 13 Jun 2022 14:34:03 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Mon, 13 Jun 2022 14:34:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1655123643; x=1686659643;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=CYHQbNQFfLTPmy8zzVRQnxIy3+jAYiM8N2MQGnA2XE4=;
  b=ME79PMOA+G/Q20rTo1Efm7kQ1tD9FvTkUSVwDS1Xx5u8V3ucX3ztY4Ea
   yhgXPVipNDDPBU2YSEvNCFNX/T+4bLIX2BZNppYa9Vx+ibdUdXEv+QV6M
   /Hmg7/EgUKIAeqMMUlSTH19yjmn1XZCqqP6q1JzopxVImBTwKXrgBL485
   q/t3EPhoMWypb5Hgzs/hluhPFe4be7pfNwqMnqozPcrhH8ayeq2G4m5L8
   lYmLsC/szNVycyc62quuJDGVhJ8jj/kr6tB4+4qzQW+xKalqEbqfzoHJZ
   S6ITKH/2TYOiVS+c7AwX8CXIjJq2X9zyfXESIaYvFnRb/fCRbNd+oz6sn
   w==;
X-IronPort-AV: E=Sophos;i="5.91,297,1647298800"; 
   d="scan'208";a="24418699"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 13 Jun 2022 14:34:03 +0200
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 11BBD280056;
        Mon, 13 Jun 2022 14:34:03 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/7] ARM: dts: imx6ul: add missing properties for sram
Date:   Mon, 13 Jun 2022 14:33:51 +0200
Message-Id: <20220613123357.441779-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

All 3 properties are required by sram.yaml. Fixes the dtbs_check
warning:
sram@900000: '#address-cells' is a required property
sram@900000: '#size-cells' is a required property
sram@900000: 'ranges' is a required property

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/boot/dts/imx6ul.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi
index afeec01f6522..1d435a46fc5c 100644
--- a/arch/arm/boot/dts/imx6ul.dtsi
+++ b/arch/arm/boot/dts/imx6ul.dtsi
@@ -149,6 +149,9 @@ soc {
 		ocram: sram@900000 {
 			compatible = "mmio-sram";
 			reg = <0x00900000 0x20000>;
+			ranges = <0 0x00900000 0x20000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
 		};
 
 		intc: interrupt-controller@a01000 {
-- 
2.25.1

