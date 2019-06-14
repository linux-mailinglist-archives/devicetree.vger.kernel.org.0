Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D563045359
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2019 06:18:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726449AbfFNESK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Jun 2019 00:18:10 -0400
Received: from mail-qt1-f201.google.com ([209.85.160.201]:35215 "EHLO
        mail-qt1-f201.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726346AbfFNESK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Jun 2019 00:18:10 -0400
Received: by mail-qt1-f201.google.com with SMTP id v58so1086579qta.2
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2019 21:18:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=VA7s9ly0lqdagUAyh1uYpw4qgEasvgJFlK1lzvkukqY=;
        b=TrEXlT8djNpXPJc0j8YuBg6jTcfItK6GjAaeUSewHjYjftr5gYxyJuqq3MGH1OUe1T
         F3xdsaC3oKrSs+dlLVQW3XrlXYI+1M2VVTmgutAgeR/C8BeBT2yPpIVqmYf0mybVrYxo
         wmtTS/hWV6UkMbpi0KH7Dgq3wWGTIZtkgefl5OGGmwKX/S5v6YwKVnVU3C1gpFDeO+2I
         FBr4uMGQpUMsUfh59BM9jW4yJHzxtr2LArxfDQbupQodPwMohSfxjbPi3RMe0hpBN2iX
         XKBIGUhfIgNitWDR3R/EHS75rmfuv6cnWhkdhva0AOGRbVQuo7nzNskKg+bmAYvCCtN7
         zNcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=VA7s9ly0lqdagUAyh1uYpw4qgEasvgJFlK1lzvkukqY=;
        b=sNtUYcSUiyTAK5rN+60P4hVMrJKwy7bTDeEVI6QhosctYDkpZ6kbEliyafypR6txuF
         D0FJjSVkODK3vjqJTSFsDKLqeC3RyYkR/BBiGp19QXqxaSv5Bepr13gzvkylc8udQTd3
         YfAzFWMqkdFuSlxoDFKEwohlX0LniyF9L6qrOtT1t7kMrq1/7K2IVAGNaVYBKO7nzs9Z
         WjmJNdNxG2IZLLgwIhSa+3mbdypbJMjR+lIE9z/EKe2Hd6AMAmeXESK4O8bIx3O2sYCj
         hCySguJ06jaF2hTEJkRwCqOlgPCEQHnVlcJBecm2nCILbFsRghsw5PyuSZGJkFcgVz0d
         hsLw==
X-Gm-Message-State: APjAAAUE+X+ECg6u4CxV64CZihwyYIHQ3XTJ5ZVA5bMUMswMPL1fOIMB
        q+d6MAnwq4DzUelD5f1cnA1QP/bvwq9Va3Q=
X-Google-Smtp-Source: APXvYqzEU9fWluswZw2wyE1N4COxp8I6V3iABbyGVjD++OlIlQ99JPYxbbaQ1U5BqOb5o+DCUfLqGIKFA8Ys39Q=
X-Received: by 2002:ac8:1794:: with SMTP id o20mr80687898qtj.239.1560485889196;
 Thu, 13 Jun 2019 21:18:09 -0700 (PDT)
Date:   Thu, 13 Jun 2019 21:17:32 -0700
In-Reply-To: <20190614041733.120807-1-saravanak@google.com>
Message-Id: <20190614041733.120807-11-saravanak@google.com>
Mime-Version: 1.0
References: <20190614041733.120807-1-saravanak@google.com>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
Subject: [PATCH v2 10/11] OPP: Allow copying OPPs tables between devices
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

Some hardware devices might create multiple children devices to manage
different components of the hardware. In these cases, it might be necessary
for the original hardware device to copy specific OPP tables to a specific
the new child device. Add dev_pm_opp_add_opp_table() to do that.

Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/opp/core.c     | 8 ++++++++
 include/linux/pm_opp.h | 7 +++++++
 2 files changed, 15 insertions(+)

diff --git a/drivers/opp/core.c b/drivers/opp/core.c
index c9914afd508a..668a377f59a5 100644
--- a/drivers/opp/core.c
+++ b/drivers/opp/core.c
@@ -943,6 +943,14 @@ struct opp_device *_add_opp_dev(const struct device *dev,
 	return opp_dev;
 }
 
+int dev_pm_opp_add_opp_table(struct device *dev, struct opp_table *opp_table)
+{
+	if (!dev || !opp_table)
+		return -EINVAL;
+
+	return _add_opp_dev(dev, opp_table) ? 0 : -ENOMEM;
+}
+
 static struct opp_table *_allocate_opp_table(struct device *dev, int index)
 {
 	struct opp_table *opp_table;
diff --git a/include/linux/pm_opp.h b/include/linux/pm_opp.h
index d9156b62d966..3694d703817f 100644
--- a/include/linux/pm_opp.h
+++ b/include/linux/pm_opp.h
@@ -81,6 +81,7 @@ struct dev_pm_set_opp_data {
 struct opp_table *dev_pm_opp_get_opp_table(struct device *dev);
 struct opp_table *dev_pm_opp_get_opp_table_indexed(struct device *dev, int index);
 void dev_pm_opp_put_opp_table(struct opp_table *opp_table);
+int dev_pm_opp_add_opp_table(struct device *dev, struct opp_table *opp_table);
 
 unsigned long dev_pm_opp_get_voltage(struct dev_pm_opp *opp);
 
@@ -158,6 +159,12 @@ static inline struct opp_table *dev_pm_opp_get_opp_table_indexed(struct device *
 
 static inline void dev_pm_opp_put_opp_table(struct opp_table *opp_table) {}
 
+static int dev_pm_opp_add_opp_table(struct device *dev,
+				    struct opp_table *opp_table)
+{
+	return -ENOTSUPP;
+}
+
 static inline unsigned long dev_pm_opp_get_voltage(struct dev_pm_opp *opp)
 {
 	return 0;
-- 
2.22.0.rc2.383.gf4fbbf30c2-goog

