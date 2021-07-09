Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ED0A23C286E
	for <lists+devicetree@lfdr.de>; Fri,  9 Jul 2021 19:32:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230242AbhGIRfA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jul 2021 13:35:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45374 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230217AbhGIRe4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jul 2021 13:34:56 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6829CC0613E8
        for <devicetree@vger.kernel.org>; Fri,  9 Jul 2021 10:32:11 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id p1so24648967lfr.12
        for <devicetree@vger.kernel.org>; Fri, 09 Jul 2021 10:32:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=OW6r9Ztak14Z94NLN85hpavnPWferFff+9qy6SUKk4g=;
        b=FrxLNPysWTbK6msNrS77oo1V4NLdNkri1hMORbbVvbWnWUfTditLVD1NZEyi+EIkhe
         Ytl9GL9s7p+GxeHZSa0K1KVSHbHt7Db+9PZoaOBAiMDhKNzGPF7vIz4gxe0bV3Ijw0fu
         KO1XVn5897fkEBOsj2zwZJvWih3RQDHTsVQgcr9nkNrpxaiWUBPlLL/DvWhDF9Lj/zad
         p1+qpPBsUSq6yG1B9o1K7uNG+flJ7Bl5oK8vUla4zQnjwj/A3nKVXsVHFuy6X8xNFf2C
         PKQldZcDzARyowiHBxpuxrTx2Vsr3ZnfqA/S3Wlh2aEHPN/3VRBjC+KyVGaNIBfaJJDm
         iodA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=OW6r9Ztak14Z94NLN85hpavnPWferFff+9qy6SUKk4g=;
        b=fGp+4HZvqfjgUprhfwdQ92zYDJPP1auuC6zpW1LeulsZquORXB9IYMhUswNY6aNoZF
         8wMohfbni4F2rzBoblKFcfiXsT5b/07W+jnyznh/2iArMZPl3zshiujtgR3qsN7B1U7s
         trIrkGQadkDH0Yq1deGAxWfEiREWhrsVLQZ31Tf29NKn7OpVNPQ/yW8+gMezXVYkdJm+
         UMPCXVtfsjJit/Id8p/RypBCUiy+YgT35hTaZaW9AzqFgQ9kxZcP9NsP/IArioN03QMi
         LfdRpsuwJoIQMv/i5IAL+1c8MnqwcOPp0QL6Wve31RkvoaJnao/0SA7LP4p71ygdOfLr
         MdHQ==
X-Gm-Message-State: AOAM532w5qJdgBNG2gQPNRIhOllpoMtARkOxL/MyJb5doSTqJ0vOtxu6
        5yXO5zrXfk7FNvNTxSWQu/8srQ==
X-Google-Smtp-Source: ABdhPJxUjTJVOzCEta2wUHL7FVm04+6VVBlwN0yiMRnKs+nVtnq3uEoz/4a6MO5w5EjHJcZlqo9D2g==
X-Received: by 2002:ac2:48a9:: with SMTP id u9mr9304635lfg.277.1625851929692;
        Fri, 09 Jul 2021 10:32:09 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id b14sm511129lfb.132.2021.07.09.10.32.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jul 2021 10:32:09 -0700 (PDT)
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
Subject: [PATCH v3 7/7] clk: qcom: videocc-sm8250: stop using mmcx regulator
Date:   Fri,  9 Jul 2021 20:32:02 +0300
Message-Id: <20210709173202.667820-8-dmitry.baryshkov@linaro.org>
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

