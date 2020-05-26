Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9A18F1CF504
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2020 14:55:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729900AbgELMyy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 May 2020 08:54:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1729879AbgELMx6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 12 May 2020 08:53:58 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 525F3C061A0C
        for <devicetree@vger.kernel.org>; Tue, 12 May 2020 05:53:57 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id e26so21613384wmk.5
        for <devicetree@vger.kernel.org>; Tue, 12 May 2020 05:53:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZY4SY3JUuu1zN9osT5fZKN1dv+hBkS+vG5Fe3GmSDvo=;
        b=v3E9oQtcC+LCZ7/WhfBUykWkmv1LrzfXOW8Go4K0HJKmIh7S/g17SWZU2LACfmJNNW
         Hu1ZUKGEZYUu6xetG2EWYE/5pulo3ZQX1O6CTM8bvmEp6jBIVGDmZI8BMithEOi5R1y4
         NxbvLyzHKHUH4FuJBPcKdnu9ephambV1Yldk5SIoY1DwMdaa21OvzStgUkSqMXHdQiJj
         Awz2TkkNDze2JFkERz+lobgNUBBEL45Bp6xE3KRehkDSCB9SVngeAsFo8qO+ylsdBfmf
         hA//0IoDiwAPXvqWicYtem4cVemH7HLpH6OcBmtWRoxIGnlq9KjEiCiIjYgnXk5aE8Yg
         uniA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZY4SY3JUuu1zN9osT5fZKN1dv+hBkS+vG5Fe3GmSDvo=;
        b=sJdkNHlUTeUcRXPKJSzUsSl76U7IkavMYxcvjesJNX8PsBPbNK6tivnI7pqLX1VVmf
         DE8/dgEV1pES6GBOx6WHk8hmB+vmSY9UsMHMqi9MpW8QGmX+/v80jbkCTQghjY/u5fgn
         x9f56EGjyhNmUUd3zLWKgiXUIwJojKSy0T/IlQIWPHkrunBNpUmlMU1pnRc/CgXHL6vH
         269MGrQCSdNp9w4E3Q6qhhiEuilEMB1llwg+fnCoc/S6OqHRHFYmaa7PD9CxPQNqv7eR
         5tYZVWHwgfwy1lhGm1jPp3XaB9pXifGx3cJfuTVKP8KKdVyv1zrW+rv+Nxi8EcfQebVJ
         Rwhg==
X-Gm-Message-State: AOAM532RwzKZ4FlZ19ZwABAQPBvLxVAWpVIdARbVIn4euOU4yGTvV5VF
        cTs3aTURuKSr8+ndl8Xwz5MeKQ==
X-Google-Smtp-Source: ABdhPJxlJOzCKpVNgUT7Y/42Aplo7q1WWLy95KCQrQSQtnfI+tTP3G96a/0OkjNXPPCK96SQP8fBBA==
X-Received: by 2002:a1c:444:: with SMTP id 65mr350110wme.21.1589288036006;
        Tue, 12 May 2020 05:53:56 -0700 (PDT)
Received: from localhost.localdomain (212-39-89-66.ip.btc-net.bg. [212.39.89.66])
        by smtp.googlemail.com with ESMTPSA id n13sm2433938wrs.2.2020.05.12.05.53.53
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 May 2020 05:53:55 -0700 (PDT)
From:   Georgi Djakov <georgi.djakov@linaro.org>
To:     vireshk@kernel.org, nm@ti.com, sboyd@kernel.org, rjw@rjwysocki.net,
        saravanak@google.com, sibis@codeaurora.org, mka@chromium.org
Cc:     robh+dt@kernel.org, rnayak@codeaurora.org,
        bjorn.andersson@linaro.org, vincent.guittot@linaro.org,
        jcrouse@codeaurora.org, evgreen@chromium.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, georgi.djakov@linaro.org
Subject: [PATCH v8 02/10] OPP: Add helpers for reading the binding properties
Date:   Tue, 12 May 2020 15:53:19 +0300
Message-Id: <20200512125327.1868-3-georgi.djakov@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200512125327.1868-1-georgi.djakov@linaro.org>
References: <20200512125327.1868-1-georgi.djakov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Saravana Kannan <saravanak@google.com>

The opp-hz DT property is not mandatory and we may use another property
as a key in the OPP table. Add helper functions to simplify the reading
and comparing the keys.

Signed-off-by: Saravana Kannan <saravanak@google.com>
Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
Reviewed-by: Sibi Sankar <sibis@codeaurora.org>
Signed-off-by: Georgi Djakov <georgi.djakov@linaro.org>
---
v8:
* Keep the existing behavior: goto free_opp only if !is_genpd
* Picked reviewed-by tags.

 drivers/opp/core.c | 15 +++++++++++++--
 drivers/opp/of.c   | 45 +++++++++++++++++++++++++++------------------
 drivers/opp/opp.h  |  1 +
 3 files changed, 41 insertions(+), 20 deletions(-)

diff --git a/drivers/opp/core.c b/drivers/opp/core.c
index e4f01e7771a2..ce7e4103ec09 100644
--- a/drivers/opp/core.c
+++ b/drivers/opp/core.c
@@ -1286,11 +1286,21 @@ static bool _opp_supported_by_regulators(struct dev_pm_opp *opp,
 	return true;
 }
 
