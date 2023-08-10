Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F27927774FF
	for <lists+devicetree@lfdr.de>; Thu, 10 Aug 2023 11:55:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234915AbjHJJz5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Aug 2023 05:55:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234968AbjHJJzx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Aug 2023 05:55:53 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9EECA26AA
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 02:55:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1691661349; x=1723197349;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=Xf3076jb54i1Xyw1wkKKuo0A8juFjGwupN/ojef3JMU=;
  b=EN9vwEDCplZqpWuQlwS6Nuui4ax9ULcqc92C2AuW1wrJeqdK0eAIk5Pe
   hyfuP8mMfldo/64biVGBkk29wNxu75M25X0VIORsHd+kT+TSHtXfKvRNY
   NJ3icAuk3iiRLIKm9wIaFn4WnnF+z6L8NTfJTKlxvjoyAl02YpxbzmLrs
   8DiSh1grOmhfjhnWVG0njJusv6PQkLV8+7xFsC5DiDRAsd4Smuq0GoCr0
   K2njNGVftrnxygP/uWf+f93RkZgHu2q/zW3pJSGro+QZSHqO+028i+xxx
   DuBcDZ0twSclwKU2FK0DnCs5nnPnaQoR/l7mUVEFq0JeugGLWbNXpzZqB
   A==;
X-IronPort-AV: E=Sophos;i="6.01,161,1684792800"; 
   d="scan'208";a="32389514"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 10 Aug 2023 11:55:44 +0200
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 88A5C28008D;
        Thu, 10 Aug 2023 11:55:44 +0200 (CEST)
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
Subject: [PATCH 2/3] ARM: dts: imx6ul: mba6ulx: Fix gpio-keys button node names
Date:   Thu, 10 Aug 2023 11:55:40 +0200
Message-Id: <20230810095541.720489-3-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230810095541.720489-1-alexander.stein@ew.tq-group.com>
References: <20230810095541.720489-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
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

