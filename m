Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 533894B7687
	for <lists+devicetree@lfdr.de>; Tue, 15 Feb 2022 21:49:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242257AbiBORKY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Feb 2022 12:10:24 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:36548 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242242AbiBORKX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Feb 2022 12:10:23 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C5DD11B307
        for <devicetree@vger.kernel.org>; Tue, 15 Feb 2022 09:10:09 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id q198-20020a1ca7cf000000b0037bb52545c6so1964892wme.1
        for <devicetree@vger.kernel.org>; Tue, 15 Feb 2022 09:10:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=FNxZnQWwG3AA+5zjZr6bjMk+OGB5iWm30KygedH2/Bk=;
        b=ep/4hCQb5RaC5Tzqem8/CIvIT7d+NpFQwghUrK3EO/iigYCWM8xeLNJ4LGlq3Wl9h8
         SbG3kDysAoP6KObJWItaLyRd4WSLWbvff9+JpqG051klULWFJ2CgkYD4j+Cb6ON1/wHe
         eJRb93La+4bI2fheJcDis8uFMKHGndYm/vMq6SyFN/cYzcrKD6Weid4IZ3YZvpJMZW7C
         mD1+b0EfvRO4y8a0e+roRgLOGllQP1CubHCs6tUG+01pnB/a9LWr98k0Sjfhz3BW+Zg1
         S3xhwXTMqeLNbLv2kf9JZeL6eIvBttaL9Tj3kkCYwTjYIWAn1Vv7fWOk/xwBGTNK+zkJ
         WXbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FNxZnQWwG3AA+5zjZr6bjMk+OGB5iWm30KygedH2/Bk=;
        b=q8xI0KCHfjnkUo3gDPwWmvNjItL6CnBXZMVMk9M6JBXcUzkZuUxPMVaEcX1gl5rHEh
         gAZ+EYIRP6eHErU80PM3/T0lTBNSw8ZhquB0zEioW0EA8kb2SiuHE7/LzfYe+boQXTyD
         lqhL2nND5ODBFkFox5AY2ykaMU8i83kP8oMl8uVSqHnW9nGY8jfQbUUFMTUP/yydUp+n
         lJi1Euo/u1VnkpFF5SHw2fb72eLr50xMRDob2pvIUJ3wgzhlO/+1pCIaDyanCFNP93gk
         kxl2cDtIJpCbpOhsjX5dayh5nmjN/ZN70E28jq4/I6ujb9nbBAVkBZL7eJ+VkrttOjqm
         iusw==
X-Gm-Message-State: AOAM530VRpnWWE/t88gkUaGcwRPedrYHKc8zGiokLexAeqvxs2C3BsLD
        bnbM7No1suRGClUUjf6ImC60YA==
X-Google-Smtp-Source: ABdhPJzh02beNPLnx2/bbu9JSgtusNdhn9Ac1WPZCJdRDKqF3hzTT46GIqYZwarHI7jcA0+lk2bEQQ==
X-Received: by 2002:a1c:f30b:0:b0:37b:b5de:c804 with SMTP id q11-20020a1cf30b000000b0037bb5dec804mr3920422wmq.166.1644945008187;
        Tue, 15 Feb 2022 09:10:08 -0800 (PST)
Received: from localhost.localdomain (cpc78119-cwma10-2-0-cust590.7-3.cable.virginm.net. [81.96.50.79])
        by smtp.gmail.com with ESMTPSA id g5sm15558474wmk.38.2022.02.15.09.10.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Feb 2022 09:10:07 -0800 (PST)
From:   Caleb Connolly <caleb.connolly@linaro.org>
To:     caleb.connolly@linaro.org, Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Lee Jones <lee.jones@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
Cc:     sumit.semwal@linaro.org, amit.pundir@linaro.org,
        john.stultz@linaro.org
Subject: [PATCH v6 3/9] mfd: qcom-spmi-pmic: read fab id on supported PMICs
Date:   Tue, 15 Feb 2022 17:09:45 +0000
Message-Id: <20220215170951.1233375-4-caleb.connolly@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220215170951.1233375-1-caleb.connolly@linaro.org>
References: <20220215170951.1233375-1-caleb.connolly@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The PMI8998 and PM660 expose the fab_id, this is needed by drivers like
the RRADC to calibrate ADC values.

Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
---
 drivers/mfd/qcom-spmi-pmic.c      | 7 +++++++
 include/soc/qcom/qcom-spmi-pmic.h | 1 +
 2 files changed, 8 insertions(+)

diff --git a/drivers/mfd/qcom-spmi-pmic.c b/drivers/mfd/qcom-spmi-pmic.c
index 5e656485cd55..28600e5899bc 100644
--- a/drivers/mfd/qcom-spmi-pmic.c
+++ b/drivers/mfd/qcom-spmi-pmic.c
@@ -21,6 +21,7 @@
 #define PMIC_REV4		0x103
 #define PMIC_TYPE		0x104
 #define PMIC_SUBTYPE		0x105
+#define PMIC_FAB_ID		0x1f2
 #define PMIC_TYPE_VALUE		0x51
 
 static const struct of_device_id pmic_spmi_id_table[] = {
@@ -169,6 +170,12 @@ static int pmic_spmi_load_revid(struct regmap *map, struct device *dev,
 	if (ret < 0)
 		return ret;
 
+	if (pmic->subtype == PMI8998_SUBTYPE || pmic->subtype == PM660_SUBTYPE) {
+		ret = regmap_read(map, PMIC_FAB_ID, &pmic->fab_id);
+		if (ret < 0)
+			return ret;
+	}
+
 	/*
 	 * In early versions of PM8941 and PM8226, the major revision number
 	 * started incrementing from 0 (eg 0 = v1.0, 1 = v2.0).
diff --git a/include/soc/qcom/qcom-spmi-pmic.h b/include/soc/qcom/qcom-spmi-pmic.h
index a8a77be22cfc..c821f6c6c8a8 100644
--- a/include/soc/qcom/qcom-spmi-pmic.h
+++ b/include/soc/qcom/qcom-spmi-pmic.h
@@ -50,6 +50,7 @@ struct qcom_spmi_pmic {
 	unsigned int major;
 	unsigned int minor;
 	unsigned int rev2;
+	unsigned int fab_id;
 	const char *name;
 };
 
-- 
2.35.1

