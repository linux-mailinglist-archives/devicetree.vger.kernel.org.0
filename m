Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6F1814534D
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2019 06:18:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726424AbfFNESH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Jun 2019 00:18:07 -0400
Received: from mail-qk1-f202.google.com ([209.85.222.202]:53217 "EHLO
        mail-qk1-f202.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726381AbfFNESH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Jun 2019 00:18:07 -0400
Received: by mail-qk1-f202.google.com with SMTP id v80so986725qkb.19
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2019 21:18:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=qdT885hM1gH99LBPR29/QhPlOeEng+ZQVjJx3w/T2/A=;
        b=Dibo09Bp3kWBRUtDeP7IlyAc8I0wb5LIZgKw4P/3gbfzowHYQkp8KvALWATtiLifF/
         OgCNRHwq7V+KkgVUnp2yHEc5qXgQOOZOU05XPJf5NBPt7CFtICrUUykTd+lcCKR2SeaH
         K8ap0c9N6Jtz99rLRSHAmXzVlbK7jOXBUJEHtsxFtyGsBLyuM5VIeZva8JKgYA23JX/N
         V86388Avy5hjadcoyqZyv0uUZa1C2g5SS1ewUTpb96wNgW5h0/gF+cwveNdnSk4KmXt2
         AK0RwUJDKxDAAnSfec6Xw2aoL5IOX9brzOp4yMwqt66AqibDVqTYNc91iTNpUHDOSazs
         wxZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=qdT885hM1gH99LBPR29/QhPlOeEng+ZQVjJx3w/T2/A=;
        b=hVfhi02O6JaFXRxukcsm1pVogFVWrPJjHbDG90G2UbUU/2WLynJkTXOpBTeiWXEjqY
         W6mEuWxpXGVjzLB/vpuQrtdfkFkEz+thyXav/T+ORcRjsEjeIZApefBpclPzq0jnnr/2
         VLg/7dtBMD3tKb9MDNaJaeuFNFRrbu6JQjB9aRse8l5+kAlJXlYrwtm9S+oo5xegajNK
         YeQQWPnBRSeu1zN8OxJA3Rh76X6vQdtzfjhtvVhQFPdFzyBZweoP2UCdgFnlv2eD+tIg
         i4FgydASxLi8QRg3NYNCzB/dXKqyQP2YB9B+z1D2bTVRNz6Saa9FCsLmZJooqUxNEuZ+
         3Ktw==
X-Gm-Message-State: APjAAAXg684rEZ4XSQ1wSpnEfqL5xUKh+853rcOxNRtXBuRevXCfg5Jf
        Fhq1N0YyavPzEO4SE6w2wtOMvVwlU+uKyds=
X-Google-Smtp-Source: APXvYqyAWOehY93Rqe16/u7/vHBPBduhgTp81nR2/LNC3uUbwpe11mkeC0KZI8SICRtKOwtW6xRTN9Xb5zISKBc=
X-Received: by 2002:ac8:4619:: with SMTP id p25mr46145520qtn.73.1560485886113;
 Thu, 13 Jun 2019 21:18:06 -0700 (PDT)
Date:   Thu, 13 Jun 2019 21:17:31 -0700
In-Reply-To: <20190614041733.120807-1-saravanak@google.com>
Message-Id: <20190614041733.120807-10-saravanak@google.com>
Mime-Version: 1.0
References: <20190614041733.120807-1-saravanak@google.com>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
Subject: [PATCH v2 09/11] interconnect: Add OPP table support for interconnects
From:   Saravana Kannan <saravanak@google.com>
To:     Georgi Djakov <georgi.djakov@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>,
        "Rafael J. Wysocki" <rjw@rjwysocki.net>,
        MyungJoo Ham <myungjoo.ham@samsung.com>,
        Kyungmin Park <kyungmin.park@samsung.com>,
        Chanwoo Choi <cw00.choi@samsung.com>
Cc:     Saravana Kannan <saravanak@google.com>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        Jordan Crouse <jcrouse@codeaurora.org>,
        vincent.guittot@linaro.org, bjorn.andersson@linaro.org,
        amit.kucheria@linaro.org, seansw@qti.qualcomm.com,
        daidavid1@codeaurora.org, evgreen@chromium.org,
        sibis@codeaurora.org, kernel-team@android.com,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Interconnect paths can have different performance points. Now that OPP
framework supports bandwidth OPP tables, add OPP table support for
interconnects.

Devices can use the interconnect-opp-table DT property to specify OPP
tables for interconnect paths. And the driver can obtain the OPP table for
an interconnect path by calling icc_get_opp_table().

Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/interconnect/core.c  | 27 ++++++++++++++++++++++++++-
 include/linux/interconnect.h |  7 +++++++
 2 files changed, 33 insertions(+), 1 deletion(-)

diff --git a/drivers/interconnect/core.c b/drivers/interconnect/core.c
index 871eb4bc4efc..881bac80bc1e 100644
--- a/drivers/interconnect/core.c
+++ b/drivers/interconnect/core.c
@@ -47,6 +47,7 @@ struct icc_req {
  */
 struct icc_path {
 	size_t num_nodes;
+	struct opp_table *opp_table;
 	struct icc_req reqs[];
 };
 
@@ -313,7 +314,7 @@ struct icc_path *of_icc_get(struct device *dev, const char *name)
 {
 	struct icc_path *path = ERR_PTR(-EPROBE_DEFER);
 	struct icc_node *src_node, *dst_node;
-	struct device_node *np = NULL;
+	struct device_node *np = NULL, *opp_node;
 	struct of_phandle_args src_args, dst_args;
 	int idx = 0;
 	int ret;
@@ -381,10 +382,34 @@ struct icc_path *of_icc_get(struct device *dev, const char *name)
 		dev_err(dev, "%s: invalid path=%ld\n", __func__, PTR_ERR(path));
 	mutex_unlock(&icc_lock);
 
+	opp_node = of_parse_phandle(np, "interconnect-opp-table", idx);
+	if (opp_node) {
+		path->opp_table = dev_pm_opp_of_find_table_from_node(opp_node);
+		of_node_put(opp_node);
+	}
+
+
 	return path;
 }
 EXPORT_SYMBOL_GPL(of_icc_get);
 
+/**
+ * icc_get_opp_table() - Get the OPP table that corresponds to a path
+ * @path: reference to the path returned by icc_get()
+ *
+ * This function will return the OPP table that corresponds to a path handle.
+ * If the interconnect API is disabled, NULL is returned and the consumer
+ * drivers will still build. Drivers are free to handle this specifically, but
+ * they don't have to.
+ *
+ * Return: opp_table pointer on success. NULL is returned when the API is
+ * disabled or the OPP table is missing.
+ */
+struct opp_table *icc_get_opp_table(struct icc_path *path)
+{
+	return path->opp_table;
+}
+
 /**
  * icc_set_bw() - set bandwidth constraints on an interconnect path
  * @path: reference to the path returned by icc_get()
diff --git a/include/linux/interconnect.h b/include/linux/interconnect.h
index dc25864755ba..0c0bc55f0e89 100644
--- a/include/linux/interconnect.h
+++ b/include/linux/interconnect.h
@@ -9,6 +9,7 @@
 
 #include <linux/mutex.h>
 #include <linux/types.h>
+#include <linux/pm_opp.h>
 
 /* macros for converting to icc units */
 #define Bps_to_icc(x)	((x) / 1000)
@@ -28,6 +29,7 @@ struct device;
 struct icc_path *icc_get(struct device *dev, const int src_id,
 			 const int dst_id);
 struct icc_path *of_icc_get(struct device *dev, const char *name);
+struct opp_table *icc_get_opp_table(struct icc_path *path);
 void icc_put(struct icc_path *path);
 int icc_set_bw(struct icc_path *path, u32 avg_bw, u32 peak_bw);
 
@@ -49,6 +51,11 @@ static inline void icc_put(struct icc_path *path)
 {
 }
 
+static inline struct opp_table *icc_get_opp_table(struct icc_path *path)
+{
+	return NULL;
+}
+
 static inline int icc_set_bw(struct icc_path *path, u32 avg_bw, u32 peak_bw)
 {
 	return 0;
-- 
2.22.0.rc2.383.gf4fbbf30c2-goog

