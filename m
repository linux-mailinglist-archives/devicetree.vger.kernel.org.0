Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F3161544A68
	for <lists+devicetree@lfdr.de>; Thu,  9 Jun 2022 13:39:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241923AbiFILjY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Jun 2022 07:39:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35168 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240588AbiFILjW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Jun 2022 07:39:22 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D4B04E3A5
        for <devicetree@vger.kernel.org>; Thu,  9 Jun 2022 04:39:21 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id h23so35831704ejj.12
        for <devicetree@vger.kernel.org>; Thu, 09 Jun 2022 04:39:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=PsY51Y9LbGxALCP41QTkZafNtgUGmXvRyYQiy6lI9FU=;
        b=zYVkK+/V8ZGti1yZD5tr+qJSCek+CBHl2Nd1S/T3io//rE3MLRz4Uc6JvOZh//3oZf
         NI0ICECMerr05hjz/YzwcnYcowv9p8XnqaiK9gT1FKO+jvGLlLxJTRc5K8Tyl+cw0tli
         GCrWHIkFLBzMLB4NdF9ll+WcNamrxTIkPgLQggG/rhOflxUtLzoFk4K8mZ5BvLElGwt6
         lwfkDaDKEHIUH6k6qBWnaXgka8n9HzeMOXg0ZwINqRaQg3VDZdNZ47Es/FeEi/YCSAuQ
         lCjAvCwH3a90XTLrXe2L173Z0Tt4dh7LQW3aGReoQTnq25LDPafCnA2RrIgWA9aIlpEG
         gJCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PsY51Y9LbGxALCP41QTkZafNtgUGmXvRyYQiy6lI9FU=;
        b=5VGmntUSp20dgUGWbUmuAGeZPp8E2Q5d+s244Sk3+j+jsmMqLti1EyQVGhBeH0afB/
         w/+5t7fstGnQ3YwsS0hgAV/qa7/SXU6SeVyluUm7k6H+clZSfwzv94XNAAGRAYq1/NPK
         69hq7TSanv7cqeS5yyZ9EvIb2UNnbGks+FcvVy4V/M+ErcZLNekLysiK3dOB5PHpXx/L
         sgaO3IH8adrCMGNNQ0UVZkvbR2s4C9lXrv3zCUEcQUDTFsT0uW/3zHiC96oXOhbUSakj
         5LbkeUyRP8FvTHfN4fST3KFRBUv+pcJV5Gfj57R/oecf64B8/rOr0GuA4cwrYuTNqXdL
         RYHg==
X-Gm-Message-State: AOAM533P9hJNA406weU5xoOHEDzLIgurCZcu4Mkdaq1fp5/q2dcWXOOs
        +7JaI5c5TzUaJZExz/dAezBL4g==
X-Google-Smtp-Source: ABdhPJxghBIkt/oPlnkhYfc+sNVuqIIRec7ri31pQri4hdc3zeWjKeem2e8hWbd5rY1utC5lGBYtqQ==
X-Received: by 2002:a17:906:9b86:b0:6f8:24e7:af7d with SMTP id dd6-20020a1709069b8600b006f824e7af7dmr36649187ejc.295.1654774759852;
        Thu, 09 Jun 2022 04:39:19 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id u14-20020aa7d54e000000b0042e21f8c412sm11898495edr.42.2022.06.09.04.39.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jun 2022 04:39:19 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        arm@kernel.org, soc@kernel.org,
        =?UTF-8?q?Jonathan=20Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        openbmc@lists.ozlabs.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 04/48] dt-bindings: pinctrl: nuvoton,wpcm450-pinctrl: align key node name
Date:   Thu,  9 Jun 2022 13:39:06 +0200
Message-Id: <20220609113911.380368-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220609113721.379932-1-krzysztof.kozlowski@linaro.org>
References: <20220609113721.379932-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

gpio-keys schema requires keys to have more generic name.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/pinctrl/nuvoton,wpcm450-pinctrl.yaml    | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/nuvoton,wpcm450-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/nuvoton,wpcm450-pinctrl.yaml
index 47a56b83a610..4c7691c38b10 100644
--- a/Documentation/devicetree/bindings/pinctrl/nuvoton,wpcm450-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/nuvoton,wpcm450-pinctrl.yaml
@@ -152,7 +152,7 @@ examples:
       pinctrl-names = "default";
       pinctrl-0 = <&pinctrl_uid>, <&pinmux_uid>;
 
-      uid {
+      switch-uid {
         label = "UID";
         linux,code = <102>;
         gpios = <&gpio0 14 GPIO_ACTIVE_HIGH>;
-- 
2.34.1

