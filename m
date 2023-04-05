Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 038A56D7A49
	for <lists+devicetree@lfdr.de>; Wed,  5 Apr 2023 12:48:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237826AbjDEKsy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Apr 2023 06:48:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237864AbjDEKsw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Apr 2023 06:48:52 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E810059E7
        for <devicetree@vger.kernel.org>; Wed,  5 Apr 2023 03:48:40 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id a11so36836390lji.6
        for <devicetree@vger.kernel.org>; Wed, 05 Apr 2023 03:48:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680691719;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Bi/GSYXJQcjk80svXbFmJoU1UjMsZTTC+SEAdd/i1LY=;
        b=lDpNpPU/sZW7bLLj1ZFbDpJv3+R4eMawwRJDLZepNw+5/VjEdqU8RnqMBVDC15Zq9u
         7ywUet+vVNobAme2sa20rI9m6/cmDh9ARkNdz4XNIQ0Zk8MAHQYOZTl3cyW3t/OyHgps
         pe7ZmzWf3I2hc1O4NJ6Pqm/gx9xIax/PJdz2qygTcEcgAyEYcjrFsYLSsyHEYzMq7Rau
         YfP9aCvLDG7cW4DLuvNv97cf3JkbkEjRhPYKOCIh8P9Cn/ROzRDkPDVQGiwS7m+MKIlK
         gola5j+WtHTVjF6rzp+1QowTmp33xA16jOPfRY1p+tZY00g13Y2XVkm3D9VgnXZPt0Ua
         cTpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680691719;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Bi/GSYXJQcjk80svXbFmJoU1UjMsZTTC+SEAdd/i1LY=;
        b=3K6PL1pB7PQhCTixxFj5eRNsome9rDkkXXnp5uha5z/++rgFr2I0z/7iL0ns/div+n
         ogvbLFM4b9oYscbwMSlxevDoYLMoWNdSwEVZq3ZL1Smi3JOyrk85bJOsH2U4IhuFxrzI
         gG+hfiK3YaSiX5Qaj2BhFqVM7jc4at5YSWOZ2xCPvQLnJh2AwgKSvEqW5u/THgT08C11
         g5P+/2tQ4icRVWIVJjFSQJuum4YzvvjTlP7dhsRWnhGw+A+N9H2yLScyFCQ4iOy6DFbV
         Lw3fP5ZE3FZv6AY0yjmB37B3jV+y3F/frSDF6hC1UwbFrpn9hMuPnzQ9koPlV16va0Ns
         17Ew==
X-Gm-Message-State: AAQBX9f7D3OuTwjkn93Vs7f3uf1uaOJufL8bdVbFtoQrmgMzx3kYZDJa
        hHhr0aWN80fbdsr4Xu1KU9T2XQ==
X-Google-Smtp-Source: AKy350ZMRdnQObxilpjq6GOTSLysPb9bFoKL8iloPCsSsaRF+IrOlGanRhaTfGfGw2e4hTkf+B5Aew==
X-Received: by 2002:a2e:998c:0:b0:2a6:146:b121 with SMTP id w12-20020a2e998c000000b002a60146b121mr1737704lji.7.1680691719188;
        Wed, 05 Apr 2023 03:48:39 -0700 (PDT)
Received: from [192.168.1.101] (abxh37.neoplus.adsl.tpnet.pl. [83.9.1.37])
        by smtp.gmail.com with ESMTPSA id u4-20020a2e9b04000000b00295a3a64816sm2777299lji.2.2023.04.05.03.48.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Apr 2023 03:48:38 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Wed, 05 Apr 2023 12:48:35 +0200
Subject: [PATCH v2 2/2] irqchip: irq-qcom-mpm: Support passing a slice of
 SRAM as reg space
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230328-topic-msgram_mpm-v2-2-e24a48e57f0d@linaro.org>
References: <20230328-topic-msgram_mpm-v2-0-e24a48e57f0d@linaro.org>
In-Reply-To: <20230328-topic-msgram_mpm-v2-0-e24a48e57f0d@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawn.guo@linaro.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1680691715; l=2707;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=xu+OxnOnfyyQMV5yk+DxmYZEKxx2j9CzQ4gEX4sggZE=;
 b=b5jBE4w42Kljvzt3wJ/kG4dpvf/EjVnoTaczlavfH3f0MIArqyLKYL45E1WPEzxoOJTZuEwwAJer
 dDrQD0elDtxV/bMNIElqW15WfoMD5c5TQnZ20Lr0cQgZhZ1JU6fF
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The MPM hardware is accessible to us from the ARM CPUs through a shared
memory region (RPM MSG RAM) that's also concurrently accessed by other
kinds of cores on the system (like modem, ADSP etc.). Modeling this
relation in a (somewhat) sane manner in the device tree basically
requires us to either present the MPM as a child of said memory region
(which makes little sense, as a mapped memory carveout is not a bus),
define nodes which bleed their register spaces into one another, or
passing their slice of the MSG RAM through some kind of a property.

Go with the third option and add a way to map a region passed through
the "qcom,rpm-msg-ram" property as our register space.

The current way of using 'reg' is preserved for ABI reasons.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/irqchip/irq-qcom-mpm.c | 21 ++++++++++++++++++---
 1 file changed, 18 insertions(+), 3 deletions(-)

diff --git a/drivers/irqchip/irq-qcom-mpm.c b/drivers/irqchip/irq-qcom-mpm.c
index d30614661eea..ee5f39a4a42a 100644
--- a/drivers/irqchip/irq-qcom-mpm.c
+++ b/drivers/irqchip/irq-qcom-mpm.c
@@ -14,6 +14,7 @@
 #include <linux/mailbox_client.h>
 #include <linux/module.h>
 #include <linux/of.h>
+#include <linux/of_address.h>
 #include <linux/of_device.h>
 #include <linux/platform_device.h>
 #include <linux/pm_domain.h>
@@ -322,8 +323,10 @@ static int qcom_mpm_init(struct device_node *np, struct device_node *parent)
 	struct device *dev = &pdev->dev;
 	struct irq_domain *parent_domain;
 	struct generic_pm_domain *genpd;
+	struct device_node *msgram_np;
 	struct qcom_mpm_priv *priv;
 	unsigned int pin_cnt;
+	struct resource res;
 	int i, irq;
 	int ret;
 
@@ -374,9 +377,21 @@ static int qcom_mpm_init(struct device_node *np, struct device_node *parent)
 
 	raw_spin_lock_init(&priv->lock);
 
-	priv->base = devm_platform_ioremap_resource(pdev, 0);
-	if (IS_ERR(priv->base))
-		return PTR_ERR(priv->base);
+	/* If we have a handle to an RPM message ram partition, use it. */
+	msgram_np = of_parse_phandle(np, "qcom,rpm-msg-ram", 0);
+	if (msgram_np) {
+		ret = of_address_to_resource(msgram_np, 0, &res);
+		/* Don't use devm_ioremap_resource, as we're accessing a shared region. */
+		priv->base = devm_ioremap(dev, res.start, resource_size(&res));
+		of_node_put(msgram_np);
+		if (IS_ERR(priv->base))
+			return PTR_ERR(priv->base);
+	} else {
+		/* Otherwise, fall back to simple MMIO. */
+		priv->base = devm_platform_ioremap_resource(pdev, 0);
+		if (IS_ERR(priv->base))
+			return PTR_ERR(priv->base);
+	}
 
 	for (i = 0; i < priv->reg_stride; i++) {
 		qcom_mpm_write(priv, MPM_REG_ENABLE, i, 0);

-- 
2.40.0

