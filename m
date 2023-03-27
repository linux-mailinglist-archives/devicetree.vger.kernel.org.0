Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 124606CA5AB
	for <lists+devicetree@lfdr.de>; Mon, 27 Mar 2023 15:24:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232583AbjC0NY2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Mar 2023 09:24:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232520AbjC0NXu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Mar 2023 09:23:50 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51CE82726
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 06:23:23 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id er18so24926527edb.9
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 06:23:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679923401;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FjQpUfEO0NsE7N3bLT5uR7/QoLqyWyEQKa6IuwI/2/Q=;
        b=f/5TMMjIfCgndJMlaJ4r71lbXVsNskze6ZnT/CIHAv6BxV9SLh4v8fyC88l8kU85U2
         rBuuo9mpNQroSu66yJ+POn8fD3VptqUzEncPkYpeIuk1IEmjjHw+0o1Hh1D3DxAnNoon
         M4CO6AT+7YDrU0CwU7qbo5QXem3KQ035DCr2lS5QQIZM7RSeD7VwuN2fPgKaD1i84dVz
         fMug82jTJauGI7kjWHYTHY2qRwDTWT4eE+CwoHSdufk68x530YMC2eAH6+ALuKLziA1Z
         Na8OVqga5M6b10mcS3g9uttyq31xzK+aaoniJII5oRksHGW3biJbt8MLE19umzxrlDz5
         Y1sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679923401;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FjQpUfEO0NsE7N3bLT5uR7/QoLqyWyEQKa6IuwI/2/Q=;
        b=YTLXAfuUtp1z06aHMhsVfR3GvtFHuR19k+BQHngc22pOqa6lw/Ueaohk1yfsnvCCbu
         fZdbsG9GATDgH+rpMFCQzed5k4JG3zq94PoazbLSzP1eohs7+olEox12n3YUduMmDinW
         qSNDaBWyOy+fgQEs5bnkCWhUnMr6/l4h41e+2Pp5blAKxAOcjwYykA2a++NuIpYZYRZb
         bAVu/JikUNacksEJwAQzMY79F77igI/5GNMEtc3kWqG3SZ8qvN3TRpcsg92dhqAdidFy
         LdQUlYGdfRrjSlhFS7gV7Z0ue/CcnvF5o2LdqWGxrJtCh7utgivvlktA3mpErki4+68t
         bzUA==
X-Gm-Message-State: AAQBX9fdoshSHHekegliu2W//iCqE+1jReiuPNpG76eYvhUs2/B+pxIz
        eLWDEl6SzgwzFMjX5abnRf9twrPcgskMJIwM2GY=
X-Google-Smtp-Source: AKy350ZUl+vUbD/HZJiigKbFVDkPZWimDS0mWigAI07cv5eEwg9rsxZejhZUO4wjuY3K/PLlHqV1aw==
X-Received: by 2002:a17:907:d402:b0:930:ca4d:f2bf with SMTP id vi2-20020a170907d40200b00930ca4df2bfmr14281716ejc.54.1679923400927;
        Mon, 27 Mar 2023 06:23:20 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:581e:789c:7616:5ee])
        by smtp.gmail.com with ESMTPSA id gy24-20020a170906f25800b00930445428acsm14286814ejb.14.2023.03.27.06.23.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Mar 2023 06:23:20 -0700 (PDT)
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
Cc:     Patrick Lai <quic_plai@quicinc.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 10/10] ASoC: codecs: lpass-wsa-macro: add support for SM8550
Date:   Mon, 27 Mar 2023 15:22:54 +0200
Message-Id: <20230327132254.147975-11-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230327132254.147975-1-krzysztof.kozlowski@linaro.org>
References: <20230327132254.147975-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support for the WSA macro codec on Qualcomm SM8550.  SM8550 does not
use NPL clock, thus add flags allowing to skip it.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>

---

Changes since v1:
1. Move the flag define to common header
---
 sound/soc/codecs/lpass-wsa-macro.c | 37 +++++++++++++++++++++++-------
 1 file changed, 29 insertions(+), 8 deletions(-)

diff --git a/sound/soc/codecs/lpass-wsa-macro.c b/sound/soc/codecs/lpass-wsa-macro.c
index 6484c335bd5d..8ba7dc89daaa 100644
--- a/sound/soc/codecs/lpass-wsa-macro.c
+++ b/sound/soc/codecs/lpass-wsa-macro.c
@@ -14,6 +14,8 @@
 #include <linux/pm_runtime.h>
 #include <linux/of_platform.h>
 #include <sound/tlv.h>
+
+#include "lpass-macro-common.h"
 #include "lpass-wsa-macro.h"
 
 #define CDC_WSA_CLK_RST_CTRL_MCLK_CONTROL	(0x0000)
@@ -2346,7 +2348,10 @@ static int wsa_macro_register_mclk_output(struct wsa_macro *wsa)
 	struct clk_init_data init;
 	int ret;
 
-	parent_clk_name = __clk_get_name(wsa->npl);
+	if (wsa->npl)
+		parent_clk_name = __clk_get_name(wsa->npl);
+	else
+		parent_clk_name = __clk_get_name(wsa->mclk);
 
 	init.name = "mclk";
 	of_property_read_string(dev_of_node(dev), "clock-output-names",
@@ -2379,9 +2384,12 @@ static int wsa_macro_probe(struct platform_device *pdev)
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
@@ -2398,9 +2406,11 @@ static int wsa_macro_probe(struct platform_device *pdev)
 	if (IS_ERR(wsa->mclk))
 		return PTR_ERR(wsa->mclk);
 
-	wsa->npl = devm_clk_get(dev, "npl");
-	if (IS_ERR(wsa->npl))
-		return PTR_ERR(wsa->npl);
+	if (flags & LPASS_MACRO_FLAG_HAS_NPL_CLOCK) {
+		wsa->npl = devm_clk_get(dev, "npl");
+		if (IS_ERR(wsa->npl))
+			return PTR_ERR(wsa->npl);
+	}
 
 	wsa->fsgen = devm_clk_get(dev, "fsgen");
 	if (IS_ERR(wsa->fsgen))
@@ -2551,10 +2561,21 @@ static const struct dev_pm_ops wsa_macro_pm_ops = {
 };
 
 static const struct of_device_id wsa_macro_dt_match[] = {
-	{.compatible = "qcom,sc7280-lpass-wsa-macro"},
-	{.compatible = "qcom,sm8250-lpass-wsa-macro"},
-	{.compatible = "qcom,sm8450-lpass-wsa-macro"},
-	{.compatible = "qcom,sc8280xp-lpass-wsa-macro" },
+	{
+		.compatible = "qcom,sc7280-lpass-wsa-macro",
+		.data = (void *)LPASS_MACRO_FLAG_HAS_NPL_CLOCK,
+	}, {
+		.compatible = "qcom,sm8250-lpass-wsa-macro",
+		.data = (void *)LPASS_MACRO_FLAG_HAS_NPL_CLOCK,
+	}, {
+		.compatible = "qcom,sm8450-lpass-wsa-macro",
+		.data = (void *)LPASS_MACRO_FLAG_HAS_NPL_CLOCK,
+	}, {
+		.compatible = "qcom,sm8550-lpass-wsa-macro",
+	}, {
+		.compatible = "qcom,sc8280xp-lpass-wsa-macro",
+		.data = (void *)LPASS_MACRO_FLAG_HAS_NPL_CLOCK,
+	},
 	{}
 };
 MODULE_DEVICE_TABLE(of, wsa_macro_dt_match);
-- 
2.34.1

