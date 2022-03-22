Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 47D4D4E3895
	for <lists+devicetree@lfdr.de>; Tue, 22 Mar 2022 06:53:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236801AbiCVFwt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Mar 2022 01:52:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236957AbiCVFvo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Mar 2022 01:51:44 -0400
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 123A01EEEA
        for <devicetree@vger.kernel.org>; Mon, 21 Mar 2022 22:50:15 -0700 (PDT)
Received: by mail-pl1-x630.google.com with SMTP id p17so14567087plo.9
        for <devicetree@vger.kernel.org>; Mon, 21 Mar 2022 22:50:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=OiFNJfidtcLZL95dwA0p8vHTH/+gyq0cBwTFe4nfHC4=;
        b=Xah2mlFjMxPCVZIJqy66fknjtsMhxeCVTydPkhuVIhFnZ/BgjgGhNaruBdgj1vZs0b
         2QMa6sw4IY0eovwypGbY5TuWnxD7RFBNjbuOHKjHlXYB4Yu3e/vb1+PnDfyCPgOq5fbK
         9aGO1/lXoHepeHBldsyDEKan7b9G6CzNcaA+PrdoAt6MJpmUttOPFoIppKVzJ3phEnmB
         NpxDUDwv9dcKkYpsJ+BmSfpgbBdJKNNPRXr1yK1Wt1n4H5i++vO6BarrEMpL7FvHwJnY
         cVVtFc//UpVaMp+244Mr+JBarhoElto4LmSS55vSEUqIeYBn/GR80lsLAZZ2pUmcBhTE
         vqHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=OiFNJfidtcLZL95dwA0p8vHTH/+gyq0cBwTFe4nfHC4=;
        b=fJTCQ7c616twJoY9RJUReepEUxvg914hGqsSesvFQQJtfDEFj0507Mhk7I6U6Rqf75
         sI/G4ATFq3qy945YIVKS9Fyco0/H5iC98CakseiJPsWt30z8Az0USEXqCcQavvbH8YD3
         +/M+oyIpof3Y98h3zA1Ls+9hiRa3A223m1ZRQTd+JBEQ3kRxSq7J6c48GXq5Jct4JCLS
         umID5JCduPKfkxtRLbYIpxL4C8bcMToqdxsDXBBshpgKQ65jdz6Q+/Q9LOKEmtRyhdmy
         CGDlNdnu/IPDOWYS1pN35YMHMYpSAezRBq8z6pmJugtwNcrELK/2uXL2AMnCn2Sycit0
         0JUw==
X-Gm-Message-State: AOAM531aGmV23FBHQ8lIKb6mhd+/54W/3g34F8caZvrTohXJ2bipuIvG
        SET3WOB2DtnVYEcioIQ3HCHthg==
X-Google-Smtp-Source: ABdhPJyTbqoe7gBP/CG0o/jv5uRTemAQdRxljUYXISAvD47ve8cH8r8ZXSpYzJBA6cH1dGxCRFJKqw==
X-Received: by 2002:a17:90b:504:b0:1c7:3095:fd78 with SMTP id r4-20020a17090b050400b001c73095fd78mr3068701pjz.142.1647928214587;
        Mon, 21 Mar 2022 22:50:14 -0700 (PDT)
Received: from localhost ([223.184.83.228])
        by smtp.gmail.com with ESMTPSA id m14-20020a637d4e000000b00380b83e2e1fsm16229226pgn.70.2022.03.21.22.50.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Mar 2022 22:50:13 -0700 (PDT)
Date:   Tue, 22 Mar 2022 11:20:12 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Sumit Gupta <sumitg@nvidia.com>
Cc:     rafael@kernel.org, robh+dt@kernel.org, krzk+dt@kernel.org,
        treding@nvidia.com, jonathanh@nvidia.com, linux-pm@vger.kernel.org,
        linux-tegra@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ksitaraman@nvidia.com,
        sanjayc@nvidia.com, bbasu@nvidia.com
Subject: Re: [Patch v1 3/3] cpufreq: tegra194: Add support for Tegra234
Message-ID: <20220322055012.oewlqykxb4dlkhbr@vireshk-i7>
References: <20220316135831.900-1-sumitg@nvidia.com>
 <20220316135831.900-4-sumitg@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220316135831.900-4-sumitg@nvidia.com>
User-Agent: NeoMutt/20180716-391-311a52
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16-03-22, 19:28, Sumit Gupta wrote:
> @@ -442,6 +538,13 @@ static int tegra194_cpufreq_probe(struct platform_device *pdev)
>  	if (!data->tables)
>  		return -ENOMEM;
>  
> +	if (of_device_is_compatible(pdev->dev.of_node, "nvidia,tegra234-ccplex-cluster")) {

Since you have soc specific data, that should be used here to know if you need
to map registers or not. You shouldn't use device-compatible here again.

> +		/* mmio registers are used for frequency request and re-construction */
> +		data->regs = devm_platform_ioremap_resource(pdev, 0);
> +		if (IS_ERR(data->regs))
> +			return PTR_ERR(data->regs);
> +	}
> +
>  	platform_set_drvdata(pdev, data);
>  
>  	bpmp = tegra_bpmp_get(&pdev->dev);
> @@ -486,6 +589,7 @@ static int tegra194_cpufreq_remove(struct platform_device *pdev)
>  
>  static const struct of_device_id tegra194_cpufreq_of_match[] = {
>  	{ .compatible = "nvidia,tegra194-ccplex", .data = &tegra194_cpufreq_soc },
> +	{ .compatible = "nvidia,tegra234-ccplex-cluster", .data = &tegra234_cpufreq_soc },
>  	{ /* sentinel */ }
>  };
>  
> -- 
> 2.17.1

-- 
viresh
