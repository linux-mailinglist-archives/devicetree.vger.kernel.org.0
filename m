Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 43B6065AB46
	for <lists+devicetree@lfdr.de>; Sun,  1 Jan 2023 20:40:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230161AbjAATkp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 1 Jan 2023 14:40:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43838 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229503AbjAATkn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 1 Jan 2023 14:40:43 -0500
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 809201081
        for <devicetree@vger.kernel.org>; Sun,  1 Jan 2023 11:40:42 -0800 (PST)
Received: by mail-lf1-x131.google.com with SMTP id b3so38903047lfv.2
        for <devicetree@vger.kernel.org>; Sun, 01 Jan 2023 11:40:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TYtjUT+M3oFXnz1+3np95t8dAyx1+tQdeRBBKgtx5CE=;
        b=Kti1yrq+olHVUl6JGRc1rYAr16VmgXp7FSvQGYr95i6+xR8KnAyfu3Hb3GAZ4QXfDw
         5jLyPZUTgA0LGLjVWiXhHyHWWGbM+drWQeLSW7pXZu6KmjI1/63ApBKj3Ak/ev6ODHxE
         73a4SG2I0KX5wxcDezhMPTCPvy8frXhsS8RQzSs7EPt6/ZFbRCEef4NavsjeIA6b/27Q
         WqPev2F5rMQ5rWTJYeypRB/oQrBxAj+7b44TzmUIDOuvALbEmghY1CNWOAPlvL6BGQbq
         3mK1FQMuZnOE+LfqctaYZ50Ar15uPY6ymJhu3dROT4lU36tqlDAL6/28u6urPz77ZWGR
         StOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TYtjUT+M3oFXnz1+3np95t8dAyx1+tQdeRBBKgtx5CE=;
        b=dFx3Efga4B+ge1dDjO95rIwSHhUSXtAMrHb7cKP3Jor2G74RwtWSMR8McghLv13fhN
         Adm4YPdo8dDqqE75HhdCyEhquXBFrfmOp7ka4za1fOEPxbYOZ5nZtDhGEQEvkQYP2AO+
         q+vIadW9WFABe+QH71uVyjp4zy9kzwHQSgGgBb1vTHzfUQ7AWu6J2KQEKavNyNlXBPXu
         tKbKzNGhxxkyYCacAYqI2lZxIbDPkZfjchYFCRrlYD/USAkyoNpQNufekav6m7hdRipa
         3C/sEGYqkod9tVMR3kHql4fZ03iM9b7OBxkwBSS6xqbaGZ+Xjpbddpx80hr+nKmD/aBZ
         LFCQ==
X-Gm-Message-State: AFqh2kq7puMNFWMdO3BMEh+Ck3ux2qWRE9qgTvv4JWdY9DsoUJZ0+QVS
        umspJ45dbuaBhyfVygGxj98TTw==
X-Google-Smtp-Source: AMrXdXtkAXmzQsv07h+RmqwL324C5Kqi+yf938qTe2chKqXr8N9z/naMpc2TDfHukzu3A9x0LDxJ3A==
X-Received: by 2002:ac2:5088:0:b0:4a4:7be4:9baf with SMTP id f8-20020ac25088000000b004a47be49bafmr11753590lfm.59.1672602042089;
        Sun, 01 Jan 2023 11:40:42 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id w11-20020a056512098b00b004a100c21eaesm4228013lft.97.2023.01.01.11.40.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Jan 2023 11:40:41 -0800 (PST)
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
        Shawn Guo <shawn.guo@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH v6 07/20] thermal/drivers/tsens: fix slope values for msm8939
Date:   Sun,  1 Jan 2023 21:40:21 +0200
Message-Id: <20230101194034.831222-8-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230101194034.831222-1-dmitry.baryshkov@linaro.org>
References: <20230101194034.831222-1-dmitry.baryshkov@linaro.org>
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
uses non-standard slope values for calibrating the sensors. Fill them
accordingly.

Fixes: 332bc8ebab2c ("thermal: qcom: tsens-v0_1: Add support for MSM8939")
Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Shawn Guo <shawn.guo@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Acked-by: Shawn Guo <shawn.guo@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/thermal/qcom/tsens-v0_1.c | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/thermal/qcom/tsens-v0_1.c b/drivers/thermal/qcom/tsens-v0_1.c
index 0bc4e5cec184..6645c98ff56c 100644
--- a/drivers/thermal/qcom/tsens-v0_1.c
+++ b/drivers/thermal/qcom/tsens-v0_1.c
@@ -534,6 +534,21 @@ static int calibrate_9607(struct tsens_priv *priv)
 	return 0;
 }
 
+static int __init init_8939(struct tsens_priv *priv) {
+	priv->sensor[0].slope = 2911;
+	priv->sensor[1].slope = 2789;
+	priv->sensor[2].slope = 2906;
+	priv->sensor[3].slope = 2763;
+	priv->sensor[4].slope = 2922;
+	priv->sensor[5].slope = 2867;
+	priv->sensor[6].slope = 2833;
+	priv->sensor[7].slope = 2838;
+	priv->sensor[8].slope = 2840;
+	priv->sensor[9].slope = 2852;
+
+	return init_common(priv);
+}
+
 /* v0.1: 8916, 8939, 8974, 9607 */
 
 static struct tsens_features tsens_v0_1_feat = {
@@ -599,7 +614,7 @@ struct tsens_plat_data data_8916 = {
 };
 
 static const struct tsens_ops ops_8939 = {
-	.init		= init_common,
+	.init		= init_8939,
 	.calibrate	= calibrate_8939,
 	.get_temp	= get_temp_common,
 };
-- 
2.39.0

