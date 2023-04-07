Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F1F966DB068
	for <lists+devicetree@lfdr.de>; Fri,  7 Apr 2023 18:15:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229802AbjDGQPj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Apr 2023 12:15:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57658 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230230AbjDGQPh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Apr 2023 12:15:37 -0400
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com [IPv6:2607:f8b0:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E9ED180
        for <devicetree@vger.kernel.org>; Fri,  7 Apr 2023 09:15:18 -0700 (PDT)
Received: by mail-ot1-x336.google.com with SMTP id 46e09a7af769-6a11f365f87so1282706a34.1
        for <devicetree@vger.kernel.org>; Fri, 07 Apr 2023 09:15:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680884117; x=1683476117;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Jq0XJ1arMTiFYqsoDE8JcAr7vxYrUBV82NHspT5qUZE=;
        b=XCDmzgcgSd1FiI3V3N5V9EKLG0Do1MUW+xRcCgdLs0sCekMovvgTKeQmLRzukfDTub
         G+9prX4V9QOHnliVjy6WBKbY2jJeXWS1kKPQ+aJJqHIqkNth1CtL0R5+34pnEzeUZUKe
         Mv+Aeeal/1eEjoe9uilNmRKMqhvEJX8Pjl1KX0Ip6pMgHYJMKGHJOtK10L2t7s6HIQSl
         m6H0ubC6YnQpzip3m2d2pd7gg2LoKlSZWNBsvbJI2kFWU2XoOrHk7sVPyJmzQT6wU7go
         XmMgv6Na9ovq8wmErLg2pn16dJfXso2WNC+XhG7ct3Yr6bL/z0/kXc7kL8movuRgPA5E
         BVyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680884117; x=1683476117;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Jq0XJ1arMTiFYqsoDE8JcAr7vxYrUBV82NHspT5qUZE=;
        b=OylgB//YWSTZlkaRhFMHy96VsyIORdCr2qv7ID2sDcRVCVj+3UUI6OeR7VGoFauh+L
         MMVky8yKUw5UEYHGPd/TC8uhJMTeMRRK1TEUOv9v/EsLGZ3tXsitfMLZl75+m0DETNOG
         4zHZzvJloVWpAsZBN+J1sM4CkdyRYPyixIW6l98lpQdI1SXf8hzrOr8gXXHpGhEKPS3D
         HE3rDPsoxONJBCa66D8omHRhRsj+0gkj9VvlLRAq1TV0V5j0NCPWxoOn7fcJcqeLyjXw
         R4JHGrxP4vcWY0BuKxk7pQV/XN8YB3kw9+e7jNWCoqHEKIhsdzPDgm17a5cHUCxLGwTs
         TKcg==
X-Gm-Message-State: AAQBX9eNguBuBGwh+Tr0f7hS2dYVc0z4kP/XM55Dwz+a2oBrDi9R8ywt
        PFd5FLk4wECaU6M/Kro6KMw=
X-Google-Smtp-Source: AKy350aWaFPjxnuFADy4NXDcL6TWjlSwjTJSTd8Z9430KoMk+fPHfi5EJc0D5XeyuvhWeWpimNqX1g==
X-Received: by 2002:a05:6870:a784:b0:17a:c90e:5d4a with SMTP id x4-20020a056870a78400b0017ac90e5d4amr1562895oao.0.1680884117574;
        Fri, 07 Apr 2023 09:15:17 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:7f0:b380:973d:85ce:575d:c0a1:5abf])
        by smtp.gmail.com with ESMTPSA id q25-20020a9d7c99000000b00690e21a46e1sm1801910otn.56.2023.04.07.09.15.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Apr 2023 09:15:15 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 6/7] sARM: dts: imx28-tx28: Replace deprecated spi-gpio properties
Date:   Fri,  7 Apr 2023 13:14:43 -0300
Message-Id: <20230407161444.1682038-6-festevam@gmail.com>
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
 arch/arm/boot/dts/imx28-tx28.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/imx28-tx28.dts b/arch/arm/boot/dts/imx28-tx28.dts
index ffe58c7093e1..23ad7cd0a1de 100644
--- a/arch/arm/boot/dts/imx28-tx28.dts
+++ b/arch/arm/boot/dts/imx28-tx28.dts
@@ -192,9 +192,9 @@ spi_gpio: spi {
 		pinctrl-names = "default";
 		pinctrl-0 = <&tx28_spi_gpio_pins>;
 
-		gpio-sck = <&gpio2 24 GPIO_ACTIVE_HIGH>;
-		gpio-mosi = <&gpio2 25 GPIO_ACTIVE_HIGH>;
-		gpio-miso = <&gpio2 26 GPIO_ACTIVE_HIGH>;
+		sck-gpios = <&gpio2 24 GPIO_ACTIVE_HIGH>;
+		mosi-gpios = <&gpio2 25 GPIO_ACTIVE_HIGH>;
+		miso-gpios = <&gpio2 26 GPIO_ACTIVE_HIGH>;
 		num-chipselects = <3>;
 		cs-gpios = <
 			&gpio2 27 GPIO_ACTIVE_LOW
-- 
2.34.1

