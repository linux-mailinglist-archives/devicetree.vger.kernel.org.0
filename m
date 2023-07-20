Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 13B0475A5AE
	for <lists+devicetree@lfdr.de>; Thu, 20 Jul 2023 07:43:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229868AbjGTFne (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Jul 2023 01:43:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45532 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229872AbjGTFnM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Jul 2023 01:43:12 -0400
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9EFB72D4C
        for <devicetree@vger.kernel.org>; Wed, 19 Jul 2023 22:42:41 -0700 (PDT)
Received: by mail-pf1-x430.google.com with SMTP id d2e1a72fcca58-668709767b1so228852b3a.2
        for <devicetree@vger.kernel.org>; Wed, 19 Jul 2023 22:42:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689831744; x=1690436544;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9Da5r3Jfw26dVyORzvrEm8qPAG9eUA105lcs0ZwlGe4=;
        b=OLXiRlHJkgIxd6h4nL1TG2KyNnXeFfkoIfTpn0CRa8X37aS02UlHpPRkJhdkr9IN35
         erU2FU6jqK4k/wAvHhZqqODxcw3WsxABVWS6ocm7vjBXFp7lg2gFfB89GUX38dBp4Uba
         kVXedomdrYOUMenpqUQye7EQWfZITNsN3tc059hob/Bp15DOEwjn0c+cs7cupU6Oi48E
         gmb9C9xl7Rjnk2OjV3z4gzb010tLzipXyhaEkJdSKEux6cacYUB+96l4WrIFCe9wEJ4q
         dnxis8d2zAamlt54BNqsSDoimj6iZoj0kngQq+CFCQpiWwjMebe2w+oa0RZ3kpLbHG54
         sm5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689831744; x=1690436544;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9Da5r3Jfw26dVyORzvrEm8qPAG9eUA105lcs0ZwlGe4=;
        b=lVgO+py4be5NxXM2yjDvBO94K1ELNYPjEWAD9O4WUiiO6RfP7/o/6QGK+pHXJXMJYo
         nrQgCQ1APT+2ivjbfbfG7i5XLA0XjBvtKEdcv0iZFpl98y9ky2Wi43cxRrXObXRStkLh
         zkFBQDTMLc2mv+Os/vN9xIF4oX9Azr4gA15//gTxgVRN5o2BMhL2luuA4RaG/zF1xEKI
         C4IUbsp2zDkzxQpKnVABUv9k/HELYcQOkolYOLAHJWKcyRY7Ec2jcDIW2ukM84bo71p2
         t7CyZATqk1LP3S4TMHnpySBoMf4QNKTvmnfNvmaRQ7Cd7eMWQ21FaF4665Asj+rsTQQ/
         34Qw==
X-Gm-Message-State: ABy/qLYNfgc24H52iuFzCtU4jYLta+QVl/l2NaXZKnqDTnehZe5MG0/Y
        plXHrxr6Ekb5gQtHLsaIR9Pg
X-Google-Smtp-Source: APBJJlEZySYTpTpy06AWSI5G52m0csQbrxdZQEOu0Vw2bY7rfM/v52YdYHj6by+q3WXwlYgLzdMn4g==
X-Received: by 2002:a05:6a20:a10f:b0:126:a771:b792 with SMTP id q15-20020a056a20a10f00b00126a771b792mr7718694pzk.14.1689831743710;
        Wed, 19 Jul 2023 22:42:23 -0700 (PDT)
Received: from localhost.localdomain ([117.206.119.70])
        by smtp.gmail.com with ESMTPSA id r2-20020a170902be0200b001b85bb5fd77sm263367pls.119.2023.07.19.22.42.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jul 2023 22:42:23 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     vireshk@kernel.org, nm@ti.com, sboyd@kernel.org,
        myungjoo.ham@samsung.com, kyungmin.park@samsung.com,
        cw00.choi@samsung.com, andersson@kernel.org,
        konrad.dybcio@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        jejb@linux.ibm.com, martin.petersen@oracle.com
Cc:     alim.akhtar@samsung.com, avri.altman@wdc.com, bvanassche@acm.org,
        linux-scsi@vger.kernel.org, linux-pm@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        quic_asutoshd@quicinc.com, quic_cang@quicinc.com,
        quic_nitirawa@quicinc.com, quic_narepall@quicinc.com,
        quic_bhaskarv@quicinc.com, quic_richardp@quicinc.com,
        quic_nguyenb@quicinc.com, quic_ziqichen@quicinc.com,
        bmasney@redhat.com, krzysztof.kozlowski@linaro.org,
        linux-kernel@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 07/15] OPP: Introduce dev_pm_opp_find_freq_{ceil/floor}_indexed() APIs
Date:   Thu, 20 Jul 2023 11:10:52 +0530
Message-Id: <20230720054100.9940-8-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230720054100.9940-1-manivannan.sadhasivam@linaro.org>
References: <20230720054100.9940-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

In the case of devices with multiple clocks, drivers need to specify the
clock index for the OPP framework to find the OPP corresponding to the
floor/ceil of the supplied frequency. So let's introduce the two new APIs
accepting the clock index as an argument.

These APIs use the exising _find_key_ceil() helper by supplying the clock
index to it.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/opp/core.c     | 54 ++++++++++++++++++++++++++++++++++++++++++
 include/linux/pm_opp.h | 18 ++++++++++++++
 2 files changed, 72 insertions(+)

