Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0E3F06DB067
	for <lists+devicetree@lfdr.de>; Fri,  7 Apr 2023 18:15:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229765AbjDGQPi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Apr 2023 12:15:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57666 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230303AbjDGQPg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Apr 2023 12:15:36 -0400
Received: from mail-oa1-x31.google.com (mail-oa1-x31.google.com [IPv6:2001:4860:4864:20::31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3CBEA5D6
        for <devicetree@vger.kernel.org>; Fri,  7 Apr 2023 09:15:12 -0700 (PDT)
Received: by mail-oa1-x31.google.com with SMTP id 586e51a60fabf-1809ebc7c87so116521fac.0
        for <devicetree@vger.kernel.org>; Fri, 07 Apr 2023 09:15:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680884112; x=1683476112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aDbcxRlBSGe31lQxXY6d3zycewlNzTHZYAQHxnUB0Ws=;
        b=INzclUlOVbKPYu65DJSFQTMreT006oYQspYRiA/gsRxHNcDwj0rfItcYg627XLgN/9
         hWR9NKBu7jYgrZFqF94Y2flFtIXfuQbxwzO6Z5pzY+L9hl1CW3P9F0dWGv8kTxbFjdfG
         UFr/YU6brZ0kMWVd/WRHwj7CEYR/PNRbm4MJZsxuqwCdrwFtXNrIy8q8F3UASd738FaW
         pEg0gmGZACGlUKXwG0K7jyBpDVoER4bi3v/fLOUHA4aoGU79uf1LlcQ3MqqaTg6X+wJX
         QI1BXT7wYWXpIsyX3uQqW7Eq15HKk8ulX5RBunWO7N+B1DklWfgO5II0SLoDO3OXvuE2
         w/1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680884112; x=1683476112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aDbcxRlBSGe31lQxXY6d3zycewlNzTHZYAQHxnUB0Ws=;
        b=ViMf43JXO6HMPTmEKY1hHVrj3Zi5u7nO2jBkkoZr8Mo5ioKyKHt6m8qife8XCZGlnP
         TxJqTGznMIYvQT701ZYMPJFP2l2g5ow4BQmNkjBnTCXMHgDyE9gGuoZGmAsVNdvwTfxe
         dSzNIZfefXouqzYIolV3zDuRS4DL7oMCntIRllcfvcWVFoPe7Z3StnSfymv1uV/NIFGB
         FQyLK4bbzAuU6nEDmaPqLymwvrU6KJqsW/jc+4nvV4zQ24KKWzdNnxbcNYF4jiAKUpvt
         b8dM9QZrSfbBN6l+T1t+sNX1irLo+AR2dZuoob7OAPZbIWtUSK+oBXQc4uKkshbMVg7i
         ZMjg==
X-Gm-Message-State: AAQBX9eizDeHT+yeZAl8ULS1Zihj2agpq2cAaobk6J0PhqZIDFJOsAHj
        LGbLE2B4Qs6cIUG9ziTkW+U=
X-Google-Smtp-Source: AKy350aBMhRxq0zlhJOwrtSflbcrxBYjDFU52gjEzfs/xlxZHZc2Sdl8N0I/AhJn5DMn25E75HWg+w==
X-Received: by 2002:a05:6830:2815:b0:6a3:8d77:c00c with SMTP id w21-20020a056830281500b006a38d77c00cmr1237264otu.2.1680884112196;
        Fri, 07 Apr 2023 09:15:12 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:7f0:b380:973d:85ce:575d:c0a1:5abf])
        by smtp.gmail.com with ESMTPSA id q25-20020a9d7c99000000b00690e21a46e1sm1801910otn.56.2023.04.07.09.15.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Apr 2023 09:15:10 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 5/7] ARM: dts: imx6ul-tx6ul: Replace deprecated spi-gpio properties
Date:   Fri,  7 Apr 2023 13:14:42 -0300
Message-Id: <20230407161444.1682038-5-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230407161444.1682038-1-festevam@gmail.com>
References: <20230407161444.1682038-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

As stated in Documentation/devicetree/bindings/spi/spi-gpio.yaml,
'gpio-miso', 'gpio-mosi' and 'gpio-sck' are deprecated properties.

Use the recommeded 'miso-gpios', 'mosi-gpios' and 'sck-gpios' instead.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/imx6ul-tx6ul.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/imx6ul-tx6ul.dtsi b/arch/arm/boot/dts/imx6ul-tx6ul.dtsi
index 70cef5e817bd..6bd90473050b 100644
--- a/arch/arm/boot/dts/imx6ul-tx6ul.dtsi
+++ b/arch/arm/boot/dts/imx6ul-tx6ul.dtsi
@@ -218,9 +218,9 @@ spi_gpio: spi {
 		compatible = "spi-gpio";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_spi_gpio>;
-		gpio-mosi = <&gpio1 30 GPIO_ACTIVE_HIGH>;
-		gpio-miso = <&gpio1 31 GPIO_ACTIVE_HIGH>;
-		gpio-sck = <&gpio1 28 GPIO_ACTIVE_HIGH>;
+		mosi-gpios = <&gpio1 30 GPIO_ACTIVE_HIGH>;
+		miso-gpios = <&gpio1 31 GPIO_ACTIVE_HIGH>;
+		sck-gpios = <&gpio1 28 GPIO_ACTIVE_HIGH>;
 		num-chipselects = <2>;
 		cs-gpios = <
 			&gpio1 29 GPIO_ACTIVE_HIGH
-- 
2.34.1

