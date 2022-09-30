Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 04E3D5F0972
	for <lists+devicetree@lfdr.de>; Fri, 30 Sep 2022 13:04:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231898AbiI3LEZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Sep 2022 07:04:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47878 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231948AbiI3LEB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Sep 2022 07:04:01 -0400
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BE7B2B63B
        for <devicetree@vger.kernel.org>; Fri, 30 Sep 2022 03:41:20 -0700 (PDT)
Received: by mail-lj1-f179.google.com with SMTP id b6so4328581ljr.10
        for <devicetree@vger.kernel.org>; Fri, 30 Sep 2022 03:41:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=DHyjSvWFafxrUZSLSKphwWug6qO11PTyy8EC6/CFHNo=;
        b=zeEB3gMk9S3BNXByPbzFN/5LufqUHiSqsHEtAKTSyThiCJdHBPJZY8XgVJsODV+LVX
         FMSDroYjcZLPSIvnmxpsBuX53i8rPnYTThqFcQkRjLp+IF+r/3WOJZhfn/yJKqyDJiPe
         brcP8ptIFdGt2Rbv//bun2605BYVgehqpjuT4OyQ9FLR0iWkwGbXaeQNcDvamJT6JIgH
         10L/g22jCr+Szpc74XcMxFxxndaLAfv+qHmcR2SdDHM0gGEy0+x6WmORWbiO3C6XbWQY
         cvNru9r5Oq5uCIZasDsLNhoaFzNssLDfozVvL2TJjNFemTQCatvg7N4mJbihll2nEyDL
         i11A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=DHyjSvWFafxrUZSLSKphwWug6qO11PTyy8EC6/CFHNo=;
        b=OZ1HaW8r+U8iLghDpETzFd7u8EknfSq2AkdRaCRiFBC/OAT4gyW+65vgHbMeEBWbZk
         fYEZXQ6OQP74w01ywZoe0dnIOVIhxQlYXxDgeQuaHpbZW/fulv+br+Mg1N8j10jkuUJN
         IurS2vVw4CIAxyYGN36A7/2cJnHvyszn06oRpllnQZ0uB1UGXN2oxDHIwwZs0BsTh+OS
         jWR2T88n7727SFxrjtyol/uPUrSsOYKy53cTMEPqsDJDUpqVg6y7rEekceIc3Hc0w19Z
         CqwYbfJ07TyJiombR45YbwQQPt++2lP8bJ6+zZDmcP/uBkcGFHnakj14BeBNur4UFTcc
         Hhuw==
X-Gm-Message-State: ACrzQf0IY0LbJvGwAujO0pZwtIA2/7019e7qhAuGXxVFLnIr7DQeLNeC
        Uv8i9vavI35GLvcARigPG/VFIA==
X-Google-Smtp-Source: AMsMyM7oIZ5PkBFaOd5ZeSWnF2s8aCQy4SEw81oLE1+g/hc3QtDlUtSqsePxeeNvDRQ/vHNU6+ENEg==
X-Received: by 2002:a2e:7d13:0:b0:26c:4062:acfe with SMTP id y19-20020a2e7d13000000b0026c4062acfemr2800896ljc.201.1664534110898;
        Fri, 30 Sep 2022 03:35:10 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id y7-20020a2e5447000000b0026c5ab1883dsm125540ljd.16.2022.09.30.03.35.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Sep 2022 03:35:10 -0700 (PDT)
Message-ID: <c1e34c50-50ac-0e06-3af7-a1eec886bf07@linaro.org>
Date:   Fri, 30 Sep 2022 12:35:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH 2/3] watchdog: xilinx_wwdt: Add Versal window watchdog
 support
Content-Language: en-US
To:     Srinivas Neeli <srinivas.neeli@amd.com>, wim@linux-watchdog.org,
        linux@roeck-us.net, shubhrajyoti.datta@amd.com,
        michal.simek@amd.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        git@amd.com
References: <20220927110257.41963-1-srinivas.neeli@amd.com>
 <20220927110257.41963-3-srinivas.neeli@amd.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220927110257.41963-3-srinivas.neeli@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/09/2022 13:02, Srinivas Neeli wrote:
