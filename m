Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EDAF66585EF
	for <lists+devicetree@lfdr.de>; Wed, 28 Dec 2022 19:52:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233372AbiL1Sws (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Dec 2022 13:52:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36608 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233168AbiL1Swq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Dec 2022 13:52:46 -0500
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1BA5015FED
        for <devicetree@vger.kernel.org>; Wed, 28 Dec 2022 10:52:45 -0800 (PST)
Received: by mail-lj1-x236.google.com with SMTP id z7so11640772ljq.12
        for <devicetree@vger.kernel.org>; Wed, 28 Dec 2022 10:52:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i4OtaAmGJY7xxd4PSBjC+YPPX7IIqZeRJZLCtFq4Lnw=;
        b=u01nM3/M8jJxPl+mr3IfJwLIMqgfgRkIc7w6xP4R3YYk54xNiardAR6Z9wPu9UoKEY
         LUwSxpXpdpmAo9PdU5aRwtE2WvRWq5GyDXNmj86oXozOA5M98SHOVi9K4DnyGcI7LCI7
         8Of3y6Ot3xff/fraFZ6h8KBR6J40sRNXQpduLLa5mileAL3XTz7Ph4gLXyyTknRRdJ5x
         ACEAAVug2c0D4Tc+pcgumucDt6yGdaIJW+sAhQ0+Rzz0bKlmbSmcq6bmo2H2iOwu1e2n
         I6vKjeV4a8liWReXXy5sGCSEwX6yq9TA34q44N+pyWpAJjZqnKbes2xi8nNuBzDax44B
         MuvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i4OtaAmGJY7xxd4PSBjC+YPPX7IIqZeRJZLCtFq4Lnw=;
        b=2dlm7j0vPwpMgh3bTRpWfVn7mAb+FWbwccwx9IS0y9foyDI2XzbDJ9SGxNx+4TjHfO
         etztTBELxD9FuW3/enjepgeqk01MYwL2F7kJ2EcbdcNakPiepsa0w1iQ36DtUHVYOLd3
         9GJtfWg5WjzPFsAiKpyBaJ6GT3h+hreZtztJoHHSaJG+NrKj9bQl65dLNUw9vVYqNspE
         95qhu8PvnXkACWOij/aeXRi3lnsgA631EkTidfx/6VBwI+0VP+4wJXlAQQ66BRlTNawr
         GO36hUuKwRN0wadYrztOOSiO9Kr8qyuYhxH2rYOkQj4XWaSG3b1GAShaDSnwijIbDkKC
         UOgA==
X-Gm-Message-State: AFqh2koNtvCY9hw4nijWJXXLRUsaAYa2li8D41tg2nvAnT6OdjkOuKJN
        qDTfCLE/4TzRU9q4t7lE9RTlXw==
X-Google-Smtp-Source: AMrXdXs5A0KKKYhlVKfhYdRGa5MYw8svD9+CStJ1H0ghSEZaZbLaiB6BsOctc9Nb/nY8Mm87LaErDg==
X-Received: by 2002:a2e:9002:0:b0:277:9fc:5927 with SMTP id h2-20020a2e9002000000b0027709fc5927mr6745784ljg.0.1672253563428;
        Wed, 28 Dec 2022 10:52:43 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id s7-20020a2e83c7000000b00279d206a43bsm2031893ljh.34.2022.12.28.10.52.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Dec 2022 10:52:42 -0800 (PST)
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
Subject: [PATCH v2 05/16] dt-bindings: clock: qcom,mmcc-msm8998: drop core_bi_pll_test_se
Date:   Wed, 28 Dec 2022 20:52:26 +0200
Message-Id: <20221228185237.3111988-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20221228185237.3111988-1-dmitry.baryshkov@linaro.org>
References: <20221228185237.3111988-1-dmitry.baryshkov@linaro.org>
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
2.39.0

