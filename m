Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A5148544A67
	for <lists+devicetree@lfdr.de>; Thu,  9 Jun 2022 13:39:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241372AbiFILjV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Jun 2022 07:39:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34916 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240588AbiFILjV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Jun 2022 07:39:21 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 42794194BD1
        for <devicetree@vger.kernel.org>; Thu,  9 Jun 2022 04:39:18 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id gl15so33028503ejb.4
        for <devicetree@vger.kernel.org>; Thu, 09 Jun 2022 04:39:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=n04xRHDLPG5HTJiUoTVbiyOiGV01+5rVdjSb2OnFTXM=;
        b=Ho4w2nM3+Q5bGqtr36/o6zunEJf1I2XT6LKt8qPNLkRCy08ezqkJOGQcvBy5vco1my
         LGBVSuQy2o3zJ3VRCl5ktdED8AwYX9JPpK6G/5qGM8by9MmCH5kjgAac+5wdKBNIpFR8
         xwCEy+untlqCgNrdyjBW7OOwtMZ/fatULZ5sRrG0DbV8h1a8fkBFQZrHUVRrHVTdOMOk
         bFY0Q+lM7yWFhuw7oGtstkGAHtRN906miEa6MNINObX4FBiMpladAqhuYFhntv02FElx
         IpEdpyFjcGNvTY5jsUxfo3i9hgyGqj3e7n/Ht1bGDfF6O7zBd2Gr4mncFJWMEbpebOEc
         /opQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=n04xRHDLPG5HTJiUoTVbiyOiGV01+5rVdjSb2OnFTXM=;
        b=dlBhOsLjaHZLvVagR6Ru94RrGI3pqHHo9VYSSq7hV8BL2oupeq4JvV4AzubY2wyxmK
         F3P2H4V3m67t/3JR8yiie6vaDfyjK47nKOZB3TLmkJL55tjIlOVifYna6KgOGcw6ADsZ
         zl+Zz3voQful1sRtkc+uFCICzij0DJuZvw+BV7KPAWxu3927qwnOIY1zFlP9cnzUIyHU
         il1nCGabvBfaq97rG+LL7BfYn0zNQWaXp7Q6p6lnM65x+K8uBbO/WMj6mjDsPAKrcOrz
         THV7T5OEK1HKeMglOfqDZSjsiXP2Vwp6J4OOK6Wv54+ANTuH1Jz1bN1zyXPxgVkN2xOA
         C5rg==
X-Gm-Message-State: AOAM531BDB4r4ZlmaGcKF4/JeiK+eJUpTgdpKdh22YDOuAIZHPUXZoCP
        tuSVdv1+MeEO254g7n7jZQ36YQ==
X-Google-Smtp-Source: ABdhPJwgFvtD9GYY39BjWKd3xyuHcJYvYead1t+NeA7lJVCKNmpwd5ABumStlG++pLlWR2zP3uaRug==
X-Received: by 2002:a17:906:e202:b0:6fe:478b:7c1 with SMTP id gf2-20020a170906e20200b006fe478b07c1mr35455237ejb.419.1654774757503;
        Thu, 09 Jun 2022 04:39:17 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id u14-20020aa7d54e000000b0042e21f8c412sm11898495edr.42.2022.06.09.04.39.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jun 2022 04:39:17 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        arm@kernel.org, soc@kernel.org,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-input@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 03/48] dt-bindings: input: gpio-keys: accept also interrupt-extended
Date:   Thu,  9 Jun 2022 13:39:05 +0200
Message-Id: <20220609113911.380368-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220609113721.379932-1-krzysztof.kozlowski@linaro.org>
References: <20220609113721.379932-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Each key device node might have interrupts-extended instead of
interrupts property:

  fsl-ls1028a-kontron-sl28-var1.dtb: buttons0: power-button: 'anyOf' conditional failed, one must be fixed:
    'interrupts' is a required property
    'gpios' is a required property

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/input/gpio-keys.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/input/gpio-keys.yaml b/Documentation/devicetree/bindings/input/gpio-keys.yaml
index e722e681d237..17ac9dff7972 100644
--- a/Documentation/devicetree/bindings/input/gpio-keys.yaml
+++ b/Documentation/devicetree/bindings/input/gpio-keys.yaml
@@ -92,6 +92,8 @@ patternProperties:
     anyOf:
       - required:
           - interrupts
+      - required:
+          - interrupts-extended
       - required:
           - gpios
 
-- 
2.34.1