> +
> +static void xwwdt_clk_disable_unprepare(void *data)
> +{
> +	clk_disable_unprepare(data);

If watchdog is stopped and then device unbound, don't you have double
disable? IOW, where is matching clk_enable?

> +}
> +
> +static const struct watchdog_info xilinx_wwdt_ident = {
> +	.options = WDIOF_KEEPALIVEPING |
> +		WDIOF_SETTIMEOUT,
> +	.firmware_version = 1,
> +	.identity = "xlnx_window watchdog",
> +};
> +
> +static const struct watchdog_ops xilinx_wwdt_ops = {
> +	.owner = THIS_MODULE,
> +	.start = xilinx_wwdt_start,
> +	.stop = xilinx_wwdt_stop,
> +	.set_timeout = xilinx_wwdt_set_timeout,
> +	.ping = xilinx_wwdt_keepalive,
> +};
> +
> +static int xwwdt_probe(struct platform_device *pdev)
> +{
> +	struct watchdog_device *xilinx_wwdt_wdd;
> +	struct device *dev = &pdev->dev;
> +	struct xwwdt_device *xdev;
> +	int ret;
> +
> +	xdev = devm_kzalloc(dev, sizeof(*xdev), GFP_KERNEL);
> +	if (!xdev)
> +		return -ENOMEM;
> +
> +	xilinx_wwdt_wdd = &xdev->xilinx_wwdt_wdd;
> +	xilinx_wwdt_wdd->info = &xilinx_wwdt_ident;
> +	xilinx_wwdt_wdd->ops = &xilinx_wwdt_ops;
> +	xilinx_wwdt_wdd->parent = dev;
> +
> +	xdev->base = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(xdev->base))
> +		return PTR_ERR(xdev->base);
> +
> +	xdev->clk = devm_clk_get(dev, NULL);
> +	if (IS_ERR(xdev->clk))
> +		return PTR_ERR(xdev->clk);
> +
> +	xdev->freq = clk_get_rate(xdev->clk);
> +	if (!xdev->freq)
> +		return -EINVAL;
> +
> +	ret = clk_prepare_enable(xdev->clk);
> +	if (ret) {
> +		dev_err(dev, "unable to enable clock\n");
> +		return ret;
> +	}
> +
> +	ret = devm_add_action_or_reset(dev, xwwdt_clk_disable_unprepare,
> +				       xdev->clk);
> +	if (ret)
> +		return ret;
> +
> +	xilinx_wwdt_wdd->timeout = XWWDT_DEFAULT_TIMEOUT;
> +	xilinx_wwdt_wdd->min_timeout = XWWDT_MIN_TIMEOUT;
> +	xilinx_wwdt_wdd->max_timeout = XWWDT_MAX_TIMEOUT;
> +
> +	ret = watchdog_init_timeout(xilinx_wwdt_wdd,
> +				    xwwdt_timeout, &pdev->dev);
> +	if (ret)
> +		dev_info(&pdev->dev, "Configured default timeout value\n");
> +
> +	spin_lock_init(&xdev->spinlock);
> +	watchdog_set_drvdata(xilinx_wwdt_wdd, xdev);
> +
> +	ret = devm_watchdog_register_device(dev, xilinx_wwdt_wdd);
> +	if (ret)
> +		return ret;
> +
> +	dev_info(dev, "Xilinx window watchdog Timer with timeout %ds\n",
> +		 xilinx_wwdt_wdd->timeout);
> +
> +	return 0;
> +}
> +
> +static const struct of_device_id xwwdt_of_match[] = {
> +	{ .compatible = "xlnx,versal-wwdt-1.0", },
> +	{},
> +};
> +MODULE_DEVICE_TABLE(of, xwwdt_of_match);
> +
> +static struct platform_driver xwwdt_driver = {
> +	.probe = xwwdt_probe,
> +	.driver = {
> +		.name = "Xilinx window watchdog",

Do you see spaces in other names of drivers?

Best regards,
Krzysztof

