Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DD73F606417
	for <lists+devicetree@lfdr.de>; Thu, 20 Oct 2022 17:16:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230152AbiJTPQl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Oct 2022 11:16:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57470 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230180AbiJTPQ3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Oct 2022 11:16:29 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E480914FD1C
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 08:16:24 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id w18so35064119wro.7
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 08:16:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=phcPBaGxOFAemR9YFsCDrE8yrlHvz+AvjsJ/jn+/KmI=;
        b=cQZeTaLxjf77kJiNM9B9vGBb6AMSIHOTChOwi0lz0YIl0srH5pIGZQsZqceTMc/zy3
         52majJ4QY325w7Jz8E1MDjGF+WaMELJ2b6ZOQC7/M6Sxz5k0xwkPjo4X4IIxMd8asDHJ
         Lj4StpgQoHfHXbp0rUkXCoWlHNEoSNIE8mTgWV3RM9oRxJKUeMD9YkmqJ4Q8p23HT7cI
         65VLh7vx2TduetVtra+0epqeRxU+UVLItO5FJDu+vMcNmUNkiVu8gC1CeU36Uthh3jCh
         dAdkIED3QycFdd4Lor8PJSecdifrlHmlBgtTUPsp6V/CsyQ2/hZd+njtryH/rEdGf91s
         c6Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=phcPBaGxOFAemR9YFsCDrE8yrlHvz+AvjsJ/jn+/KmI=;
        b=y0HTi0odW4QXB3mnjNz8OC2I1CzkuUZBnAmJ5+Ari9jXpirmDBCQBHOXIlc90GTAk4
         MwMvOTp1r8kygSGAy8wIZAt1MkaRySgBWs1+mQ74rj2jeNCU2TI3Gc7uCoTTc3YHovee
         nZIxA1eBLcBV4JhPkfeDCUa9BgfLjk2z3BiVHcTXV60eV6T7B0tHEs63SLlZb4Bn306R
         xSsNrJm3sMMM83/bGgTOa+1I4dRNlqfx8QUJIDr8t/KQu4P0is0mQ+RaxbNBpj06ALjn
         3JfPHw84kkJ1oP6QDV0mneMamRn06Fuk4FjTOEd3kQDUwDHd+cLRdr2RF0dWJuTwtrRX
         KJSA==
X-Gm-Message-State: ACrzQf0g0UGO5unzmedtThYMsW4UwLRjM6hNGN/6ELEIW5W8c/7/+cQT
        e89nXfGsWeHANtEcISO3A99iYg==
X-Google-Smtp-Source: AMsMyM5GOHXtlPcs6LoX7aKrMSCi6JsGgCxqke4S7zmtFSaILMBMFSC+6oPZSbkc+ibDeYW2776ANg==
X-Received: by 2002:a05:6000:788:b0:22e:412b:7959 with SMTP id bu8-20020a056000078800b0022e412b7959mr8884219wrb.491.1666278984308;
        Thu, 20 Oct 2022 08:16:24 -0700 (PDT)
Received: from rainbowdash.guest.codethink.co.uk ([167.98.27.226])
        by smtp.gmail.com with ESMTPSA id bg6-20020a05600c3c8600b003c6f3e5ba42sm41362wmb.46.2022.10.20.08.16.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Oct 2022 08:16:23 -0700 (PDT)
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
Subject: [PATCH v6 09/10] pwm: dwc: add PWM bit unset in get_state call
Date:   Thu, 20 Oct 2022 16:16:09 +0100
Message-Id: <20221020151610.59443-10-ben.dooks@sifive.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221020151610.59443-1-ben.dooks@sifive.com>
References: <20221020151610.59443-1-ben.dooks@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
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

