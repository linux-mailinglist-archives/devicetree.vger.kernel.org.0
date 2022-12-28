Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D78766576FC
	for <lists+devicetree@lfdr.de>; Wed, 28 Dec 2022 14:33:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232837AbiL1Nc5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Dec 2022 08:32:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232935AbiL1Ncu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Dec 2022 08:32:50 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AFD83F5A0
        for <devicetree@vger.kernel.org>; Wed, 28 Dec 2022 05:32:49 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id 1so23631509lfz.4
        for <devicetree@vger.kernel.org>; Wed, 28 Dec 2022 05:32:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ziBWgzGyvHStcWF7BJt5t7nFejfsG+Sng1Euge8Om7c=;
        b=N397k+LIH6zQ43lpdahhAs1nPal3C0yuHUfO3qeBD8SLwwCkXez70c0+ENcphPh5lG
         tKraAwuW79Nw70rq/juWybVXTR1ofEo6yAXhmHE8KARAn3VSKrXk7w2RZldtR/HPxzIY
         gZ2ij6r/PPRSq6qlJZDxZWlAx4iR19wXrRlHJu7Yc6PjHiN9BVFSonXV92liQPM6h9xm
         UpkfvSyF5dY0oLSJFc2E04sI5KItLNQ5EA+r38gF8W3Td5JJZWuYJHe16n0eryF2TDDG
         yByhR3qZ1wQNT+buRJli7Zf9lECZC2HEiYwiBO4xHM2go0H8hYrkvdSsxuWxrHFVLLSf
         En6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ziBWgzGyvHStcWF7BJt5t7nFejfsG+Sng1Euge8Om7c=;
        b=DKH2khEOW9TuuCeiUF6xhBw35HW/lbjeCn3c7cNEfkPvbAc9JmcejpXx3VwANXAcCu
         BRqj1gmMOhiGzGl9KjLWmjx4cZEKE0074Z9mUEMw7VCz0uEpA4GiQH11qeMTywFaXSDv
         6cOfQt34vV2QLZ3FeHRlkU42GxvSCQCFLB4H0aM22mspHKivYw0s3NYN5CiL4BQxWHf6
         tS5eGB1k+x1jYVYd09Pk96aZczfnYEH59jz/H9eMQq3EHymEp+cnJbEjEaBEuqQHG/WA
         YaMPkwvfxeaFcK+jMCffA4SVfMGpGBntOaoiRsYBnFInU5yoGHjGQdmfzP6I+Svl/Siw
         xNNQ==
X-Gm-Message-State: AFqh2krNI8cqZNA6uWe3njM2vR8Emfy892vrmWnAREsOBgDB5YlQD6FQ
        IEevzO754yCs/RewpyZVE2ybB7gT58MxeyZTN/8=
X-Google-Smtp-Source: AMrXdXvNJp96K+YR59krrIYFA+3sppSzAxoW2wVuaMizbCGOI6q6hOa56MwLfMU3sGcc6Ou8Iq6Ibw==
X-Received: by 2002:a05:6512:3e0c:b0:4b5:a5c7:3286 with SMTP id i12-20020a0565123e0c00b004b5a5c73286mr8963531lfv.9.1672234369296;
        Wed, 28 Dec 2022 05:32:49 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id d7-20020ac241c7000000b004a47e7b91c4sm2613876lfi.195.2022.12.28.05.32.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Dec 2022 05:32:48 -0800 (PST)
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
Subject: [PATCH 05/16] dt-bindings: clock: qcom,mmcc-msm8998: drop core_bi_pll_test_se
Date:   Wed, 28 Dec 2022 15:32:32 +0200
Message-Id: <20221228133243.3052132-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221228133243.3052132-1-dmitry.baryshkov@linaro.org>
References: <20221228133243.3052132-1-dmitry.baryshkov@linaro.org>
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

The test clock apparently it's not used by anyone upstream. Remove it.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/clock/qcom,mmcc.yaml | 2 --
 1 file changed, 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/qcom,mmcc.yaml b/Documentation/devicetree/bindings/clock/qcom,mmcc.yaml
index e6d17426e903..cf04d791093f 100644
--- a/Documentation/devicetree/bindings/clock/qcom,mmcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,mmcc.yaml
@@ -229,7 +229,6 @@ allOf:
             - description: HDMI phy PLL clock
             - description: DisplayPort phy PLL link clock
             - description: DisplayPort phy PLL vco clock
-            - description: Test clock
 
         clock-names:
           items:
@@ -242,7 +241,6 @@ allOf:
             - const: hdmipll
             - const: dplink
             - const: dpvco
-            - const: core_bi_pll_test_se
 
   - if:
       properties:
-- 
2.35.1

