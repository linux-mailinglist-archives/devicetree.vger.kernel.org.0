Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8797545C748
	for <lists+devicetree@lfdr.de>; Wed, 24 Nov 2021 15:28:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352581AbhKXObK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Nov 2021 09:31:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46986 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350838AbhKXOa7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Nov 2021 09:30:59 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3ADB8C127930
        for <devicetree@vger.kernel.org>; Wed, 24 Nov 2021 04:55:24 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id v11so4007663wrw.10
        for <devicetree@vger.kernel.org>; Wed, 24 Nov 2021 04:55:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=JXIYabK6ZewRD4vP7R+kD9rZl3/XxOM5JXs9rSVNxs0=;
        b=bn7YHF4vAtjw3Js41QkfWoBQX1kdrF5vS94s+Vho5CY7y0JLUa+Y7Ze8xQBqQQyvvn
         4qoZeeLBVQJMhZa9kEgHt0wyGycVaXdvBrgyNRlHi6QSahwkAgVfvRx6pjfCUTa+7JBx
         mIZ27jlre2LI+H9dR8sVKLdoehQOTOFoPLwkEOT+3mdwNayaz5CHaxao8nPc0UinAqPB
         DUfJJS+iw6NcgDzYSmAeVQxmCkJCUFbwD/X2LoV9ygbofdxNoMm6PfaP6+GUsWEUvHgF
         g+5wWeZm8Egr+UoLrx01aH/O87aS2WoF1wCBiqyKhJa1cYy8DNTJxbgmxPAUUNsQCNPz
         zc9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JXIYabK6ZewRD4vP7R+kD9rZl3/XxOM5JXs9rSVNxs0=;
        b=rSOb8MxqdsS+pSFXYHoCOO1wWy63RRqTWydg6Wq+lqIJz2sBO+jYRD/p1PfMgfDP5+
         +9pR/38JRKbLa7WhPsO5SZqS5l2AppRYcPn3uAVzFbVSyTdozBBHc4Ab1hgKLGykbEox
         xvSgNj3HGqK+ygNdMaTkxlq4Zc12gJlkrbUp/YOptru6Bjv1LvjhwjNNz58pz66GFeZ6
         T0+0IT28q0xTVedWB1DSZNe/5l5ZGWWI86+71GZX0RdGEXfboaWWeFKVPVwhpTm9UVEi
         ePWz7xC2tGZIUHwOcoGU/BR0O7p4a7yF0ANg9c4I1Yvqi+VvD719/4RXB8W3oRJ8IUAW
         hAGQ==
X-Gm-Message-State: AOAM531KFIMR1vGMNtxKJ71Tqvx2iZ51iWNBxtSoyEroi99HBzLLFD77
        3QbNpABXaeY6sThVL/f8BaqucxOeZ79/4g==
X-Google-Smtp-Source: ABdhPJzMQb4HhuD781LIHkzfvor84m0P279E1IGkjEIBAm2LlSzytQARNySGhjmbsHsw7jBMW4QVZA==
X-Received: by 2002:a5d:47a9:: with SMTP id 9mr18681507wrb.42.1637758522631;
        Wed, 24 Nov 2021 04:55:22 -0800 (PST)
Received: from localhost.localdomain ([2a01:e34:ed2f:f020:3395:9073:b941:501e])
        by smtp.gmail.com with ESMTPSA id v8sm14916443wrd.84.2021.11.24.04.55.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Nov 2021 04:55:22 -0800 (PST)
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
To:     daniel.lezcano@linaro.org
Cc:     robh@kernel.org, arnd@linaro.org, heiko@sntech.de,
        ulf.hansson@linaro.org, rjw@rjwysocki.net,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, lukasz.luba@arm.com,
        Daniel Lezcano <daniel.lezcano@kernel.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>
Subject: [PATCH 4/5] powercap/drivers/dtpm: Add CPU DT initialization support
Date:   Wed, 24 Nov 2021 13:55:03 +0100
Message-Id: <20211124125506.2971069-4-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211124125506.2971069-1-daniel.lezcano@linaro.org>
References: <20211124125506.2971069-1-daniel.lezcano@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Based on the previous DT changes in the core code, use the 'setup'
callback to initialize the CPU DTPM backend.

