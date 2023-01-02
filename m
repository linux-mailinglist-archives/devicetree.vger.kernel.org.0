Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C67C965B396
	for <lists+devicetree@lfdr.de>; Mon,  2 Jan 2023 15:49:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236275AbjABOt3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Jan 2023 09:49:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236242AbjABOsz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Jan 2023 09:48:55 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97C145F4E
        for <devicetree@vger.kernel.org>; Mon,  2 Jan 2023 06:48:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1672670934; x=1704206934;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=ftnqhwkkqjhBRxZXKX8GKPuZiXSliTNn5WvROOIX7lA=;
  b=Slpp7QUrNCgyMclJ/TSizkFxRyERYachW4uZzVONWS8Y4obRXdTnMn/Q
   cJBswyFCIFN5ImNWB5bPUAfEZS1sZPW3fOzZY8SCM/I/hpmEttG3NwHPI
   762HxtwrdlLcoRMhORwpZGjOVoOl6TfruxOqwY2nClViL1CBtD4N8s4cb
   6omo8E8a3NVQB51baJEJuKE+vZY0bMeI9RR1juHa5fj1uRnA2q5vrzuHk
   RydWeOBd0r6OhM6WO5Fl9udZENo60AnPc2XCWUSV+6Ev/QCtyFF7UkZcS
   +cugXKiU9kSXySGlYLJJCPZi+alY1EneHA/J29AhDPQK7CLZRUml6zj/9
   g==;
X-IronPort-AV: E=Sophos;i="5.96,294,1665439200"; 
   d="scan'208";a="28206337"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 02 Jan 2023 15:48:50 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Mon, 02 Jan 2023 15:48:50 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Mon, 02 Jan 2023 15:48:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1672670930; x=1704206930;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=ftnqhwkkqjhBRxZXKX8GKPuZiXSliTNn5WvROOIX7lA=;
  b=V3tN89LFzGJgQ9ApItGcjlOHU+ovEwtURDoP8YjmxHN/IjLXck3RrFYs
   Zs8U60ScJhHb9p1EGwN4KgbpL9/NG78fkDEwHsRCO8w8xlekG/WRwAPux
   qdo0fsEdFfJK6bafatADtrGDhpeSN/eTJcKNx6rK5voAZHKAakJhk3Xvl
   wTDDnLvziX9wrP1dFD/HKCVoOd1XAiYb63Sh97ShKNDbUYzov45yAZPQh
   CiyX2FoA69Cfj9q6M/1pNH5c2v9IH2prHr+bYhTC5vU1VkZsAfuxofNm6
   BjRk79ac894C8IJQWMCj5anNoKSBtphZd9QmdZRKvrafFizdWM+3ranCr
   w==;
X-IronPort-AV: E=Sophos;i="5.96,294,1665439200"; 
   d="scan'208";a="28206336"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 02 Jan 2023 15:48:50 +0100
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 9635B280072;
        Mon,  2 Jan 2023 15:48:50 +0100 (CET)
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
Subject: [PATCH v2 2/5] arm64: dts: mba8mx: Fix temperature sensor compatible
Date:   Mon,  2 Jan 2023 15:48:45 +0100
Message-Id: <20230102144848.3135398-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230102144848.3135398-1-alexander.stein@ew.tq-group.com>
References: <20230102144848.3135398-1-alexander.stein@ew.tq-group.com>
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
Changes in v2:
* Split into arm64-only series

 arch/arm64/boot/dts/freescale/mba8mx.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/mba8mx.dtsi b/arch/arm64/boot/dts/freescale/mba8mx.dtsi
index 3283af9888cf..d41f75b53bde 100644
--- a/arch/arm64/boot/dts/freescale/mba8mx.dtsi
+++ b/arch/arm64/boot/dts/freescale/mba8mx.dtsi
@@ -283,8 +283,8 @@ tlv320aic3x04: audio-codec@18 {
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

