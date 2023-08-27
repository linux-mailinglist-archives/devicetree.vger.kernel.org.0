Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 44AA4789B27
	for <lists+devicetree@lfdr.de>; Sun, 27 Aug 2023 05:29:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230012AbjH0D2l (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 26 Aug 2023 23:28:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58470 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230020AbjH0D2M (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 26 Aug 2023 23:28:12 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D334CCDE
        for <devicetree@vger.kernel.org>; Sat, 26 Aug 2023 20:28:08 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2bcb89b4767so32365461fa.3
        for <devicetree@vger.kernel.org>; Sat, 26 Aug 2023 20:28:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693106887; x=1693711687;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9jEwHJKZuaMJ1K+mHgMlvEIYS1NT0o5IAPoON35Oxpc=;
        b=G8C02m3kw8TgefxEn0rp9pofAWcoofE2gqf6N5A6CTM6HRTUgun1ahmqeMfMZRGtWn
         oMg6Qs6QeCHezMMo8Pz9uyR26iHmsQ8hIfZd51nvGwDO0RMukfF75NBsv1CETMtxeYcW
         4WXJR4qGP3EYBwiXnIyPSbcycKqyvnzoClL1jya5uR7iBdORndvz36sMPhbB6Mb2e+Gs
         5hlkM1EjPfAPbMg0RfOUXy0p2EIJ0X5BBvGuRRm5ulFa83g0XWUh14luoChD9XCkxGWa
         rl2nK5odSXp5nGj5EDDL55NlkJqs+F/WHUfe5W/G+YPEJSBvArmzYoW0Vnssb8WzpAZ2
         mpKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693106887; x=1693711687;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9jEwHJKZuaMJ1K+mHgMlvEIYS1NT0o5IAPoON35Oxpc=;
        b=RBSCxE4N2mUGbkZv1jykrtnfWrOh5sp6uo3YInH4PD1+VBhMQ/kuWbp18n7+KNnAtE
         1t6HnIZd4sQpREN0Z33rkvYNL7AkKIyqtaGcVWJ5QZJ7TrRBrPK08h3UaTkadu0QwDYS
         x5azhfuRZaN0oqLr/9gkBaFmwrB7SuaBpTi2fkAWJkLaITFIv/ReeGGr6kjSwAIDk2WK
         M+/fFgXZ6InqOu04N1cbhvUPbMsHYjPLDmZwRpwmFLKAfj4BYRbNAWauUzNsiHxa331c
         GZ1w7gYk6wArKut5fFrV7v2xW3qG0Umkjs9PqU3n194zM9G3koezKJPS9aETTpG/pyZW
         FzyA==
X-Gm-Message-State: AOJu0Ywa090q4JEaHz/k8I6AAuS1UQMk4wyABmL+qjJOk4W9eCtSbFJC
        Vk28+UdmrKU9L/ovEaxwt7vzeg==
X-Google-Smtp-Source: AGHT+IFW3Tnvq+titUDJOIoT8z7qbYZWW3LCEn3XipfERJO5Ybc4sUWphJslLk5OFk1zLoOka3N2vA==
X-Received: by 2002:a05:6512:3c96:b0:500:a092:d085 with SMTP id h22-20020a0565123c9600b00500a092d085mr7773135lfv.68.1693106887008;
        Sat, 26 Aug 2023 20:28:07 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id w7-20020ac254a7000000b004fb99da37e3sm955709lfk.220.2023.08.26.20.28.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Aug 2023 20:28:06 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Ilia Lin <ilia.lin@kernel.org>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Georgi Djakov <djakov@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-clk@vger.kernel.org,
        Christian Marangi <ansuelsmth@gmail.com>,
        Stephan Gerhold <stephan@gerhold.net>
Subject: [PATCH v4 3/6] cpufreq: qcom-nvmem: also accept operating-points-v2-krait-cpu
Date:   Sun, 27 Aug 2023 06:28:00 +0300
Message-Id: <20230827032803.934819-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230827032803.934819-1-dmitry.baryshkov@linaro.org>
References: <20230827032803.934819-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

the qcom-cpufreq-nvmem driver attempts to support both Qualcomm Kryo
(newer 64-bit ARMv8 cores) and Krait (older 32-bit ARMv7 cores). It
makes no sense to use 'operating-points-v2-kryo-cpu' compatibility node
for the Krait cores. Add support for 'operating-points-v2-krait-cpu'
compatibility string.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/cpufreq/qcom-cpufreq-nvmem.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/cpufreq/qcom-cpufreq-nvmem.c b/drivers/cpufreq/qcom-cpufreq-nvmem.c
index f4c196ba4432..04329ef61150 100644
--- a/drivers/cpufreq/qcom-cpufreq-nvmem.c
+++ b/drivers/cpufreq/qcom-cpufreq-nvmem.c
@@ -238,7 +238,8 @@ static int qcom_cpufreq_probe(struct platform_device *pdev)
 	if (!np)
 		return -ENOENT;
 
-	ret = of_device_is_compatible(np, "operating-points-v2-kryo-cpu");
+	ret = of_device_is_compatible(np, "operating-points-v2-kryo-cpu") ||
+	      of_device_is_compatible(np, "operating-points-v2-krait-cpu");
 	if (!ret) {
 		of_node_put(np);
 		return -ENOENT;
-- 
2.39.2

