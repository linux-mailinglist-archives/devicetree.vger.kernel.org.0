Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BC9511D08D3
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2020 08:42:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729553AbgEMGmo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 May 2020 02:42:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729126AbgEMGmn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 May 2020 02:42:43 -0400
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com [IPv6:2607:f8b0:4864:20::543])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4CB6C061A0C
        for <devicetree@vger.kernel.org>; Tue, 12 May 2020 23:42:43 -0700 (PDT)
Received: by mail-pg1-x543.google.com with SMTP id f23so6683398pgj.4
        for <devicetree@vger.kernel.org>; Tue, 12 May 2020 23:42:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=uV9bBaTw0tJvxNRTn3rCW/1JXCNDLBhH/iWFHyMVTBE=;
        b=DwrxDAXM1Dmb9a0+R6V0fJcQ+7mkOX/VTCvmSYpaibcHNZUR8S0eNh8WaLtFN7/ueK
         po5fGew1zfdjzwZ3OB8bG2A4iba36emUZa6uB1eW5ix/bp449E9QkOyw761Hb97mp2uY
         1woBEMeFuoYUYqHEvMUK+Am0AQbEejb1dgJeyicYC9UQBdPdX50TbnXTw6xifmc+hzKp
         sCuckJ3RWBDZefiNXjrUvWkdyCjvB2dwgVMTv2LVZFLKvdhVM2KDyuntRg9nQ/xiJfG5
         cBHu+9F99oy2Bmm5cl/rSlDArm7VmD5fF4dOKUznXV0Z17e9mxYLt+FLz7APCaads/cp
         KIfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=uV9bBaTw0tJvxNRTn3rCW/1JXCNDLBhH/iWFHyMVTBE=;
        b=Oyob6K2EaeHFjnPvdh3u7VCbU4GhHE1lNM0eQZXjpPvBaOoVshENYr3kehFi7ENQdA
         abC4zZvhkEdS+0TfZHCQF9TGi484sYxEU6HvIUS0B1F5QeWn9eFL3KYpBaO/AKbQ3MST
         m7lAB3fHtzwCxnTcW+ZogQWOjuwCFoqg/3rcgzrQ+rujkuOjKHoVzugUPvrTwy5VQwpP
         SdOQenrAbFptLNKxXs2xrpjJh63Wvbf8Fkd21DyUPwodiAMGOd3IXw7lxVfdwyrx5DzQ
         V6V/bwB75WtN8h/t/YrA+iqLEbF5U8LzJO8c885bhLsMot5dk9S+uVhlxYnEGu8YBvmC
         QtSQ==
X-Gm-Message-State: AOAM532K7oa7Vs9+gY1/2iuCGGBWlyu9KD80YzU8HuaHgKqor0NPQCp3
        GjI53TVNEWSVfYzRAjkTACt+tA==
X-Google-Smtp-Source: ABdhPJx/qDkXeMVh8VzZ2nRqWK2JUXlGS93kHPk7P1gvPAWW5dMOe4C7ABnJrcRcrUNJytVknLBXDw==
X-Received: by 2002:a63:1946:: with SMTP id 6mr5667506pgz.287.1589352163229;
        Tue, 12 May 2020 23:42:43 -0700 (PDT)
Received: from localhost ([122.167.130.103])
        by smtp.gmail.com with ESMTPSA id gz19sm14406418pjb.7.2020.05.12.23.42.42
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 May 2020 23:42:42 -0700 (PDT)
Date:   Wed, 13 May 2020 12:12:40 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Georgi Djakov <georgi.djakov@linaro.org>
Cc:     vireshk@kernel.org, nm@ti.com, sboyd@kernel.org, rjw@rjwysocki.net,
        saravanak@google.com, sibis@codeaurora.org, mka@chromium.org,
        robh+dt@kernel.org, rnayak@codeaurora.org,
        bjorn.andersson@linaro.org, vincent.guittot@linaro.org,
        jcrouse@codeaurora.org, evgreen@chromium.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 08/10] cpufreq: dt: Validate all interconnect paths
Message-ID: <20200513064240.dpyz32brehhztex3@vireshk-i7>
References: <20200512125327.1868-1-georgi.djakov@linaro.org>
 <20200512125327.1868-9-georgi.djakov@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200512125327.1868-9-georgi.djakov@linaro.org>
User-Agent: NeoMutt/20180716-391-311a52
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12-05-20, 15:53, Georgi Djakov wrote:
> Currently when we check for the available resources, we assume that there
> is only one interconnect path, but in fact it could be more than one. Do
> some validation to determine the number of paths and verify if each one
> of them is available.
> 
> Signed-off-by: Georgi Djakov <georgi.djakov@linaro.org>
> ---
> v8:
> * New patch.

Merged this with the 7th patch and applied this delta:

diff --git a/drivers/cpufreq/cpufreq-dt.c b/drivers/cpufreq/cpufreq-dt.c
index 15d70112454c..79742bbd221f 100644
--- a/drivers/cpufreq/cpufreq-dt.c
+++ b/drivers/cpufreq/cpufreq-dt.c
@@ -13,7 +13,6 @@
 #include <linux/cpufreq.h>
 #include <linux/cpumask.h>
 #include <linux/err.h>
-#include <linux/interconnect.h>
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/pm_opp.h>
@@ -91,49 +90,6 @@ static const char *find_supply_name(struct device *dev)
 	return name;
 }
 
-static int find_icc_paths(struct device *dev)
-{
-	struct device_node *np;
-	struct icc_path **paths;
-	int i, count, num_paths;
-	int ret = 0;
-
-	np = of_node_get(dev->of_node);
-	if (!np)
-		return 0;
-
-	count = of_count_phandle_with_args(np, "interconnects",
-					   "#interconnect-cells");
-	of_node_put(np);
-	if (count < 0)
-		return 0;
-
-	/* two phandles when #interconnect-cells = <1> */
-	if (count % 2) {
-		dev_err(dev, "%s: Invalid interconnects values\n", __func__);
-		return -EINVAL;
-	}
-
-	num_paths = count / 2;
-	paths = kcalloc(num_paths, sizeof(*paths), GFP_KERNEL);
-	if (!paths)
-		return -ENOMEM;
-
-	for (i = 0; i < num_paths; i++) {
-		paths[i] = of_icc_get_by_index(dev, i);
-		ret = PTR_ERR_OR_ZERO(paths[i]);
-		if (ret)
-			break;
-	}
-
-	while (i--)
-		icc_put(paths[i]);
-
-	kfree(paths);
-
-	return ret;
-}
-
 static int resources_available(void)
 {
 	struct device *cpu_dev;
@@ -165,15 +121,9 @@ static int resources_available(void)
 
 	clk_put(cpu_clk);
 
-	ret = find_icc_paths(cpu_dev);
-	if (ret) {
-		if (ret == -EPROBE_DEFER)
-			dev_dbg(cpu_dev, "defer icc path: %d\n", ret);
-		else
-			dev_err(cpu_dev, "failed to get icc path: %d\n", ret);
-
+	ret = dev_pm_opp_of_find_icc_paths(cpu_dev, NULL);
+	if (ret)
 		return ret;
-	}
 
 	name = find_supply_name(cpu_dev);
 	/* Platform doesn't require regulator */

-- 
viresh