Code is reorganized to stick to the DTPM table description. No
functional changes.

Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 drivers/powercap/dtpm_cpu.c | 35 +++++++++++++++++++++++++++++------
 1 file changed, 29 insertions(+), 6 deletions(-)

diff --git a/drivers/powercap/dtpm_cpu.c b/drivers/powercap/dtpm_cpu.c
index 6bffb44c75aa..64cec0770803 100644
--- a/drivers/powercap/dtpm_cpu.c
+++ b/drivers/powercap/dtpm_cpu.c
@@ -21,6 +21,7 @@
 #include <linux/cpuhotplug.h>
 #include <linux/dtpm.h>
 #include <linux/energy_model.h>
+#include <linux/of.h>
 #include <linux/pm_qos.h>
 #include <linux/slab.h>
 #include <linux/units.h>
@@ -176,6 +177,17 @@ static int cpuhp_dtpm_cpu_offline(unsigned int cpu)
 }
 
 static int cpuhp_dtpm_cpu_online(unsigned int cpu)
+{
+	struct dtpm_cpu *dtpm_cpu;
+
+	dtpm_cpu = per_cpu(dtpm_per_cpu, cpu);
+	if (dtpm_cpu)
+		return dtpm_update_power(&dtpm_cpu->dtpm);
+
+	return 0;
+}
+
+static int __dtpm_cpu_setup(int cpu, struct dtpm *parent)
 {
 	struct dtpm_cpu *dtpm_cpu;
 	struct cpufreq_policy *policy;
@@ -183,6 +195,10 @@ static int cpuhp_dtpm_cpu_online(unsigned int cpu)
 	char name[CPUFREQ_NAME_LEN];
 	int ret = -ENOMEM;
 
+	dtpm_cpu = per_cpu(dtpm_per_cpu, cpu);
+	if (dtpm_cpu)
+		return 0;
+
 	policy = cpufreq_cpu_get(cpu);
 	if (!policy)
 		return 0;
@@ -191,10 +207,6 @@ static int cpuhp_dtpm_cpu_online(unsigned int cpu)
 	if (!pd)
 		return -EINVAL;
 
-	dtpm_cpu = per_cpu(dtpm_per_cpu, cpu);
-	if (dtpm_cpu)
-		return dtpm_update_power(&dtpm_cpu->dtpm);
-
 	dtpm_cpu = kzalloc(sizeof(*dtpm_cpu), GFP_KERNEL);
 	if (!dtpm_cpu)
 		return -ENOMEM;
@@ -207,7 +219,7 @@ static int cpuhp_dtpm_cpu_online(unsigned int cpu)
 
 	snprintf(name, sizeof(name), "cpu%d-cpufreq", dtpm_cpu->cpu);
 
-	ret = dtpm_register(name, &dtpm_cpu->dtpm, NULL);
+	ret = dtpm_register(name, &dtpm_cpu->dtpm, parent);
 	if (ret)
 		goto out_kfree_dtpm_cpu;
 
@@ -231,6 +243,17 @@ static int cpuhp_dtpm_cpu_online(unsigned int cpu)
 	return ret;
 }
 
+static int __init dtpm_cpu_setup(struct dtpm *dtpm, struct device_node *np)
+{
+	int cpu;
+
+	cpu = of_cpu_node_to_id(np);
+	if (cpu < 0)
+		return 0;
+
+	return __dtpm_cpu_setup(cpu, dtpm);
+}
+
 static int __init dtpm_cpu_init(void)
 {
 	int ret;
@@ -269,4 +292,4 @@ static int __init dtpm_cpu_init(void)
 	return 0;
 }
 
-DTPM_DECLARE(dtpm_cpu, dtpm_cpu_init, NULL);
+DTPM_DECLARE(dtpm_cpu, dtpm_cpu_init, dtpm_cpu_setup);
-- 
2.25.1

