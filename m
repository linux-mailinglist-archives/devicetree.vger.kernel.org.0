Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E87575FB927
	for <lists+devicetree@lfdr.de>; Tue, 11 Oct 2022 19:26:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230074AbiJKR0N (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Oct 2022 13:26:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55930 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230079AbiJKR0K (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Oct 2022 13:26:10 -0400
Received: from mail-qv1-xf34.google.com (mail-qv1-xf34.google.com [IPv6:2607:f8b0:4864:20::f34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B38A327FC4
        for <devicetree@vger.kernel.org>; Tue, 11 Oct 2022 10:26:07 -0700 (PDT)
Received: by mail-qv1-xf34.google.com with SMTP id i9so9388674qvu.1
        for <devicetree@vger.kernel.org>; Tue, 11 Oct 2022 10:26:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kufKQ/HjiRue6jRVh1kAvY+CDHUw7AvMzeS+Blm/NOo=;
        b=YOrn2jmXOsrDmw3sAa289YDF5RhJ2/lFcaPvh8crVyird4ssix8baQwk6S0m0U2rig
         XHgKdXX+q1zER6HdF8+tu8QHw2a7SHh9HNI8GLQ1Jd7C3haSX6SsjYLmSMY1coykDWgb
         eW23g55i3yNhEkorML9ncZS54q9d1tT/3PBogY/tbg7xqFMK1M9cXu+Bck4JHqlwA7d9
         IOlwt94Vww+rZFBSYOZQeFbsyJCtE1SgtwfzXe7eH67XgjcZQdYhO3KVR9ho0piwU2GM
         t59TthTwoXbYhjDefTN85dHMgM5uAbRghbpbOtgz60zAjrR3gc0B8NDKF34+OfuoxEPj
         kffA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kufKQ/HjiRue6jRVh1kAvY+CDHUw7AvMzeS+Blm/NOo=;
        b=MJOrJPHpqg+fuv5LQGnSDX8NaHy+HQSLY7+O0v6mKF21WJ4ReEnjUKhwWYzsZVIkOQ
         JVxdooavEBp2c8ZtX8VJqpMFFZWiSPho1BU/8BkNlzVhgDSfHKIPpTsDwi4cYiOJHZY7
         IBSI+IMNYzIMwdpfNz0bIWjBTKgIAuIvpXHm1rLmiybTzBHZMS8AZdpOoVlbwm4aN7T4
         RD+FYsEsQy0iEPpipNakKzhzz5D9nPT613DPLc7e7FLpRmUUUl+/6DnuhF+EC/gi7ZXR
         XcApQVUlOhmSzkbEEV1bDLti54wOWifcGDiy00vaZhOJn2dSnd0fveecBdMpN60PgvEE
         9atw==
X-Gm-Message-State: ACrzQf2SLKY/3Dwx8gnWsi6RQK/cppLe4+ld8IEFhjKekwjVl/ArY4xm
        sqficY0HsvUsyM0BZTHfbN2olw==
X-Google-Smtp-Source: AMsMyM5Hk1VHxEkKfNRHBFI7c3InXJxVmrOYqDnt9JdO11sO6QaKTHMNNoBaPIpJVzqKKYk0Wj1DQw==
X-Received: by 2002:a05:6214:252e:b0:4b1:9859:b74a with SMTP id gg14-20020a056214252e00b004b19859b74amr20046355qvb.87.1665509166396;
        Tue, 11 Oct 2022 10:26:06 -0700 (PDT)
Received: from krzk-bin.home (cpe-72-225-192-120.nyc.res.rr.com. [72.225.192.120])
        by smtp.gmail.com with ESMTPSA id i14-20020a05620a248e00b006bba46e5eeasm14289087qkn.37.2022.10.11.10.26.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Oct 2022 10:26:05 -0700 (PDT)
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
Subject: [PATCH v2 01/34] dt-bindings: pinctrl: qcom,mdm9607: drop ref to pinctrl.yaml
Date:   Tue, 11 Oct 2022 13:23:25 -0400
Message-Id: <20221011172358.69043-2-krzysztof.kozlowski@linaro.org>
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

The binding references common Qualcomm TLMM pin controller schema, which
references pinctrl.yaml.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Acked-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/pinctrl/qcom,mdm9607-pinctrl.yaml        | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,mdm9607-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,mdm9607-pinctrl.yaml
index a37b358715a3..5a9002a83423 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,mdm9607-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,mdm9607-pinctrl.yaml
@@ -14,7 +14,6 @@ description: |
   MDM9607 platform.
 
 allOf:
-  - $ref: "pinctrl.yaml#"
   - $ref: /schemas/pinctrl/qcom,tlmm-common.yaml#
 
 properties:
-- 
2.34.1

