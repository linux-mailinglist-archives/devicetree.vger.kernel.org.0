Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C1E4D4CA2C1
	for <lists+devicetree@lfdr.de>; Wed,  2 Mar 2022 12:05:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240583AbiCBLGg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Mar 2022 06:06:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232442AbiCBLGd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Mar 2022 06:06:33 -0500
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2EFF26F48B
        for <devicetree@vger.kernel.org>; Wed,  2 Mar 2022 03:05:43 -0800 (PST)
Received: by mail-pj1-x1031.google.com with SMTP id ev16-20020a17090aead000b001bc3835fea8so1519359pjb.0
        for <devicetree@vger.kernel.org>; Wed, 02 Mar 2022 03:05:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=20eucF22WnDJBIef+XBNRtcVtRBLlgGa2MbsKG7djtE=;
        b=GxpzHF9vAhlw5dsZA6dVrtQJDEW1mDu0I9prpCSyYQGnxxptQXt0B120lBo5QArybe
         K49QanJd8cVqrNO5F0PwdUp3GVO74lgbHjRrb95VZSOavtRL5r6noTM0vjEvAV020mSR
         cdfNyE+vHqEDWnRCo+fE6Y08NhEOlpJzuKjL+aRoCaHEqEjgw6Va54k5jwrejtGQdj80
         QOpBSIzEafWNCEWFxL7mNbNwv04udkL6fJXuPChUcBdengvGVgIJXkV6cONoRrKZsQOD
         /AxhoieozYtXwda1q9Otnwdfhw0Qf4crGsIcIf3nskViTWO7kQqdCvKwQQ6OcuUFqTjB
         XbNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=20eucF22WnDJBIef+XBNRtcVtRBLlgGa2MbsKG7djtE=;
        b=GrmHZUI5ssrN2/Wg7rTuBa2XaXCtdM/RET64+xqq8ilsgeHuofn7kKuDpxO3ZGYDY8
         ScXNWivQAPIJlhko3SqpbkPr/7JkkNlQXfzAm2mr0YaZNvaREGpd33cfyub0ISsrixWh
         yK1KxCGho5mxgBxhym+kT6j3hl2ENoKNMMI4g+8yeqKQqVsaFRc2LX7fE6HMI5dHKuNu
         j9MbDlZLtVHVEhFHDYUO9h8kwrWSd16GE8FzKDprfNmNeGs6LpTsA9Z9ec2p7ewXZu/G
         AFo0/95ROlK+/oTIPe7KBIxZxPC+i0aj5ubG5W4TtE71PwoWEwKv+emvlQRmOy3CV3IM
         9Z3A==
X-Gm-Message-State: AOAM532uRIp9TZlZ6eUxLNvv909dEZXseRebje1RaPQaGXAFZPFFp0c4
        orZYi8MZKillxn+HCXqERWA1Tw==
X-Google-Smtp-Source: ABdhPJzPnPURDL5k7XnfU89eVXyIfxS/JHhGyxe5U0Hzv/k46xPO8cv2uY4Cxl94DNAQ/LQz/cAM4A==
X-Received: by 2002:a17:902:ec88:b0:14f:d5fb:7a8c with SMTP id x8-20020a170902ec8800b0014fd5fb7a8cmr29734753plg.5.1646219143349;
        Wed, 02 Mar 2022 03:05:43 -0800 (PST)
Received: from localhost.localdomain ([171.50.175.145])
        by smtp.gmail.com with ESMTPSA id hk1-20020a17090b224100b001b8cff17f89sm5049186pjb.12.2022.03.02.03.05.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Mar 2022 03:05:43 -0800 (PST)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org
Cc:     bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        agross@kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, sboyd@kernel.org, tdas@codeaurora.org,
        mturquette@baylibre.com, linux-clk@vger.kernel.org,
        robh+dt@kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: [PATCH v2 3/5] clk: qcom: gcc-sm8150: Use ALWAYS_ON flag as a workaround for emac gdsc
Date:   Wed,  2 Mar 2022 16:35:06 +0530
Message-Id: <20220302110508.69053-4-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220302110508.69053-1-bhupesh.sharma@linaro.org>
References: <20220302110508.69053-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

emac GDSC currently has issues (seen on SA8155p-ADP) when its
turn'ed ON, once its already in OFF state. So when the 'eth'
interface is turned up, it fails (as RGMII CLK is unavailable,
which is gated by emac GDSC) with the following logs:

  qcom-ethqos 20000.ethernet eth0: PHY [stmmac-0:07] driver [Micrel
                                   KSZ9031 Gigabit PHY] (irq=150)
  <..snip..>
  qcom-ethqos 20000.ethernet: Failed to reset the dma
  qcom-ethqos 20000.ethernet eth0: stmmac_hw_setup: DMA engine
                                   initialization failed
  qcom-ethqos 20000.ethernet eth0: stmmac_open: Hw setup failed

So, use the 'ALWAYS_ON' flag as a workaround to describe emac GDSC
for now.

Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Stephen Boyd <sboyd@kernel.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 drivers/clk/qcom/gcc-sm8150.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/qcom/gcc-sm8150.c b/drivers/clk/qcom/gcc-sm8150.c
index 08ba29e3a835..76485bff7240 100644
--- a/drivers/clk/qcom/gcc-sm8150.c
+++ b/drivers/clk/qcom/gcc-sm8150.c
@@ -3454,7 +3454,13 @@ static struct gdsc emac_gdsc = {
 		.name = "emac_gdsc",
 	},
 	.pwrsts = PWRSTS_OFF_ON,
-	.flags = POLL_CFG_GDSCR,
+	/*
+	 * FIXME: emac GDSC cannot resume after GDSC power off:
+	 * qcom-ethqos 20000.ethernet: Failed to reset the dma
+	 *
+	 * So use ALWAYS_ON flag as a workaround.
+	 */
+	.flags = ALWAYS_ON,
 };
 
 static struct gdsc usb30_prim_gdsc = {
-- 
2.35.1

