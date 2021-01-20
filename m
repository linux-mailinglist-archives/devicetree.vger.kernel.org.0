Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8B6FC2FDD4F
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 00:45:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732212AbhATXoc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jan 2021 18:44:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54804 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2404073AbhATXYM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jan 2021 18:24:12 -0500
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com [IPv6:2607:f8b0:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E3D9C061382
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 14:48:55 -0800 (PST)
Received: by mail-ot1-x335.google.com with SMTP id f6so15790898ots.9
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 14:48:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=eRgV/qmccprYhlBn2rYLPOOKZVOkTB6gxQKELN53L1w=;
        b=nHwxjcSldYJK3Ehmit4aSwsz8W6KcaDHMisOhQQPrJLJdZmY7ZZ0w4Fj/2eem8SYIH
         YyLiVPm536if0fEQeXom3sO7dPbfeDm7VBL+R3vSAXbS+uDfZoOslxncWbWk8rJi3vxJ
         In2/q6sSguz/afZLQmIdRY/VPq0WDsyRmAFG/iISvb2aYoPpIGu0sxT6ZGORBvW3Ojae
         eC0DT8b61FDczKA/NIhWX7LojXnnDBkrpp0oxML5XkD92XmHyeX2C4s0XiEXO0xEnkHY
         2uUE5edQao5BMGn/VRYWd6DBCBYMUfrtQ0aFtS6A2JhWzubq3wTFTpygOOimOCq8l9Y9
         im9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=eRgV/qmccprYhlBn2rYLPOOKZVOkTB6gxQKELN53L1w=;
        b=iwcIoX/AXG7s6jPI96DY7CQQh1T6nOFD5K29Ev+Mmsj8VIjg7o2Vmg2UsUYXossvgL
         rRjKSwTrDTdrUx37hcH/DqJUB7p4Lfo6wTQnbwad93vb7tBpvpX0GkEdnRiM6KwqGLnt
         s13IhWh1bgDVwE0GWnvXs8FH5pcCrLv+v5qz2AWwUGQdz2t/GImOPzMyF/C0OKUZH9TW
         AvSJeTYqkdBOfPfne/FL60L7+1udtScoo/rV94R2/Xzu91dv5tBHDAGglD8YguB+64hS
         QlFSqo89wETkhWUcm1Yft54tXohY/0mFSWr7ZV7IguZAdvLi3bt2ZJJ50mPMxLJ2L5xO
         tVIA==
X-Gm-Message-State: AOAM532+WF8Xry4QZS1mj9clQZdsDi6yHHwatECiKRAXAAg/y97gfX+8
        2h99rPswQjGcZ0LMCjdcQzX/6A==
X-Google-Smtp-Source: ABdhPJyLPq8B72cnXU5qn0Jwv1FrhHRCPzwOEtbhAsPabWci6RdBaaStIUTE/MgX2/SE15h7KvQh2A==
X-Received: by 2002:a05:6830:1d0:: with SMTP id r16mr8438926ota.54.1611182934671;
        Wed, 20 Jan 2021 14:48:54 -0800 (PST)
Received: from localhost.localdomain (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id r14sm706740ote.28.2021.01.20.14.48.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Jan 2021 14:48:54 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 2/2] regulator: qcom-rpmh: Add pmc8180 and pmc8180c
Date:   Wed, 20 Jan 2021 14:49:01 -0800
Message-Id: <20210120224901.1611232-2-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210120224901.1611232-1-bjorn.andersson@linaro.org>
References: <20210120224901.1611232-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The regulators from PMC8180 and PMC8180C exposed by the RPMH in the
Qualcomm SC8180X seems to be the same as PM8150 and PM8150L. Add
compatibles for the two new PMICs and reuse the definition of the
existing PMICs.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 drivers/regulator/qcom-rpmh-regulator.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/regulator/qcom-rpmh-regulator.c b/drivers/regulator/qcom-rpmh-regulator.c
index 98320e1d8bf6..dbad80f904bd 100644
--- a/drivers/regulator/qcom-rpmh-regulator.c
+++ b/drivers/regulator/qcom-rpmh-regulator.c
@@ -1115,6 +1115,14 @@ static const struct of_device_id __maybe_unused rpmh_regulator_match_table[] = {
 		.compatible = "qcom,pm6150l-rpmh-regulators",
 		.data = pm6150l_vreg_data,
 	},
+	{
+		.compatible = "qcom,pmc8180-rpmh-regulators",
+		.data = pm8150_vreg_data,
+	},
+	{
+		.compatible = "qcom,pmc8180c-rpmh-regulators",
+		.data = pm8150l_vreg_data,
+	},
 	{
 		.compatible = "qcom,pmx55-rpmh-regulators",
 		.data = pmx55_vreg_data,
-- 
2.29.2

