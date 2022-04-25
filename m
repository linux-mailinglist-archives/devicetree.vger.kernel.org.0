Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9B1EC50E2A2
	for <lists+devicetree@lfdr.de>; Mon, 25 Apr 2022 16:05:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236155AbiDYOHy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Apr 2022 10:07:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35116 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242363AbiDYOHu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Apr 2022 10:07:50 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6218FB8985
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 07:04:46 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id dk23so6506536ejb.8
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 07:04:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=bfw7Ovddlbe5fuQTBnG7gPxDqU0ldis3EFn+ik6O63U=;
        b=AEz26bWaEvfDbb5t4AbG182TG19r1l/X05IUJ+vH3MIEogFnH4fEn7R31IB75kWsv2
         19bmvbuvksG+FvVmkY/xjtNCF3EkDL3svXC2kKjzAArbAMv4V0iQGbaZTZgfrZyxj1s1
         UHxiDa3dDBugsiFh0s+aUhsYs6Oq7y8qV///5i2eVr1FM8ju6HnRXVubQkCIJboDkxmO
         4DKtTofiBmfvK/o03CXKAfSzTMnR0DwG4Me3gDrP/LC8MKMmKnPF6L18ZG75YyGiPfOH
         tmm2f4zqIy9JefYDZ04sWIb26q2lemKTu76tF1hyyjw5N+cyhnkclF1zOJ7Z4GNfEF+f
         b38w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=bfw7Ovddlbe5fuQTBnG7gPxDqU0ldis3EFn+ik6O63U=;
        b=TiilrL8Ty3o7Cx5fO46qAipNWoRD6Ui9bnbQ6GJTfQ7oRsSmXIwo1AtLvjws4YXG4Z
         UhTaTdaQFvKdlg9eVTGnoQtbQ8q2HJPmlRpRP4QJaJS7FfYeXJkx6YmMa9Hh1clFGdCX
         srYjlo9UYi6QJoCPqW3mdkxDCy4AQzZ/Z4XH/9Xl+bgrHZYQ7U9HRRolmmbSeVJZePbo
         4/R1QmGb9hif7a62wqLv4ySkOGwsdobEtfea4QhklWAHaOFJfk5QgeZ5YTNxwuL1ZCY3
         hPB+wwM0dXtiXOwTLs0LVyfmpS4Iup3DTjw9KU57aaZQ4N9dp/wpTpovOzTySt0OfHPo
         1yWQ==
X-Gm-Message-State: AOAM532d9hfXj3hWz0CxhEH4NXLf4PCJXG52OjWANamCUk9cRSCzEw5s
        Ixde8s8DlodznvyW+l4G3llkhg==
X-Google-Smtp-Source: ABdhPJzVppVn/CGFKgoq3i/K1iOhoC7Cj/AxBhEdlNJwYwG0469109BHlaTisf80vW6oi22PRrj8ow==
X-Received: by 2002:a17:907:961c:b0:6f3:a3f9:bcef with SMTP id gb28-20020a170907961c00b006f3a3f9bcefmr1500534ejc.425.1650895484977;
        Mon, 25 Apr 2022 07:04:44 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id l20-20020a1709062a9400b006ce71a88bf5sm3663554eje.183.2022.04.25.07.04.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Apr 2022 07:04:44 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Oleksij Rempel <o.rempel@pengutronix.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] dt-bindings: arm: stm32: correct blank lines
Date:   Mon, 25 Apr 2022 16:04:36 +0200
Message-Id: <20220425140436.332467-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220425140436.332467-1-krzysztof.kozlowski@linaro.org>
References: <20220425140436.332467-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Correct blank lines to precesily separate entries.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/stm32/stm32.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
index 2f83f2760e6a..80b29f6903f0 100644
--- a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
+++ b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
@@ -64,8 +64,8 @@ properties:
               - st,stm32mp157c-ed1
               - st,stm32mp157a-dk1
               - st,stm32mp157c-dk2
-
           - const: st,stm32mp157
+
       - items:
           - const: st,stm32mp157c-ev1
           - const: st,stm32mp157c-ed1
@@ -110,6 +110,7 @@ properties:
           - const: oct,stm32mp15xx-osd32
           - enum:
               - st,stm32mp157
+
       - description: Odyssey STM32MP1 SoM based Boards
         items:
           - enum:
-- 
2.32.0

