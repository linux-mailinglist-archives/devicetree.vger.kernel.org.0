Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 30B526552BA
	for <lists+devicetree@lfdr.de>; Fri, 23 Dec 2022 17:22:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231615AbiLWQWj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Dec 2022 11:22:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231143AbiLWQWh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Dec 2022 11:22:37 -0500
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4EF21B7D7
        for <devicetree@vger.kernel.org>; Fri, 23 Dec 2022 08:22:36 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id y25so7624356lfa.9
        for <devicetree@vger.kernel.org>; Fri, 23 Dec 2022 08:22:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=EMPz0MtuVMWlwIKG4Db0qbIbQdeIr2p2KQ20CqF4p88=;
        b=wes4jimP9QZ7W14rfnCeo8l4yJ9ydId4GOHcDaUdSJV7vxbzYP85Wc+igPDGPwrboG
         jxZIUHQoaa7Ehg4XGeMdQRsVWge91MG8XSGvV6iVFZpFkVvjXENpbw55HqdvMtpyhw0s
         KJHazRSzjXY35ApKTYhqwGAU75rk0ALgaDWHuNLZrVjZKkfdC74v/uz8t1jucV34G9BV
         CORYnLMrPQR+qVL4IFGQYa5HXPeUYhDjrUllhv6A8zxrASohbBwmkg0az4rZ94M759WY
         LuJdqnHdQOlcs9xHcPXQibIZh/Cpxd8wEaztMVXAl6E9yFZ1ecdTJPuzXLjTR028BVgf
         xvmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EMPz0MtuVMWlwIKG4Db0qbIbQdeIr2p2KQ20CqF4p88=;
        b=7cNmG9+Rql4YLD37El5UxqorERRe4bzC+BCV+vMlPaQqXn6SOQu0V+zHlvI8mH6iQu
         GydrqkpdCK6wzvMhc7QiHy8EIESHAk4Y0RfX24pS5r3QcBEAitpCLjQVdhZeGcQsGXyo
         figjS6UNcNUXm2suHecrxByULtND4MCQ3UKtYTSryjLUzyv4MWo6OtJediiLXigWVun3
         MdA7/dRIHFcbrEO2go962c7u9OLO6k8JijcHI7u8H8eXFIQTBrmrG3+giUN9Z0MRyHlr
         p+XrmVg56BoIv6ydrLu6KW+l6nHdItX126rmljAFO5FDvlDRo42K7mV1BhTsRJxCuRG7
         jObg==
X-Gm-Message-State: AFqh2kqfqBKSClybeyIp7ANx7zV2sNuKSu++DigsUCB8tm/JlPiP2uH7
        6LmN5Ycqz57s2nVBQtIEMyigUw==
X-Google-Smtp-Source: AMrXdXsscBAwhaF92Zi0fKqEgTfluKLygxgolteoWlx2FymqcR2KSq5QVpVFyyeX0eMLzwmBRzKY/A==
X-Received: by 2002:a05:6512:3a8f:b0:4c8:5f19:ccb8 with SMTP id q15-20020a0565123a8f00b004c85f19ccb8mr3391639lfu.48.1671812554766;
        Fri, 23 Dec 2022 08:22:34 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id m7-20020a056512358700b004b55da14ba8sm569758lfr.291.2022.12.23.08.22.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Dec 2022 08:22:34 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: iio: adc: maxim,max1363: fix interface typo
Date:   Fri, 23 Dec 2022 17:22:31 +0100
Message-Id: <20221223162231.120216-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Correct inteface->interface in description.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/iio/adc/maxim,max1363.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/iio/adc/maxim,max1363.yaml b/Documentation/devicetree/bindings/iio/adc/maxim,max1363.yaml
index e04f09f35601..96f3f535fe34 100644
--- a/Documentation/devicetree/bindings/iio/adc/maxim,max1363.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/maxim,max1363.yaml
@@ -10,7 +10,7 @@ maintainers:
   - Jonathan Cameron <jic23@kernel.org>
 
 description: |
-   Family of ADCs with i2c inteface, internal references and threshold
+   Family of ADCs with i2c interface, internal references and threshold
    monitoring.
 
 properties:
-- 
2.34.1

