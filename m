Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7571E3C2868
	for <lists+devicetree@lfdr.de>; Fri,  9 Jul 2021 19:32:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230219AbhGIRe5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jul 2021 13:34:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230194AbhGIRez (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jul 2021 13:34:55 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ADFD5C0617A6
        for <devicetree@vger.kernel.org>; Fri,  9 Jul 2021 10:32:10 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id p1so24648907lfr.12
        for <devicetree@vger.kernel.org>; Fri, 09 Jul 2021 10:32:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=f0ldkE5j34OXHAqh3I/xyyl0k1n40wAos/+0qzuAEic=;
        b=p4MDQnpFTSPgXtG+PXQEdPP352hDWz8Stp22Wi3WKR0YgREac2VUswu7zpo11zdGYv
         3wDME5GPeFyVyTQrojf/dXFG1VnKwqZMH0sjAc4gYyw3Ki6mFcc2hRYWCsN7pbehCvLF
         WeWPQakp3zuYRkwl2nvWkv/eHSQoyPfI5YYOxs3mrr9cC7uivbi1gXkQeznHKD2c64J8
         lhFq9LXoweEJ6mCr414URpxb2Jma4wnD6EN23Uk9s28aQtRrlvd45/yb2h8qWfLpsNu6
         TS3dF6Rlj3s6oUL6dfLHK1vlmEi6xxpLUDWLdvwf3PVVhzvujWuC0pELbaum+F3Eckf7
         8qeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=f0ldkE5j34OXHAqh3I/xyyl0k1n40wAos/+0qzuAEic=;
        b=QarEKvog13d0lPUcUR5gvtslHvZITTTocfy47ti6iYyoEdjJI3LcuBqUKhzd5LwRe0
         iy7XEtMpwnKov9TyHUC+uCsd1lITO36JyaXGfOva/xIkEJjerLw+jnl2A1nbKYroygru
         RYIRC2/Xqyrsx2PiWx97wJQisAVMUY0zVal7+2ALjYss1tPyDsg8FahGeZrNfC3nbm3M
         DnosHVIFJMPVoOv/H8Oalb5QIFnXIjexzzV90I/VaLLMKgstLOOXu1TrJpzjF2r4frdP
         vMAPdiq9+dQavuyjLy0zq2iCZJPY8QDfiTFF236Y3/zsG4IsPw5zwDp9H/eoeK8uz9u0
         XSjw==
X-Gm-Message-State: AOAM531Es57onTmp1WrIY/SmWWXezV6kJfSDs02JPWNakdZ6oB4YYAxC
        JCZ0BPRl9DhMpAFrdlekqjvecw==
X-Google-Smtp-Source: ABdhPJyYcFjllrZgWkk/43fifMH9cKfl6MIk9xpfXGxacTUBWTBdQzl+TE1JYq3wBpVe+KVSBNhXoQ==
X-Received: by 2002:a05:6512:238c:: with SMTP id c12mr30865872lfv.317.1625851928920;
        Fri, 09 Jul 2021 10:32:08 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id b14sm511129lfb.132.2021.07.09.10.32.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jul 2021 10:32:08 -0700 (PDT)
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
Subject: [PATCH v3 6/7] clk: qcom: dispcc-sm8250: stop using mmcx regulator
Date:   Fri,  9 Jul 2021 20:32:01 +0300
Message-Id: <20210709173202.667820-7-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210709173202.667820-1-dmitry.baryshkov@linaro.org>
References: <20210709173202.667820-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Now as the common qcom clock controller code has been taught about power
domains, stop mentioning mmcx supply as a way to power up the clock
controller's gdsc.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/clk/qcom/dispcc-sm8250.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/clk/qcom/dispcc-sm8250.c b/drivers/clk/qcom/dispcc-sm8250.c
index de09cd5c209f..dfbfe64b12f6 100644
--- a/drivers/clk/qcom/dispcc-sm8250.c
+++ b/drivers/clk/qcom/dispcc-sm8250.c
@@ -955,7 +955,6 @@ static struct gdsc mdss_gdsc = {
 	},
 	.pwrsts = PWRSTS_OFF_ON,
 	.flags = HW_CTRL,
-	.supply = "mmcx",
 };
 
 static struct clk_regmap *disp_cc_sm8250_clocks[] = {
-- 
2.30.2

