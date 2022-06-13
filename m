Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 29EF55499B1
	for <lists+devicetree@lfdr.de>; Mon, 13 Jun 2022 19:21:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241558AbiFMRU6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Jun 2022 13:20:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238968AbiFMRUk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Jun 2022 13:20:40 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85822192A6
        for <devicetree@vger.kernel.org>; Mon, 13 Jun 2022 05:34:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1655123648; x=1686659648;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=AluXTIuKXrvr8krccHD0VXIXpSBu5mv0kyE4eMb9orY=;
  b=E+vA1p4lcQsAeG5jchISnbRUaec5KgqCW79OFkvOoSmmUETG/UTqzycm
   5Xm6d1g+HWGl0vWc42LJaR5iHVypKLlzakeG/Mq2XMG+WkpHot/fFKlrl
   82RxhzWV35mXK/e7lHnZg7+cJzr1HAwORfcaoXQ0OuEv+9OdZc4SM2MOD
   gjIEbZ8h/VMP1wxn3ZjbB/WP5U7ckYUWZCHri9njPirbd3vxY14gfsaRs
   PUBK1x4kABrQECzvYBMoFuYYqA++hWGUWcCUBkcJDQAUjO8s2h1i7hIXl
   f0kwPeg+xOfsgucmso7IWY+2KKSPZwYCnnlJrxoOANQ5DizpwGrGFXew+
   w==;
X-IronPort-AV: E=Sophos;i="5.91,297,1647298800"; 
   d="scan'208";a="24418706"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 13 Jun 2022 14:34:03 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Mon, 13 Jun 2022 14:34:03 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Mon, 13 Jun 2022 14:34:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1655123643; x=1686659643;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=AluXTIuKXrvr8krccHD0VXIXpSBu5mv0kyE4eMb9orY=;
  b=h9glvE/0fAAR78aQki+yiNHBXgcGPfSPZ0SMOiUIkctRnKkBA/xN5Tdj
   4Y+F+jFWk5HgPRUFMefOVPR/7kGzqdm0cCvUQaxxHcEFioZXI6KCnqMIu
   k/CMGLNTqzCQfMWB2zB8pUB/q3l/xBrNzBAumjWA/JDIa4TOy/YUT7nMl
   wewHkDGtjvOzCs82Uzhdr2qodQx5ZIBlRMWj82Ycmn7OwmtnKYjBaEz9+
   lxiWnYlObJnA6Mbb/crUliWYp9tAsfWXwHciytAwZi736/de3wjdJrSes
   ofmy/Ej/nhnlGsQPbUNqKltbL7UjAkuZOxjEKq3Cucz229jkmaWxK2QEA
   w==;
X-IronPort-AV: E=Sophos;i="5.91,297,1647298800"; 
   d="scan'208";a="24418705"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 13 Jun 2022 14:34:03 +0200
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 894EF280073;
        Mon, 13 Jun 2022 14:34:03 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4/7] ARM: dts: imx6ul: remove unsupported adc property
Date:   Mon, 13 Jun 2022 14:33:54 +0200
Message-Id: <20220613123357.441779-4-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220613123357.441779-1-alexander.stein@ew.tq-group.com>
References: <20220613123357.441779-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

'num-channels' is not supported by binding, nor driver, remove it. Fixes
the dt_binding_check warning:
adc@2198000: 'num-channels' does not match any of the regexes:
'pinctrl-[0-9]+'

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/boot/dts/imx6ul.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi
index df8b4ad62418..b951bdb793d2 100644
--- a/arch/arm/boot/dts/imx6ul.dtsi
+++ b/arch/arm/boot/dts/imx6ul.dtsi
@@ -924,7 +924,6 @@ adc1: adc@2198000 {
 				reg = <0x02198000 0x4000>;
 				interrupts = <GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clks IMX6UL_CLK_ADC1>;
-				num-channels = <2>;
 				clock-names = "adc";
 				fsl,adck-max-frequency = <30000000>, <40000000>,
 							 <20000000>;
-- 
2.25.1

