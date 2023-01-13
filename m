Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 43E0E669272
	for <lists+devicetree@lfdr.de>; Fri, 13 Jan 2023 10:11:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241117AbjAMJLA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Jan 2023 04:11:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44308 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240922AbjAMJKW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Jan 2023 04:10:22 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A47A73E2C
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 01:07:50 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id j17so32235014lfr.3
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 01:07:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aw+Ll8gA8CDi1Y7f1Cqn7fscIlNjH9PUmDYuMqv7naQ=;
        b=NP+jd3HDsMkWOG9vZclmMojbPQ4Vmq6Zpc2ekluLj+tMha9VLxvLwA4c6jhi+by46N
         6EBuZXui4mIJuF5rAyur+sEYGq6T2ROyiret2vUcHDZrJ8FUw+nE6c9ZX95u6JX5Seo8
         hDoKvGkoLsBVXK/TS07noOBN5qw6qDNOPqidhhTP103tFiWRRVDKagTGuEfSvEJcUzsi
         pRjXGSfvW4OMoky7ogaeD7vK/UyxBsEomtMpbPc3wtafqkUYymIs2YNvB8XVeFYC+nV3
         K+Xomvzx/2mFtekEOhax5tBu3ggkSwjklWpWKHF+E1pMXmNyH9NwRzfqADy9UkMsYfUP
         3/fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aw+Ll8gA8CDi1Y7f1Cqn7fscIlNjH9PUmDYuMqv7naQ=;
        b=NeZKBKHYHg/eNXJQMTA+i/LIB58BSpGNilEpS1vW9UkBmZyN1NDQBUcPbTuJge7kG1
         7mtI3EEfarmYkG+btH56/0qnm7KN77gLqu6/CvXsqdlawhgJPDVRFqcjk/TWvi0TTuLW
         Gm6K5UxybzqdKu4kCainLDJHYNDF+DHrDYkoVcAn4PuKubJepC3rgtqfqKnNpSAO0CF0
         11PTW9Is9PEFf3FsV/+G4vVgF2Uf0+bq1UH+NDyG0e9mOgig2BlsQgFDzx1IDja2Ugzv
         wi51g1dcW8b89wSM8xQEuMgoLNvA2Dwzwu07BNHiqGUP9qMXZIcHWJ9JrOuXcheU084s
         Ib3w==
X-Gm-Message-State: AFqh2ko5zUDMfsuqbnILHmYUP2V22ngjhWbxF/tgsRvuSuIUeBcmWDbR
        0KrQx5geLgGVQNtLzieDSiCIXg==
X-Google-Smtp-Source: AMrXdXselyV/UW7hbOvgzPFB9DfU664EPmewva7fCJNwkIwvUxBoxx1grYKqbnbK4lqJ9/huF8tK2Q==
X-Received: by 2002:a05:6512:1087:b0:4d1:331:f6df with SMTP id j7-20020a056512108700b004d10331f6dfmr611512lfg.64.1673600868856;
        Fri, 13 Jan 2023 01:07:48 -0800 (PST)
Received: from eriador.lumag.spb.ru ([194.204.33.9])
        by smtp.gmail.com with ESMTPSA id d4-20020a05651233c400b004947a12232bsm3735296lfg.275.2023.01.13.01.07.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jan 2023 01:07:48 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH v2 1/4] dt-bindings: mailbox: qcom: correct the list of platforms using clocks
Date:   Fri, 13 Jan 2023 11:07:36 +0200
Message-Id: <20230113090739.45805-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230113090739.45805-1-dmitry.baryshkov@linaro.org>
References: <20230113090739.45805-1-dmitry.baryshkov@linaro.org>
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

Only three platforms require `pll' and `aux' clocks: msm8916, msm8939
and qcs404. Correct the list of platforms in the corresponding clause.

Fixes: 0d17014e9189 ("dt-bindings: mailbox: Add binding for SDX55 APCS")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../bindings/mailbox/qcom,apcs-kpss-global.yaml          | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml b/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml
index 943f9472ae10..b8a44ef0540f 100644
--- a/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml
+++ b/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml
@@ -71,15 +71,8 @@ allOf:
         compatible:
           enum:
             - qcom,msm8916-apcs-kpss-global
-            - qcom,msm8994-apcs-kpss-global
-            - qcom,msm8996-apcs-hmss-global
-            - qcom,msm8998-apcs-hmss-global
+            - qcom,msm8939-apcs-kpss-global
             - qcom,qcs404-apcs-apps-global
-            - qcom,sc7180-apss-shared
-            - qcom,sdm660-apcs-hmss-global
-            - qcom,sdm845-apss-shared
-            - qcom,sm6125-apcs-hmss-global
-            - qcom,sm8150-apss-shared
     then:
       properties:
         clocks:
-- 
2.39.0

