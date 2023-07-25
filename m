Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6705E7611E9
	for <lists+devicetree@lfdr.de>; Tue, 25 Jul 2023 12:57:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232340AbjGYK5Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jul 2023 06:57:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35756 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230454AbjGYK5A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Jul 2023 06:57:00 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59126421E
        for <devicetree@vger.kernel.org>; Tue, 25 Jul 2023 03:54:30 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-991ef0b464cso1370230766b.0
        for <devicetree@vger.kernel.org>; Tue, 25 Jul 2023 03:54:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690282469; x=1690887269;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lAPnBy51KY5Q8W0jZaxn8YJPMIA4zGpT3GqFQVuAjXs=;
        b=ftj1qHH7PHX8G+ykrJfin4oovgfvLbfYfj7bwo5GgaP4bmYWLh0tcp3FrI1Ja7zqc+
         y4t1CNKaafAqBumyPuxilT1jw0hHJAxXMqHIdTVgEEoEjl1l2tXFBYxe2w6AQ0p+ANZg
         7UTjPky1q/FKXknDniZsGRduKSJ3YExWd/j8s4Tieri3qf+6eA37ktghPiUxP0UQ1hOp
         buFKIjd41TOWT4hX2dvrCJVlcsRxr4UgU5ZyOd+pmNmiHfcaIQ+wpfhueJNGpLCkS+L7
         g1UfkP4g6dKPzH+HGPUWBcDjNivjpM51y36d8k3O2dwF7Yhd2oRLfaa/5OP9dhMwMfOR
         PXNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690282469; x=1690887269;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lAPnBy51KY5Q8W0jZaxn8YJPMIA4zGpT3GqFQVuAjXs=;
        b=MFRl/2O0XBC9ZUB5DUMWdtbHilngiIKavva1qrczXMm49yQQExGJXDyHGDRf9SlK4w
         fHh8M+QGCs5ypFNlUFzGp9piAMptNWzuTQR2t5t+oqu0fRAISc0Ba3SnJYRX6i+0I+mV
         3eYcRKt84Tieky10GkD6gS26wlPvet5iXv0qXDfDlgxT7m0sLFBIZqOO4xR+nus1bIMS
         8G/UxAOX/ZVEecQl1/TNjIaHEpJJn80hDt7UOgErglhZJplsErOQgnRl121ks7DTCH0k
         YZ/N/SaGsEf7I9WIWgb10IB36+iMfW9ejd6nPQ9VIuAe7BELuMJWp+4ACqTb6lLg53l8
         cmuA==
X-Gm-Message-State: ABy/qLadP2pq7vO/wBCS95c/KR3am4njeRdGAPplkLhReKUivMW3TcD/
        0jdSn158MU8vUTZpbjxE0U5HIg==
X-Google-Smtp-Source: APBJJlHF8N1dX3cLQ6BhBFDlptyqeZ0jbLRdvDgQ93gz6dgJ4jr5wU6kWig1k8fcud6m2UiE+efWow==
X-Received: by 2002:a17:907:77d1:b0:99b:b506:76d with SMTP id kz17-20020a17090777d100b0099bb506076dmr1070876ejc.24.1690282469541;
        Tue, 25 Jul 2023 03:54:29 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id xo22-20020a170907bb9600b0098860721959sm7980597ejc.198.2023.07.25.03.54.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jul 2023 03:54:28 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Saravanan Sekar <sravanhome@gmail.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Robin Gong <yibin.gong@nxp.com>,
        ChiYuan Huang <cy_huang@richtek.com>,
        Pascal Paillet <p.paillet@foss.st.com>,
        - <patches@opensource.cirrus.com>, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] regulator: dt-bindings: mps,mpq7920: drop incorrect ref to regulator.yaml
Date:   Tue, 25 Jul 2023 12:54:21 +0200
Message-Id: <20230725105421.99160-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230725105421.99160-1-krzysztof.kozlowski@linaro.org>
References: <20230725105421.99160-1-krzysztof.kozlowski@linaro.org>
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

"regulators" node is just grouping regulators, but itself is not
describing one regulator, thus reference to regulator.yaml schema is
incorrect.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/regulator/mps,mpq7920.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/regulator/mps,mpq7920.yaml b/Documentation/devicetree/bindings/regulator/mps,mpq7920.yaml
index 38475a568451..6de5b027f990 100644
--- a/Documentation/devicetree/bindings/regulator/mps,mpq7920.yaml
+++ b/Documentation/devicetree/bindings/regulator/mps,mpq7920.yaml
@@ -21,7 +21,6 @@ properties:
 
   regulators:
     type: object
-    $ref: regulator.yaml#
 
     description: |
       list of regulators provided by this controller, must be named
-- 
2.34.1

