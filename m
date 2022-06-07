Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D473353F8C7
	for <lists+devicetree@lfdr.de>; Tue,  7 Jun 2022 10:54:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238782AbiFGIyH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jun 2022 04:54:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57118 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238794AbiFGIxz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jun 2022 04:53:55 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5164E27AF
        for <devicetree@vger.kernel.org>; Tue,  7 Jun 2022 01:53:49 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id kq6so20745728ejb.11
        for <devicetree@vger.kernel.org>; Tue, 07 Jun 2022 01:53:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=pIg+CahqaTlAIc8abTH45c6tboCmTrQs/b0+gs1DDec=;
        b=Wmt3WkfQAxJcyqO1RMeCSulBf5MfEf6x75VtRaiFDlraQwBAMff94cvZ9wxr3eUYYp
         WbsAQq/aRiNWZqNZxEa5bPCuhDtRA+xxD/OprmefYpSXPw3iKnflHtqdYitflmY8gBoG
         Q3lVXN6UXdlylxdKjEF0c5ZVFDFQLG4QEu5xZ8IUL89SnMPpvRXn1IKpXD8jbTIUw5zw
         P9830DYNdaJsOQFRsjlAJVhj9sp7xBmAz3dQ8P+IdCjSVfg1A3VHepmFtdgFRq0UFiV0
         QuGoZTKMji54VwMzTG+rk7MtTQVxdDlDYRbbguBlFH45X2ep7iNj0m90pncthDsG81Ct
         WfYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=pIg+CahqaTlAIc8abTH45c6tboCmTrQs/b0+gs1DDec=;
        b=xsNpfVt7Nu2+XM3MPbfYhEuj7k4BnulMYDJGJnCsaIpgxcx5Yfvt8jv+Dxkn3W8Kve
         lpg6Olhm+CCY9boPInIyuzZaAd7a1+93Mf7HrdSKCNEeasJTNQ8lMQKZ7NFm/sEkpMu/
         uq9jB1jjyzIxffRYJ4HRgEdh6Bd/4Pbe4iKQmIAzhgAwpwoV/7ZO5+nYRavmtCxpchqV
         ruQ9g2iAMD2nR5s7yKQSPIaeku45FiYibD3BtHb9RL/oK/8G4dfULZI7SkYdCR/dj/th
         dwlLxeB5yuzNyKDPE2o4vqkgaaT1Jty3o2F/4Hsg7tYgbrUbWV3T+Mp0W/a7L5e0dRAc
         4Nxw==
X-Gm-Message-State: AOAM530TUY9uLpQR4blJLdTZuQmW1iVZGPDpZOt6BXxnSeNpoDyM9ejw
        1pT4jqqYeu8BNVVYdj0FGfuHlA==
X-Google-Smtp-Source: ABdhPJzlc4UfIcbo4lt+tExZxEqs80aD/mhH62tRVZNmsGTPLGAWchklnkFLnZ78s0lUo5qmG+VEiQ==
X-Received: by 2002:a17:907:2992:b0:70c:4ddf:5d88 with SMTP id eu18-20020a170907299200b0070c4ddf5d88mr21824993ejc.20.1654592027886;
        Tue, 07 Jun 2022 01:53:47 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id k16-20020a1709061c1000b00705cdfec71esm7176703ejg.7.2022.06.07.01.53.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jun 2022 01:53:47 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Jacek Anaszewski <jacek.anaszewski@gmail.com>,
        linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 3/3] ARM: dts: exynos: add function and color to aat1290 flash LED node in Galaxy S3
Date:   Tue,  7 Jun 2022 10:53:43 +0200
Message-Id: <20220607085343.72414-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220607085343.72414-1-krzysztof.kozlowski@linaro.org>
References: <20220607085343.72414-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add common LED properties - the function and color - to aat1290 flash
LED node in Galaxy S3.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/exynos4412-galaxy-s3.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/exynos4412-galaxy-s3.dtsi b/arch/arm/boot/dts/exynos4412-galaxy-s3.dtsi
index 72901772fcad..d76f3678dcab 100644
--- a/arch/arm/boot/dts/exynos4412-galaxy-s3.dtsi
+++ b/arch/arm/boot/dts/exynos4412-galaxy-s3.dtsi
@@ -7,6 +7,7 @@
  */
 
 /dts-v1/;
+#include <dt-bindings/leds/common.h>
 #include "exynos4412-midas.dtsi"
 
 / {
@@ -27,6 +28,8 @@ led-controller {
 
 		led {
 			label = "flash";
+			function = LED_FUNCTION_FLASH;
+			color = <LED_COLOR_ID_WHITE>;
 			led-max-microamp = <520833>;
 			flash-max-microamp = <1012500>;
 			flash-max-timeout-us = <1940000>;
-- 
2.34.1

