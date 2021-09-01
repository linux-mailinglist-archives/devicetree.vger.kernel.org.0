Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C0D2D3FD8F1
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 13:43:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243858AbhIALov (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 07:44:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47160 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243714AbhIALou (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 07:44:50 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B48F4C061764
        for <devicetree@vger.kernel.org>; Wed,  1 Sep 2021 04:43:53 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id l10so5763117lfg.4
        for <devicetree@vger.kernel.org>; Wed, 01 Sep 2021 04:43:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=dv7SSHrzc+JrKmtfmOHwtcJ0mmdkld+UU+xFR+0sd1s=;
        b=SPVgpEGg8weWIgr6ghEmwFMRW755IzX1VvDxe1QzAqsMJcTqN8WGm/DN/EeLe1D9hI
         JCpiJ7DraFf/1cJHWba19usvWWJIqYPfpgbgwSHEfMAzfhghjOyvQn8wdSAbWQLUnAqK
         aPjP7vHuNX1YX1AIphLQP5Nbyn7Pqsp6Z0HHQiT60jRSfL+HvHWLIyj/txLcRVCElCyD
         utbcU2MZMZBgIt5UvxzoaXWXCjJQKN8NqtT60dPQgRSpzExtM0uWbBmHaB6pECdQkHFL
         0Zr0Yb/ZkzfbWIKdI3JUKW7ID0Lqisb3mGnhfZSBfCVigrkMZF2dqD5kxcNQ9FsQa3FA
         YThg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=dv7SSHrzc+JrKmtfmOHwtcJ0mmdkld+UU+xFR+0sd1s=;
        b=UY5gg1TEzntT/6q0SPFdFcL4/QNmmBJ4Jw9GfCPgzJ6B91k9Xt12j3xRsSTC4pq1jg
         +YD7T5VrzMvlrlI6DmEOTt2xDXTscc4xyPCzi4Xv7dX55LnETtB7bT/geeUNQXtQKAX+
         z11IQ6G/uE6VvT8+yT9AoGz0sTo1sfc3RA2nBxjFEGH7z3kdxSDnWQchVZM/a8ngUWTo
         qh/6f5PSrjAxsST34EFAZDP7pzcrVXlhMrv4ZZDNdi4gc05vIUZNinqSMq514evXwBOI
         Qi0Gt3HDqvkCr/bKWOF63mBBQjuq0YEqo8IRX784MGAgjhh60tPxg7X8+ZdwGsVoT2vO
         ObFQ==
X-Gm-Message-State: AOAM530Ovugyz9NUeRas8pBrVFqxAASdklLpUR/L4rQNE+nYvzoBzZpI
        73zgm2T6M1AOdLLPphKkq0EGsA==
X-Google-Smtp-Source: ABdhPJw9BEAZJkcsfe4dO67KihLaBhSi75YCfERe0uWPom1D/IOsHrPIguzc6NavdrcnD6hNXnfVNw==
X-Received: by 2002:a05:6512:686:: with SMTP id t6mr21603337lfe.49.1630496631983;
        Wed, 01 Sep 2021 04:43:51 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id k12sm2443762ljm.65.2021.09.01.04.43.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Sep 2021 04:43:51 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>
Cc:     Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2] regulator: qcom-rpmh-regulator: fix pm8009-1 ldo7 resource name
Date:   Wed,  1 Sep 2021 14:43:50 +0300
Message-Id: <20210901114350.1106073-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fix a typo in the pm8009 LDO7 declaration, it uses resource name ldo%s6
instead of ldo%s7.

Fixes: 951384cabc5d ("regulator: qcom-rpmh-regulator: add pm8009-1 chip revision")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---

Changes since v1:
 - Dropped extra drm part which somehow got through to the patch.

---
 drivers/regulator/qcom-rpmh-regulator.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/regulator/qcom-rpmh-regulator.c b/drivers/regulator/qcom-rpmh-regulator.c
index 6cca910a76de..7f458d510483 100644
--- a/drivers/regulator/qcom-rpmh-regulator.c
+++ b/drivers/regulator/qcom-rpmh-regulator.c
@@ -991,7 +991,7 @@ static const struct rpmh_vreg_init_data pm8009_1_vreg_data[] = {
 	RPMH_VREG("ldo4",   "ldo%s4",  &pmic5_nldo,      "vdd-l4"),
 	RPMH_VREG("ldo5",   "ldo%s5",  &pmic5_pldo,      "vdd-l5-l6"),
 	RPMH_VREG("ldo6",   "ldo%s6",  &pmic5_pldo,      "vdd-l5-l6"),
-	RPMH_VREG("ldo7",   "ldo%s6",  &pmic5_pldo_lv,   "vdd-l7"),
+	RPMH_VREG("ldo7",   "ldo%s7",  &pmic5_pldo_lv,   "vdd-l7"),
 	{}
 };
 
-- 
2.33.0

