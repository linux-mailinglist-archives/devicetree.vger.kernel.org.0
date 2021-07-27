Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 96F323D7F1E
	for <lists+devicetree@lfdr.de>; Tue, 27 Jul 2021 22:20:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232597AbhG0UUq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jul 2021 16:20:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232480AbhG0UUb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Jul 2021 16:20:31 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E44D5C0617A5
        for <devicetree@vger.kernel.org>; Tue, 27 Jul 2021 13:20:25 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id m13so23851813lfg.13
        for <devicetree@vger.kernel.org>; Tue, 27 Jul 2021 13:20:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=xwHyfFobMRMZKUio9uUatRxtV0PWAj3xDN5CdY+KXtw=;
        b=pd0N30nr0KqMooVCHpWMLPM0lsT+3Zo1tpP7D4POtBf4e6piGSVRF/hMLEXNgAO64U
         Td4HPhY9c/idLVNAjwWLC3SV6ZNpzRE1mTwumX6MC1exIDQDNkVyKBmxdVvbs6C5BJtP
         utGHC7m6LnyDj6L97DFFZDOGOydarBu1PnvOr3VCOYQsOedejk3cGJnZzj/P7vwFop6w
         6csPBbZG4ABdc3PvZJgNb5EkghoyK6bqGW1wY3ftM2QNaX7KeOG9ZRn8o3R86jzzRZBs
         HyzBaw3J0IvtI7blLf0nTAJaOseMbQCpTheV2fQ5jXyy9qK+wN4Jo0OfhD2NdfWb36+P
         80bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xwHyfFobMRMZKUio9uUatRxtV0PWAj3xDN5CdY+KXtw=;
        b=MQ2q8A5qyOI5svTdF4y/DJHMS/gJaPQZI0GMugtZEjDwYb/216R7PSzu8T0gqEdYGl
         b/evueYGYLDh5aIZ3OdiPnANaT7RbUg0VhipuxnppBmSjvDWzynAOONHeqWi417c7TzC
         u6TbXGKGU+Ux/vmnwarlwylDSyhZEyGS8fNhgpvu6RWpFbJcdxRtLOhFfO5yCNjoFiHh
         hAZ137Y7k2NXX98P43AQzZw2cLqB5VzfTo4Lk5HKLifkwuGJUcYKYtPqoPsyrKerNgsz
         J61qlwowYS5GtZvMJnRpQ5NNgbMTiaDvcP2gsE/G15UKyxJ8hD6plHgyETlAVEItZ+Oe
         5cLw==
X-Gm-Message-State: AOAM530cTPxj2zArhHpPagyw2qQo4tlmDMUEKWIWreI//UBAnP9RF6Oz
        7zVC6R30Hg9ymqr5SKc37fEZTQ==
X-Google-Smtp-Source: ABdhPJyoEkaNryf83y9vVHT4RF65941FKDyLrwGoeOtj/lruPuXft73AI4940p9UtXDiNRM19V4b7Q==
X-Received: by 2002:a05:6512:3767:: with SMTP id z7mr6831909lft.128.1627417223534;
        Tue, 27 Jul 2021 13:20:23 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id i11sm376502lfe.215.2021.07.27.13.20.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 13:20:23 -0700 (PDT)
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
Subject: [PATCH v6 8/8] clk: qcom: videocc-sm8250: stop using mmcx regulator
Date:   Tue, 27 Jul 2021 23:20:04 +0300
Message-Id: <20210727202004.712665-9-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727202004.712665-1-dmitry.baryshkov@linaro.org>
References: <20210727202004.712665-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Now as the common qcom clock controller code has been taught about power
domains, stop mentioning mmcx supply as a way to power up the clock
controller's gdscs.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 drivers/clk/qcom/videocc-sm8250.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/clk/qcom/videocc-sm8250.c b/drivers/clk/qcom/videocc-sm8250.c
index 8617454e4a77..f28f2cb051d7 100644
--- a/drivers/clk/qcom/videocc-sm8250.c
+++ b/drivers/clk/qcom/videocc-sm8250.c
@@ -277,7 +277,6 @@ static struct gdsc mvs0c_gdsc = {
 	},
 	.flags = 0,
 	.pwrsts = PWRSTS_OFF_ON,
-	.supply = "mmcx",
 };
 
 static struct gdsc mvs1c_gdsc = {
@@ -287,7 +286,6 @@ static struct gdsc mvs1c_gdsc = {
 	},
 	.flags = 0,
 	.pwrsts = PWRSTS_OFF_ON,
-	.supply = "mmcx",
 };
 
 static struct gdsc mvs0_gdsc = {
@@ -297,7 +295,6 @@ static struct gdsc mvs0_gdsc = {
 	},
 	.flags = HW_CTRL,
 	.pwrsts = PWRSTS_OFF_ON,
-	.supply = "mmcx",
 };
 
 static struct gdsc mvs1_gdsc = {
@@ -307,7 +304,6 @@ static struct gdsc mvs1_gdsc = {
 	},
 	.flags = HW_CTRL,
 	.pwrsts = PWRSTS_OFF_ON,
-	.supply = "mmcx",
 };
 
 static struct clk_regmap *video_cc_sm8250_clocks[] = {
-- 
2.30.2

