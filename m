Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AAAF765BB57
	for <lists+devicetree@lfdr.de>; Tue,  3 Jan 2023 08:43:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236872AbjACHng (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Jan 2023 02:43:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233053AbjACHn1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Jan 2023 02:43:27 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CABD4CE26
        for <devicetree@vger.kernel.org>; Mon,  2 Jan 2023 23:43:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1672731807; x=1704267807;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=AQbfRR0Mu/u4it/tf2dwCfSehzsMX1w/ssTWW29UzIg=;
  b=L5UhJQS1v91e27P7W/1cTX+Ag/HnXhvYLiV5NW0HJUgMGEh4sz5E0FV0
   ZKE0AIyD1SXe+jt93IClxYrBD0b243jnDWq89sartOf3y7q4RM7hDeUKX
   jAkbTdciJrDbFLPvG+5X+dUjQkH8/YlOEdo6YYYsQkfl88hlfzo8ajE+c
   Aty5g9WdKlz/2oMSxWMY/G2PuRgo+BX50BoNvm7xf8A7gvmumE5vCMFaG
   +w6mwtbFflCUcEtQubhctw1kn4KvGFpg63myf+j02TZHWK/ncENVHfp53
   f4IaRZZJCNtBZYGxxUsJpojQywLIYEnulEKKUxGJ5z95nbGob6XThcFoj
   Q==;
X-IronPort-AV: E=Sophos;i="5.96,296,1665439200"; 
   d="scan'208";a="28213507"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 03 Jan 2023 08:43:22 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 03 Jan 2023 08:43:22 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 03 Jan 2023 08:43:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1672731802; x=1704267802;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=AQbfRR0Mu/u4it/tf2dwCfSehzsMX1w/ssTWW29UzIg=;
  b=Lfg8rfbU0gUEBWSOhzEVq2Z4y9ACpYknAr6R92Ic0+6FlgRM0JRyZkdx
   G4o34xOuAHJHfcEU5HGHL2hnzwnVNn1B8GDFNLODdc1PUmNQgLoV2GPJR
   fH33IhYWYNtaQwDjxslW+GJQOE0puWgiwn5rpRC3aluoCCZYuvKy0HCyK
   8RS6uArfFx5pNXQBoX3QMsnW9Zf4Fy0fbhvfu99FpyaeqhYuolrCX5MnX
   2Fmj6bimOIsxTWvk4VbJ0LnMmhgWwVmVM+PnGCpNBbNSsyEqSaYBqSjFe
   FVy+BjxxYErtBy3zTkdMglHDShZoZE15tlkFCpU/kbXjk+RClrKMXchc8
   g==;
X-IronPort-AV: E=Sophos;i="5.96,296,1665439200"; 
   d="scan'208";a="28213506"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 03 Jan 2023 08:43:22 +0100
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id F0CDA280072;
        Tue,  3 Jan 2023 08:43:21 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        linux@ew.tq-group.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 2/2] ARM: dts: tqma6ul + mba6ulx: Fix temperature sensor compatible
Date:   Tue,  3 Jan 2023 08:43:18 +0100
Message-Id: <20230103074318.3146070-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230103074318.3146070-1-alexander.stein@ew.tq-group.com>
References: <20230103074318.3146070-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Use the correct compatible 'nxp,se97b' as it is an SE97BTP chip.
While at it, fix the node name according to device tree spec
recommendations. The EEPROM is a separate node anyway.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
Changes in v3:
* Squashed into a single patch

 arch/arm/boot/dts/imx6ul-tqma6ul-common.dtsi | 4 ++--
 arch/arm/boot/dts/mba6ulx.dtsi               | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/imx6ul-tqma6ul-common.dtsi b/arch/arm/boot/dts/imx6ul-tqma6ul-common.dtsi
index eca94ed6451b..57e647fc3237 100644
--- a/arch/arm/boot/dts/imx6ul-tqma6ul-common.dtsi
+++ b/arch/arm/boot/dts/imx6ul-tqma6ul-common.dtsi
@@ -116,8 +116,8 @@ reg_vldo4: vldo4 {
 		};
 	};
 
-	jc42_1a: eeprom-temperature-sensor@1a {
-		compatible = "nxp,se97", "jedec,jc-42.4-temp";
+	jc42_1a: eeprom-temperature@1a {
+		compatible = "nxp,se97b", "jedec,jc-42.4-temp";
 		reg = <0x1a>;
 	};
 
diff --git a/arch/arm/boot/dts/mba6ulx.dtsi b/arch/arm/boot/dts/mba6ulx.dtsi
index b8e576ab8860..d08f525acfe5 100644
--- a/arch/arm/boot/dts/mba6ulx.dtsi
+++ b/arch/arm/boot/dts/mba6ulx.dtsi
@@ -229,7 +229,7 @@ tlv320aic32x4: audio-codec@18 {
 	};
 
 	jc42: temperature-sensor@19 {
-		compatible = "nxp,se97", "jedec,jc-42.4-temp";
+		compatible = "nxp,se97b", "jedec,jc-42.4-temp";
 		reg = <0x19>;
 	};
 
-- 
2.34.1

