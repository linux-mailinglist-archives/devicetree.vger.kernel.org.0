Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2F50E506B20
	for <lists+devicetree@lfdr.de>; Tue, 19 Apr 2022 13:42:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234867AbiDSLo3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Apr 2022 07:44:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43524 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351866AbiDSLmW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Apr 2022 07:42:22 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B245D387AE
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 04:37:39 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id g18so21997026wrb.10
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 04:37:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=3+pyHiIZwn48euMcubwO6NcjO2rnYdnegnxbfyc+trA=;
        b=NxSeUfsHRzGIvqoWJEcoWLbMNEYDnF+TUUaDE6xbdknN0Ff+fr0QlxCd9kU/mXl3kP
         0RmGxuaUtmGEaZPI8mjI8SKKy9Yvn0D5ILH+4iiFizgVfI2VdAtWs3Zsxb42jEtuGYYX
         4SVOF8in5vCUtGXrIkhNetg0B7C+XeRep5f/sItDo/Rf1IoFwjgu3/39iQBNG0FXpj/H
         jR4PQoYQ1x09GGrCrmGm71lEeELZsa0QuRAoii8K5Zs9YI7/f2ysjmnyPR+nXzdBRn8D
         Lc8JVEhwvM92yc0BF7b8xecDt0astjrbpjmU70dKwuvkdq/TpsKg3itxxOEEtftZK7zA
         og0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3+pyHiIZwn48euMcubwO6NcjO2rnYdnegnxbfyc+trA=;
        b=67ZEBVUdF6a506840QiFusCuwGOPi4itpFjadQ7H3jjvk9odXtBif76kS4rjpm4LOO
         Dd7ZiOiiUHjq0mm1DjhqV9V8oOucZoKFPZQfdAvKVRmWg93wuHUVg7jdgaT9Qd4FAkEv
         8YejCY0rs+B5NDeXfSTyE0oNjC0ycIqKrDgKEyfEmh1hlABD5qV0UUYb2rxXjPMVaXtk
         VAdHPv6/k08z6Z4ADJsAcRr91qGTBc8/U/kmEvucdZAfyZF/xYcVxNCehrD3PF/M2N4q
         NTdxi7SqkDNt9nZB1DOf48yjftDsvNFuVwVqUpckDRLvVRd5C9J5yT9kKlZ984qods2k
         EBNQ==
X-Gm-Message-State: AOAM5330z4mht3Et6i+HWXbpJwi+u5vjtNh1P1J3PRYJ9PB0NehxF4sC
        c77WKayW6MCTmKHTlXQuMuE+1g==
X-Google-Smtp-Source: ABdhPJygjXlTLFUhttVQQnb0yTcSmF6jZ+ScgPXbFpRuZDgg2khUSRTi9HufwTneuKo6B+/I1+kAGg==
X-Received: by 2002:adf:dcc6:0:b0:207:a0e3:9d28 with SMTP id x6-20020adfdcc6000000b00207a0e39d28mr11666843wrm.380.1650368257676;
        Tue, 19 Apr 2022 04:37:37 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id bk1-20020a0560001d8100b002061d6bdfd0sm14202120wrb.63.2022.04.19.04.37.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Apr 2022 04:37:37 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     srinivas.kandagatla@linaro.org, robh+dt@kernel.org,
        krzk+dt@kernel.org
Cc:     alsa-devel@alsa-project.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, bryan.odonoghue@linaro.org
Subject: [PATCH v2 1/2] ASoC: qcom: lpass: Fix apq8016 compat string to match yaml
Date:   Tue, 19 Apr 2022 12:37:33 +0100
Message-Id: <20220419113734.3138095-2-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220419113734.3138095-1-bryan.odonoghue@linaro.org>
References: <20220419113734.3138095-1-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The documented yaml compat string for the apq8016 is
"qcom,apq8016-lpass-cpu" not "qcom,lpass-cpu-apq8016". Looking at the other
lpass compat strings the general form is "qcom,socnum-lpass-cpu".

We need to fix both the driver and dts to match.

Fixes: dc1ebd1811e9 ("ASoC: qcom: Add apq8016 lpass driver support")
Reviewed-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 sound/soc/qcom/lpass-apq8016.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/qcom/lpass-apq8016.c b/sound/soc/qcom/lpass-apq8016.c
index 3efa133d1c64..10edc5e9c8ef 100644
--- a/sound/soc/qcom/lpass-apq8016.c
+++ b/sound/soc/qcom/lpass-apq8016.c
@@ -292,7 +292,7 @@ static struct lpass_variant apq8016_data = {
 };
 
 static const struct of_device_id apq8016_lpass_cpu_device_id[] __maybe_unused = {
-	{ .compatible = "qcom,lpass-cpu-apq8016", .data = &apq8016_data },
+	{ .compatible = "qcom,apq8016-lpass-cpu", .data = &apq8016_data },
 	{}
 };
 MODULE_DEVICE_TABLE(of, apq8016_lpass_cpu_device_id);
-- 
2.35.1

