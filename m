Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E95446DB065
	for <lists+devicetree@lfdr.de>; Fri,  7 Apr 2023 18:15:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230095AbjDGQP3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Apr 2023 12:15:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57532 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229802AbjDGQP3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Apr 2023 12:15:29 -0400
Received: from mail-oo1-xc2a.google.com (mail-oo1-xc2a.google.com [IPv6:2607:f8b0:4864:20::c2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84B46BBA1
        for <devicetree@vger.kernel.org>; Fri,  7 Apr 2023 09:15:03 -0700 (PDT)
Received: by mail-oo1-xc2a.google.com with SMTP id 006d021491bc7-5418e05b413so188733eaf.1
        for <devicetree@vger.kernel.org>; Fri, 07 Apr 2023 09:15:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680884102; x=1683476102;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lTFpotSoRP90gXMuHhXjBwMEgQCC13DxWu88mVrhMSI=;
        b=QcobLFS8OpAid+MKGMMu9BGw60bPDQ0xebVFBYT/MCQ78hGtwEieBIzfjapExfST8A
         BqJFkIT+3ULS71brBANEJ/alLZEqtqpAKu5FxtBTs9hxLIrCro0yumjeDvP540QKyfRE
         qjw2+9Z7cYuXIiMKqWbq+CouG9RHT/E0pXeEgXEgGTp6iGlo4Jhrto7Khsv5/5QV+OI8
         WLGiuaCcBW2S9yUvQduEiB9Aibbd+2R1dHT7dZvhm+VnbTIefHo55YU7fLk82sNtOnri
         PYDqs/BQ3I/aqIAiEySwzMrD/oG/ZD5uOTeSHwI6O2GxXXn2fyP0eQVKBBqa6Podz/C8
         KnBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680884102; x=1683476102;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lTFpotSoRP90gXMuHhXjBwMEgQCC13DxWu88mVrhMSI=;
        b=fx8dyQCF76S3CSXS/nIuLYXB0+nsi+KHyhQmSBPA6fqIUX9LSbWqNXbiWp2s9VFSJV
         920cJS1oD5r7PjS/ReplGthgFDlCy6qLL9M9019ryED80WapKnaQKPOWNdhdIV/yDXh+
         angbGhUJc4YxCCmLW+KIC26BVHMvZSZr7LerbejRl+nHjEhw6scy4DHhHnwufwbU9G0F
         4mPZ1UzvPm9Q6Cmn97YCQ9Wzf1eqQkVYw2RlXWU6ShWKb7BFpC5/DJgZZTiAnv2bkXgN
         cGMF6V7PMlWFU0JwPXDhGV+CIwAHQGSFLzkPW3YCeRCoHEhPnTlwCowwagGLFDuu/yjZ
         8ppA==
X-Gm-Message-State: AAQBX9eru5y+fMwmBHhb9whOS7HyJY2fKCy/z/Co68ib5htbz0tG55dn
        Skp5qPb5jK0CDr7/QDaZJN0=
X-Google-Smtp-Source: AKy350Z/t6MLTjY2OiBNzE6jLS0szXPoIxj0q/W5rpmmPIUUW/R0yuDfG9RfcI5van8cerP7Ydv/qA==
X-Received: by 2002:a05:6830:4112:b0:6a0:b2f3:4933 with SMTP id w18-20020a056830411200b006a0b2f34933mr1754633ott.3.1680884102713;
        Fri, 07 Apr 2023 09:15:02 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:7f0:b380:973d:85ce:575d:c0a1:5abf])
        by smtp.gmail.com with ESMTPSA id q25-20020a9d7c99000000b00690e21a46e1sm1801910otn.56.2023.04.07.09.14.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Apr 2023 09:15:01 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 3/7] ARM: dts: imx51-zii-rdu1: Replace deprecated spi-gpio properties
Date:   Fri,  7 Apr 2023 13:14:40 -0300
Message-Id: <20230407161444.1682038-3-festevam@gmail.com>
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
 arch/arm/boot/dts/imx51-zii-rdu1.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/imx51-zii-rdu1.dts b/arch/arm/boot/dts/imx51-zii-rdu1.dts
index e537e06e11d7..3ddea42196f3 100644
--- a/arch/arm/boot/dts/imx51-zii-rdu1.dts
+++ b/arch/arm/boot/dts/imx51-zii-rdu1.dts
@@ -145,9 +145,9 @@ spi_gpio: spi {
 		pinctrl-0 = <&pinctrl_gpiospi0>;
 		status = "okay";
 
-		gpio-sck = <&gpio4 15 GPIO_ACTIVE_HIGH>;
-		gpio-mosi = <&gpio4 12 GPIO_ACTIVE_HIGH>;
-		gpio-miso = <&gpio4 11 GPIO_ACTIVE_HIGH>;
+		sck-gpios = <&gpio4 15 GPIO_ACTIVE_HIGH>;
+		mosi-gpios = <&gpio4 12 GPIO_ACTIVE_HIGH>;
+		miso-gpios = <&gpio4 11 GPIO_ACTIVE_HIGH>;
 		num-chipselects = <1>;
 		cs-gpios = <&gpio4 14 GPIO_ACTIVE_HIGH>;
 
-- 
2.34.1

