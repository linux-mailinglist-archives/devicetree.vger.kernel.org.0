Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1F80B68F734
	for <lists+devicetree@lfdr.de>; Wed,  8 Feb 2023 19:39:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231432AbjBHSi6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Feb 2023 13:38:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231520AbjBHSi3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Feb 2023 13:38:29 -0500
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0050723D83
        for <devicetree@vger.kernel.org>; Wed,  8 Feb 2023 10:38:27 -0800 (PST)
Received: by mail-ed1-x535.google.com with SMTP id fi26so21725895edb.7
        for <devicetree@vger.kernel.org>; Wed, 08 Feb 2023 10:38:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XdEBUNAoD9sIXnLheQjygvvxpux6AlFhul4Trb6QXj0=;
        b=ZPmV9+ZzTu7dwzQlIjfMjuMdz9NttX2whjyX0KvIggMvjSihmi/2ik9TI1tKRqCSKn
         sGvxdU9y+XSbXTb5QrdYXL+takaOpUD7oSkcH5YzuMmwsG78Ekl2DWhVaPDyujAY9YW8
         6oEHN4ICh5k/jQKOllXq/LUa6ny//wRj8bHC0ayPww5uYrKVF2ok3c998Ohks8FFPw5O
         sZ4RqDqpxNJd2TgUaRccECqAJILOk293+4wujl+wlvwnMQAYRO0rjzwnke1SpWgBxW8P
         GUwLskhAbCGlienq/mJ/ysEUYH9LljMsuLyOFY2+/3G/xlmsP07cga0HZFnADkkOlhAX
         jTAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XdEBUNAoD9sIXnLheQjygvvxpux6AlFhul4Trb6QXj0=;
        b=ibdEejF6PQbj2+Vq7c2pnY+6pnCZLzuRPoOeH4wwHIDKIyQ8KpHW7DTakxl3E5anPa
         dtAs4nsfMoSg8LHtdZVDDI3BPGKzVRNbRyemH9eIWdwoGMYG3BAi2TQysjMeJhRmYgtD
         jADyVzQ6Cr+rDoy0oNUfZh1fUEk0Zku8mzixA9qdgsDkn/Lqwz+daPRCLRVX4uD0D8Ky
         FwCU2RrErgdM+uWS/Rfo4RUfpcdx2RiUIkW7yqYfvqXvPQKkN7uFq5wbvT5qDZjWJkED
         cdCAnnLSE/gnpMgVGaBzZr8tt855qTXK0n8ptJRPbV9/7In3BwP0W70Dy40JRyjKuX5O
         9hIQ==
X-Gm-Message-State: AO0yUKWCzD9JdgICoqG/2WQZM9lND2qws0JcUNGX/ApuAXF1w5FJUMa7
        9DIgnI9p5+2R9dY/c9ER8b4Nhw==
X-Google-Smtp-Source: AK7set/QnbQMryUDCGS23BXTqH0AGhzEIZ/yIpI9f0SBT/+TCmRY2rHiCtk6WuD/wSoIJUv5gRYJkw==
X-Received: by 2002:a05:6402:34d5:b0:4ab:dde:dea0 with SMTP id w21-20020a05640234d500b004ab0ddedea0mr2583030edc.2.1675881507553;
        Wed, 08 Feb 2023 10:38:27 -0800 (PST)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id d22-20020a50cd56000000b004aaa8e65d0esm5179663edj.84.2023.02.08.10.38.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Feb 2023 10:38:27 -0800 (PST)
From:   Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Andy Gross <agross@kernel.org>,
        "David S. Miller" <davem@davemloft.net>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-crypto@vger.kernel.org, Jordan Crouse <jorcrous@amazon.com>
Subject: [PATCH v9 12/14] crypto: qce: core: Add support to initialize interconnect path
Date:   Wed,  8 Feb 2023 20:37:53 +0200
Message-Id: <20230208183755.2907771-13-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20230208183755.2907771-1-vladimir.zapolskiy@linaro.org>
References: <20230208183755.2907771-1-vladimir.zapolskiy@linaro.org>
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

From: Thara Gopinath <thara.gopinath@gmail.com>

Crypto engine on certain Snapdragon processors like sm8150, sm8250, sm8350
etc. requires interconnect path between the engine and memory to be
explicitly enabled and bandwidth set prior to any operations. Add support
in the qce core to enable the interconnect path appropriately.

Tested-by: Jordan Crouse <jorcrous@amazon.com>
Signed-off-by: Thara Gopinath <thara.gopinath@gmail.com>
[Bhupesh: Make header file inclusion alphabetical and use devm_of_icc_get()]
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
[vladimir: moved icc bandwidth setup closer to its acquisition]
Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 drivers/crypto/qce/core.c | 16 +++++++++++++++-
 drivers/crypto/qce/core.h |  1 +
 2 files changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/crypto/qce/core.c b/drivers/crypto/qce/core.c
index d3780be44a76..336edba2513e 100644
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
@@ -218,10 +221,18 @@ static int qce_crypto_probe(struct platform_device *pdev)
 	if (IS_ERR(qce->bus))
 		return PTR_ERR(qce->bus);
 
-	ret = clk_prepare_enable(qce->core);
+	qce->mem_path = devm_of_icc_get(qce->dev, "memory");
+	if (IS_ERR(qce->mem_path))
+		return PTR_ERR(qce->mem_path);
+
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
2.33.0

