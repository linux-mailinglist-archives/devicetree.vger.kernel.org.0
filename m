Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DB3B464C677
	for <lists+devicetree@lfdr.de>; Wed, 14 Dec 2022 10:59:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238029AbiLNJ72 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Dec 2022 04:59:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238049AbiLNJ71 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Dec 2022 04:59:27 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6ABE13F54
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 01:59:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1671011966; x=1702547966;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=apgQe3aNz93BeiqWxg7T9h6Zlq5PdFuRKn5EO7WNZVE=;
  b=a7nus6BMAcTD3BZKPrCkyHHWDIzCVxCoJvNFZiokfWjzacau4CfktBuE
   Io6+rBu0p56UG+pTRlmQNMjipbzYnGfMG6HAF639REhSmAfbTHnLOYxjC
   errUemgHfnojyS25PUwtMyArA1lbwEgs5ITm3aszscN2pYczvCeGHFuHL
   ics7prDa6SlhmcwJfk+mtYfbJK5KGJax1KFy920KAjlhpqfsYfRXp+oMG
   RP0EjWfI3LppRbToI+XiRyrpB9PMW2Ba16feUguNtkXA10UzYG+v90wHU
   cniwDUA4EduspJnCKCSiPQLBawC+nucNNvCehYDaLflppbQyNjxuoUK35
   Q==;
X-IronPort-AV: E=Sophos;i="5.96,244,1665439200"; 
   d="scan'208";a="27943341"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 14 Dec 2022 10:59:23 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Wed, 14 Dec 2022 10:59:23 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Wed, 14 Dec 2022 10:59:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1671011963; x=1702547963;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=apgQe3aNz93BeiqWxg7T9h6Zlq5PdFuRKn5EO7WNZVE=;
  b=AmBhBbI4tD/0azsfan2eePAsK3CS0i6ZoOVX6wzX+ustLTYfuxHwHx22
   Hll0aCM0pNR5pTUnvdoHWB3Aec4F+6TiBjDvwggMV+IeoFNFAdbbvtsAq
   gjGEvZ+LO/VB9abym8gIM2KYzDNWNGZNkOdCebO6w7pGT8ZIMi7B0gzy1
   LfQ8itfSBWrYXeqEOV2fAeHXKknBxVnJhlHYQEy0jNLpTtgaUz42Wef+o
   n4v8jjxGE1YbyTtIUnm0hzaepDLgXFe39RL11780/CKUQInMUG9p9f/A+
   qQfyle8KdgnnOY0NDR/NeGUIcShH0a2WYUnCBz++4j4AxVJ8kpF+oC3Ax
   g==;
X-IronPort-AV: E=Sophos;i="5.96,244,1665439200"; 
   d="scan'208";a="27943340"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 14 Dec 2022 10:59:23 +0100
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 4824D280072;
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
Subject: [PATCH 2/7] arm64: dts: mba8mx: Fix temperature sensor compatible
Date:   Wed, 14 Dec 2022 10:59:12 +0100
Message-Id: <20221214095917.964695-2-alexander.stein@ew.tq-group.com>
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
recommendations.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/mba8mx.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/mba8mx.dtsi b/arch/arm64/boot/dts/freescale/mba8mx.dtsi
index 446a8ec3eb6fc..94d83f20233b7 100644
--- a/arch/arm64/boot/dts/freescale/mba8mx.dtsi
+++ b/arch/arm64/boot/dts/freescale/mba8mx.dtsi
@@ -260,8 +260,8 @@ tlv320aic3x04: audio-codec@18 {
 		ldoin-supply = <&reg_vcc_3v3>;
 	};
 
-	sensor1: sensor@1f {
-		compatible = "nxp,se97", "jedec,jc-42.4-temp";
+	sensor1: temperator-sensor@1f {
+		compatible = "nxp,se97b", "jedec,jc-42.4-temp";
 		reg = <0x1f>;
 	};
 
-- 
2.34.1

