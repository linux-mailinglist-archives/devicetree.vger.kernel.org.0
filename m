Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E658C6DB088
	for <lists+devicetree@lfdr.de>; Fri,  7 Apr 2023 18:25:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229441AbjDGQZh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Apr 2023 12:25:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37700 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229518AbjDGQZg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Apr 2023 12:25:36 -0400
Received: from mail-oo1-xc32.google.com (mail-oo1-xc32.google.com [IPv6:2607:f8b0:4864:20::c32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF3D0E42
        for <devicetree@vger.kernel.org>; Fri,  7 Apr 2023 09:25:35 -0700 (PDT)
Received: by mail-oo1-xc32.google.com with SMTP id 006d021491bc7-541952d6ed5so156641eaf.0
        for <devicetree@vger.kernel.org>; Fri, 07 Apr 2023 09:25:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680884735; x=1683476735;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=stW6gIDZMIVV6t0/ZvFLCRMLkHtcro4SznzWRSvvIhc=;
        b=oclR9DPY6D8sse7AAn2L8WMK6knXL9ywPuYxMEPZAR9fejMhRUOuLK6g2uK8loxvA/
         3TyvCBSP7I6XYqDsYgozo54Cbnb+8759XZpazxloe4R3o5NSrTDKk84+DL2IFvIBuxPU
         mLYVy6SdZCQ4R5zs5kMYYyJUvDDeATCMIn4Ehh61kOnf7oY1LN+E4BrbiirQ/V+jDRDw
         KA1SBxXQA3ZwmrjUUXgCVBLMv3mpkZkqhCarGnzL+UpIReXkrapRNPW2u9o0nUXqg8Wr
         o0U4eWdtyo4M752ON+qsu/Y3mXqP4WPsnXVyLgd1CAq05xap9j+JsQhMABE8NP9DonBY
         uxTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680884735; x=1683476735;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=stW6gIDZMIVV6t0/ZvFLCRMLkHtcro4SznzWRSvvIhc=;
        b=JsSUQnZ+SdB2wt2eE22JKCzgp/QcFQNUCAW2OHqbUJh6Fkr3ykGW7IUeN/LL5YfPP4
         HpF7NZCzenItS3AIaGJ68xqykIcaZT9J2Wp+fy+dzLCuoP6tpBBwQuHhl6A01TpVxqNP
         3S2s2fjHiF/nnXvHXIw9seMP319YKJ1Af4gHtHEO4gyo70xHrsladO7KA1LA3AR1nDW/
         Gv/ISm20GzmQz0VuDyTtqr3QPuThYrPCbYsBO+qNgyiCVpYmZbLKlA5BgsnnsE0z+rRO
         FlpB7JtcoG8AX9Xts5dek7nx37fv+OiTqh9ObJ+/cRdG+ssWBvMpfjSvSb+JgE0zqYNB
         wLsw==
X-Gm-Message-State: AAQBX9f2zs/7uz+7GVmCu475TCZYcJyf/7xOXRIM+D39YrGf/bN/KIpQ
        4IQPxmzmsTwa2QcU4gxkCec=
X-Google-Smtp-Source: AKy350bZcm4mkeWXgFX4yGlYUtMofhd+N3oEVPdRDXj+26dONsLVqUJRGlVIkjVTd3MHbNrU2TtoCA==
X-Received: by 2002:a05:6871:892:b0:171:a749:bc0c with SMTP id r18-20020a056871089200b00171a749bc0cmr1911266oaq.3.1680884735067;
        Fri, 07 Apr 2023 09:25:35 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:7f0:b380:973d:85ce:575d:c0a1:5abf])
        by smtp.gmail.com with ESMTPSA id u40-20020a056870b0e800b00177b33ce85bsm1740763oag.30.2023.04.07.09.25.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Apr 2023 09:25:33 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     linus.walleij@linaro.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH] ARM: dts: nomadik: Replace deprecated spi-gpio properties
Date:   Fri,  7 Apr 2023 13:25:04 -0300
Message-Id: <20230407162504.1683422-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
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
'gpio-mosi' and 'gpio-sck' are deprecated properties.

Use the recommeded 'mosi-gpios' and 'sck-gpios' instead.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/ste-nomadik-nhk15.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/ste-nomadik-nhk15.dts b/arch/arm/boot/dts/ste-nomadik-nhk15.dts
index 8142c017882c..4d741adc16cd 100644
--- a/arch/arm/boot/dts/ste-nomadik-nhk15.dts
+++ b/arch/arm/boot/dts/ste-nomadik-nhk15.dts
@@ -210,8 +210,8 @@ spi {
 		 * As we're dealing with 3wire SPI, we only define SCK
 		 * and MOSI (in the spec MOSI is called "SDA").
 		 */
-		gpio-sck = <&gpio0 5 GPIO_ACTIVE_HIGH>;
-		gpio-mosi = <&gpio0 4 GPIO_ACTIVE_HIGH>;
+		sck-gpios = <&gpio0 5 GPIO_ACTIVE_HIGH>;
+		mosi-gpios = <&gpio0 4 GPIO_ACTIVE_HIGH>;
 		cs-gpios = <&gpio0 6 GPIO_ACTIVE_LOW>;
 		num-chipselects = <1>;
 
-- 
2.34.1

