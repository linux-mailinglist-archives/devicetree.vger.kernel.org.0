Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4CC07517609
	for <lists+devicetree@lfdr.de>; Mon,  2 May 2022 19:41:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244303AbiEBRog (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 May 2022 13:44:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46852 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244310AbiEBRoc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 May 2022 13:44:32 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 267C32185
        for <devicetree@vger.kernel.org>; Mon,  2 May 2022 10:41:02 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id m20so29046068ejj.10
        for <devicetree@vger.kernel.org>; Mon, 02 May 2022 10:41:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=UkkhaokilCoJ0QaueTDdKBuZpYOWRWhVaZ7JrjJkA3o=;
        b=BktsFjJdGmJoDTHt7Qxdi86FPqzMC+UYkC6iUWwzusIikkuUtffdC7m7laQTaRbRzr
         IGsoGkeQcChOvf+/0+ihUrMEIvjd/NXR/dhG1EjS9dfGaJN2X9WPvZnvAPFwiPUMe/3w
         A+avpsxkYoYetcijXjQJ7E/k1pGUhj70wm7aj3lDMlbwoETOR1HR+tOKrPSV226cog7g
         DNzqKU0Q0987Y+ckPspG91c4sTyn261lMXxTvG5JO/YlU5Jyca2FOAp8Hbl/g7BRZHn6
         jmgGjqdWBxNRZarb5XXzbdoBi4tccgk1ISBtgg417h4DaD4v3DKfgPRrsVrbko3bGDxS
         sJQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=UkkhaokilCoJ0QaueTDdKBuZpYOWRWhVaZ7JrjJkA3o=;
        b=wqFMpbUldl3ydz8+NUwLmiuYA6TmheA4hpikTVkq99T3oLRo9BsW8fInP1VpOLFrMV
         Y17VQ+N/GpFS7mqyJsWoQ/vftvtZIyoCnAKWJ8nEZ6OM84y0hI4kyJHywcM9KeBfOMtm
         Uh6G/l/S9qFwB0YsTYCIjJitAQn2Bxjspx4hEcJQUVk0V21d17H0pCEylnjtFdzNGUdQ
         /Cx/JBDy50gYz+VaXK4Pfse7RK0uI0km0ss3rzrP2Zv4hOHOayw2jALV7YWu2WPa04O5
         CPHAcBiMBS9dAnxFINPABnpT42BXLgd3yOLh70lT2rrEYUZanqbxgwMvN+tzbeiGENTG
         hXhg==
X-Gm-Message-State: AOAM533DA7Scc3AmatxW8WoO+1n0DjRQv6lVPPLoNATZbm6K6C28hP89
        vZ1T+FbndQpzHfi69z6R6VsTnw==
X-Google-Smtp-Source: ABdhPJxs3JqFEQJiL9TsyibqF6kFQ7Za9DgvTtPT5avNOut+DvmuByM4d/56w4gRGV+UiudPoiMWFQ==
X-Received: by 2002:a17:906:6a0d:b0:6f3:b341:3b94 with SMTP id qw13-20020a1709066a0d00b006f3b3413b94mr12140446ejc.31.1651513260401;
        Mon, 02 May 2022 10:41:00 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id n9-20020aa7c689000000b0042617ba639csm6908547edq.38.2022.05.02.10.40.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 May 2022 10:40:59 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Georgi Djakov <djakov@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Thara Gopinath <thara.gopinath@linaro.org>
Subject: [PATCH 2/4] opp: Add apis to retrieve opps with interconnect bandwidth
Date:   Mon,  2 May 2022 19:40:44 +0200
Message-Id: <20220502174046.139234-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220502174046.139234-1-krzysztof.kozlowski@linaro.org>
References: <20220502174046.139234-1-krzysztof.kozlowski@linaro.org>
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

Add dev_pm_opp_find_bw_ceil and dev_pm_opp_find_bw_floor to retrieve opps
based on interconnect associated with the opp and bandwidth. The index
variable is the index of the interconnect as specified in the opp table
in Devicetree.

Co-developed-by: Thara Gopinath <thara.gopinath@linaro.org>
Signed-off-by: Thara Gopinath <thara.gopinath@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/opp/core.c     | 120 +++++++++++++++++++++++++++++++++++++++++
 include/linux/pm_opp.h |  19 +++++++
 2 files changed, 139 insertions(+)

diff --git a/drivers/opp/core.c b/drivers/opp/core.c
index 2945f3c1ce09..8125342cee2f 100644
--- a/drivers/opp/core.c
+++ b/drivers/opp/core.c
@@ -729,6 +729,126 @@ struct dev_pm_opp *dev_pm_opp_find_freq_ceil_by_volt(struct device *dev,
 }
 EXPORT_SYMBOL_GPL(dev_pm_opp_find_freq_ceil_by_volt);
 
+/**
+ * dev_pm_opp_find_bw_ceil() - Search for a rounded ceil bandwidth
+ * @dev:	device for which we do this operation
+ * @freq:	start bandwidth
+ * @index:	which bandwidth to compare, in case of OPPs with several values
+ *
+ * Search for the matching floor *available* OPP from a starting bandwidth
+ * for a device.
+ *
+ * Return: matching *opp and refreshes *bw accordingly, else returns
+ * ERR_PTR in case of error and should be handled using IS_ERR. Error return
+ * values can be:
+ * EINVAL:	for bad pointer
+ * ERANGE:	no match found for search
+ * ENODEV:	if device not found in list of registered devices
+ *
+ * The callers are required to call dev_pm_opp_put() for the returned OPP after
+ * use.
+ */
+struct dev_pm_opp *dev_pm_opp_find_bw_ceil(struct device *dev,
+					   unsigned int *bw, int index)
+{
+	struct opp_table *opp_table;
+	struct dev_pm_opp *temp_opp, *opp = ERR_PTR(-ERANGE);
+
+	if (!dev || !bw) {
+		dev_err(dev, "%s: Invalid argument bw=%p\n", __func__, bw);
+		return ERR_PTR(-EINVAL);
+	}
+
+	opp_table = _find_opp_table(dev);
+	if (IS_ERR(opp_table))
+		return ERR_CAST(opp_table);
+
+	if (index >= opp_table->path_count)
+		return ERR_PTR(-EINVAL);
+
+	mutex_lock(&opp_table->lock);
+
+	list_for_each_entry(temp_opp, &opp_table->opp_list, node) {
+		if (temp_opp->available && temp_opp->bandwidth) {
+			if (temp_opp->bandwidth[index].peak >= *bw) {
+				opp = temp_opp;
+				*bw = opp->bandwidth[index].peak;
+
+				/* Increment the reference count of OPP */
+				dev_pm_opp_get(opp);
+				break;
+			}
+		}
+	}
+
+	mutex_unlock(&opp_table->lock);
+	dev_pm_opp_put_opp_table(opp_table);
+
+	return opp;
+}
+EXPORT_SYMBOL_GPL(dev_pm_opp_find_bw_ceil);
+
+/**
+ * dev_pm_opp_find_bw_floor() - Search for a rounded floor bandwidth
+ * @dev:	device for which we do this operation
+ * @freq:	start bandwidth
+ * @index:	which bandwidth to compare, in case of OPPs with several values
+ *
+ * Search for the matching floor *available* OPP from a starting bandwidth
+ * for a device.
+ *
+ * Return: matching *opp and refreshes *bw accordingly, else returns
+ * ERR_PTR in case of error and should be handled using IS_ERR. Error return
+ * values can be:
+ * EINVAL:	for bad pointer
+ * ERANGE:	no match found for search
+ * ENODEV:	if device not found in list of registered devices
+ *
+ * The callers are required to call dev_pm_opp_put() for the returned OPP after
+ * use.
+ */
+struct dev_pm_opp *dev_pm_opp_find_bw_floor(struct device *dev,
+					    unsigned int *bw, int index)
+{
+	struct opp_table *opp_table;
+	struct dev_pm_opp *temp_opp, *opp = ERR_PTR(-ERANGE);
+
+	if (!dev || !bw) {
+		dev_err(dev, "%s: Invalid argument bw=%p\n", __func__, bw);
+		return ERR_PTR(-EINVAL);
+	}
+
+	opp_table = _find_opp_table(dev);
+	if (IS_ERR(opp_table))
+		return ERR_CAST(opp_table);
+
+	if (index >= opp_table->path_count)
+		return ERR_PTR(-EINVAL);
+
+	mutex_lock(&opp_table->lock);
+
+	list_for_each_entry(temp_opp, &opp_table->opp_list, node) {
+		if (temp_opp->available && temp_opp->bandwidth) {
+			/* go to the next node, before choosing prev */
+			if (temp_opp->bandwidth[index].peak > *bw)
+				break;
+			opp = temp_opp;
+		}
+	}
+
+	/* Increment the reference count of OPP */
+	if (!IS_ERR(opp))
+		dev_pm_opp_get(opp);
+	mutex_unlock(&opp_table->lock);
+	dev_pm_opp_put_opp_table(opp_table);
+
+	if (!IS_ERR(opp))
+		*bw = opp->bandwidth[index].peak;
+
+	return opp;
+}
+EXPORT_SYMBOL_GPL(dev_pm_opp_find_bw_floor);
+
 static int _set_opp_voltage(struct device *dev, struct regulator *reg,
 			    struct dev_pm_opp_supply *supply)
 {
diff --git a/include/linux/pm_opp.h b/include/linux/pm_opp.h
index 0d85a63a1f78..dcea178868c9 100644
--- a/include/linux/pm_opp.h
+++ b/include/linux/pm_opp.h
@@ -129,6 +129,13 @@ struct dev_pm_opp *dev_pm_opp_find_freq_ceil_by_volt(struct device *dev,
 
 struct dev_pm_opp *dev_pm_opp_find_freq_ceil(struct device *dev,
 					     unsigned long *freq);
+
+struct dev_pm_opp *dev_pm_opp_find_bw_ceil(struct device *dev,
+					   unsigned int *bw, int index);
+
+struct dev_pm_opp *dev_pm_opp_find_bw_floor(struct device *dev,
+					   unsigned int *bw, int index);
+
 void dev_pm_opp_put(struct dev_pm_opp *opp);
 
 int dev_pm_opp_add(struct device *dev, unsigned long freq,
@@ -279,6 +286,18 @@ static inline struct dev_pm_opp *dev_pm_opp_find_freq_ceil(struct device *dev,
 	return ERR_PTR(-EOPNOTSUPP);
 }
 
+static inline struct dev_pm_opp *dev_pm_opp_find_bw_ceil(struct device *dev,
+					unsigned int *bw, int index)
+{
+	return ERR_PTR(-EOPNOTSUPP);
+}
+
+static inline struct dev_pm_opp *dev_pm_opp_find_bw_floor(struct device *dev,
+					unsigned int *bw, int index)
+{
+	return ERR_PTR(-EOPNOTSUPP);
+}
+
 static inline void dev_pm_opp_put(struct dev_pm_opp *opp) {}
 
 static inline int dev_pm_opp_add(struct device *dev, unsigned long freq,
-- 
2.32.0