diff --git a/drivers/opp/core.c b/drivers/opp/core.c
index 3f46e499d615..a6d0b6b18e0e 100644
--- a/drivers/opp/core.c
+++ b/drivers/opp/core.c
@@ -658,6 +658,33 @@ struct dev_pm_opp *dev_pm_opp_find_freq_ceil(struct device *dev,
 }
 EXPORT_SYMBOL_GPL(dev_pm_opp_find_freq_ceil);
 
+/**
+ * dev_pm_opp_find_freq_ceil_indexed() - Search for a rounded ceil freq for the
+ *					 clock corresponding to the index
+ * @dev:	Device for which we do this operation
+ * @freq:	Start frequency
+ * @index:	Clock index
+ *
+ * Search for the matching ceil *available* OPP for the clock corresponding to
+ * the specified index from a starting freq for a device.
+ *
+ * Return: matching *opp and refreshes *freq accordingly, else returns
+ * ERR_PTR in case of error and should be handled using IS_ERR. Error return
+ * values can be:
+ * EINVAL:	for bad pointer
+ * ERANGE:	no match found for search
+ * ENODEV:	if device not found in list of registered devices
+ *
+ * The callers are required to call dev_pm_opp_put() for the returned OPP after
+ * use.
+ */
+struct dev_pm_opp *dev_pm_opp_find_freq_ceil_indexed(struct device *dev,
+					     unsigned long *freq, u32 index)
+{
+	return _find_key_ceil(dev, freq, index, true, _read_freq, NULL);
+}
+EXPORT_SYMBOL_GPL(dev_pm_opp_find_freq_ceil_indexed);
+
 /**
  * dev_pm_opp_find_freq_floor() - Search for a rounded floor freq
  * @dev:	device for which we do this operation
@@ -683,6 +710,33 @@ struct dev_pm_opp *dev_pm_opp_find_freq_floor(struct device *dev,
 }
 EXPORT_SYMBOL_GPL(dev_pm_opp_find_freq_floor);
 
+/**
+ * dev_pm_opp_find_freq_floor_indexed() - Search for a rounded floor freq for the
+ *					  clock corresponding to the index
+ * @dev:	Device for which we do this operation
+ * @freq:	Start frequency
+ * @index:	Clock index
+ *
+ * Search for the matching floor *available* OPP for the clock corresponding to
+ * the specified index from a starting freq for a device.
+ *
+ * Return: matching *opp and refreshes *freq accordingly, else returns
+ * ERR_PTR in case of error and should be handled using IS_ERR. Error return
+ * values can be:
+ * EINVAL:	for bad pointer
+ * ERANGE:	no match found for search
+ * ENODEV:	if device not found in list of registered devices
+ *
+ * The callers are required to call dev_pm_opp_put() for the returned OPP after
+ * use.
+ */
+struct dev_pm_opp *dev_pm_opp_find_freq_floor_indexed(struct device *dev,
+					      unsigned long *freq, u32 index)
+{
+	return _find_key_floor(dev, freq, index, true, _read_freq, NULL);
+}
+EXPORT_SYMBOL_GPL(dev_pm_opp_find_freq_floor_indexed);
+
 /**
  * dev_pm_opp_find_level_exact() - search for an exact level
  * @dev:		device for which we do this operation
diff --git a/include/linux/pm_opp.h b/include/linux/pm_opp.h
index dc1fb5890792..991f54da79b5 100644
--- a/include/linux/pm_opp.h
+++ b/include/linux/pm_opp.h
@@ -124,6 +124,9 @@ struct dev_pm_opp *dev_pm_opp_find_freq_exact(struct device *dev,
 struct dev_pm_opp *dev_pm_opp_find_freq_floor(struct device *dev,
 					      unsigned long *freq);
 
+struct dev_pm_opp *dev_pm_opp_find_freq_floor_indexed(struct device *dev,
+					      unsigned long *freq, u32 index);
+
 struct dev_pm_opp *dev_pm_opp_find_level_exact(struct device *dev,
 					       unsigned int level);
 struct dev_pm_opp *dev_pm_opp_find_level_ceil(struct device *dev,
@@ -132,6 +135,9 @@ struct dev_pm_opp *dev_pm_opp_find_level_ceil(struct device *dev,
 struct dev_pm_opp *dev_pm_opp_find_freq_ceil(struct device *dev,
 					     unsigned long *freq);
 
+struct dev_pm_opp *dev_pm_opp_find_freq_ceil_indexed(struct device *dev,
+					     unsigned long *freq, u32 index);
+
 struct dev_pm_opp *dev_pm_opp_find_bw_ceil(struct device *dev,
 					   unsigned int *bw, int index);
 
@@ -271,12 +277,24 @@ static inline struct dev_pm_opp *dev_pm_opp_find_freq_floor(struct device *dev,
 	return ERR_PTR(-EOPNOTSUPP);
 }
 
+static inline struct dev_pm_opp *dev_pm_opp_find_freq_floor_indexed(struct device *dev,
+					unsigned long *freq, u32 index)
+{
+	return ERR_PTR(-EOPNOTSUPP);
+}
+
 static inline struct dev_pm_opp *dev_pm_opp_find_freq_ceil(struct device *dev,
 					unsigned long *freq)
 {
 	return ERR_PTR(-EOPNOTSUPP);
 }
 
+static inline struct dev_pm_opp *dev_pm_opp_find_freq_ceil_indexed(struct device *dev,
+					unsigned long *freq, u32 index)
+{
+	return ERR_PTR(-EOPNOTSUPP);
+}
+
 static inline struct dev_pm_opp *dev_pm_opp_find_bw_ceil(struct device *dev,
 					unsigned int *bw, int index)
 {
-- 
2.25.1

