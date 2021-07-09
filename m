Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 499B73C1D21
	for <lists+devicetree@lfdr.de>; Fri,  9 Jul 2021 03:31:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230370AbhGIBdx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Jul 2021 21:33:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55006 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230416AbhGIBdi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Jul 2021 21:33:38 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0B2BC061766
        for <devicetree@vger.kernel.org>; Thu,  8 Jul 2021 18:30:54 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id q4so5340652ljp.13
        for <devicetree@vger.kernel.org>; Thu, 08 Jul 2021 18:30:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=OW6r9Ztak14Z94NLN85hpavnPWferFff+9qy6SUKk4g=;
        b=JC+1co9x/j+ssxCI+b1ed91TSXIs9SSXm9M04kPMKTty2jG2kt3NTohLWEdszrJp4d
         OWjYXBEqxswxPVRdX5oD8bvjermQG4xTqOsvtdmnRPRuUsqAxSGxhpxhzso8xFWxnasP
         Sqb7IkQzYU1yYKlpoCpIIaVj8QnuzQOtDu3+ABjl0d6FRKmhGHyk3IAJphS0InJR3csZ
         ZXrhWEXgym+/thivB1uxBvE97x5RoP3GK7VzLL3rZ3229L9G9zmcjqxFRfW5sDhUmmHz
         fbM5C10WwxdB2P3KgcQAPKrB9l9R8YMjwQtO69myRBsg5nKrbkPDS+7FzuyPRGmFmOnT
         9BIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=OW6r9Ztak14Z94NLN85hpavnPWferFff+9qy6SUKk4g=;
        b=VvX1tjdwn+4SDc1qI/67nJUuR/IiZ0xCLHjCddsltCVMfDNdJGmXV2Cv+P8sn7qi+0
         hc8rWL3L6baEzjmwAdt+f/VTOL0OyiKQjMKWe0kjHH8IXiEONQpq+6t3Rqp4K3W1RWWc
         1VxTffEFHEGjuyFT10d9+fR63jZw/uoVbLm6QkLjKxBCj8Yj1Vr3mvvCgExo9lkzo5LQ
         aDgeh+6rrnpXBJhpFND6n/PwBUOECFiiQIHFlB6MJEB5FAMGsvr4qUGejyPUaPTAo5m2
         pqlZtcZJg38slF1tdDkE5V5VyktqCooQjQzzRdv7GHFKI8lPD2VqQUJ3Zeo2EHw7tbfX
         fHcg==
X-Gm-Message-State: AOAM530ECWd2qgFQAyozCLjSaLRCMVUT9v40eIM+dq244JDVXEbeba8F
        jotji6kVLaH+pkvTys9rQqkVKg==
X-Google-Smtp-Source: ABdhPJx6WXDWhJBZKd7QHCOxQwuu4v3iDZQQH1YLUxtdkVc6jIf8iadLgiyW6VaFmzWYsqE9wRVDQA==
X-Received: by 2002:a05:651c:1798:: with SMTP id bn24mr26944102ljb.72.1625794253278;
        Thu, 08 Jul 2021 18:30:53 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id u16sm405637ljj.113.2021.07.08.18.30.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jul 2021 18:30:52 -0700 (PDT)
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
Subject: [PATCH v2 7/7] clk: qcom: videocc-sm8250: stop using mmcx regulator
Date:   Fri,  9 Jul 2021 04:30:43 +0300
Message-Id: <20210709013043.495233-8-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210709013043.495233-1-dmitry.baryshkov@linaro.org>
References: <20210709013043.495233-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Now as the common qcom clock controller code has been taught about power
domains, stop mentioning mmcx supply as a way to power up the clock
controller's gdscs.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/clk/qcom/videocc-sm8250.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/clk/qcom/videocc-sm8250.c b/drivers/clk/qcom/videocc-sm8250.c
index 7b435a1c2c4b..eedef85d90e5 100644
--- a/drivers/clk/qcom/videocc-sm8250.c
+++ b/drivers/clk/qcom/videocc-sm8250.c
@@ -276,7 +276,6 @@ static struct gdsc mvs0c_gdsc = {
 	},
 	.flags = 0,
 	.pwrsts = PWRSTS_OFF_ON,
-	.supply = "mmcx",
 };
 
 static struct gdsc mvs1c_gdsc = {
@@ -286,7 +285,6 @@ static struct gdsc mvs1c_gdsc = {
 	},
 	.flags = 0,
 	.pwrsts = PWRSTS_OFF_ON,
-	.supply = "mmcx",
 };
 
 static struct gdsc mvs0_gdsc = {
@@ -296,7 +294,6 @@ static struct gdsc mvs0_gdsc = {
 	},
 	.flags = HW_CTRL,
 	.pwrsts = PWRSTS_OFF_ON,
-	.supply = "mmcx",
 };
 
 static struct gdsc mvs1_gdsc = {
@@ -306,7 +303,6 @@ static struct gdsc mvs1_gdsc = {
 	},
 	.flags = HW_CTRL,
 	.pwrsts = PWRSTS_OFF_ON,
-	.supply = "mmcx",
 };
 
 static struct clk_regmap *video_cc_sm8250_clocks[] = {
-- 
2.30.2

