Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DA3233FB0B1
	for <lists+devicetree@lfdr.de>; Mon, 30 Aug 2021 07:11:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230202AbhH3FMF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Aug 2021 01:12:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230057AbhH3FME (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Aug 2021 01:12:04 -0400
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com [IPv6:2607:f8b0:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE096C061756
        for <devicetree@vger.kernel.org>; Sun, 29 Aug 2021 22:11:11 -0700 (PDT)
Received: by mail-pg1-x52e.google.com with SMTP id n18so12267715pgm.12
        for <devicetree@vger.kernel.org>; Sun, 29 Aug 2021 22:11:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=cWgVMXSad5yZ3bSOJM1fkZY0lTxqB0etZLZP8BLZWaQ=;
        b=Dvm58Zl/eh6Y1ogYPdZEXoLGCZocbMiYuV4MhZMMRvGkLgoz6LoR1BoePfSII1Lj3C
         a7eu0FRp7nYY6JoY5ko7EEdcBQoRpYYwtLXHNgzvckvM8WPawZhen5cxszM0mrWe8IdE
         1mxJJ7tsp6tLFbdClK0nmHM7hnsQOLqT3XXkv+lys8t0NLfN3pTESrrY3iNdLQlwBQy4
         voGZtnxgH/TN8mMMztgF62xy6l57HbXhX0b3yh9XIj7VW4PJMsWIbdu39LDfmVzCaEg8
         0HwaT0UNS6R2IKLAD5xPefpCveIQ20hoAvBqir+0cj8F8gvqIw+KBxmuaoQ7aRmZ3HMp
         A90A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=cWgVMXSad5yZ3bSOJM1fkZY0lTxqB0etZLZP8BLZWaQ=;
        b=kSxmcNe7Md6Yub0Q0blw5Cs/XG0Ses2LQ7s+05lvQzd4irZxExpmNTQM2ICYn3CqNg
         l49DfpS3CecjMyeUq7MWAHVQffvjCG3VUvCk3lQqrww+cE4+hK4U/Y4YfanPpfWfVp5o
         N65Oe59pgKR+C+ZtjBdI7WsV/5i4T823AVt1W0Ns9wdXkqZQZFSh3K7bUku4VJOyVqEQ
         +X4eYmzpUBfkW4WNkR09gCSdZK3q4hrAxUnmMBo9k0wwa0rdIDmD/fGFLeXaILnfxMQo
         uG/oQrU+rGwYLnpb2pSlh3CQFsAaj22j5uOVgacQswwIBAwWRvk3wUzOXJJcveBVlf0i
         rhEA==
X-Gm-Message-State: AOAM5329ubfIoYifSXdNEQvhPnJSTV267N2gtq8qOwnSHyELAV0Z1lOK
        9oQvhDtzXI1QXrdo9yqGAItAeg==
X-Google-Smtp-Source: ABdhPJxVvZKVY4Tk4ROefO4P5N5TZZU6g+xJz7KhOKoLTAr78z/oKOO+sfplxt4Y96r0FgOav2n/rA==
X-Received: by 2002:a62:a20d:0:b029:35b:73da:dc8d with SMTP id m13-20020a62a20d0000b029035b73dadc8dmr21842513pff.54.1630300271022;
        Sun, 29 Aug 2021 22:11:11 -0700 (PDT)
Received: from localhost ([122.172.201.85])
        by smtp.gmail.com with ESMTPSA id d5sm2729182pjs.53.2021.08.29.22.11.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Aug 2021 22:11:10 -0700 (PDT)
Date:   Mon, 30 Aug 2021 10:41:08 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Hector Yuan <hector.yuan@mediatek.com>
Cc:     linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org,
        "Rafael J. Wysocki" <rjw@rjwysocki.net>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, wsd_upstream@mediatek.com
Subject: Re: [PATCH v14 3/3] cpufreq: mediatek-hw: Add support for CPUFREQ HW
Message-ID: <20210830051108.xgfwp2uvh724syeu@vireshk-i7>
References: <1630162872-25452-1-git-send-email-hector.yuan@mediatek.com>
 <1630162872-25452-4-git-send-email-hector.yuan@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1630162872-25452-4-git-send-email-hector.yuan@mediatek.com>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28-08-21, 23:01, Hector Yuan wrote:
> +static int mtk_cpu_resources_init(struct platform_device *pdev,
> +				  struct cpufreq_policy *policy,
> +				  const u16 *offsets)
> +{
> +	struct mtk_cpufreq_data *data;
> +	struct device *dev = &pdev->dev;
> +	void __iomem *base;
> +	int ret, i;
> +	int index;
> +
> +	data = devm_kzalloc(dev, sizeof(*data), GFP_KERNEL);
> +	if (!data)
> +		return -ENOMEM;
> +
> +	index = of_perf_domain_get_sharing_cpumask(policy->cpu, "performance-domains",
> +						   "#performance-domain-cells",
> +						   policy->cpus);

You pass CPU here, while the first patch accepts index. Does this even work? Or
work just by chance ?

-- 
viresh
