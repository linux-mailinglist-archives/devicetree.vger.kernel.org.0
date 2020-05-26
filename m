Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 53E991D0133
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2020 23:48:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731567AbgELVr4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 May 2020 17:47:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49986 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1731560AbgELVr4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 12 May 2020 17:47:56 -0400
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com [IPv6:2607:f8b0:4864:20::1044])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9005C061A0C
        for <devicetree@vger.kernel.org>; Tue, 12 May 2020 14:47:55 -0700 (PDT)
Received: by mail-pj1-x1044.google.com with SMTP id l73so949645pjb.1
        for <devicetree@vger.kernel.org>; Tue, 12 May 2020 14:47:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=Uv52gchuUhEIM8QP1BdGMzRp2+Ut2TatOyzveq7OlWs=;
        b=jkxjg0T2haVmUpTShuETFu1Wq++3MwjgbyneltOHIfk8XQsJNKxt922t1Ytvkm8wYD
         RuA4OJxZWBa/vXJiaIIZHvY9Y6cbdCyREuLDwkiTLEgkpxB1w1x5Blst/fjWuwf3ERc/
         bjUma8IUpfYR5TD4vtu6DAmnX6ipRd9lYuxZ8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Uv52gchuUhEIM8QP1BdGMzRp2+Ut2TatOyzveq7OlWs=;
        b=qnkTah3HNK48gSZPpIDVu30JsarqnOzrUfTz59UW/XuwNTnaicnsys2qIw/SstHRL+
         Vj+W595NBCXlbL9nv66Ke05GWl4y5JxHcmIKD2PC7+kumbSaHTpZvyC6DGmYhWuikI+Z
         FEAVn20Q/KN5IdjpDHoKxRRJfaIc6r3WyqSrLDjQMX5jvKmFV6zMRoSrBFmPusMFlwe+
         qFLXin+L0fCS7/aTl/eDaX0mSLa3cXL3ynKtQ49EetUDhCMc7h+yJs5QkUNXUOE/LWeY
         Dghymsokt9toi093ky2jJoU17+WMx1ny/67HA2b5R/Gz/he635GQqyn620ue2qgP7j3U
         ZHWQ==
X-Gm-Message-State: AGi0Pua6KIaOyT7op6gHeI6H0tLST6pjo7qWOerKeU7b9a++xbFUQBfg
        DEQ6JqMMxvWQT0VJLV7B1oT62w==
X-Google-Smtp-Source: APiQypJrjYK11lvG/VkCX0mmTLzIKKq0JSP9JmFg20XkcRaUfiuly0oHj8otgh7EUG0Oi/xXtpM8GA==
X-Received: by 2002:a17:90b:957:: with SMTP id dw23mr31666614pjb.101.1589320075184;
        Tue, 12 May 2020 14:47:55 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:4fff:7a6b:a335:8fde])
        by smtp.gmail.com with ESMTPSA id 135sm12786295pfu.125.2020.05.12.14.47.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 May 2020 14:47:54 -0700 (PDT)
Date:   Tue, 12 May 2020 14:47:53 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Georgi Djakov <georgi.djakov@linaro.org>
Cc:     vireshk@kernel.org, nm@ti.com, sboyd@kernel.org, rjw@rjwysocki.net,
        saravanak@google.com, sibis@codeaurora.org, robh+dt@kernel.org,
        rnayak@codeaurora.org, bjorn.andersson@linaro.org,
        vincent.guittot@linaro.org, jcrouse@codeaurora.org,
        evgreen@chromium.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 08/10] cpufreq: dt: Validate all interconnect paths
Message-ID: <20200512214753.GJ4525@google.com>
References: <20200512125327.1868-1-georgi.djakov@linaro.org>
 <20200512125327.1868-9-georgi.djakov@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20200512125327.1868-9-georgi.djakov@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Georgi,

On Tue, May 12, 2020 at 03:53:25PM +0300, Georgi Djakov wrote:
> Currently when we check for the available resources, we assume that there
> is only one interconnect path, but in fact it could be more than one. Do
> some validation to determine the number of paths and verify if each one
> of them is available.
> 
> Signed-off-by: Georgi Djakov <georgi.djakov@linaro.org>
> ---
> v8:
> * New patch.
> 
>  drivers/cpufreq/cpufreq-dt.c | 49 ++++++++++++++++++++++++++++++++----
>  1 file changed, 44 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/cpufreq/cpufreq-dt.c b/drivers/cpufreq/cpufreq-dt.c
> index 4ecef3257532..3dd28c2c1633 100644
> --- a/drivers/cpufreq/cpufreq-dt.c
> +++ b/drivers/cpufreq/cpufreq-dt.c
> @@ -91,12 +91,54 @@ static const char *find_supply_name(struct device *dev)
>  	return name;
>  }
>  
> +static int find_icc_paths(struct device *dev)
> +{
> +	struct device_node *np;
> +	struct icc_path **paths;
> +	int i, count, num_paths;
> +	int ret = 0;
> +
> +	np = of_node_get(dev->of_node);
> +	if (!np)
> +		return 0;
> +
> +	count = of_count_phandle_with_args(np, "interconnects",
> +					   "#interconnect-cells");
> +	of_node_put(np);
> +	if (count < 0)
> +		return 0;
> +
> +	/* two phandles when #interconnect-cells = <1> */
> +	if (count % 2) {
> +		dev_err(dev, "%s: Invalid interconnects values\n", __func__);
> +		return -EINVAL;
> +	}
> +
> +	num_paths = count / 2;
> +	paths = kcalloc(num_paths, sizeof(*paths), GFP_KERNEL);
> +	if (!paths)
> +		return -ENOMEM;
> +
> +	for (i = 0; i < num_paths; i++) {
> +		paths[i] = of_icc_get_by_index(dev, i);
> +		ret = PTR_ERR_OR_ZERO(paths[i]);
> +		if (ret)
> +			break;
> +	}
> +
> +	while (i--)
> +		icc_put(paths[i]);

Since the function only does a validation and throws the paths away
afterwards you don't really need the dynamic allocation and 'icc_put'
loop. Just have a single 'struct icc_path' pointer and call icc_put()
inside the for loop.
