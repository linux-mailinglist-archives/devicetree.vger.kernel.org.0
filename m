Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 337636CBBF1
	for <lists+devicetree@lfdr.de>; Tue, 28 Mar 2023 12:08:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233054AbjC1KIS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Mar 2023 06:08:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33968 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232921AbjC1KIF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Mar 2023 06:08:05 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E83667AA4
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 03:07:37 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id h11so8099002lfu.8
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 03:07:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679998051;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=48VlVOVaivhhP/O4cu0azvwlKJKtgxluZIhbOwUMy6s=;
        b=JPdpXlXQ65UESbAhf2kFM78+q5EwWYaFXefaBujqWctws3m6e4Bcy/S+TM+hNR64uj
         9RrTtU9UGVrsiPuU+TkJpSYcE+XGzqZkgV0RiOlpt0UncBYLhrGCyoKsfxrDiRaJnibW
         pIGWYfaXDag6JUXHJnC5PJfC8jK3fQ0rAMGoDKzWvbx2oRTVnpy6Ggcly+t2oKnsKVOp
         M1quA9cL0tnH3ZaHN+l9uWmUXmFheoCqPAMzFpfdV9ZDO+WuZy1mqF7uVwOOD+OuK+YK
         DyhBVCEltGYIK+39fMXycKycJ4gM0J9j41/YZGXfPCKV30tPC8QW1HmdO2LSHR/MD6Ua
         aJCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679998051;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=48VlVOVaivhhP/O4cu0azvwlKJKtgxluZIhbOwUMy6s=;
        b=2mSwHfBXIVnm1zBDFC58VdgTASb5EU5Z7kNnSPJ9ukOoD25aDErQ69Xls7aDqaYP8u
         vd/lzPIyjzXjoMCW29wU23Jn2u6sJprb9S+T3DFX+gWyiGZc9Y97VwOo+7zinn/aP+Fo
         AhwNDu5uUcZgNKG3l19t50i5YK34D7C8XdMIVd+mqevLAFAf7z6mKBOTwIRsieQ4An29
         97ngvSJpu2gU2akMkk25WexIkIWehLrsADRAVSvxgY6T1+Q5cKZbU+BeN9Mb1dYEslrn
         vDo68yxTYDV0kqBDb8XsjADOKCfWZDI42RjeyKacAn+5KZOp3lw9U4TwIk1AATzNqjh7
         3+vw==
X-Gm-Message-State: AAQBX9cIFoo+fEv327lHxW/PawHiv5U0cuv/goYbl8WwW7or/nT+R1Lb
        xLJzQuRd+t1E5Q3pDus3LLBzIn+ipU/tnATGN/E=
X-Google-Smtp-Source: AKy350ZNS5+M+UE9YcPOcjSTmGrxxrgHBsEWONdoLd+/o0kWKjyeb5j4mgTgkFcz/nuiGW/QUJL8Aw==
X-Received: by 2002:a19:ee18:0:b0:4a4:68b8:f4f1 with SMTP id g24-20020a19ee18000000b004a468b8f4f1mr4606382lfb.55.1679998050986;
        Tue, 28 Mar 2023 03:07:30 -0700 (PDT)
Received: from ta1.c.googlers.com.com (61.215.228.35.bc.googleusercontent.com. [35.228.215.61])
        by smtp.gmail.com with ESMTPSA id w9-20020a05651203c900b004db2ac3a522sm5039572lfp.62.2023.03.28.03.07.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Mar 2023 03:07:30 -0700 (PDT)
From:   Tudor Ambarus <tudor.ambarus@linaro.org>
To:     nicolas.ferre@microchip.com, claudiu.beznea@microchip.com
Cc:     alexandre.belloni@bootlin.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Tudor Ambarus <tudor.ambarus@microchip.com>
Subject: [PATCH v2 4/4] ARM: dts: at91: sam9x60ek: Set sst26vf064b SPI NOR flash at its maximum frequency
Date:   Tue, 28 Mar 2023 10:07:23 +0000
Message-Id: <20230328100723.1593864-5-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.40.0.348.gf938b09366-goog
In-Reply-To: <20230328100723.1593864-1-tudor.ambarus@linaro.org>
References: <20230328100723.1593864-1-tudor.ambarus@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Tudor Ambarus <tudor.ambarus@microchip.com>

sam9x60ek populates an sst26vf064b SPI NOR flash. Its maximum operating
frequency for 2.7-3.6V is 104 MHz. As the flash is operated at 3.3V,
increase its maximum supported frequency to 104MHz. The increasing of the
spi-max-frequency value requires the setting of the
"CE# Not Active Hold Time", thus set the spi-cs-setup-ns to a value of 7.

The sst26vf064b datasheet specifies just a minimum value for the
"CE# Not Active Hold Time" and it advertises it to 5 ns. There's no
maximum time specified. I determined experimentally that 5 ns for the
spi-cs-setup-ns is not enough when the flash is operated close to its
maximum frequency and tests showed that 7 ns is just fine, so set the
spi-cs-setup-ns dt property to 7.

With the increase of frequency the reads are now faster with ~33%.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 arch/arm/boot/dts/at91-sam9x60ek.dts | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/at91-sam9x60ek.dts b/arch/arm/boot/dts/at91-sam9x60ek.dts
index 180e4b1aa2f6..5cd593028aff 100644
--- a/arch/arm/boot/dts/at91-sam9x60ek.dts
+++ b/arch/arm/boot/dts/at91-sam9x60ek.dts
@@ -578,7 +578,8 @@ flash@0 {
 		#size-cells = <1>;
 		compatible = "jedec,spi-nor";
 		reg = <0>;
-		spi-max-frequency = <80000000>;
+		spi-max-frequency = <104000000>;
+		spi-cs-setup-ns = <7>;
 		spi-tx-bus-width = <4>;
 		spi-rx-bus-width = <4>;
 		m25p,fast-read;
-- 
2.40.0.348.gf938b09366-goog

