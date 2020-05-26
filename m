Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DB5881B7ACE
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2020 17:56:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728511AbgDXPyk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Apr 2020 11:54:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728430AbgDXPyP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Apr 2020 11:54:15 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1CFD0C09B046
        for <devicetree@vger.kernel.org>; Fri, 24 Apr 2020 08:54:15 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id b11so11459781wrs.6
        for <devicetree@vger.kernel.org>; Fri, 24 Apr 2020 08:54:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=isAhAlloXTjmBrHlhym72Kb1h1B4a4SBtkeKaIRty20=;
        b=oU9V4toirlqhBqPMS1gV9o5Ib9NMM/NdSX9e/ErfkBTas7wiHzZNZG8InvJHWGbSCf
         eXVwCWtlEv7OVH3L9kNM9PB5lceGaCzWSA69cBSbUaAiRxtXeqTvoSzwvFUfYNGSeL5e
         n6LczkwbkfPUMwNX7s5H5MOY0JwsrManZGe43FJIli2VBp9x7MJ1Eb5/av/myF7fQglg
         Gm77L9n7YxltHgLW4+Y8DiSB8w7FExSFPUkp08PfsPcYtE4thcG5zvVPNPf3SeoXcq34
         y3reaD8h589GYHv6wEUanESkvbU/pSu1mk5Fb9vB6QaBNMu6/NzRGeKRjqrKHKmapOU0
         mdHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=isAhAlloXTjmBrHlhym72Kb1h1B4a4SBtkeKaIRty20=;
        b=qoWhNKNpBGMwRRoKhrflj+KuJcz/BEIJkBwCboIAw6iZEcI1K2M+s6OR6aJaGkySWs
         E9WHbTubIKRXSPahvEd6f8hisr4uONj6olVbLWxnVasRIZ2Vfpz9Sj0WRaRriu393KdX
         9RJZYD1FQGvORqE2hGV/B31yGCo3N6fYyH+4xyfKWX+rCF3Wmv6bvdh0yyauKdZHbMJp
         5aKakhmMY57whFLKXIYNIqu9tUJOSkznIDUpcnU8aH0+jxfcjfcM911rQ9uu1nzje6Qz
         j9D/GaoLp1PX/w3r6CZXqZH+o1FoBwpoYdRvSEEaVDh4IFZdtRNXeQs9S80ipfbZGctl
         I9BA==
X-Gm-Message-State: AGi0PuYTUrHxMwxXsLeLzjFiRAS21Bn/rB9AI6DinucvYnoiplMyPug8
        x/rUWkjv5dRi4nDbr6jXePZtYw==
X-Google-Smtp-Source: APiQypLcwFo/qULDD1FVX9SstqpRh1T43s9PuXx3/42zFXkT4IQhzaTNxj2/yU5JI/NSXRJKAHk32g==
X-Received: by 2002:a5d:4e06:: with SMTP id p6mr11559893wrt.35.1587743653797;
        Fri, 24 Apr 2020 08:54:13 -0700 (PDT)
Received: from localhost.localdomain ([87.120.218.65])
        by smtp.googlemail.com with ESMTPSA id z76sm3923583wmc.9.2020.04.24.08.54.12
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Apr 2020 08:54:13 -0700 (PDT)
From:   Georgi Djakov <georgi.djakov@linaro.org>
To:     vireshk@kernel.org, nm@ti.com, sboyd@kernel.org,
        robh+dt@kernel.org, rjw@rjwysocki.net, saravanak@google.com,
        sibis@codeaurora.org
Cc:     rnayak@codeaurora.org, bjorn.andersson@linaro.org,
        vincent.guittot@linaro.org, jcrouse@codeaurora.org,
        evgreen@chromium.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        georgi.djakov@linaro.org
Subject: [PATCH v7 5/7] OPP: Add sanity checks in _read_opp_key()
Date:   Fri, 24 Apr 2020 18:54:02 +0300
Message-Id: <20200424155404.10746-6-georgi.djakov@linaro.org>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200424155404.10746-1-georgi.djakov@linaro.org>
References: <20200424155404.10746-1-georgi.djakov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

When we read the OPP keys, it would be nice to do some sanity checks
of the values we get from DT and see if they match with the information
that is populated in the OPP table. Let's pass a pointer of the table,
so that we can do some validation.

Signed-off-by: Georgi Djakov <georgi.djakov@linaro.org>
---
v7:
New patch.

 drivers/opp/of.c | 19 ++++++++++++++++---
 1 file changed, 16 insertions(+), 3 deletions(-)

diff --git a/drivers/opp/of.c b/drivers/opp/of.c
index 978e445b0cdb..2b590fe2e69a 100644
--- a/drivers/opp/of.c
+++ b/drivers/opp/of.c
@@ -574,8 +574,8 @@ void dev_pm_opp_of_remove_table(struct device *dev)
 }
 EXPORT_SYMBOL_GPL(dev_pm_opp_of_remove_table);
 
-static int _read_opp_key(struct dev_pm_opp *new_opp, struct device_node *np,
-			 bool *rate_not_available)
+static int _read_opp_key(struct dev_pm_opp *new_opp, struct opp_table *table,
+			 struct device_node *np, bool *rate_not_available)
 {
 	struct property *peak, *avg;
 	u32 *peak_bw, *avg_bw;
@@ -603,6 +603,12 @@ static int _read_opp_key(struct dev_pm_opp *new_opp, struct device_node *np,
 		 * opp-avg-kBps = <path1_value path2_value>;
 		 */
 		count = peak->length / sizeof(u32);
+		if (table->path_count != count) {
+			pr_err("%s: Mismatch between opp-peak-kBps and paths (%d %d)\n",
+			       __func__, count, table->path_count);
+			return -EINVAL;
+		}
+
 		peak_bw = kmalloc_array(count, sizeof(*peak_bw), GFP_KERNEL);
 		if (!peak_bw)
 			return -ENOMEM;
@@ -624,6 +630,13 @@ static int _read_opp_key(struct dev_pm_opp *new_opp, struct device_node *np,
 	avg = of_find_property(np, "opp-avg-kBps", NULL);
 	if (peak && avg) {
 		count = avg->length / sizeof(u32);
+		if (table->path_count != count) {
+			pr_err("%s: Mismatch between opp-avg-kBps and paths (%d %d)\n",
+			       __func__, count, table->path_count);
+			ret = -EINVAL;
+			goto free_peak_bw;
+		}
+
 		avg_bw = kmalloc_array(count, sizeof(*avg_bw), GFP_KERNEL);
 		if (!avg_bw) {
 			ret = -ENOMEM;
@@ -695,7 +708,7 @@ static struct dev_pm_opp *_opp_add_static_v2(struct opp_table *opp_table,
 	if (!new_opp)
 		return ERR_PTR(-ENOMEM);
 
-	ret = _read_opp_key(new_opp, np, &rate_not_available);
+	ret = _read_opp_key(new_opp, opp_table, np, &rate_not_available);
 	if (ret < 0) {
 		if (!opp_table->is_genpd)
 			dev_err(dev, "%s: opp key field not found\n", __func__);
