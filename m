Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BC8F4645A08
	for <lists+devicetree@lfdr.de>; Wed,  7 Dec 2022 13:42:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229724AbiLGMmZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Dec 2022 07:42:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229675AbiLGMmY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Dec 2022 07:42:24 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 473502D769
        for <devicetree@vger.kernel.org>; Wed,  7 Dec 2022 04:42:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1670416942; x=1701952942;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=apgQe3aNz93BeiqWxg7T9h6Zlq5PdFuRKn5EO7WNZVE=;
  b=DXeShzjwRohDNjN3/zAyLabaMfhIbCV26UMojp5dR5ObP509UT/Z37Mk
   Yu02/XFU95xkagb6xonPgkPlAklaQydmSF1QB5g3EMsDCKTs47KkDJdef
   3GyZVSqPg680xkjYuVtztIAZ8OKoMc0J5JsnIp02Zc4srz295A5A0TNfX
   JTdLtj99ytznTh1EhGeYTQgtR+x8W0QkhPQdXJ1FN2vxgA3QOPCROQUVB
   dLPv2aHHgqJQw0d8Lw0EZ80MXiBoCDgMZazko9kNHDnqwPD+DerLQZbc2
   hzkXNaQHnvFVyaPqVO8RI2FzxhhNFT6XeBjrvShP3TBVRvZsZN3JfPKZb
   w==;
X-IronPort-AV: E=Sophos;i="5.96,225,1665439200"; 
   d="scan'208";a="27811113"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 07 Dec 2022 13:42:15 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Wed, 07 Dec 2022 13:42:15 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Wed, 07 Dec 2022 13:42:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1670416935; x=1701952935;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=apgQe3aNz93BeiqWxg7T9h6Zlq5PdFuRKn5EO7WNZVE=;
  b=D0v0Q0c0uCsBmFGuNOOpqd6UFYCwVvQFWcCcmVklVPvsnnAZUBS6aptI
   3oyRGwhs9r6OLDOPqacku5y8sbJbE5065pCXaz6HK76msZiUKQbFM8+S3
   sJpIvBCYQ2XLLNAWVYnsXrqbPky/Nvo33NaeiRhBjeOjuphAb0u/lEol8
   hB3nXTrqIAFszxOHmY+UsdbykLh0sObwvph1HsP9cYY347GGpqpEtdhTq
   YO4ZjtM/sRNwMQt1NLaWyNX2QMbwx62Aofl9FaJYSWtONGsu0teYAV/xL
   T+iSCKwkHeIOkZ446MCHd1G0WHhz/1cJj6mMlI9aicQ8dLNOHkaZr65lX
   w==;
X-IronPort-AV: E=Sophos;i="5.96,225,1665439200"; 
   d="scan'208";a="27811110"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 07 Dec 2022 13:42:15 +0100
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 5E00C280072;
        Wed,  7 Dec 2022 13:42:15 +0100 (CET)
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
Date:   Wed,  7 Dec 2022 13:42:00 +0100
Message-Id: <20221207124205.1373202-2-alexander.stein@ew.tq-group.com>
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

