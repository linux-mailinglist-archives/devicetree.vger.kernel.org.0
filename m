Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 908F9539E17
	for <lists+devicetree@lfdr.de>; Wed,  1 Jun 2022 09:21:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350287AbiFAHTh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Jun 2022 03:19:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36808 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350270AbiFAHTa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Jun 2022 03:19:30 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 136AC4E3BB
        for <devicetree@vger.kernel.org>; Wed,  1 Jun 2022 00:19:27 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id rs12so1803225ejb.13
        for <devicetree@vger.kernel.org>; Wed, 01 Jun 2022 00:19:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=q4LiBXwvH4EX3rvx7Dp/YqRrRBsUkNnaPJfoXallj8A=;
        b=IZyHiDMs/N+5e/vuN6kSchZpVDt8CgBfnXarfJcJJhIzygQU+lU/UAKKx1ZhfhTH7y
         WlkD4q+a8/Ea532icKPdCeyCg+m7kyIWGIK7EbYCh/L4YX8Etow7m/xSC9CnoENNk/9h
         7al2bT9TZeVv8TfpxjAMozPhsMxJWd1UWIa8kzOWfH47bw+klqtavcZoj9AGGicNjE2R
         KanXllcdbpyvnHXyDpvgx/EqcnTn2Ou7AD5iy81IGO/9aOktgL1wHHH4JTjtz7NZ722h
         +/dYUoS1p3vzOOo7EjdsG/IvqypR+J1ug63AjNBoAg9cth1EjMmTYO8lO5hhIU4i2tet
         eUQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=q4LiBXwvH4EX3rvx7Dp/YqRrRBsUkNnaPJfoXallj8A=;
        b=YvI3JQTF6eETsw/IMldVeS1ZMsIHtbGo2biQD0KIsSWANS74QUuSq8Fd/g/AcE8n9b
         aediOUlBQB/d9Go6YCNVqHfDC81R83SNU1F2PDdDucw81ZtQ7vliPwRJPysI3ohcj6zt
         wocYq++Qz0jyXxvNYzzrecCYxZMRbqqEJPa1doOezihBvkoIGhVYEHkhuVlEh09alTY8
         RNGuoWdB5rCfdsOJ7biQAfpPXg5ZR0csdH0wJwW4CUWrey2xQBwmNw0wFCsLOQuAOG8G
         hGkobrvzK1xggMRz4pV5MwUBNW7N722eqiLLHDMuCrssT9CzNTBupbQJmyeeiKnHKIFC
         8GoA==
X-Gm-Message-State: AOAM533hHmcEoPmdYz+gdCQrzV6f9omDOCH7Z63oODR3vD7GIF0egFXs
        AT2eolXmeLIsK1ec/n3BgfJ76A==
X-Google-Smtp-Source: ABdhPJy99V6A/3kDbpSkpU0K/h7gHo38OoevIC2UrG6ogktLyOYPwq7LaNJ/8pwm2uZWJpjCsa0tbA==
X-Received: by 2002:a17:906:99c5:b0:6fe:b069:4ab6 with SMTP id s5-20020a17090699c500b006feb0694ab6mr49112187ejn.436.1654067965500;
        Wed, 01 Jun 2022 00:19:25 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id f27-20020a17090624db00b006f3ef214dcdsm358486ejb.51.2022.06.01.00.19.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jun 2022 00:19:25 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Sebastian Reichel <sre@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        David Heidelberg <david@ixit.cz>,
        Dmitry Osipenko <digetx@gmail.com>, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/4] dt-bindings: power: supply: qcom,pm8941: use regulator schema for child node
Date:   Wed,  1 Jun 2022 09:19:09 +0200
Message-Id: <20220601071911.6435-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220601071911.6435-1-krzysztof.kozlowski@linaro.org>
References: <20220601071911.6435-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The 'usb-otg-vbus' child node is a regulator so reference the regulator
schema for proper evaluation.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/power/supply/qcom,pm8941-charger.yaml   | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/power/supply/qcom,pm8941-charger.yaml b/Documentation/devicetree/bindings/power/supply/qcom,pm8941-charger.yaml
index caeff68c66d5..cd6364d65751 100644
--- a/Documentation/devicetree/bindings/power/supply/qcom,pm8941-charger.yaml
+++ b/Documentation/devicetree/bindings/power/supply/qcom,pm8941-charger.yaml
@@ -121,7 +121,7 @@ properties:
     description: Reference to the regulator supplying power to the USB_OTG_IN pin.
 
   otg-vbus:
-    type: object
+    $ref: /schemas/regulator/regulator.yaml#
     description: |
       This node defines a regulator used to control the direction of VBUS voltage.
       Specifically whether to supply voltage to VBUS for host mode operation of the OTG port,
-- 
2.34.1