+int _opp_compare_key(struct dev_pm_opp *opp1, struct dev_pm_opp *opp2)
+{
+	if (opp1->rate != opp2->rate)
+		return opp1->rate < opp2->rate ? -1 : 1;
+	if (opp1->level != opp2->level)
+		return opp1->level < opp2->level ? -1 : 1;
+	return 0;
+}
+
 static int _opp_is_duplicate(struct device *dev, struct dev_pm_opp *new_opp,
 			     struct opp_table *opp_table,
 			     struct list_head **head)
 {
 	struct dev_pm_opp *opp;
+	int opp_cmp;
 
 	/*
 	 * Insert new OPP in order of increasing frequency and discard if
@@ -1301,12 +1311,13 @@ static int _opp_is_duplicate(struct device *dev, struct dev_pm_opp *new_opp,
 	 * loop.
 	 */
 	list_for_each_entry(opp, &opp_table->opp_list, node) {
-		if (new_opp->rate > opp->rate) {
+		opp_cmp = _opp_compare_key(new_opp, opp);
+		if (opp_cmp > 0) {
 			*head = &opp->node;
 			continue;
 		}
 
-		if (new_opp->rate < opp->rate)
+		if (opp_cmp < 0)
 			return 0;
 
 		/* Duplicate OPPs */
diff --git a/drivers/opp/of.c b/drivers/opp/of.c
index 9cd8f0adacae..5179f034751a 100644
--- a/drivers/opp/of.c
+++ b/drivers/opp/of.c
@@ -521,6 +521,28 @@ void dev_pm_opp_of_remove_table(struct device *dev)
 }
 EXPORT_SYMBOL_GPL(dev_pm_opp_of_remove_table);
 
+static int _read_opp_key(struct dev_pm_opp *new_opp, struct device_node *np,
+			 bool *rate_not_available)
+{
+	u64 rate;
+	int ret;
+
+	ret = of_property_read_u64(np, "opp-hz", &rate);
+	if (!ret) {
+		/*
+		 * Rate is defined as an unsigned long in clk API, and so
+		 * casting explicitly to its type. Must be fixed once rate is 64
+		 * bit guaranteed in clk API.
+		 */
+		new_opp->rate = (unsigned long)rate;
+	}
+	*rate_not_available = !!ret;
+
+	of_property_read_u32(np, "opp-level", &new_opp->level);
+
+	return ret;
+}
+
 /**
  * _opp_add_static_v2() - Allocate static OPPs (As per 'v2' DT bindings)
  * @opp_table:	OPP table
@@ -558,26 +580,13 @@ static struct dev_pm_opp *_opp_add_static_v2(struct opp_table *opp_table,
 	if (!new_opp)
 		return ERR_PTR(-ENOMEM);
 
-	ret = of_property_read_u64(np, "opp-hz", &rate);
-	if (ret < 0) {
-		/* "opp-hz" is optional for devices like power domains. */
-		if (!opp_table->is_genpd) {
-			dev_err(dev, "%s: opp-hz not found\n", __func__);
-			goto free_opp;
-		}
-
-		rate_not_available = true;
-	} else {
-		/*
-		 * Rate is defined as an unsigned long in clk API, and so
-		 * casting explicitly to its type. Must be fixed once rate is 64
-		 * bit guaranteed in clk API.
-		 */
-		new_opp->rate = (unsigned long)rate;
+	ret = _read_opp_key(new_opp, np, &rate_not_available);
+	/* The key is optional for devices like power domains. */
+	if (ret < 0 && !opp_table->is_genpd) {
+		dev_err(dev, "%s: opp key field not found\n", __func__);
+		goto free_opp;
 	}
 
-	of_property_read_u32(np, "opp-level", &new_opp->level);
-
 	/* Check if the OPP supports hardware's hierarchy of versions or not */
 	if (!_opp_is_supported(dev, opp_table, np)) {
 		dev_dbg(dev, "OPP not supported by hardware: %llu\n", rate);
diff --git a/drivers/opp/opp.h b/drivers/opp/opp.h
index d14e27102730..bcadb1e328a4 100644
--- a/drivers/opp/opp.h
+++ b/drivers/opp/opp.h
@@ -211,6 +211,7 @@ struct opp_device *_add_opp_dev(const struct device *dev, struct opp_table *opp_
 void _dev_pm_opp_find_and_remove_table(struct device *dev);
 struct dev_pm_opp *_opp_allocate(struct opp_table *opp_table);
 void _opp_free(struct dev_pm_opp *opp);
+int _opp_compare_key(struct dev_pm_opp *opp1, struct dev_pm_opp *opp2);
 int _opp_add(struct device *dev, struct dev_pm_opp *new_opp, struct opp_table *opp_table, bool rate_not_available);
 int _opp_add_v1(struct opp_table *opp_table, struct device *dev, unsigned long freq, long u_volt, bool dynamic);
 void _dev_pm_opp_cpumask_remove_table(const struct cpumask *cpumask, int last_cpu);
