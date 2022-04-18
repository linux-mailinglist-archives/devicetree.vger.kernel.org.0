Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 42D65506016
	for <lists+devicetree@lfdr.de>; Tue, 19 Apr 2022 01:10:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234333AbiDRXMo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Apr 2022 19:12:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234368AbiDRXMm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Apr 2022 19:12:42 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D8D519023
        for <devicetree@vger.kernel.org>; Mon, 18 Apr 2022 16:10:01 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id y21so8090976wmi.2
        for <devicetree@vger.kernel.org>; Mon, 18 Apr 2022 16:10:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=n0g18UDBVHtHKQ1fDQEx7qeFaotQVOT5C45U14Lm4wo=;
        b=XWkxXb63ypNMV4qIVSI+UCFJzb3WPW/mhFLFPd5Wto1c+faRoxYwaFCwV6+CAVDMWW
         a7US4bBw5RYBKAUyOqrQjCSUkR2mQeYBSdcXa4tSmcs4cxyRwPnshTxjIja1KYHucX03
         nRW0irUpv3IIMIHr9slL/sl18FzuKSXjZcXcXGiNRO6WqU4IH+4bfe6+cauWGnMYeYwj
         QIzFGP3SauJ31/P6qOretYexGjviQ1RCbe6CPNdL67TnOdTMyIsIOOC5neO5m9EkF+nY
         Izz4qN8Sl3ePx4c/VzGTAeeVQUqEmm+ntFT8F3Tt5ETYyF8neXx5qXL6QwDscN/U6nPb
         ny7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=n0g18UDBVHtHKQ1fDQEx7qeFaotQVOT5C45U14Lm4wo=;
        b=zT67/2ta6ZuKrLSonWhIphY6azjwaqztkAux7/cEHtupCnSgNrxQgcgvMFhtsZ+n+7
         3YeoVKdraLThy9L5wtKu7PKaeUATbvoHrajf86pNxc7i3QczA6D9wOS03Rsy376UZHO2
         AHW8yVBZP81D6zUDN+zJD+ApgkXzXT2XvDFp9BrIrSj8O88RrTiqXOQvbN0KniD6OU/y
         KbbqLBCftbYH/LLAzswBy8IZJBu8ZHaLcJVV9kCQzuYRbiANg1GTzZ+1xwnXK/lOEqew
         5gQvZvWS82DwlW6TCDHJVr9qIz0ySGp7A8YXgJ2YmN9pcDUIs5ZIsGI32J/6OXAK3+b2
         V8sg==
X-Gm-Message-State: AOAM531tGtjUMGB5SSWPn6trtk2DPPTCJ43CpVU6t5iIxnT9pd0wg+26
        MH0CCGDDBDa7at6snMcHS0Gh/g==
X-Google-Smtp-Source: ABdhPJzp5Ddr0XSvY2itSxZ3nWZWBJqUnbXr5RTwTJszkowfKdvS7mqeUM0lgXHW7hi04BKKyNTXyA==
X-Received: by 2002:a05:600c:1d08:b0:38f:fb9d:5758 with SMTP id l8-20020a05600c1d0800b0038ffb9d5758mr13143977wms.89.1650323399882;
        Mon, 18 Apr 2022 16:09:59 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id f14-20020a5d568e000000b00207ae498882sm11187567wrv.32.2022.04.18.16.09.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Apr 2022 16:09:59 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     srinivas.kandagatla@linaro.org, robh+dt@kernel.org,
        krzk+dt@kernel.org
Cc:     alsa-devel@alsa-project.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, bryan.odonoghue@linaro.org
Subject: [PATCH 1/2] ASoC: qcom: lpass: Fix apq8016 compat string to match yaml
Date:   Tue, 19 Apr 2022 00:09:55 +0100
Message-Id: <20220418230956.3059563-2-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220418230956.3059563-1-bryan.odonoghue@linaro.org>
References: <20220418230956.3059563-1-bryan.odonoghue@linaro.org>
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

