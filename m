Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9833A6B404A
	for <lists+devicetree@lfdr.de>; Fri, 10 Mar 2023 14:23:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230432AbjCJNXE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Mar 2023 08:23:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60666 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229923AbjCJNWz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Mar 2023 08:22:55 -0500
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B1DF103ED4
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 05:22:14 -0800 (PST)
Received: by mail-ed1-x536.google.com with SMTP id ay14so20252444edb.11
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 05:22:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678454533;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YeDnl6eYe/Y1WHUjjQBiVQQ785HgKzOroIPYymGFtHY=;
        b=JIQkZtApYvCbzbSNsLyjszUm5ZltrUAYgrhR6dsl+1X2fMEMD5287v3iMgZKLL/Gf7
         1BV3eBn4craIdBuyzofyeHhHj4SyBwaiKGMaThJ6TaL6ebqGjkqIPH2JmFPhO5bVwDWc
         Ha4GehtuYrC8GzMn0y3zAZ6CLKE+w0WBxmwunF4nFRataYTPmTuncSHXq5ONUyledlhP
         To+7ypxXaKOcFwWjQtVdF9L0/m3wQk0Hp/DAW7DmDGyMZ87LCKvPJ+o0KbNAMdhDfLBa
         jNyTrjph1qtpbtVEFbjIFiMnwoVoYiE85g5+0Es9nDL7Z+ld0Dl3IuNdfCE3MdaotvKp
         Ox9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678454533;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YeDnl6eYe/Y1WHUjjQBiVQQ785HgKzOroIPYymGFtHY=;
        b=HjIZ4DZBBASvp79QrHUKVFYmMSJ0XRcX056WffIXCfpfcaM51KCk3Re6HW8xJWPSaG
         0d112Z7UEc9jRwdp3K2j0w2un7Tb9oAoRY2bUF9AzbSRKDRKxM55uIgMUdTrZ4qg7pz5
         YOJwhuvL+nUPSZQb9ZnwVbAN3TT7FU1nnT0/Xd9BdMeV8Njdr1Lna/qG1GdFw3jze+PF
         /rmBFe7hF/mPR835DKnYmJSpQomEyWIhHdA1qjyrW9YBKCb2EAWeynCiP5thpZQlYjGt
         Z2uAkMRoJotoxI37mp42oan3Fmqx8y2LVpfeDGZjRQq54swMWxZJcQe6Y/MpJYvsHyZh
         6DCw==
X-Gm-Message-State: AO0yUKVCFp47qPxkyBtDjqUgQZ1SugDOywPstQz/N+OyIYZCBlgY7Yi+
        ZAErUYqW71oeqFFVhdUyLTA2gQ==
X-Google-Smtp-Source: AK7set88AkgWffk6HYNIFQUMvmQ8KVcmU2jML2j4j71jiqRgBFuHLjnjJU1DOFwTomCcbkWOutVKgA==
X-Received: by 2002:a17:907:3f23:b0:84d:4e4f:1f85 with SMTP id hq35-20020a1709073f2300b0084d4e4f1f85mr33780491ejc.59.1678454533717;
        Fri, 10 Mar 2023 05:22:13 -0800 (PST)
Received: from krzk-bin.. ([2a02:810d:15c0:828:45c4:46be:ec71:4a51])
        by smtp.gmail.com with ESMTPSA id zc4-20020a170906988400b008b17879ec95sm959124ejb.22.2023.03.10.05.22.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Mar 2023 05:22:13 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Banajit Goswami <bgoswami@quicinc.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>, linux-arm-msm@vger.kernel.org,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 9/9] ASoC: codecs: lpass-wsa-macro: add support for SM8550
Date:   Fri, 10 Mar 2023 14:22:01 +0100
Message-Id: <20230310132201.322148-10-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230310132201.322148-1-krzysztof.kozlowski@linaro.org>
References: <20230310132201.322148-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support for the WSA macro codec on Qualcomm SM8550.  SM8550 does not
use NPL clock, thus add flags allowing to skip it.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 sound/soc/codecs/lpass-wsa-macro.c | 38 +++++++++++++++++++++++-------
 1 file changed, 30 insertions(+), 8 deletions(-)

