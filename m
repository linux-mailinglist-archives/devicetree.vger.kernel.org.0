Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BD97D2652FD
	for <lists+devicetree@lfdr.de>; Thu, 10 Sep 2020 23:27:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728069AbgIJV1B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Sep 2020 17:27:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52628 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731012AbgIJOKU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Sep 2020 10:10:20 -0400
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com [IPv6:2a00:1450:4864:20::142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33F9DC0617A5
        for <devicetree@vger.kernel.org>; Thu, 10 Sep 2020 07:00:14 -0700 (PDT)
Received: by mail-lf1-x142.google.com with SMTP id w11so3656280lfn.2
        for <devicetree@vger.kernel.org>; Thu, 10 Sep 2020 07:00:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=fbds+t1ZnFoCEkxj1/mr3T/pqQY9+u5UlZ3GW4t2en8=;
        b=U2WzOfWo+o9VwfTR9lkjfBPA3rwJdLwKAz85NWFW19wdSUdRq7KmYs6wtMjPhrWI6X
         1fMtl/io8zCh6e91yPDswaupfIXFTTHvxz7H3mpoiNjQpVOGRmaQIfclvCMEBUGwr2dW
         XOUcWUvriJmDaoxJGhMAarqRuwED0QjdXYnEdAt0z4pGzdkylgSKl4JWEj6CDQ036AvY
         yt96CWgeWKNMLSFF8eyUVZAXBjFYZ3Ajy9RP1elZcW34Ng1ztEFv8clkDz/Je34kEMAV
         7xt2Ggcfi2OQwuiZOFQ8+YD+SG4Lt/KXE2MHtasNvP2GTyb9Zx/1SZtjsgX6cS7zRmT9
         yknQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fbds+t1ZnFoCEkxj1/mr3T/pqQY9+u5UlZ3GW4t2en8=;
        b=bwVlXrzCRnrIRBABGVOyOPwza/9aOj4qPagn9A19+jyS4I5GcsB52LhZKYC3tdx0us
         cKY6waOgCXg3wQdkoXV4lS4Rr4QnHWAlGHct3531wlPM69VaYsF5RsHHjQZYbS9QborE
         LODpYrRdNA4M9AcjLEIBpr4V76kTQC8D7U0sfTdGBp44loOmYyBtUeHSvEppP/LaM+qw
         /QsCwuBuUYjbI0DTxgsnuuuyqgdch2uSOVdv0GUQhJvjxYv/Un1LwHpyIPilIxof9GZP
         ckhNoZmuIgtM35fX6owoDI1L1AOvYpMXn96x0Xu4Sw+oAqsC73T1UucRyqtMPUNSkxL3
         BSVw==
X-Gm-Message-State: AOAM5323KfyTH92GlInV88z6m/JYX7B+w8R2siOtDoP+yRiYuSnM8s2O
        9E9JWasu8+H/G/cDfIuKInlmeQ==
X-Google-Smtp-Source: ABdhPJyV1tWf7B3yzuaRTqD2awGWyPJLIOGIT+JvbFoAqm6Mhx44+04HtPsEqk+5IjbGxLD+phHRuQ==
X-Received: by 2002:a19:7604:: with SMTP id c4mr4403298lff.132.1599746411945;
        Thu, 10 Sep 2020 07:00:11 -0700 (PDT)
Received: from eriador.lan ([188.162.64.156])
        by smtp.gmail.com with ESMTPSA id t82sm1367646lff.43.2020.09.10.07.00.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 07:00:11 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Amit Kucheria <amitk@kernel.org>,
        Jonathan Cameron <jic23@kernel.org>,
        Hartmut Knaack <knaack.h@gmx.de>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Peter Meerwald-Stadler <pmeerw@pmeerw.net>
Cc:     linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-iio@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v4 01/10] iio: adc: qcom-spmi-adc5: fix driver name
Date:   Thu, 10 Sep 2020 16:59:51 +0300
Message-Id: <20200910140000.324091-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200910140000.324091-1-dmitry.baryshkov@linaro.org>
References: <20200910140000.324091-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Remove superfluous '.c' from qcom-spmi-adc5 device driver name.

Fixes: e13d757279 ("iio: adc: Add QCOM SPMI PMIC5 ADC driver")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/iio/adc/qcom-spmi-adc5.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iio/adc/qcom-spmi-adc5.c b/drivers/iio/adc/qcom-spmi-adc5.c
index b4b73c9920b4..c10aa28be70a 100644
--- a/drivers/iio/adc/qcom-spmi-adc5.c
+++ b/drivers/iio/adc/qcom-spmi-adc5.c
@@ -982,7 +982,7 @@ static int adc5_probe(struct platform_device *pdev)
 
 static struct platform_driver adc5_driver = {
 	.driver = {
-		.name = "qcom-spmi-adc5.c",
+		.name = "qcom-spmi-adc5",
 		.of_match_table = adc5_match_table,
 	},
 	.probe = adc5_probe,
-- 
2.28.0

