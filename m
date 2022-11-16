Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3654A62BA72
	for <lists+devicetree@lfdr.de>; Wed, 16 Nov 2022 11:59:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238791AbiKPK7a (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Nov 2022 05:59:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41182 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232126AbiKPK7Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Nov 2022 05:59:16 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 067DD3C6E6
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 02:47:44 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id h9so29261760wrt.0
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 02:47:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2IVe9z2DRaTpvuGUSecduIjpav4fz8lnSRnMClXaA5o=;
        b=AKblV7DJ/Aqye0KufMndVW5OUGZ7dLwBrbHneuatF7kJrEWjMZ0N9nbCJe5qKXYsrm
         Zsfcm/I8eLye1rP0M09DIi0eX6T3uTmpLJ/qJZsfhN4q1KIWf9F6cuK66t+W+kMYJRuQ
         v+QgumIAdRbexl+x1L5Bhqt6t4qqbNRm2/rq4yG9kp9eTtRIXkINgfTep8Wedl2oI0NP
         ZtCDL01mmdMPum9PzjoHAevaiiZHeMHIS9RClhb1NAcUiSNPC8R6T3/sYSKhEIv3n0S5
         Cel7U/nNCkeZcOyE8autu1+CSnf1XmlEFytA17Dfjl8aIeOioYsOhLBoevEL4G6bbuRq
         /rsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2IVe9z2DRaTpvuGUSecduIjpav4fz8lnSRnMClXaA5o=;
        b=Q7yFjN68u0GURCTVX2HReEE7ae3HU8/zlZrcIN+HjYGpJTbwmIHX/ZW/kpZ9aIxDrX
         WjLkks0HT5iuAheiovfWFEThSH8abp8UxUz9/Vz7pxhO8GXNcoJZLu9hzJkGZDm6YlA1
         h0BtfV0RC6SBLporAcSHWKGofhzjNAJlDE3uDk/XGNdq0bBXKIKpAAe1o2/7oOVKi/wE
         KBO2u19xPmKmuxru3pbtVyXM+w6o92OLfyQEUk/TOr6XlzTswxyz6hVmHVYsolkb97Rc
         4jPCCZbJ99jTsR0bYM8yoD4tb0vby/9e7kBDJTkUpHDWcEFDTZJRZVu2GPJX3R7gGFOK
         ZpdQ==
X-Gm-Message-State: ANoB5plkavrB2b90u7aSA/DzhQHOBsQDLLvDi7kgr4rXbbvOVKb7Iy1N
        mWp4GGydQ6QofTc9vRsKWSo2oQ==
X-Google-Smtp-Source: AA0mqf4WBPtOReWU9gT519T6S9PhzndqDxzFn+gvUgP31BVC2LgckwRAqGHMmMBj60mayflpSDwWSg==
X-Received: by 2002:adf:f287:0:b0:238:589f:e610 with SMTP id k7-20020adff287000000b00238589fe610mr13560073wro.42.1668595662558;
        Wed, 16 Nov 2022 02:47:42 -0800 (PST)
Received: from localhost.localdomain ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id b3-20020adff903000000b002366fb99cdasm14674206wrr.50.2022.11.16.02.47.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Nov 2022 02:47:42 -0800 (PST)
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Mike Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org
Subject: [PATCH 2/9] clk: qcom: gdsc: Add configurable poll timeout
Date:   Wed, 16 Nov 2022 12:47:09 +0200
Message-Id: <20221116104716.2583320-3-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221116104716.2583320-1-abel.vesa@linaro.org>
References: <20221116104716.2583320-1-abel.vesa@linaro.org>
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

Depending on the platform, the poll timeout delay might be different,
so allow the platform specific drivers to specify their own values.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/clk/qcom/gdsc.c | 5 ++++-
 drivers/clk/qcom/gdsc.h | 1 +
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/qcom/gdsc.c b/drivers/clk/qcom/gdsc.c
index 0f21a8a767ac..3753f3ef7241 100644
--- a/drivers/clk/qcom/gdsc.c
+++ b/drivers/clk/qcom/gdsc.c
@@ -107,7 +107,7 @@ static int gdsc_poll_status(struct gdsc *sc, enum gdsc_status status)
 	do {
 		if (gdsc_check_status(sc, status))
 			return 0;
-	} while (ktime_us_delta(ktime_get(), start) < TIMEOUT_US);
+	} while (ktime_us_delta(ktime_get(), start) < sc->poll_timeout);
 
 	if (gdsc_check_status(sc, status))
 		return 0;
@@ -454,6 +454,9 @@ static int gdsc_init(struct gdsc *sc)
 	if (ret)
 		goto err_disable_supply;
 
+	if (!sc->poll_timeout)
+		sc->poll_timeout = 500;
+
 	return 0;
 
 err_disable_supply:
diff --git a/drivers/clk/qcom/gdsc.h b/drivers/clk/qcom/gdsc.h
index 803512688336..9a1e1fb3d12f 100644
--- a/drivers/clk/qcom/gdsc.h
+++ b/drivers/clk/qcom/gdsc.h
@@ -36,6 +36,7 @@ struct gdsc {
 	struct generic_pm_domain	*parent;
 	struct regmap			*regmap;
 	unsigned int			gdscr;
+	unsigned int			poll_timeout;
 	unsigned int			collapse_ctrl;
 	unsigned int			collapse_mask;
 	unsigned int			gds_hw_ctrl;
-- 
2.34.1

