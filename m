Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 929FC5BE4BC
	for <lists+devicetree@lfdr.de>; Tue, 20 Sep 2022 13:42:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231136AbiITLmB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Sep 2022 07:42:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33474 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230318AbiITLlq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Sep 2022 07:41:46 -0400
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C8FE74B92
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 04:41:29 -0700 (PDT)
Received: by mail-pl1-x62b.google.com with SMTP id iw17so2122095plb.0
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 04:41:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=S/VY5MZwOkPVf4gf0OmaE3pHGUVQux0NVg5TTa4NfT8=;
        b=NqTOe3iiUQICAXunR2DJaV/3zsHDSJpEw+TwFpamvurkELyWckCG2t6an2YRvKW5Sl
         ZbICfqeSBGkudUhvJYL9b0BY0f9rtGW7n0MMPfzhNs6iqdeNf7jqmfp+i014B6ZUFzIm
         RyYbE7NkqBfcSUToaKyItyfaoVcB4mpTJramTrh5QecNsmNvdtI77NUUKrhX204KBAa1
         ugeLYqZdu0hEk9/+bEWA1UBK0IFPPj9uiX+rXS6IVXE2xPcS20DG2uNf2zFdtMGsIHwi
         DJsqUlDSoJ8itYLNrYjO8uDq/SmAPIoOXxzXqe9/TT/M1hcX4UOdZSIqyr0S8yPPWNaA
         UDlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=S/VY5MZwOkPVf4gf0OmaE3pHGUVQux0NVg5TTa4NfT8=;
        b=5F2AOCdrtPfsLss4Pyt+xaiYCkQNcHMfIjEG9Nn7xfhpesTldK8Sp36HEOoRRdMEu8
         FwQSC5iTy10vmtgdq0Xn+O3YxU4HbxSEcCcJj2gb3sArptf7AcYKhW3+9jDhAHtp9epE
         yYjsS5CbCCs+PLg7XZwBXf0yR2YfiJ8bhVN63k8wsnqyAx1iJzRmpbvFEYO5KPPb7gad
         sJyNEByygp/hLOJgmL73BUmXjitRz69xhKGnlD4g7iIN2fbVlIVOu89E0OnKjEqWb3rg
         xsQHuQL/ZE8jrgonB6WJSUycqbbl0IIOteukAts7utRezTGneVOM3PIsW25C6OQMxZVE
         O38g==
X-Gm-Message-State: ACrzQf3BTNyo4V6QdDXIx9MlH0HEkefRQvFv1v3qIWRxRjEOQ2f/qR+2
        2Z+b6Z/omTj9PMxF2zUPUB741Q==
X-Google-Smtp-Source: AMsMyM5DsNX3RgjSRPJweeS5J16q4ACPjJjDNmXrM1xncre90UD6HKG2UPAJycXK3zCZiHWC4cM0UA==
X-Received: by 2002:a17:902:eb90:b0:178:25ab:b3ee with SMTP id q16-20020a170902eb9000b0017825abb3eemr4360076plg.23.1663674088867;
        Tue, 20 Sep 2022 04:41:28 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1c61:6535:ca5f:67d1:670d:e188])
        by smtp.gmail.com with ESMTPSA id p30-20020a63741e000000b00434e57bfc6csm1348793pgc.56.2022.09.20.04.41.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Sep 2022 04:41:28 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-crypto@vger.kernel.org, devicetree@vger.kernel.org
Cc:     agross@kernel.org, herbert@gondor.apana.org.au,
        linux-kernel@vger.kernel.org, robh+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, thara.gopinath@gmail.com,
        robh@kernel.org, krzysztof.kozlowski@linaro.org,
        andersson@kernel.org, bhupesh.sharma@linaro.org,
        bhupesh.linux@gmail.com, davem@davemloft.net,
        Jordan Crouse <jorcrous@amazon.com>
Subject: [PATCH v7 5/9] crypto: qce: core: Add support to initialize interconnect path
Date:   Tue, 20 Sep 2022 17:10:47 +0530
Message-Id: <20220920114051.1116441-6-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220920114051.1116441-1-bhupesh.sharma@linaro.org>
References: <20220920114051.1116441-1-bhupesh.sharma@linaro.org>
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

