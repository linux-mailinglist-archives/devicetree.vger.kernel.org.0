Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 58E3552EC1C
	for <lists+devicetree@lfdr.de>; Fri, 20 May 2022 14:33:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349297AbiETMdC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 May 2022 08:33:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53026 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349289AbiETMdA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 May 2022 08:33:00 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 735784C41D
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 05:32:59 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id t25so14066995lfg.7
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 05:32:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=knSxD1TlOZ/MurFqh4MAuIK2ISGbwtIaZGc/kQ3GJTw=;
        b=oYKCAbrjW/8mxghhX32YjZ+S4W4CzBeJoPk5KYZmY31m/q3lQTIbL198GGWpE5Cp+h
         9chLsR/dPw897WMGTa079wCD2hTP/hE1bQ/YyDVSFcrhVXVSdufoenoxABQLmK/kGzGi
         mWtM90qVVCiYNjaS3upsONRYfOKMj4zmnyBIzoD2iuxRWD8idL4tKnKGc55408YjNPoI
         jZrkUSurYY9eUX7BY8oF5KvjO4tbnVj4cLl6BAMA8+1uJrDndgvFIC/1/I3IHHmhc30A
         K/K8pCKu6R21TLCdY2A3vkOHvzwrAKmXl6t9hbNqTnQXxHQ+eWI6XlZEUxUa8YidHagJ
         hcgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=knSxD1TlOZ/MurFqh4MAuIK2ISGbwtIaZGc/kQ3GJTw=;
        b=igHcZ77e0aUcGNh+uBZs+KXqaUOSg1Lvnjw/E2gVos1wb8nqA5fEP0aKujPuk7t8ad
         HznV4ZBucoM2/n0M//HmYDawj9cb3Oqgt1ZWAZLobW+00Xaqxl6wac4MQn9C4IPrNNP6
         DLYcJUrLD8Y5fX8fC0GbdHXh0xWexlrpyJ8qg3zLAl5dygf+ETPq4MVMIGS60bdtaQ2k
         UvtgjbLy55JJN7kLQC3yXSyHcYU8hxDsOd2B4agXQduL7XdP46Dnbkk1tdW6FzztPLRk
         4t7Ou6fRggfYTImQDsUlPQWz/BTtQeBexJDBXS3pm2DLdKXfx8XdbKIm/W9veGdHajuz
         Cb8w==
X-Gm-Message-State: AOAM531j9A+N0p8xGcfzB73y5IKzMbdjtE3irvrRN/risqWkuTsDd23p
        Ptg4ZpZAEJNDwgSbX11QaMj1PA==
X-Google-Smtp-Source: ABdhPJx9fhKVC53FchZhlE3nk+XbV8Zly4fi6zCSFk7x91jdXP1I43wdfQbK10NtsbvE4yz2jZeBlw==
X-Received: by 2002:a05:6512:3341:b0:477:be23:d94c with SMTP id y1-20020a056512334100b00477be23d94cmr6663585lfd.291.1653049977849;
        Fri, 20 May 2022 05:32:57 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id a14-20020a056512374e00b0047255d211bfsm643973lfs.238.2022.05.20.05.32.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 May 2022 05:32:57 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stephen Boyd <sboyd@codeaurora.org>,
        Vinod Koul <vkoul@kernel.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/9] dt-bindings: arm: qcom: fix Longcheer L8150 compatibles
Date:   Fri, 20 May 2022 14:32:45 +0200
Message-Id: <20220520123252.365762-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220520123252.365762-1-krzysztof.kozlowski@linaro.org>
References: <20220520123252.365762-1-krzysztof.kozlowski@linaro.org>
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

The MSM8916 Longcheer L8150 uses a fallback in compatible:

  msm8916-longcheer-l8150.dtb: /: compatible: 'oneOf' conditional failed, one must be fixed:
    ['longcheer,l8150', 'qcom,msm8916-v1-qrd/9-v1', 'qcom,msm8916'] is too long

Fixes: b72160fa886d ("dt-bindings: qcom: Document bindings for new MSM8916 devices")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index b7dd61df7ec0..e15012035093 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -160,11 +160,15 @@ properties:
       - items:
           - enum:
               - alcatel,idol347
-              - longcheer,l8150
               - samsung,a3u-eur
               - samsung,a5u-eur
           - const: qcom,msm8916
 
+      - items:
+          - const: longcheer,l8150
+          - const: qcom,msm8916-v1-qrd/9-v1
+          - const: qcom,msm8916
+
       - items:
           - enum:
               - sony,karin_windy
-- 
2.32.0

