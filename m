Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 07B16785694
	for <lists+devicetree@lfdr.de>; Wed, 23 Aug 2023 13:15:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234389AbjHWLPn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Aug 2023 07:15:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234384AbjHWLPm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Aug 2023 07:15:42 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B67B1E5F
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 04:15:37 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2bcda0aaf47so8063951fa.1
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 04:15:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692789336; x=1693394136;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JNv+5xba7bQvgA4+gEPjq5lTLo/u23dfY/H3jr3xdrI=;
        b=xUzJki82mPaUSdzILbTtZrc1drg0uKB2Bx0NRh4kQWyDhaCyv234ZLtxWntJhf9YSv
         ZJuNB/pht9eGn3JSq5tVspJEqlPoSgoDn3+hFNvqqtQ79o3vwz4leJqinbxhtaPi2L3U
         rRxy/X7FfbV+soEXiN1/wVI4u74I7SUrmQn0XtQZk+VEnuhpPgFjjpDi8WEjfkZHGqRM
         SdzflCv8H7wimEu2fxicM6EC+CDlpaVP0JHxzYrcuCd8X+neVTlBBabUimV+DKnMuP3r
         mYzAxX7UNO9VC2kBPKylDJdJQoUcQNFGfIjZM6rIuRQmOIlnZugvZZ08iL2iUrBLaj9Z
         oXAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692789336; x=1693394136;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JNv+5xba7bQvgA4+gEPjq5lTLo/u23dfY/H3jr3xdrI=;
        b=Fpsh/V2hDcyS8VOp7HlXFfzkZhBrx134luIjZRe5drnkzKoV3il6IWM4lTeYgYCGQD
         UK+EZa+22JeiXj6uaKuvzrct5dcM5Qh1RlI+kooQAV1qS3JbdFmdeg36zJ6Ymbrxkt1g
         PqMySK8kNSnSeCVMICK4YrKdLTkWKChc/b13SEAAL25kSS81iFhWPg43sqCgfi6lxsIC
         V+GQstbQVX+zHSU5xTkd6674//Ro8/6/niL8mHpT6NFMkqP6aiCvdzJRMr83Z5pjS66U
         N3JL82ZVouAqJgvaJRPCEQxYwQq/yN6NvitZbTdPFH0BoYsuWvPhjYprW0mjENG52R+B
         GTmw==
X-Gm-Message-State: AOJu0Yy6teU1R7VdKu8759XBMVzL5dEqw/5IVHiGiN2yUq9VyMRsCe3l
        Pg8J/C/Har8djN3RMN9LvkTVqEBmXRnpIyz/ZAaoxQ==
X-Google-Smtp-Source: AGHT+IG8lAbMM5ohYZn6mk9W6ZRXhs/cpY9GnJH3geEZYdfhndratqyX1N8s03nbbvhNV5eoaHZcjw==
X-Received: by 2002:a2e:888f:0:b0:2b6:b7c3:bb89 with SMTP id k15-20020a2e888f000000b002b6b7c3bb89mr4648791lji.18.1692789335879;
        Wed, 23 Aug 2023 04:15:35 -0700 (PDT)
Received: from [192.168.1.101] (abyj76.neoplus.adsl.tpnet.pl. [83.9.29.76])
        by smtp.gmail.com with ESMTPSA id r16-20020a2e80d0000000b002b6ffa50896sm3148981ljg.128.2023.08.23.04.15.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Aug 2023 04:15:35 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Wed, 23 Aug 2023 13:15:32 +0200
Subject: [PATCH v5 2/2] irqchip: irq-qcom-mpm: Support passing a slice of
 SRAM as reg space
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230328-topic-msgram_mpm-v5-2-6e06278896b5@linaro.org>
References: <20230328-topic-msgram_mpm-v5-0-6e06278896b5@linaro.org>
In-Reply-To: <20230328-topic-msgram_mpm-v5-0-6e06278896b5@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawn.guo@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1692789331; l=2753;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=N8kAAyqrJhi9Gyt3LBw8oYypb/cOn3Xx6lhFuH23rnM=;
 b=wTjEsfdqz/9ijpfPCzPdt03nXz+NrBq8sKaqU2cL0jOzaAtjXdG6WzdyZTAMrXjDFpX4M1ZdD
 vCFLQ8nj+wlAMAc9L0KVOjxEoNZito1tYxLO+6Qr179t9gRIPlaK0vu
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
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

Acked-by: Shawn Guo <shawn.guo@linaro.org>
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/irqchip/irq-qcom-mpm.c | 21 ++++++++++++++++++---
 1 file changed, 18 insertions(+), 3 deletions(-)

diff --git a/drivers/irqchip/irq-qcom-mpm.c b/drivers/irqchip/irq-qcom-mpm.c
index 7124565234a5..7115e3056aa5 100644
--- a/drivers/irqchip/irq-qcom-mpm.c
+++ b/drivers/irqchip/irq-qcom-mpm.c
@@ -14,6 +14,7 @@
 #include <linux/mailbox_client.h>
 #include <linux/module.h>
 #include <linux/of.h>
+#include <linux/of_address.h>
 #include <linux/of_platform.h>
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
2.42.0

