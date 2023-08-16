Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1055477DB6C
	for <lists+devicetree@lfdr.de>; Wed, 16 Aug 2023 09:56:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242548AbjHPHza (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Aug 2023 03:55:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52500 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242547AbjHPHzD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Aug 2023 03:55:03 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3367269E
        for <devicetree@vger.kernel.org>; Wed, 16 Aug 2023 00:55:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1692172502; x=1723708502;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=Xf3076jb54i1Xyw1wkKKuo0A8juFjGwupN/ojef3JMU=;
  b=JYXQa9SMKdXmpxhdmpWr+p3Mzrba0eHk80B0fEwS6tG24NOTorTiQ+vq
   ju4KeLkldW2U6cJLp64CPqD0W0l3UoC6vV94xnNxAbNP5tnQa5jL1IYUy
   b+h1514VBnphGpudKef3HAuXtisng8U4SSENVtyaLJIScrGEQcgYAyiw0
   tEnyiVIVQ3th/K1IfB12C8VIm7EHt4pbQv89u50BAkg9RCNdJAvdY+hQ4
   YOhtwqY+TaG06VmdKO87hFws/X+uM5fCMLznQk0bCiqLlKL7yOnO+EXnR
   4dMvVk27lyLI9+ilIkDcTlCyXMN3LAxPzqZrPNsPbb806bQDrcvszrLHH
   w==;
X-IronPort-AV: E=Sophos;i="6.01,176,1684792800"; 
   d="scan'208";a="32465156"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 16 Aug 2023 09:54:57 +0200
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 1FD93280075;
        Wed, 16 Aug 2023 09:54:57 +0200 (CEST)
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
Subject: [PATCH v2 2/2] ARM: dts: imx6ul: mba6ulx: Fix gpio-keys button node names
Date:   Wed, 16 Aug 2023 09:54:52 +0200
Message-Id: <20230816075452.606704-3-alexander.stein@ew.tq-group.com>
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

Numbers are separated by dashes. Fixes the warnings:
arch/arm/boot/dts/nxp/imx/imx6ull-tqma6ull2-mba6ulx.dtb: gpio-keys:
'button1', 'button2', 'button3' do not match any of the regexes:
'^(button|event|key|switch|(button|event|key|switch)-[a-z0-9-]+|[a-z0-9-]+-(button|event|key|switch))$', 'pinctrl-[0-9]+'
 from schema $id: http://devicetree.org/schemas/input/gpio-keys.yaml#

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/boot/dts/nxp/imx/mba6ulx.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/mba6ulx.dtsi b/arch/arm/boot/dts/nxp/imx/mba6ulx.dtsi
index 632ceadcca41..5a8b867d7d79 100644
--- a/arch/arm/boot/dts/nxp/imx/mba6ulx.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/mba6ulx.dtsi
@@ -35,21 +35,21 @@ gpio_buttons: gpio-keys {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_buttons>;
 
-		button1 {
+		button-1 {
 			label = "s14";
 			linux,code = <KEY_1>;
 			gpios = <&expander_in0 0 GPIO_ACTIVE_LOW>;
 			wakeup-source;
 		};
 
-		button2 {
+		button-2 {
 			label = "s6";
 			linux,code = <KEY_2>;
 			gpios = <&expander_in0 1 GPIO_ACTIVE_LOW>;
 			wakeup-source;
 		};
 
-		button3 {
+		button-3 {
 			label = "s7";
 			linux,code = <KEY_3>;
 			gpios = <&expander_in0 2 GPIO_ACTIVE_LOW>;
-- 
2.34.1

