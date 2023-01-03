Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 524BD65C141
	for <lists+devicetree@lfdr.de>; Tue,  3 Jan 2023 14:54:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237456AbjACNyI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Jan 2023 08:54:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232179AbjACNyG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Jan 2023 08:54:06 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F269510C3
        for <devicetree@vger.kernel.org>; Tue,  3 Jan 2023 05:54:04 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id c65-20020a1c3544000000b003cfffd00fc0so26296937wma.1
        for <devicetree@vger.kernel.org>; Tue, 03 Jan 2023 05:54:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YqUXVyDWNBIKG7fq6jtfID+cRMA87e0au/QBlVmdbFQ=;
        b=Tqqa84Usptr2kMT87l5zsP8JwIurD8cFGR799+yVooEmMhlecjPk+fLOpC0eDgy5/B
         RFhrINA7XGYD4l3TyOr8lAZjhmp+MsC6rVTtRFThgOpLdAorFxSNU5a9hSolRrhO3izB
         ubGQ/ePAlm2INKSK2s7OdoDFBCiuvuszl28WE4MRRpQmYOMJGywJAWwIFeChEFxx2nZh
         reNCToXRG5ndgXXbPTHaRWjjkvMjWuQ+TzGB8vyEtlchxmZgPNL0zNzvS/DrEnPkANnN
         FsDjnwRdH/PxHPd7RcyZ09+FG1Js8u+5wt+gVL0gcIi59JDSc7CMZl6Hgz397pCnBgqX
         PqAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YqUXVyDWNBIKG7fq6jtfID+cRMA87e0au/QBlVmdbFQ=;
        b=XTWun5z4fDzujYOWVm8TRcKRqEraT3fZnmT1WnC0MnJGP8OL4U4CvHfM6y5qNAGk3R
         9VYTpjDkLgFXM56c1GxL/MbzKPFwjHrFgYrLzDtURdVlAJZHRvJL3CznXKDOg+1kNMfM
         VlP3qerfhB+uY8MJ4yhR27Pc8usNJxhpAJKFD03cevl+mOe8ZlHfibBKyB+y1kZYG1RE
         zkJEum7p6lq5W81JVtT1b/01N+kv69XJ3o8YZAScmBsdV3gAF2DNfWgSDo8W86RmLe9o
         hG83g+s9K+Le8ZDH2zrPMwT6Zh2gBXCrURe99fn1P/BGxFNjl3f9B89xrNjIX9BWIaZ8
         zjMw==
X-Gm-Message-State: AFqh2kqeoQtcTkfy/W0n8pYjh5f8GYsyaEZ3lQpENuHZblnCv819D/UE
        4CQMwD71P34r1JSMCQMNBHPOBg==
X-Google-Smtp-Source: AMrXdXvTiQeoAedkmSRfsgdNwZqX2BU116W2m83xr/cF5xaSGfpW8/vXKmlXJHUwc1qOll0hO4c4yg==
X-Received: by 2002:a05:600c:358f:b0:3d1:cdf7:debf with SMTP id p15-20020a05600c358f00b003d1cdf7debfmr32184711wmq.26.1672754043466;
        Tue, 03 Jan 2023 05:54:03 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ay39-20020a05600c1e2700b003cfa80443a0sm42138195wmb.35.2023.01.03.05.54.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jan 2023 05:54:03 -0800 (PST)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Date:   Tue, 03 Jan 2023 14:53:59 +0100
Subject: [PATCH 2/3] clk: qcom: clk-alpha-pll: define alias of LUCID OLE reset
 ops to EVO reset ops
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230103-topic-sm8550-upstream-dispcc-v1-2-81bfcc26b2dc@linaro.org>
References: <20230103-topic-sm8550-upstream-dispcc-v1-0-81bfcc26b2dc@linaro.org>
In-Reply-To: <20230103-topic-sm8550-upstream-dispcc-v1-0-81bfcc26b2dc@linaro.org>
To:     Bjorn Andersson <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.11.1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add an alias of LUCID OLE reset ops to EVO reset ops similar
to other aliases.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/clk/qcom/clk-alpha-pll.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/qcom/clk-alpha-pll.h b/drivers/clk/qcom/clk-alpha-pll.h
index 2bdae362c827..c67cfda27ecb 100644
--- a/drivers/clk/qcom/clk-alpha-pll.h
+++ b/drivers/clk/qcom/clk-alpha-pll.h
@@ -162,6 +162,7 @@ extern const struct clk_ops clk_alpha_pll_zonda_ops;
 
 extern const struct clk_ops clk_alpha_pll_lucid_evo_ops;
 extern const struct clk_ops clk_alpha_pll_reset_lucid_evo_ops;
+#define clk_alpha_pll_reset_lucid_ole_ops clk_alpha_pll_reset_lucid_evo_ops
 extern const struct clk_ops clk_alpha_pll_fixed_lucid_evo_ops;
 #define clk_alpha_pll_fixed_lucid_ole_ops clk_alpha_pll_fixed_lucid_evo_ops
 extern const struct clk_ops clk_alpha_pll_postdiv_lucid_evo_ops;

-- 
2.34.1
