Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8042D645A0E
	for <lists+devicetree@lfdr.de>; Wed,  7 Dec 2022 13:42:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229755AbiLGMm3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Dec 2022 07:42:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56996 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229753AbiLGMm0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Dec 2022 07:42:26 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7752031DD8
        for <devicetree@vger.kernel.org>; Wed,  7 Dec 2022 04:42:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1670416945; x=1701952945;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=9E1DRDPN91qa1gYjGmU1Cn0cTTv6iT6wAGrFF9xMkDg=;
  b=Aon+L3Dji1aqHvp6qLPcKQOQG72k94cdGUWv/9q2KteT4iE6YB4AyzCX
   5lUQBtvCpywTRJlMoEfzQKkbp2X7aztDlMpQlzomkyU9K7LnPvgpc7py+
   Obqi66CG5cG+cm6J3+l/1zJ6l0+nN7MIygFdjnCb5/BPjI6qzz7Dlo8Kq
   Zps5hXvX+mijucwqgYs5BiAFpuUJfwp0qWvIb5swujUhS/GucjSNwlKf9
   ehRHK6ZUNQTN26nc8dwUBdBNEsnR2gIA4+noIbJqdQTHV2Iabreygq2Oj
   DsQnwTgHqBEipf+Urvecd3W4rFpnrfJPH71so6PhbFJXwVnn0oMNxrRo5
   w==;
X-IronPort-AV: E=Sophos;i="5.96,225,1665439200"; 
   d="scan'208";a="27811125"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 07 Dec 2022 13:42:17 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Wed, 07 Dec 2022 13:42:17 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Wed, 07 Dec 2022 13:42:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1670416937; x=1701952937;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=9E1DRDPN91qa1gYjGmU1Cn0cTTv6iT6wAGrFF9xMkDg=;
  b=Jqfoi2HUnNhZDPn0cHjR0DI3Nw0eIuo/hV3+FwC0XyPpFg0cHzlxeCYi
   aI2avYuTG/kBtGCIkSpfM+5An4ZLlpFmP9XbsXQmxeh+Se9ItzUzlX/C3
   hZHA+fwN+0s5nS7zqPCL4+yyiHCKthnDwfbIifNVIgCDtQZ4RYoY0+8KG
   xXsEP95VyRWGoOTj1rJQ1ll1ioiphwUAUjJ20C7Etlu0SwHnc5DnF/Jiv
   rAhazWTTXYxoSDVAWEwUljiC9qVsqDWtP0orQrFS63fxJnzMkkrnFGRPR
   ACsZ8FajCV0mX2aJ186cRFEIZTdFn0bDDZ2J36AWGMfJ4p0WTTEQoNYSz
   A==;
X-IronPort-AV: E=Sophos;i="5.96,225,1665439200"; 
   d="scan'208";a="27811124"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 07 Dec 2022 13:42:16 +0100
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id BEFAD280071;
        Wed,  7 Dec 2022 13:42:16 +0100 (CET)
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
Subject: [PATCH 7/7] ARM: dts: imx6ul-tqma6ul: Fix temperature sensor compatible
Date:   Wed,  7 Dec 2022 13:42:05 +0100
Message-Id: <20221207124205.1373202-7-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221207124205.1373202-1-alexander.stein@ew.tq-group.com>
References: <20221207124205.1373202-1-alexander.stein@ew.tq-group.com>
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
 arch/arm/boot/dts/imx6ul-tqma6ul-common.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx6ul-tqma6ul-common.dtsi b/arch/arm/boot/dts/imx6ul-tqma6ul-common.dtsi
index eca94ed6451b0..57e647fc32374 100644
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
 
-- 
2.34.1

