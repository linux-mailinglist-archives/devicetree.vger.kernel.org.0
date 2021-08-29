Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 899CD3FACDC
	for <lists+devicetree@lfdr.de>; Sun, 29 Aug 2021 17:51:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235750AbhH2PtG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 29 Aug 2021 11:49:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53212 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235738AbhH2Ps7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 29 Aug 2021 11:48:59 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9AEFEC061760
        for <devicetree@vger.kernel.org>; Sun, 29 Aug 2021 08:48:06 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id f2so21299761ljn.1
        for <devicetree@vger.kernel.org>; Sun, 29 Aug 2021 08:48:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=lzeU0XBdc+zW8wh83RkBlEjdf1NC4IsbDq14TpwvvIY=;
        b=Ag67y5ZpFJF9p8jT9/32es6sbKsdRbyjxY6xMl+DVef4i+VHsmJw80MUFZXTpPtDzI
         C/jPC6tN5MldUDrQitWnOcaykhPE/KBvoF6XDmXx28rmgEXcy5ZRi8ovwGtqR9AonWap
         Skmc7ldfTE/G1brjou0eWttnasmXsNABj0Dnc457xgSXTdUk19MK10PjnfYMmK8tOxn2
         hfYB6ximbfWH4KdSvtuykLzNFhBMf06UpE+QP9FqqmYkNmbBNncVTGRgL/6UXuNIgjlE
         Q15LHTviUuGnzXixdOwc3Xb8f6fmHt+A3Yh7XAsMWbMKE04JNfCXp8gFraxUlxDSanq/
         w5ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lzeU0XBdc+zW8wh83RkBlEjdf1NC4IsbDq14TpwvvIY=;
        b=uFToDR8t9ZWk2K1Esm0Ie5dVBY06jV3dO0bbGAZtIFZQM4BzycTMXMLZUneKzoPi+o
         4ZNAuSBUxCpUQYb/kHPHUKwddCNSuSP6la6HUfQVK48jkJRtn6zNF1CyulrBA5YYKQ0C
         Hzx4dFfFayxNFti2cwU/M3fXVWlfo4ozTJBD+LmPUeESlBfaaLMiIyZOWz0vI06AjoIr
         4YRqT8axl8jAvFqpWBvjA0c9aktLmIC4X2s3pgl6tIQ+nSv3LxNWLHz/QFSLolwrlP91
         vHYunF74oFiGbv1zlc6rqix/KWmsSmQgBGS2ZDR5DV5XsgYeGBFVvtEA2CdX1fwS7zEs
         tHhw==
X-Gm-Message-State: AOAM532J02U9dMzVO9Z72Ka08lX9dRZQRPZAja/jipMQ8itGYpvvRnf0
        eSMbSI8mkc+fbVe+xIO/r433vA==
X-Google-Smtp-Source: ABdhPJwvec1rcbKJVTI33jPDHb38xE04JgYCoHJRLIChOYMC/jiYEUHu9GnwNG4ssQIjUcOlgwu0Eg==
X-Received: by 2002:a2e:8403:: with SMTP id z3mr17397142ljg.298.1630252084908;
        Sun, 29 Aug 2021 08:48:04 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id y5sm1481243ljd.38.2021.08.29.08.48.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Aug 2021 08:48:04 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Taniya Das <tdas@codeaurora.org>,
        Jonathan Marek <jonathan@marek.ca>,
        Michael Turquette <mturquette@baylibre.com>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-clk@vger.kernel.org,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Mark Brown <broonie@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        linux-kernel@vger.kernel.org
Subject: [PATCH v7 7/8] clk: qcom: dispcc-sm8250: stop using mmcx regulator
Date:   Sun, 29 Aug 2021 18:47:56 +0300
Message-Id: <20210829154757.784699-8-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210829154757.784699-1-dmitry.baryshkov@linaro.org>
References: <20210829154757.784699-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Now as the common qcom clock controller code has been taught about power
domains, stop mentioning mmcx supply as a way to power up the clock
controller's gdsc.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 drivers/clk/qcom/dispcc-sm8250.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/clk/qcom/dispcc-sm8250.c b/drivers/clk/qcom/dispcc-sm8250.c
index 108dd1249b6a..cf0bb12eb6e1 100644
--- a/drivers/clk/qcom/dispcc-sm8250.c
+++ b/drivers/clk/qcom/dispcc-sm8250.c
@@ -1129,7 +1129,6 @@ static struct gdsc mdss_gdsc = {
 	},
 	.pwrsts = PWRSTS_OFF_ON,
 	.flags = HW_CTRL,
-	.supply = "mmcx",
 };
 
 static struct clk_regmap *disp_cc_sm8250_clocks[] = {
-- 
2.33.0

