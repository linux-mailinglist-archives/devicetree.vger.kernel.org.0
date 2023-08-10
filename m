Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 63302777ADE
	for <lists+devicetree@lfdr.de>; Thu, 10 Aug 2023 16:37:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235808AbjHJOhf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Aug 2023 10:37:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59584 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235803AbjHJOhf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Aug 2023 10:37:35 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F006626BD
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 07:37:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1691678254; x=1723214254;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=AVPXETa4yf5hEwf9e3StewbqwpYWg6y7lOVH6iHvuus=;
  b=a/Drs7P9WxsKxmG5sS9fg3NXSk78IcoqylSDR1QOg2mOUpmoKQ1khs8E
   JEBWehSM8U4MEhBAIdpqs3Yf4uVT2friIguvLYZ86qJ6btAl6jccnNACO
   PuuzgqXvoRm9C5xNSXiG1FdpZ+A13pYYUluJTktPb+iH0mKdejGwM2i2T
   XOPaDYqFTuIBbAXvKyikO9ivYUZsO32BAjW/gokR2TQpy218nybCNw3hq
   EEcT3Y/ZInPalfHoQtNv5ly55YrEFSrSM4xxozdS0weOAArfOixXiGyZV
   UFc/0K1Lr+xt511CnZhHOZYz4M/aMxR7ya07OeJ1uL5TQ/uz3KdTMBddP
   A==;
X-IronPort-AV: E=Sophos;i="6.01,162,1684792800"; 
   d="scan'208";a="32396618"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 10 Aug 2023 16:37:32 +0200
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id EF3B728008D;
        Thu, 10 Aug 2023 16:37:31 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/1] ARM: dts: imx6qdl: mba6: Fix gpio-keys button node names
Date:   Thu, 10 Aug 2023 16:37:27 +0200
Message-Id: <20230810143727.1459152-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
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
arch/arm/boot/dts/nxp/imx/imx6q-mba6a.dtb: gpio-buttons: 'button1',
 'button2', 'button3' do not match any of the regexes:
 '^(button|event|key|switch|(button|event|key|switch)-[a-z0-9-]+|[a-z0-9-]+-(button|event|key|switch))$', 'pinctrl-[0-9]+'
 from schema $id: http://devicetree.org/schemas/input/gpio-keys.yaml#

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/boot/dts/nxp/imx/imx6qdl-mba6.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-mba6.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-mba6.dtsi
index 7d032d1f3b47..da0f8dae1ea8 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-mba6.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-mba6.dtsi
@@ -36,21 +36,21 @@ gpio_buttons: gpio-buttons {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_gpiobuttons>;
 
-		button1 {
+		button-1 {
 			label = "s6";
 			linux,code = <KEY_F6>;
 			gpios = <&gpio7 13 GPIO_ACTIVE_LOW>;
 			wakeup-source;
 		};
 
-		button2 {
+		button-2 {
 			label = "s7";
 			linux,code = <KEY_F7>;
 			gpios = <&gpio7 12 GPIO_ACTIVE_LOW>;
 			wakeup-source;
 		};
 
-		button3 {
+		button-3 {
 			label = "s8";
 			linux,code = <KEY_F8>;
 			gpios = <&gpio1 8 GPIO_ACTIVE_LOW>;
-- 
2.34.1