From: Thara Gopinath <thara.gopinath@gmail.com>

Crypto engine on certain Snapdragon processors like sm8150, sm8250, sm8350
etc. requires interconnect path between the engine and memory to be
explicitly enabled and bandwidth set prior to any operations. Add support
in the qce core to enable the interconnect path appropriately.

Cc: Bjorn Andersson <andersson@kernel.org>
Cc: Rob Herring <robh@kernel.org>
Cc: herbert@gondor.apana.org.au
Tested-by: Jordan Crouse <jorcrous@amazon.com>
Signed-off-by: Thara Gopinath <thara.gopinath@gmail.com>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
[Bhupesh: Make header file inclusion alphabetical and use devm_of_icc_get()]
---
 drivers/crypto/qce/core.c | 16 +++++++++++++++-
 drivers/crypto/qce/core.h |  1 +
 2 files changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/crypto/qce/core.c b/drivers/crypto/qce/core.c
index d3780be44a76..63be06df5519 100644
--- a/drivers/crypto/qce/core.c
+++ b/drivers/crypto/qce/core.c
@@ -5,6 +5,7 @@
 
 #include <linux/clk.h>
 #include <linux/dma-mapping.h>
+#include <linux/interconnect.h>
 #include <linux/interrupt.h>
 #include <linux/module.h>
 #include <linux/mod_devicetable.h>
@@ -22,6 +23,8 @@
 #define QCE_MAJOR_VERSION5	0x05
 #define QCE_QUEUE_LENGTH	1
 
+#define QCE_DEFAULT_MEM_BANDWIDTH	393600
+
 static const struct qce_algo_ops *qce_ops[] = {
 #ifdef CONFIG_CRYPTO_DEV_QCE_SKCIPHER
 	&skcipher_ops,
@@ -206,6 +209,10 @@ static int qce_crypto_probe(struct platform_device *pdev)
 	if (ret < 0)
 		return ret;
 
+	qce->mem_path = devm_of_icc_get(qce->dev, "memory");
+	if (IS_ERR(qce->mem_path))
+		return PTR_ERR(qce->mem_path);
+
 	qce->core = devm_clk_get(qce->dev, "core");
 	if (IS_ERR(qce->core))
 		return PTR_ERR(qce->core);
@@ -218,10 +225,14 @@ static int qce_crypto_probe(struct platform_device *pdev)
 	if (IS_ERR(qce->bus))
 		return PTR_ERR(qce->bus);
 
-	ret = clk_prepare_enable(qce->core);
+	ret = icc_set_bw(qce->mem_path, QCE_DEFAULT_MEM_BANDWIDTH, QCE_DEFAULT_MEM_BANDWIDTH);
 	if (ret)
 		return ret;
 
+	ret = clk_prepare_enable(qce->core);
+	if (ret)
+		goto err_mem_path_disable;
+
 	ret = clk_prepare_enable(qce->iface);
 	if (ret)
 		goto err_clks_core;
@@ -260,6 +271,9 @@ static int qce_crypto_probe(struct platform_device *pdev)
 	clk_disable_unprepare(qce->iface);
 err_clks_core:
 	clk_disable_unprepare(qce->core);
+err_mem_path_disable:
+	icc_set_bw(qce->mem_path, 0, 0);
+
 	return ret;
 }
 
diff --git a/drivers/crypto/qce/core.h b/drivers/crypto/qce/core.h
index 085774cdf641..228fcd69ec51 100644
--- a/drivers/crypto/qce/core.h
+++ b/drivers/crypto/qce/core.h
@@ -35,6 +35,7 @@ struct qce_device {
 	void __iomem *base;
 	struct device *dev;
 	struct clk *core, *iface, *bus;
+	struct icc_path *mem_path;
 	struct qce_dma_data dma;
 	int burst_size;
 	unsigned int pipe_pair_id;
-- 
2.37.1

