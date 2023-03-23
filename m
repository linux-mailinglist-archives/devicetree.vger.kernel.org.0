Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AF8426C64D7
	for <lists+devicetree@lfdr.de>; Thu, 23 Mar 2023 11:25:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231215AbjCWKZs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Mar 2023 06:25:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231232AbjCWKZe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Mar 2023 06:25:34 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BEA2A19C64
        for <devicetree@vger.kernel.org>; Thu, 23 Mar 2023 03:25:29 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id m2so19870718wrh.6
        for <devicetree@vger.kernel.org>; Thu, 23 Mar 2023 03:25:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679567128;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MbMpIW2XeTgOIuij0DvAphORXQYIJr8R5bBmK3u0n4s=;
        b=OiM1Yacj+a6ZH6zyF+4WbfsKHoee7NXm2MM9OOs2n5bJzfOLIGXc12cwtoMMbg5V3G
         3E7MUGqH2EfT+LLrFi30N1TD5vnz9MtKSQJ7qwGhKdoghrG2YNuKlZpFNEbNpPfb+JNC
         For/VV8QIang/A28V7HMQQzpxwmJI796xxhu2taDRIfLRuuphtt55iNSeSB1TPRM88kr
         MbeZOoHUYvYqUSMsB/kCZa2vQ1FUlEiDJMmqJPeIQn3BXlnkPEmWDHVnFESQ6FJvikYa
         cSWdtPSS6SLsNYVNt6bjg783EluGuECjGfV2WXUqqcBqC1eByii9qGUXoZ2JXGQ/O6yJ
         vBgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679567128;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MbMpIW2XeTgOIuij0DvAphORXQYIJr8R5bBmK3u0n4s=;
        b=J2Bq1GaA/n0rxv9C3WqwZk8xyfBPAPvRYWhSLIkZiR07jT9HtC0hpXhlDRN16c3jYp
         MKACjjUEvzMPQF12+ZVFjwcgtM7WgLG6ZjW/ppXJyc/iG2+zP4sMJggCSPWz3VA4kWOf
         sesaLFUvQ2SHxIZYHsEFt5KGb9yYn9XCO/D8Q1/19xE5sF86tkMkTmJRCG7HbavLI0RG
         MULdeOJL1dx9CMJMEmoeAcI1JPcxwvYZ5bsazxtHcKU3Hj1dDcQN4nXS6js4Pmu6NpmQ
         X1h4dhDhWzOD81uWH2fFoCZhJ3/JWt2XPR+/R6ipLbbiGSzfknobgSD3hJGlGE9B9IRq
         doAQ==
X-Gm-Message-State: AAQBX9eYgCsGKjMeMXlH92Uiizwm6mYmtCHLuxrwQ/vnpigCi7Sd455m
        +1PsKYtY2VxnlQ/WL0OkKkRUHg==
X-Google-Smtp-Source: AKy350YnpJ9aARdt0vtWcfFYEivcldCh8Vl38PKNmqoJ8yqlx/THGzhpYzjoV1hW1Xn0hKBSv96fHw==
X-Received: by 2002:adf:ed43:0:b0:2ce:a8d5:4a89 with SMTP id u3-20020adfed43000000b002cea8d54a89mr2146384wro.37.1679567128111;
        Thu, 23 Mar 2023 03:25:28 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id e23-20020a5d5957000000b002cfefa50a8esm15753530wri.98.2023.03.23.03.25.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 03:25:27 -0700 (PDT)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Date:   Thu, 23 Mar 2023 11:25:17 +0100
Subject: [PATCH 2/8] dt-bindings: mfd: qcom,spmi-pmic: document pm8450 pmic
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230323-topic-sm8450-upstream-dt-bindings-fixes-v1-2-3ead1e418fe4@linaro.org>
References: <20230323-topic-sm8450-upstream-dt-bindings-fixes-v1-0-3ead1e418fe4@linaro.org>
In-Reply-To: <20230323-topic-sm8450-upstream-dt-bindings-fixes-v1-0-3ead1e418fe4@linaro.org>
To:     Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Lee Jones <lee@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>
Cc:     linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        linux-scsi@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.1
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a compatible for PM8450, commonly found with SM8450.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
index 975c30aad23c..15deeff2d447 100644
--- a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
+++ b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
@@ -57,6 +57,7 @@ properties:
           - qcom,pm8350
           - qcom,pm8350b
           - qcom,pm8350c
+          - qcom,pm8450
           - qcom,pm8550
           - qcom,pm8550b
           - qcom,pm8550ve

-- 
2.34.1

