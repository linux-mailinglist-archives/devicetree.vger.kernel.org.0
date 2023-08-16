Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ADB3377DB6E
	for <lists+devicetree@lfdr.de>; Wed, 16 Aug 2023 09:56:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242492AbjHPHz3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Aug 2023 03:55:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52466 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242539AbjHPHzC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Aug 2023 03:55:02 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E6F11FE6
        for <devicetree@vger.kernel.org>; Wed, 16 Aug 2023 00:55:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1692172500; x=1723708500;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=RrEZu8OuIeXk0Xs9UoLulZqFfS8lw6TgMjGx1L/t7AQ=;
  b=gEpWZmMLchbaGkYL1uP0yyJtcvVasGwABG3V6DG9OhEYo5r08TMpjWa/
   NbO81JCFzV7ICeu2n22h3PxYq0LwD4qFz2PkFBRGPgYwCI9EkZYmXNCMI
   ltXvOI2UOF0LdXURUYB4pUhSbfwZxw79sX+zGox0D6K2U1+gMfE3pCq26
   zRHDd0C1CJ8NAygmx/gLgp6fp90P0EdPrDsJApMUiDhpnzuDP1Btb3Wjy
   zqQLdkeyTaqd53Nb/E1IFSfX/AUBFS1xsSRbENlQMAzlnv3smOtTgsPk0
   gGZdEvAFPrOX7Ewdjjm86cFqb35vM/F4EUSQG43qUCf6wenzGiRgtg6F0
   g==;
X-IronPort-AV: E=Sophos;i="6.01,176,1684792800"; 
   d="scan'208";a="32465155"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 16 Aug 2023 09:54:57 +0200
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id E4A4F280078;
        Wed, 16 Aug 2023 09:54:56 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/2] ARM: dts: imx6ul: mba6ulx: Mark gpio-buttons as wakeup-source
Date:   Wed, 16 Aug 2023 09:54:51 +0200
Message-Id: <20230816075452.606704-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230816075452.606704-1-alexander.stein@ew.tq-group.com>
References: <20230816075452.606704-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

I2C expander is capable of generating an IRQ during powersave, so the
attached buttons can be used for waking up the system.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/boot/dts/nxp/imx/mba6ulx.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/imx/mba6ulx.dtsi b/arch/arm/boot/dts/nxp/imx/mba6ulx.dtsi
index ebf97fcdd8ea..632ceadcca41 100644
--- a/arch/arm/boot/dts/nxp/imx/mba6ulx.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/mba6ulx.dtsi
@@ -39,18 +39,21 @@ button1 {
 			label = "s14";
 			linux,code = <KEY_1>;
 			gpios = <&expander_in0 0 GPIO_ACTIVE_LOW>;
+			wakeup-source;
 		};
 
 		button2 {
 			label = "s6";
 			linux,code = <KEY_2>;
 			gpios = <&expander_in0 1 GPIO_ACTIVE_LOW>;
+			wakeup-source;
 		};
 
 		button3 {
 			label = "s7";
 			linux,code = <KEY_3>;
 			gpios = <&expander_in0 2 GPIO_ACTIVE_LOW>;
+			wakeup-source;
 		};
 
 		power-button {
-- 
2.34.1

