Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 08B7D4534A
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2019 06:18:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726262AbfFNERz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Jun 2019 00:17:55 -0400
Received: from mail-qk1-f202.google.com ([209.85.222.202]:37439 "EHLO
        mail-qk1-f202.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726209AbfFNERy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Jun 2019 00:17:54 -0400
Received: by mail-qk1-f202.google.com with SMTP id k13so1010342qkj.4
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2019 21:17:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=S7+vYKQUq5lZMW6Ri78n8SISGeuUnAv5G2fMh5MCCB0=;
        b=dm8bZhPEuM2wGtMvKc4gKqPZQ3mLqzd91ZsffM4nT/XjREXW8Zp4bMnDnbqJzhfGLA
         38L5mApWLtGNnvt4U1sFjTigD+r4o8ZCWHbEzdrLoreO/Ra0fsuIhDLFfz01ha7AbinR
         RCScftofhtV1n6geuxrFD37xuQv6fN5f9yrnWiT64NUxZsHJS3/MmdzQh3FnTreCYKAq
         ymoehLzNzvJmSiIGmQrCerHzbhQqPJcplC1wBWgMpDk57VSNBAsybLBLHmVPTak18L3H
         uBBT8fjTIGFdD4gW08nssJhMgmUI9+Ws5ZsVpC9M9XM2YOLQA/YAm0+A2uLxXMq3a7rk
         K5BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=S7+vYKQUq5lZMW6Ri78n8SISGeuUnAv5G2fMh5MCCB0=;
        b=gW24K+WcSZ+p222eQb5ANU9QYhFc9evuHchaNMkLwbUP5kWAqZGMVwTzoJQM9gYtVi
         f24rbvhWAMgEm6EzB3JDCQQL6Sg0YNQL8+0DH7ZXcsN3KS4gYMB1YhKKLts14qNWDoKW
         vvzzTcGby4zv37LK0RzEsrLt//3A7qKLMMIbGZY3J3aFyWWcz5VECpi+FOlOKFARBgvf
         3BkHzi3+6SyrSJcY7WwmmQAZDq4/XpMmiat5Z5QFG3/06ES+SysHA1yyCUYKBsbzESz9
         QWh/MkTZe9itI2Hv5KjLxfONZlIvLngcnf/y//fNl8QGO1rvguJxbc7Ho88zAfx1e93n
         1e8w==
X-Gm-Message-State: APjAAAWsNIvH8P79HJbtkL4pV/wJkcpLfngHVVYhRtohLXROZv6xKKdr
        4PtIpsGPcN9zl+kXN5X7BkWj3hjxXoOiK2k=
X-Google-Smtp-Source: APXvYqy84WJSLdcYgVbelfornVEsFYGdJg0Map6EsugniuC3YG3dF2T6wu62r9y0K9Qd9AGonIqNHBExaURVdIU=
X-Received: by 2002:a0c:9253:: with SMTP id 19mr6478264qvz.180.1560485873506;
 Thu, 13 Jun 2019 21:17:53 -0700 (PDT)
Date:   Thu, 13 Jun 2019 21:17:27 -0700
In-Reply-To: <20190614041733.120807-1-saravanak@google.com>
Message-Id: <20190614041733.120807-6-saravanak@google.com>
Mime-Version: 1.0
References: <20190614041733.120807-1-saravanak@google.com>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
Subject: [PATCH v2 05/11] OPP: Add support for bandwidth OPP tables
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

Not all devices quantify their performance points in terms of frequency.
Devices like interconnects quantify their performance points in terms of
bandwidth. We need a way to represent these bandwidth levels in OPP. So,
add support for parsing bandwidth OPPs from DT.

Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/opp/of.c  | 34 ++++++++++++++++++++++++++++++++--
 drivers/opp/opp.h |  4 +++-
 2 files changed, 35 insertions(+), 3 deletions(-)

diff --git a/drivers/opp/of.c b/drivers/opp/of.c
index 7c8336e94aff..d5815289518a 100644
--- a/drivers/opp/of.c
+++ b/drivers/opp/of.c
@@ -538,6 +538,35 @@ void dev_pm_opp_of_remove_table(struct device *dev)
 }
 EXPORT_SYMBOL_GPL(dev_pm_opp_of_remove_table);
 
+static int _read_opp_key(struct dev_pm_opp *new_opp, struct device_node *np)
+{
+	int ret;
+	u64 rate;
+	u32 bw;
+
+	ret = of_property_read_u64(np, "opp-hz", &rate);
+	if (!ret) {
+		/*
+		 * Rate is defined as an unsigned long in clk API, and so
+		 * casting explicitly to its type. Must be fixed once rate is 64
+		 * bit guaranteed in clk API.
+		 */
+		new_opp->rate = (unsigned long)rate;
+		return 0;
+	}
+
+	ret = of_property_read_u32(np, "opp-peak-KBps", &bw);
+	if (ret)
+		return ret;
+	new_opp->rate = (unsigned long) &bw;
+
+	ret = of_property_read_u32(np, "opp-avg-KBps", &bw);
+	if (!ret)
+		new_opp->avg_bw = (unsigned long) &bw;
+
+	return 0;
+}
+
 /**
  * _opp_add_static_v2() - Allocate static OPPs (As per 'v2' DT bindings)
  * @opp_table:	OPP table
@@ -575,11 +604,12 @@ static struct dev_pm_opp *_opp_add_static_v2(struct opp_table *opp_table,
 	if (!new_opp)
 		return ERR_PTR(-ENOMEM);
 
-	ret = of_property_read_u64(np, "opp-hz", &rate);
+	ret = _read_opp_key(new_opp, np);
 	if (ret < 0) {
 		/* "opp-hz" is optional for devices like power domains. */
 		if (!opp_table->is_genpd) {
-			dev_err(dev, "%s: opp-hz not found\n", __func__);
+			dev_err(dev, "%s: opp-hz or opp-peak-bw not found\n",
+				__func__);
 			goto free_opp;
 		}
 
diff --git a/drivers/opp/opp.h b/drivers/opp/opp.h
index 569b3525aa67..ead2cdafe957 100644
--- a/drivers/opp/opp.h
+++ b/drivers/opp/opp.h
@@ -59,7 +59,8 @@ extern struct list_head opp_tables;
  * @turbo:	true if turbo (boost) OPP
  * @suspend:	true if suspend OPP
  * @pstate: Device's power domain's performance state.
- * @rate:	Frequency in hertz
+ * @rate:	Frequency in hertz OR Peak bandwidth in kilobytes per second
+ * @avg_bw:	Average bandwidth in kilobytes per second
  * @level:	Performance level
  * @supplies:	Power supplies voltage/current values
  * @clock_latency_ns: Latency (in nanoseconds) of switching to this OPP's
@@ -81,6 +82,7 @@ struct dev_pm_opp {
 	bool suspend;
 	unsigned int pstate;
 	unsigned long rate;
+	unsigned long avg_bw;
 	unsigned int level;
 
 	struct dev_pm_opp_supply *supplies;
-- 
2.22.0.rc2.383.gf4fbbf30c2-goog

