Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1AB2A60027B
	for <lists+devicetree@lfdr.de>; Sun, 16 Oct 2022 19:36:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229755AbiJPRga (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 16 Oct 2022 13:36:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55630 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229871AbiJPRga (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 16 Oct 2022 13:36:30 -0400
Received: from mail-qv1-xf36.google.com (mail-qv1-xf36.google.com [IPv6:2607:f8b0:4864:20::f36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE6C34153F
        for <devicetree@vger.kernel.org>; Sun, 16 Oct 2022 10:36:28 -0700 (PDT)
Received: by mail-qv1-xf36.google.com with SMTP id mg6so6268806qvb.10
        for <devicetree@vger.kernel.org>; Sun, 16 Oct 2022 10:36:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=33yORBvP8CyROZDGO3XsviIiyoyghI9p2jQ7nrsYpb0=;
        b=vX4xk5pz42QKRJCls5ByhGA2iaXQPvuj1jjpnKX6lGa/PPSKPmuGuI5rkG2RcezTuz
         UxoJ86ntFosaMdxRFnec3Zv9TQV1GcnHhUqNQ/uTCA67JjMDlLdoCOmgWfb38VRhDMAo
         3njgwLbq1hQqBMH1ECqqm2mskKyJKp9hkxFh9eqdD5ZNa6K+dNjlwEt4lh7uXxeAo0sf
         Bw26fHoP9jgEkIfCmRNDFF04f06zwxZKnFZH7FGuXVLMtu+vZByu/rg9Sy3TPFRka08M
         PKtDKfH6Z2SY1TiVJojJj/8eDJjk21fG/zNWnVncDxUwL1y7bg38u3Doyii1cVpmQm0N
         /LZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=33yORBvP8CyROZDGO3XsviIiyoyghI9p2jQ7nrsYpb0=;
        b=Joy3ibQUEHtaNxC4oqcMyOW5i1pgYpFr0tFo7B5SEngfIw3gKpgiW9X/jTsipkFBPr
         kaG8UipivO9Nx1xkgTXNheoBiQpjNbl6yHV1sLHynws2S0FOiddTp9ybv43RE6uGJrFd
         rRFw7QQcUK+pCCk6Mlkj9Ed5Ujwn4+aSsPRXwZfBk56FDT5FeowB5Fd1HAjIPav4xE3f
         ITQpxuPIz8wEoB5DuA8Dab/DY+gsst1BrQEww9SGWJxUFYfetSdrXST8Q9q0Kn2AYfDr
         Hxf1oqtMfDnHc0HpjLqfhMmkvvEUbm6kfimJCw2Sh1UhQ6QU83fXFKnbFvPz2XVP6TzV
         R1aw==
X-Gm-Message-State: ACrzQf1VotYnpkqT8MXswyttlm45zkFyBSNy89MCwdG4BtYb7MsZCkkH
        BV0U+T7eCenyzOwvJvG3WJKWTNBtpwQZGA==
X-Google-Smtp-Source: AMsMyM4MPWCtFWj364OqCk4Za8oFnohWBlCXHg9o98iEqt4JY41nuGriJ+NdhbHOSISDSCx6gVuUaA==
X-Received: by 2002:a05:6214:501e:b0:4b3:d08f:b58c with SMTP id jo30-20020a056214501e00b004b3d08fb58cmr5901540qvb.90.1665941788178;
        Sun, 16 Oct 2022 10:36:28 -0700 (PDT)
Received: from krzk-bin.hsd1.pa.comcast.net ([2601:42:0:3450:9b13:d679:7b5b:6921])
        by smtp.gmail.com with ESMTPSA id u14-20020a05620a0c4e00b006cfc4744589sm7640259qki.128.2022.10.16.10.36.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Oct 2022 10:36:27 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Iskren Chernev <iskren.chernev@gmail.com>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: pinctrl: qcom: drop minItems equal to maxItems
Date:   Sun, 16 Oct 2022 13:36:25 -0400
Message-Id: <20221016173625.53769-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
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

If minItems are missing, they are implicitly equal to maxItems.
Dropping redundant minItems simplifies a bit the binding.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/pinctrl/qcom,sc7280-lpass-lpi-pinctrl.yaml          | 1 -
 Documentation/devicetree/bindings/pinctrl/qcom,sm6115-tlmm.yaml  | 1 -
 2 files changed, 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,sc7280-lpass-lpi-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,sc7280-lpass-lpi-pinctrl.yaml
index 8270debd4f25..f7ec8a4f664f 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,sc7280-lpass-lpi-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,sc7280-lpass-lpi-pinctrl.yaml
@@ -23,7 +23,6 @@ properties:
     type: boolean
 
   reg:
-    minItems: 2
     maxItems: 2
 
   gpio-controller: true
diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,sm6115-tlmm.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,sm6115-tlmm.yaml
index 51bae1d3f150..164f24db8b2b 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,sm6115-tlmm.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,sm6115-tlmm.yaml
@@ -18,7 +18,6 @@ properties:
     const: qcom,sm6115-tlmm
 
   reg:
-    minItems: 3
     maxItems: 3
 
   reg-names:
-- 
2.34.1