diff --git a/sound/soc/codecs/lpass-wsa-macro.c b/sound/soc/codecs/lpass-wsa-macro.c
index ba7480f3831e..5155362de111 100644
--- a/sound/soc/codecs/lpass-wsa-macro.c
+++ b/sound/soc/codecs/lpass-wsa-macro.c
@@ -246,6 +246,9 @@
 #define WSA_MACRO_EC_MIX_TX1_MASK 0x18
 #define WSA_MACRO_MAX_DMA_CH_PER_PORT 0x2
 
+/* NPL clock is expected */
+#define WSA_MACRO_FLAG_HAS_NPL_CLOCK		BIT(0)
+
 enum {
 	WSA_MACRO_GAIN_OFFSET_M1P5_DB,
 	WSA_MACRO_GAIN_OFFSET_0_DB,
@@ -2346,7 +2349,10 @@ static int wsa_macro_register_mclk_output(struct wsa_macro *wsa)
 	struct clk_init_data init;
 	int ret;
 
-	parent_clk_name = __clk_get_name(wsa->npl);
+	if (wsa->npl)
+		parent_clk_name = __clk_get_name(wsa->npl);
+	else
+		parent_clk_name = __clk_get_name(wsa->mclk);
 
 	init.name = "mclk";
 	of_property_read_string(dev_of_node(dev), "clock-output-names",
@@ -2379,9 +2385,12 @@ static int wsa_macro_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct wsa_macro *wsa;
+	kernel_ulong_t flags;
 	void __iomem *base;
 	int ret;
 
+	flags = (kernel_ulong_t)device_get_match_data(dev);
+
 	wsa = devm_kzalloc(dev, sizeof(*wsa), GFP_KERNEL);
 	if (!wsa)
 		return -ENOMEM;
@@ -2398,9 +2407,11 @@ static int wsa_macro_probe(struct platform_device *pdev)
 	if (IS_ERR(wsa->mclk))
 		return PTR_ERR(wsa->mclk);
 
-	wsa->npl = devm_clk_get(dev, "npl");
-	if (IS_ERR(wsa->npl))
-		return PTR_ERR(wsa->npl);
+	if (flags & WSA_MACRO_FLAG_HAS_NPL_CLOCK) {
+		wsa->npl = devm_clk_get(dev, "npl");
+		if (IS_ERR(wsa->npl))
+			return PTR_ERR(wsa->npl);
+	}
 
 	wsa->fsgen = devm_clk_get(dev, "fsgen");
 	if (IS_ERR(wsa->fsgen))
@@ -2553,10 +2564,21 @@ static const struct dev_pm_ops wsa_macro_pm_ops = {
 };
 
 static const struct of_device_id wsa_macro_dt_match[] = {
-	{.compatible = "qcom,sc7280-lpass-wsa-macro"},
-	{.compatible = "qcom,sm8250-lpass-wsa-macro"},
-	{.compatible = "qcom,sm8450-lpass-wsa-macro"},
-	{.compatible = "qcom,sc8280xp-lpass-wsa-macro" },
+	{
+		.compatible = "qcom,sc7280-lpass-wsa-macro",
+		.data = (void *)WSA_MACRO_FLAG_HAS_NPL_CLOCK,
+	}, {
+		.compatible = "qcom,sm8250-lpass-wsa-macro",
+		.data = (void *)WSA_MACRO_FLAG_HAS_NPL_CLOCK,
+	}, {
+		.compatible = "qcom,sm8450-lpass-wsa-macro",
+		.data = (void *)WSA_MACRO_FLAG_HAS_NPL_CLOCK,
+	}, {
+		.compatible = "qcom,sm8550-lpass-wsa-macro",
+	}, {
+		.compatible = "qcom,sc8280xp-lpass-wsa-macro",
+		.data = (void *)WSA_MACRO_FLAG_HAS_NPL_CLOCK,
+	},
 	{}
 };
 MODULE_DEVICE_TABLE(of, wsa_macro_dt_match);
-- 
2.34.1

