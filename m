Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F11815F5C91
	for <lists+devicetree@lfdr.de>; Thu,  6 Oct 2022 00:13:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229956AbiJEWNg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Oct 2022 18:13:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229703AbiJEWM7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Oct 2022 18:12:59 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 962B98321B
        for <devicetree@vger.kernel.org>; Wed,  5 Oct 2022 15:12:56 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id u10so27714334wrq.2
        for <devicetree@vger.kernel.org>; Wed, 05 Oct 2022 15:12:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=phcPBaGxOFAemR9YFsCDrE8yrlHvz+AvjsJ/jn+/KmI=;
        b=fT+awGr6HC6jkA8sx0VnpDhh6dUhw8YNN/6TYOobvNj54/0CpejDoJni+sVbPpx5wK
         0DYNIt+gu5YDonucOoiaZtoAYsZ5PV7+qWbo35oR6JatzcqcjAiU43KSOqZ40yFONe7U
         wUwAAKK4GxlvcmvMTCcyKwbE6kciH3+6k/AMwUujo19TFDZWrU/Kqk1kDBRU5ryvpMN1
         6pwFy0LU3gGg5TbFigo5GB4XxSst2U5KmBukaJg0LOaq5U30xBmG243cduPHJ77iuwUS
         ml+q5k/JI19wC5wz4TO0NvOUZFuM6jiVL9VC62+Uwvtb2W05q/avOkgCfSZg6M5Rv7Zr
         PSLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=phcPBaGxOFAemR9YFsCDrE8yrlHvz+AvjsJ/jn+/KmI=;
        b=jZZ/UyfVIKB/R1W2+/tlCHizOq2uNZZMRLYkOrcxUQDJZpD0teSuENyStnO5mLZm7T
         RlXTMqPkNW9JklzDUYyZT2jpiZ1LN6Xnf7w9bi1Qe8xc3nOLHzaAhIbnD0GzVTPx73Wg
         XVtoQ26exMB5xOkkpIsYFuMGIEeZ2t4fIgehQjmEydVtqPpmlZjpnjKRlXYGgqcp0/to
         nijH49KqzzY5RzmZ2TZd3ko8x0AIWNLOXhYCxbV3cfkHAs+oO6uTCIZA/W0XKrjGTS4a
         n3hbdhjXT+qteDjE1seQ4SOnCIsrccGEIdA/UCiX8runewSHnDh+57ckeMXrMMHfg6Xy
         1acA==
X-Gm-Message-State: ACrzQf3akunhIgA4RwZ9cwyRktn7b8urpvO+40is3kLIO7GZZXoIwbFj
        MPodDExTBV/EAk+70Vtww/yK8Q==
X-Google-Smtp-Source: AMsMyM7JhMdChwdjmUImLrUxFmpEEB4hY420GtV0XNIzQCNPhkwy/oQvC9Tx5/UjxeKv1iG47bX8sQ==
X-Received: by 2002:a5d:5846:0:b0:22a:f7d2:9045 with SMTP id i6-20020a5d5846000000b0022af7d29045mr1107603wrf.250.1665007976181;
        Wed, 05 Oct 2022 15:12:56 -0700 (PDT)
Received: from rainbowdash.. (cpc152649-stkp13-2-0-cust121.10-2.cable.virginm.net. [86.15.83.122])
        by smtp.gmail.com with ESMTPSA id d2-20020adffd82000000b0022e327f849fsm12184437wrr.5.2022.10.05.15.12.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Oct 2022 15:12:55 -0700 (PDT)
From:   Ben Dooks <ben.dooks@sifive.com>
To:     linux-pwm@vger.kernel.org
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Lee Jones <lee.jones@linaro.org>,
        u.kleine-koenig@pengutronix.de,
        Thierry Reding <thierry.reding@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Greentime Hu <greentime.hu@sifive.com>,
        jarkko.nikula@linux.intel.com,
        William Salmon <william.salmon@sifive.com>,
        Jude Onyenegecha <jude.onyenegecha@sifive.com>,
        Ben Dooks <ben.dooks@sifive.com>
Subject: [PATCH v5 09/10] pwm: dwc: add PWM bit unset in get_state call
Date:   Wed,  5 Oct 2022 23:12:41 +0100
Message-Id: <20221005221242.470734-10-ben.dooks@sifive.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221005221242.470734-1-ben.dooks@sifive.com>
References: <20221005221242.470734-1-ben.dooks@sifive.com>
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

If we are not in PWM mode, then the output is technically a 50%
output based on a single timer instead of the high-low based on
the two counters. Add a check for the PWM mode in dwc_pwm_get_state()
and if DWC_TIM_CTRL_PWM is not set, then return a 50% cycle.

This may only be an issue on initialisation, as the rest of the
code currently assumes we're always going to have the extended
PWM mode using two counters.

Signed-off-by: Ben Dooks <ben.dooks@sifive.com>
---
v4:
 - fixed review comment on mulit-line calculations
---
 drivers/pwm/pwm-dwc.c | 29 ++++++++++++++++++-----------
 1 file changed, 18 insertions(+), 11 deletions(-)

diff --git a/drivers/pwm/pwm-dwc.c b/drivers/pwm/pwm-dwc.c
index 1251620ab771..5ef0fe7ea3e9 100644
--- a/drivers/pwm/pwm-dwc.c
+++ b/drivers/pwm/pwm-dwc.c
@@ -121,23 +121,30 @@ static void dwc_pwm_get_state(struct pwm_chip *chip, struct pwm_device *pwm,
 {
 	struct dwc_pwm *dwc = to_dwc_pwm(chip);
 	u64 duty, period;
+	u32 ctrl, ld, ld2;
 
 	pm_runtime_get_sync(chip->dev);
 
-	state->enabled = !!(dwc_pwm_readl(dwc,
-				DWC_TIM_CTRL(pwm->hwpwm)) & DWC_TIM_CTRL_EN);
+	ctrl = dwc_pwm_readl(dwc, DWC_TIM_CTRL(pwm->hwpwm));
+	ld = dwc_pwm_readl(dwc, DWC_TIM_LD_CNT(pwm->hwpwm));
+	ld2 = dwc_pwm_readl(dwc, DWC_TIM_LD_CNT2(pwm->hwpwm));
 
-	duty = dwc_pwm_readl(dwc, DWC_TIM_LD_CNT(pwm->hwpwm));
-	duty += 1;
-	duty *= dwc->clk_ns;
-	state->duty_cycle = duty;
+	state->enabled = !!(ctrl & DWC_TIM_CTRL_EN);
 
-	period = dwc_pwm_readl(dwc, DWC_TIM_LD_CNT2(pwm->hwpwm));
-	period += 1;
-	period *= dwc->clk_ns;
-	period += duty;
-	state->period = period;
+	/* If we're not in PWM, technically the output is a 50-50
+	 * based on the timer load-count only.
+	 */
+	if (ctrl & DWC_TIM_CTRL_PWM) {
+		duty = (ld + 1) * dwc->clk_ns;
+		period = (ld2 + 1)  * dwc->clk_ns;
+		period += duty;
+	} else {
+		duty = (ld + 1) * dwc->clk_ns;
+		period = duty * 2;
+	}
 
+	state->period = period;
+	state->duty_cycle = duty;
 	state->polarity = PWM_POLARITY_INVERSED;
 
 	pm_runtime_put_sync(chip->dev);
-- 
2.35.1

