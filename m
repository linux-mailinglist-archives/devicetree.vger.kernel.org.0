Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8D107642B53
	for <lists+devicetree@lfdr.de>; Mon,  5 Dec 2022 16:19:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232420AbiLEPTV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Dec 2022 10:19:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232422AbiLEPS4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Dec 2022 10:18:56 -0500
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9799517AA5
        for <devicetree@vger.kernel.org>; Mon,  5 Dec 2022 07:18:54 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id b13so8143345lfo.3
        for <devicetree@vger.kernel.org>; Mon, 05 Dec 2022 07:18:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0y6Fl5nmmyzxTIPnsN7I5cMbpP4z41yN4XYoyu6c3jc=;
        b=mO+7zarx+DxucFPY10l+B3VsMhLELHKJH6rHq4ek7bqaXb+qR1hTZOtn3rws92g0jO
         FTlJrua1bI1nc/P9HWytW0LW4bezurnVHeUxbEtka5AXvLRiiVSh2YMleTy8jTQpSZS5
         Q/3sswD1Ld3MisWiPYe3Vx86xcEj6U7csGU4z86svc66gc1F5vobXfwfg+o3FZwwbh6e
         6bB11NBSw8EZ2SZzDLJKRZHR7rIc9XSxc6i4VpfOM09o3s0ncDtFaIguC228+yyrH3t+
         4KipmNfx8fZl4jQyLu9Nq385iR6uS6ccqfOxiOAfMfo2HijzNapnX/yKZqMcfE0yNprc
         JhPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0y6Fl5nmmyzxTIPnsN7I5cMbpP4z41yN4XYoyu6c3jc=;
        b=e6FEDWEAbw/FPTtQEX1Kq3eSuZ97FEs/qhmarjomA5TJKTZ1Tv8Ta1FyXJ8V3a1xZ/
         7/Nrr2UaAZXUzs+sziIsQCH06L7eBm8M+fOlUgb7zriNyf3DiBp3Ga6p/bHSzu4PHv5A
         7Da0es45tTVPHTPb57GboTW1yvkP9Xq43RMd+lXV0KSLAORv5ghkmagSvr7j1dVMW2NA
         8c6V7gIsR69w3uFA6R1jsnfVnSz7b8hZ4tFS9vSjBPLQxDrGB7hCIhncNDY1qJju/kca
         dwzBdKKY1SwMhHK4i/n7A/BiuBduGbmCAeiHucfgZ1N1gijruREWLmR35kvasm5U2dE8
         oZvQ==
X-Gm-Message-State: ANoB5pltfWSWXjY6Wy9daoNkrz/ZVLDrYV5zTjQsk1RlCOEsDot0wVj1
        Xg0OhEYn6k6izSq+dFvpIZ3e/Q==
X-Google-Smtp-Source: AA0mqf4eQ3eDlVcaTMJOzJGRvcxfn6xFqaVgJoOB7uHiBOYlxYooiHYb5ToMFm5HnBlbDhFaIemAfA==
X-Received: by 2002:ac2:4159:0:b0:4b1:5a96:983f with SMTP id c25-20020ac24159000000b004b15a96983fmr31113889lfi.535.1670253534125;
        Mon, 05 Dec 2022 07:18:54 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id w26-20020a05651204da00b004b55f60c65asm1012470lfq.284.2022.12.05.07.18.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Dec 2022 07:18:53 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Hans Verkuil <hverkuil-cisco@xs4all.nl>,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Alain Volmat <alain.volmat@foss.st.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Joe Tessler <jrt@google.com>,
        Yannick Fertre <yannick.fertre@foss.st.com>,
        Jeff Chase <jnchase@google.com>, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-tegra@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 4/9] media: dt-bindings: amlogic,meson-gx-ao-cec: reference common CEC properties
Date:   Mon,  5 Dec 2022 16:18:40 +0100
Message-Id: <20221205151845.21618-5-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221205151845.21618-1-krzysztof.kozlowski@linaro.org>
References: <20221205151845.21618-1-krzysztof.kozlowski@linaro.org>
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

Reference common HDMI CEC adapter properties to simplify the binding and
have only one place of definition for common properties.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Acked-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../bindings/media/cec/amlogic,meson-gx-ao-cec.yaml        | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/cec/amlogic,meson-gx-ao-cec.yaml b/Documentation/devicetree/bindings/media/cec/amlogic,meson-gx-ao-cec.yaml
index f65c9681a9f7..b1fab53418f9 100644
--- a/Documentation/devicetree/bindings/media/cec/amlogic,meson-gx-ao-cec.yaml
+++ b/Documentation/devicetree/bindings/media/cec/amlogic,meson-gx-ao-cec.yaml
@@ -33,11 +33,8 @@ properties:
   interrupts:
     maxItems: 1
 
-  hdmi-phandle:
-    description: phandle to the HDMI controller
-    $ref: /schemas/types.yaml#/definitions/phandle
-
 allOf:
+  - $ref: cec-common.yaml#
   - if:
       properties:
         compatible:
@@ -81,7 +78,7 @@ required:
   - clocks
   - clock-names
 
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |
-- 
2.34.1

