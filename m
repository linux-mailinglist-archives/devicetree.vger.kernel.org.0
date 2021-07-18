Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5B0533CC891
	for <lists+devicetree@lfdr.de>; Sun, 18 Jul 2021 12:49:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233287AbhGRKwS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 18 Jul 2021 06:52:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59674 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233085AbhGRKwO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 18 Jul 2021 06:52:14 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7585BC0613DD
        for <devicetree@vger.kernel.org>; Sun, 18 Jul 2021 03:49:15 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id a12so24257929lfb.7
        for <devicetree@vger.kernel.org>; Sun, 18 Jul 2021 03:49:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ClSRhnm8pHzVjF/xtq0qJLqRvgNXebRM90lbbmZW9cA=;
        b=KX9NZ39PZr3mzqRFuQGX6fZfO1ugSx3NK9JYFRfGFK98HMgMqbTUuKXR335d3B6sJ1
         WOjzSr19/6d1pEGtkD+RyumWSLsucsSlIJAPGpJAZ8h53nxpmSN3/whvfgwOGAHuxWYV
         drOPB9gQn84VbCYN26r68X4u5UyvD57BIfaiWwLnQ4qdOblhRG/fhiLbwAUFW6kWGcEu
         pYELuXRI0WU5VeoylywgD7t8k90s5fDvxEUXnXdITyv+eipNpalYvlnV8BBS1UCZzqKo
         UZExonrhn405UU/00a2bygJI3xRtUDEjxo+LIW40vZJY3nOjTuy7Mk11CsV5OmVZAHZ/
         1E9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ClSRhnm8pHzVjF/xtq0qJLqRvgNXebRM90lbbmZW9cA=;
        b=GwPhVL790PcgIbCT9m1qaHPywoPTf2IafBYPCu3cb4De5dlRmeDMORNrugtdenYTzN
         0L+vXRsgm6QnR37iPt13dURfS8Mkv2muafC4KcLtHdgzUhukl8Ihx2C8ycekM+ZnH1na
         nwqSt5T2h0kcpmIQBDEID3millQNUThst71s4IfWpp74L3wmJVh9+MWXsIYLMmPbHCWJ
         c1hEENOh4wV+7G8fR1FrLRF1/wrIb5s1eKojZrsNOuO6W+Y0atpGh6PawtU6loUuBJv1
         gMDYmXUGCBi1f2l4Aia47Jsifp4At79hdExCgGoauwaMYPSuKlEGmkKkCd4MyZa1uR+e
         o0NA==
X-Gm-Message-State: AOAM533N+0YrKAxNd0l7tRvCkfSuJsPrig+KqmoFMt3iZ+J3cTszfHvl
        zE3RDEDqYvb2O7dWBykQEb98ng==
X-Google-Smtp-Source: ABdhPJx1nUHvtHI+Szd9OpnGL0SHvSlOkH5RYYrLmZSbHWRm7YfcckMRcsRtWHOGXi7xPp63caORxQ==
X-Received: by 2002:a19:6f4b:: with SMTP id n11mr14536042lfk.337.1626605353889;
        Sun, 18 Jul 2021 03:49:13 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id y22sm1039528lfh.154.2021.07.18.03.49.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jul 2021 03:49:13 -0700 (PDT)
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
Subject: [PATCH v5 8/9] clk: qcom: dispcc-sm8250: stop using mmcx regulator
Date:   Sun, 18 Jul 2021 13:49:00 +0300
Message-Id: <20210718104901.454843-9-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210718104901.454843-1-dmitry.baryshkov@linaro.org>
References: <20210718104901.454843-1-dmitry.baryshkov@linaro.org>
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
index 0625fea6d7ba..372d3a8f38cf 100644
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
2.30.2

