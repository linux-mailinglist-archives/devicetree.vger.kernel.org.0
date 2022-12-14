Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 94D1A64C67A
	for <lists+devicetree@lfdr.de>; Wed, 14 Dec 2022 10:59:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238052AbiLNJ7a (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Dec 2022 04:59:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238055AbiLNJ73 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Dec 2022 04:59:29 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D069E15FE7
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 01:59:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1671011968; x=1702547968;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=dIPQdXZqgGUc/PWa68sHxk7IDcLngzZt0TT90j9K7m8=;
  b=dNEhSM+IFAWiY8HqcM2EY4pvoX+rTn72wOfUCk74Zt7L49dGhaIABxRL
   XMlQw2D3mWJSxYKxgBvKW7FoIJrZImRC9ugLIRDaTCKue/o0LTl12H/pR
   nOk/N4eHxsUH8UdzMdyjbu1cQIzzTqzq47gpFFgGGouGJ81ugcwuDr48d
   BQcEd6PRtnb7PZLeOjJjg6FDutiLI1Ock+wH1Yz2JJ+52dsukT6PA5OWn
   8kXZg1p+35Sxyc58oZ8FoJOqaWv61C7W6cve0v3OfkS3fvIS9l5RCTeGj
   jv4PPP7v9XqKZPFdjt3IWjd4NHE8jxz/EI1TZfObBPAavbvYOIEGGPwcA
   g==;
X-IronPort-AV: E=Sophos;i="5.96,244,1665439200"; 
   d="scan'208";a="27943347"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 14 Dec 2022 10:59:24 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Wed, 14 Dec 2022 10:59:24 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Wed, 14 Dec 2022 10:59:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1671011964; x=1702547964;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=dIPQdXZqgGUc/PWa68sHxk7IDcLngzZt0TT90j9K7m8=;
  b=HNLKV+ZipDSsU47KYhSBinLjyqyLZGJV+eFaKreyfm676GkLYw94TiSM
   H7z2Bo+RZP0QsB4NR0EWLeMYSTUJOeMVAV21Q7rDp2p6nC5FuggubLCy7
   GTVkYq4tyd7mGewkEp+TT/W9AmSUriwxAzynf/T8q5OgfuZkTtiKWHk97
   3WPrK6C9s9MM2qXjc4x4xSEib7QlrJEt/U8JimV8FIDEJzhRwFGVT0lqD
   ADUUDPrjCMa0a93+xhfaMT0lqkr5q2zSePtNNRNNaxy80fd72NJjvU/Mr
   qtLXnckc6nySIW95KUzx36u6498FO/kfJXdRReMMD87XJJlErYw3/gpDi
   Q==;
X-IronPort-AV: E=Sophos;i="5.96,244,1665439200"; 
   d="scan'208";a="27943346"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 14 Dec 2022 10:59:23 +0100
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id C85ED280074;
        Wed, 14 Dec 2022 10:59:23 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        linux@ew.tq-group.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 5/7] arm64: dts: imx8mm-tqma8mqml: Fix temperature sensor compatible
Date:   Wed, 14 Dec 2022 10:59:15 +0100
Message-Id: <20221214095917.964695-5-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221214095917.964695-1-alexander.stein@ew.tq-group.com>
References: <20221214095917.964695-1-alexander.stein@ew.tq-group.com>
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
 arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml.dtsi
index 88d89cd46c74a..b4466a26d838a 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-tqma8mqml.dtsi
@@ -87,8 +87,8 @@ &i2c1 {
 	sda-gpios = <&gpio5 15 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 	status = "okay";
 
-	sensor0: temperature-sensor-eeprom@1b {
-		compatible = "nxp,se97", "jedec,jc-42.4-temp";
+	sensor0: temperature-sensor@1b {
+		compatible = "nxp,se97b", "jedec,jc-42.4-temp";
 		reg = <0x1b>;
 	};
 
-- 
2.34.1

