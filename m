Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5EABE652B38
	for <lists+devicetree@lfdr.de>; Wed, 21 Dec 2022 03:05:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233934AbiLUCFc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Dec 2022 21:05:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234341AbiLUCF2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Dec 2022 21:05:28 -0500
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE3AE1FCD9
        for <devicetree@vger.kernel.org>; Tue, 20 Dec 2022 18:05:27 -0800 (PST)
Received: by mail-lf1-x136.google.com with SMTP id j4so21443926lfk.0
        for <devicetree@vger.kernel.org>; Tue, 20 Dec 2022 18:05:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qZek+cmKT72PotxlG162B0Fo+N5e/bOkBXqljLtoqNM=;
        b=W0h6DI06KL77Kdu1IcQr4IzcOEzdjihvlgBWMLDOYjFQijlRQbZ8F717typEu34V6f
         WaEc0wUXHOZttJmiLH3KWGGz6llOPFKYtWn+XdtDjgB68y7XmBIwcFAXh1sCnmwjcZy0
         RLPGaPat8Q0K+JU2e4XdLYaLDw3Pk3hj/NRL1Ngz1nN+CAF26zHLqaoC+WHGr/uwTa1K
         WxJZGWUggLpU39d42u0ZIa9+4PsnTXYF9W47X3CmiK67gPvHhBvroJVM/1ZhyYtqjpwo
         br6Ibkz9mEJt5oRtKwp8GHu1+fN94Zt5I2xIyt/R458k3spKmkSKRI3/2FQaes6cfPPw
         QgoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qZek+cmKT72PotxlG162B0Fo+N5e/bOkBXqljLtoqNM=;
        b=L5DKs6tNrARAqCB11lF02clX2IHAV2G/z34OmSuYYkT6uDPXf9Vyc/z4Y1KW0rfAMt
         APMzVBpW+PIUVQ994HpPDD8iXQA4rmQtdZZ3dvV5qn1NThaLA+qiW8O/ZX1ydz32hspS
         bl6DpzBliaCZ7XHgYJ2zWPVXfdnPdOfsRVy62OA3ImVEVA0YY49lL3pPImeARhiAnNeI
         Mp9WNhIQEnBAiqjMCF+7cYDMXifJYFg4ucSj86ZPb4Zv9Yh36quw3Ns2ZfKEymOnjGiz
         1vw9fFF7K8BBWfX8KAoT5VUG9mXRhzKjpZw5qpSEH4Xiy31uRsMCZEkx4YsFHWTrx5Wk
         BDzg==
X-Gm-Message-State: AFqh2kqvtu0a1UZg2AfoKmozizg4/+uUbWepk6NAHqAzLVx9X6Yc/sd/
        iTuN29rTQrkgsM3PibBUOBwgew==
X-Google-Smtp-Source: AMrXdXuVKM2B2ZQgWwoGmLnfUwek3coIt28DU5PNXajDfiNhKK+x7OHdxHx5oQPAig3RatbqRdQWUg==
X-Received: by 2002:a05:6512:3e10:b0:4b5:c489:8cf8 with SMTP id i16-20020a0565123e1000b004b5c4898cf8mr68002lfv.61.1671588327317;
        Tue, 20 Dec 2022 18:05:27 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id q18-20020a056512211200b004b257fef958sm1673048lfr.94.2022.12.20.18.05.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Dec 2022 18:05:26 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Zhang Rui <rui.zhang@intel.com>
Cc:     "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH v4 07/20] thermal/drivers/tsens: limit num_sensors to 9
Date:   Wed, 21 Dec 2022 04:05:07 +0200
Message-Id: <20221221020520.1326964-8-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221221020520.1326964-1-dmitry.baryshkov@linaro.org>
References: <20221221020520.1326964-1-dmitry.baryshkov@linaro.org>
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

According to the vendor kernels (msm-3.10, 3.14 and 3.18), msm8939
supports only 9 sensors. Remove the rogue sensor's hw_id.

Fixes: 332bc8ebab2c ("thermal: qcom: tsens-v0_1: Add support for MSM8939")
Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/thermal/qcom/tsens-v0_1.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/thermal/qcom/tsens-v0_1.c b/drivers/thermal/qcom/tsens-v0_1.c
index 0bc4e5cec184..57ac23f9d9b7 100644
--- a/drivers/thermal/qcom/tsens-v0_1.c
+++ b/drivers/thermal/qcom/tsens-v0_1.c
@@ -605,9 +605,9 @@ static const struct tsens_ops ops_8939 = {
 };
 
 struct tsens_plat_data data_8939 = {
-	.num_sensors	= 10,
+	.num_sensors	= 9,
 	.ops		= &ops_8939,
-	.hw_ids		= (unsigned int []){ 0, 1, 2, 3, 5, 6, 7, 8, 9, 10 },
+	.hw_ids		= (unsigned int []){ 0, 1, 2, 3, 5, 6, 7, 8, 9 },
 
 	.feat		= &tsens_v0_1_feat,
 	.fields	= tsens_v0_1_regfields,
-- 
2.35.1

