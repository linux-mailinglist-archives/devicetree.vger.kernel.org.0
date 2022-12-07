Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 497BF645A0C
	for <lists+devicetree@lfdr.de>; Wed,  7 Dec 2022 13:42:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229727AbiLGMm2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Dec 2022 07:42:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56988 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229674AbiLGMmZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Dec 2022 07:42:25 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 484BE2E9C0
        for <devicetree@vger.kernel.org>; Wed,  7 Dec 2022 04:42:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1670416944; x=1701952944;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=dIPQdXZqgGUc/PWa68sHxk7IDcLngzZt0TT90j9K7m8=;
  b=dgafd8o1NuCE38+T6s++RPrABcLREkhWyZ+S5q1QRGC1CIMGXGJdvzWP
   OToGjrFh+0aY0JKt8G0UMfVlMIZ7llCKV6fUpMiV2wduJ6Fi2903hlybt
   7/Pmhf5wk5HRGVWrkL1U68Nm1Nwe5SOr3Mlr1dJrdJv0Bq7ZKIDCX6EmB
   hzTr4TidkgR3XfFCZcXfPDvHK0UXRQS/e6NZnPorrEnNw1HD2vOTsOy8I
   xVL3xIhQD4Zk5C5xfMv2v2T9hBEdSrmYLYTha1B4agoc2znrsWkaMUO/K
   gnXGIxMwCB93DzJ2rOZjxagIOjeBycTmEM/FZo6ejxjaxvyNRNTxsfR0X
   A==;
X-IronPort-AV: E=Sophos;i="5.96,225,1665439200"; 
   d="scan'208";a="27811121"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 07 Dec 2022 13:42:16 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Wed, 07 Dec 2022 13:42:16 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Wed, 07 Dec 2022 13:42:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1670416936; x=1701952936;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=dIPQdXZqgGUc/PWa68sHxk7IDcLngzZt0TT90j9K7m8=;
  b=K1CNXkJeetzVqd9zAfA5ivTEwAyhQS1/8Bmd/GB7JgbmlrE0FoeIJnxC
   0Weom4LGTu/yKhU7Ac5d9S3rT37mkvpNzSS0qLbK2SxfTOLx8mJEMMG8l
   6CfZ2/ioQkw0TJ3xDXchq155wcootx9xbMNv0bul32UGFdsvNkXeoBAAn
   XGkllRT8TUigD/bhUm0WtrRIn9NRkI4VU6H3q6k0sER5ntCEEFtTdAxy+
   sRdAIVxrx8GVYUGuCa5RBHl+b2Tm1WBi2r0WZXB03/ume0aCSYsgDy9nY
   yan8M8wfoG7Y44JP3fBK/1x8CURelXVCR2Vy7EjCJv1ciUr5RYVPa3lwN
   w==;
X-IronPort-AV: E=Sophos;i="5.96,225,1665439200"; 
   d="scan'208";a="27811120"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 07 Dec 2022 13:42:16 +0100
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 217FC280072;
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
Subject: [PATCH 5/7] arm64: dts: imx8mm-tqma8mqml: Fix temperature sensor compatible
Date:   Wed,  7 Dec 2022 13:42:03 +0100
Message-Id: <20221207124205.1373202-5-alexander.stein@ew.tq-group.com>
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

