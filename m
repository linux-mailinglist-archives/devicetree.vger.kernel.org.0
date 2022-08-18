Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 06E9A598498
	for <lists+devicetree@lfdr.de>; Thu, 18 Aug 2022 15:47:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242050AbiHRNqt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Aug 2022 09:46:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33870 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245022AbiHRNqs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Aug 2022 09:46:48 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67562B56DB
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 06:46:47 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id j26so871080wms.0
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 06:46:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=eiRe1B0ZIFE4lVaNWcauD4DXUe5vQu4l80JAQTe/0g8=;
        b=QNTHiKcTznLn5qHU+rcEotfKidl83Mg8wMWxGKO8WxsTHmnt3LhAxLdEJexf993ii0
         8axKucOALczyy8nPbONFTDwIhO3qVILywk9nBkOwkCVnZGjoKIwnvKIxjQWH6c3bbuOe
         9ds0fN2oI/zLNMZnqQ2LyByEg1iOpgMqzfvIaMPMnobCOs70h7vkAq3ULJasWqEgdmIU
         CVTrdQt5P/87pJ7WxRmrOWW5+V3cPvKYsKChN9XLTJenTelFq006k1lye2AR7UrL1p2w
         ZDOhjHeiv8XttTAmt5UxG/DgZVvRKnom8SuF7v4/T8A3JEzE8rZmOx187tmuxLycVR4+
         Dm8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=eiRe1B0ZIFE4lVaNWcauD4DXUe5vQu4l80JAQTe/0g8=;
        b=E5X+3imCyTmGYt7l6ZkhBWthMVBSl6COvP/DOGloA3mSkQC5OqltG4UplrIm9wD8pj
         +EAqSrc1heNnqNt1n3TWoDGN/6ut3Zx9g4D0Hyv84tMh+SAhpB7Aniz33z13Nv2ospH4
         R1o18Ij4MIVL2CCxwjo2XHeSfhraiojgDmRxEHOgRgSOlooMBzUy2zOnEMMsnOTD2VSD
         91wd7Nx6Gcz+tN7TAFzvJ4WyUy+/JvZfEp16t+dfukKMOusduyM5q/LwXmWCz7b//RP+
         SzxLCODFMk6qtWIUerGcLNofevPnzcahzucSUqfNV6mh2GPfM5YengRSgbsYc+NlLNEA
         f4QA==
X-Gm-Message-State: ACgBeo0g2FKHYSTbBwcL3fCNcAuGxHDqN6kSAWIWMq75IwfW8jnRdErE
        atrsDf41SUIWuFWy+jbsBUOoIA==
X-Google-Smtp-Source: AA6agR4Hop5Tuz+rKxdk6PKo3fj6arTtQUxSSOpAbsY3XJaCi5KcdZUkwgP/RmX2m7zqJCsUf2VjYA==
X-Received: by 2002:a1c:2783:0:b0:3a2:fd82:bf46 with SMTP id n125-20020a1c2783000000b003a2fd82bf46mr5152932wmn.29.1660830405973;
        Thu, 18 Aug 2022 06:46:45 -0700 (PDT)
Received: from srini-hackbox.lan (cpc90716-aztw32-2-0-cust825.18-1.cable.virginm.net. [86.26.103.58])
        by smtp.gmail.com with ESMTPSA id v5-20020a5d6785000000b0021e47fb24a2sm1454549wru.19.2022.08.18.06.46.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Aug 2022 06:46:45 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        perex@perex.cz, tiwai@suse.com,
        pierre-louis.bossart@linux.intel.com,
        linux-arm-msm@vger.kernel.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH 2/6] ASoC: codecs: wsa-macro: add support for sm8450 and sc8280xp
Date:   Thu, 18 Aug 2022 14:46:15 +0100
Message-Id: <20220818134619.3432-3-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20220818134619.3432-1-srinivas.kandagatla@linaro.org>
References: <20220818134619.3432-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add compatible for sm8450 and sc8280xp.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 sound/soc/codecs/lpass-wsa-macro.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/sound/soc/codecs/lpass-wsa-macro.c b/sound/soc/codecs/lpass-wsa-macro.c
index 27da6c6c3c5a..f82c297ea3ab 100644
--- a/sound/soc/codecs/lpass-wsa-macro.c
+++ b/sound/soc/codecs/lpass-wsa-macro.c
@@ -2561,6 +2561,8 @@ static const struct dev_pm_ops wsa_macro_pm_ops = {
 static const struct of_device_id wsa_macro_dt_match[] = {
 	{.compatible = "qcom,sc7280-lpass-wsa-macro"},
 	{.compatible = "qcom,sm8250-lpass-wsa-macro"},
+	{.compatible = "qcom,sm8450-lpass-wsa-macro"},
+	{.compatible = "qcom,sc8280xp-lpass-wsa-macro" },
 	{}
 };
 MODULE_DEVICE_TABLE(of, wsa_macro_dt_match);
-- 
2.21.0

