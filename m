Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9B7E973D3B5
	for <lists+devicetree@lfdr.de>; Sun, 25 Jun 2023 22:25:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230058AbjFYUZ6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 25 Jun 2023 16:25:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229980AbjFYUZy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 25 Jun 2023 16:25:54 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40CF8E53
        for <devicetree@vger.kernel.org>; Sun, 25 Jun 2023 13:25:53 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2b5c231c23aso16249671fa.0
        for <devicetree@vger.kernel.org>; Sun, 25 Jun 2023 13:25:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687724751; x=1690316751;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YRhN5z1vU2RAXK0BYSOU9fT7Q2zkxmGWrbBmOJPqu/c=;
        b=QEq0MlSoDhCAgK7Ad/4bzzhE7sVEzWwEGM+g/ud1teYXtHZlgjUh/JmMpA609z5TEw
         d94US60qBZgOszxy+uxxiqG8UaVd27VGAnO1nQV2K19y8CGdG5iPjdsVuMYwYzoAw7Om
         UJdgMxtGqpCpnUUFaPHPQ6Ww5Y46enCG6KG5cptLoZl7c+nbAjja2cu9/DJtOPZGzeEg
         jw8cU3WwG/7O7QwomowSDBINedRaKhmo21cnr6EpwWu6tEruTZxKB3YxEevtDy7IpHHr
         n872IDfNr4Z5gWmilph7BrWvewu6bEqXApZG3MY7G3U79bxOuU9mGNBpNAsVcqBK2gu/
         zoGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687724751; x=1690316751;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YRhN5z1vU2RAXK0BYSOU9fT7Q2zkxmGWrbBmOJPqu/c=;
        b=Yjwn6ZdhkiYbuBzCJ4VGL6B0IA40863BZOD27E/bI48yzowFBMvjM9jtNKcpmpX8HW
         LZMJlG2vfsJTASFmo9WCoFQ4aaogoe5DvAt+04vdpFOdVB9Q9vGG0ztHPgN62WAp40ud
         QL/qaf2qjMUQDGLn5ipDA+QhLbF5QGQwkM8X6T3I/nl/ottKuJH76/fKH1RWGlOGBnXF
         gCD/m9i1r4vS1UZoj54l1tS2Tp33XrlHNB6ydwxxLZpMdWvmHR5YaK8S0P2TSjo3fdDc
         Rde9BquwnH5LmmWSWpok1GJ7b/OQAISbYBIiEFwqhJdq1LMpFrz3QMwr6PM39IPYWx4w
         WOUQ==
X-Gm-Message-State: AC+VfDxoUMgvQ9Ww4Klf8CNMNh/cjhb3liouSVNztCJ8+p2MPnCOSI9j
        iK3DhLwgIwfsLkPnrso4k0o55A==
X-Google-Smtp-Source: ACHHUZ40qDwP1FylA6mHXt3RFgKjl1b/4Rndo841EDArO8bFNBKhDIw0wD1jFUK6fR/KiD7L7c4Sxg==
X-Received: by 2002:ac2:5b83:0:b0:4f8:75af:e917 with SMTP id o3-20020ac25b83000000b004f875afe917mr10801640lfn.41.1687724751573;
        Sun, 25 Jun 2023 13:25:51 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id m21-20020a195215000000b004f8427f8716sm787537lfb.262.2023.06.25.13.25.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jun 2023 13:25:51 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Ilia Lin <ilia.lin@kernel.org>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Georgi Djakov <djakov@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-clk@vger.kernel.org,
        Christian Marangi <ansuelsmth@gmail.com>,
        Stephan Gerhold <stephan@gerhold.net>
Subject: [PATCH v2 03/26] dt-bindings: soc: qcom: qcom,saw2: define optional regulator node
Date:   Sun, 25 Jun 2023 23:25:24 +0300
Message-Id: <20230625202547.174647-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230625202547.174647-1-dmitry.baryshkov@linaro.org>
References: <20230625202547.174647-1-dmitry.baryshkov@linaro.org>
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

The SAW2 device can optionally provide a voltage regulator supplying the
CPU core, cluster or L2 cache. Change the boolean 'regulator' property
into a proper regulator description. This breaks schema compatibility
for the sake of properly describing the regulator.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/soc/qcom/qcom,saw2.yaml   | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,saw2.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,saw2.yaml
index 84b3f01d590c..a2d871ba8c45 100644
--- a/Documentation/devicetree/bindings/soc/qcom/qcom,saw2.yaml
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom,saw2.yaml
@@ -47,7 +47,7 @@ properties:
     minItems: 1
 
   regulator:
-    type: boolean
+    $ref: /schemas/regulator/regulator.yaml#
     description: Indicates that this SPM device acts as a regulator device
       device for the core (CPU or Cache) the SPM is attached to.
 
@@ -96,4 +96,17 @@ examples:
         reg = <0x17912000 0x1000>;
     };
 
+  - |
+    /*
+     * Example 3: SAW2 with the bundled regulator definition.
+     */
+    power-manager@2089000 {
+        compatible = "qcom,apq8064-saw2-v1.1-cpu", "qcom,saw2";
+        reg = <0x02089000 0x1000>, <0x02009000 0x1000>;
+
+        regulator {
+            regulator-min-microvolt = <850000>;
+            regulator-max-microvolt = <1300000>;
+        };
+    };
 ...
-- 
2.39.2

