Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D84FA5FB96F
	for <lists+devicetree@lfdr.de>; Tue, 11 Oct 2022 19:28:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229703AbiJKR2b (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Oct 2022 13:28:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55968 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230200AbiJKR1V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Oct 2022 13:27:21 -0400
Received: from mail-qt1-x836.google.com (mail-qt1-x836.google.com [IPv6:2607:f8b0:4864:20::836])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BD855B05E
        for <devicetree@vger.kernel.org>; Tue, 11 Oct 2022 10:26:44 -0700 (PDT)
Received: by mail-qt1-x836.google.com with SMTP id s3so383031qtn.12
        for <devicetree@vger.kernel.org>; Tue, 11 Oct 2022 10:26:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lL14UiPeKdh/QD6+joJS9aO6pvdHV6+MX1LEVoDNOrY=;
        b=aCfBaHyW5M7b0a+mKTUTMOxtHutyhoCEs7oFo9VGSQBaN2wHyyTg0ZgLWVd+eCaEBC
         cnl8Jl5Yv31UEHAL8AVhGR0Si+Liw+wA04U+0Llowu0kGBqD2tWyBjag5KFfXotRBj8t
         hgOi43pz40JVxX2fea6x6/V1TX/dybyq4o2IPUOceyXilfv8kgzRXUlBbvCbJFm8Dzct
         A1did00iPT5GNntAMzwBNmjDg+ympjj68jgGTVMly2y9fYK0F4ftA3f/tmL7ANUh6O8h
         ZfdUghEqE/8mHPEr3ZyeEhjehORGRM9Ds4XrKLW6dBw2JEP4DEHjm8Iq+Hvdz7Gx0wb3
         szrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lL14UiPeKdh/QD6+joJS9aO6pvdHV6+MX1LEVoDNOrY=;
        b=4ryun06/7EjEnZE03snL/J9fYHp+EbFzf0nzVg6RfL9e8V65ewj2Gl1HFHeaC4PWv8
         DLAuYKOnur6x2BxrcKnsVs01ROvyc9NKOXsFx5xp22hMb1GRGdHAMLmes5w59SC5mwJv
         7e9eZ5FV2ZzA1UcIafmg+bD0QmHxVJxQjoYdxx7UNxjI9aZ3d0L7N8zaTD289bR1OSWY
         5UHTvmnwbBJFBLQuvEbcvPweYgzESwrsWs0lrd5fryHFva+rsFT7UfGzr5yPtk8WjUpi
         MeYEAZsZ+aVbRcOO9pNSZWRbxuRYEsljv0Di7UkqFdiuvdYyeHzIAIPxQP3rOYNgjEhB
         MIvQ==
X-Gm-Message-State: ACrzQf2xD+BJ4YIG7kyIkdWk5g0bvXX5mS2PKky/VbAV8MLQJvyg+jAR
        mTspZMMMhNPhLpOzVN/CNuNs9g==
X-Google-Smtp-Source: AMsMyM6cgPDaHR0I4WZq9qmvwh7tbqICBBktFnruXzp31YdfKTx+AUo2Tuc0M5Ls7MiWBt09UptNxw==
X-Received: by 2002:ac8:5907:0:b0:39a:e5c3:af86 with SMTP id 7-20020ac85907000000b0039ae5c3af86mr7676626qty.74.1665509189884;
        Tue, 11 Oct 2022 10:26:29 -0700 (PDT)
Received: from krzk-bin.home (cpe-72-225-192-120.nyc.res.rr.com. [72.225.192.120])
        by smtp.gmail.com with ESMTPSA id i14-20020a05620a248e00b006bba46e5eeasm14289087qkn.37.2022.10.11.10.26.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Oct 2022 10:26:29 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        Shawn Guo <shawn.guo@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        krishna Lanka <quic_vamslank@quicinc.com>,
        Iskren Chernev <iskren.chernev@gmail.com>,
        Martin Botka <martin.botka@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v2 16/34] dt-bindings: pinctrl: qcom,sm8450: drop checks used in common TLMM
Date:   Tue, 11 Oct 2022 13:23:40 -0400
Message-Id: <20221011172358.69043-17-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221011172358.69043-1-krzysztof.kozlowski@linaro.org>
References: <20221011172358.69043-1-krzysztof.kozlowski@linaro.org>
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

The common Qualcomm TLMM pin controller schema already brings
requirement of function for GPIO pins.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Acked-by: Rob Herring <robh@kernel.org>
---
 .../bindings/pinctrl/qcom,sm8450-pinctrl.yaml         | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,sm8450-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,sm8450-pinctrl.yaml
index 9cd97a467648..7ab9a0eec017 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,sm8450-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,sm8450-pinctrl.yaml
@@ -60,6 +60,7 @@ $defs:
     description:
       Pinctrl node's client devices use subnodes for desired pin configuration.
       Client device subnodes use below standard properties.
+    $ref: qcom,tlmm-common.yaml#/$defs/qcom-tlmm-state
 
     properties:
       pins:
@@ -112,16 +113,6 @@ $defs:
     required:
       - pins
 
-    allOf:
-      - $ref: "qcom,tlmm-common.yaml#/$defs/qcom-tlmm-state"
-      - if:
-          properties:
-            pins:
-              pattern: "^gpio([0-9]|[1-9][0-9]|1[0-9][0-9]|20[0-9])$"
-        then:
-          required:
-            - function
-
     additionalProperties: false
 
 examples:
-- 
2.34.1

