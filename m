Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C2D6478C1C1
	for <lists+devicetree@lfdr.de>; Tue, 29 Aug 2023 11:52:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231840AbjH2Jwa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Aug 2023 05:52:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57886 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234945AbjH2Jv4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Aug 2023 05:51:56 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D740C10E
        for <devicetree@vger.kernel.org>; Tue, 29 Aug 2023 02:51:51 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-9a19bf6ab66so544564066b.3
        for <devicetree@vger.kernel.org>; Tue, 29 Aug 2023 02:51:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693302710; x=1693907510;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mpZOvmtn/uBflk6UybG+LvnSX9jdUkyMKQebc/rvrZU=;
        b=k8Jpl+T/nVE735bxJtvutdmgAHlJzhxATj53E0fbQBJzzqiwTEJT/5XdSfpU15UDBd
         NwTzq0gRFx7x83pnPe1NaEglOkzxXuZSzOI9E/G33syssQok6GKFaghyaWHWAAC4tkTs
         o/r9q8MnybrwrIpTox/ign049K0ThTIJwOgLSuMDFryT5DulQ48DEO6YA7zbsRJfoba+
         0E9aOqG7fSp8auH9xK1M97yl6NJb4EB60YleWTQ0UJY2PRVCT6cqZAQHTeQK7M0ZG0zJ
         kkOJ70ZTBd3q+umTLG3LG1RSa8MOBNwasd2/i/tJrH6e6v9P4YsAbtC+Z1mEflaVMgQB
         dz3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693302710; x=1693907510;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mpZOvmtn/uBflk6UybG+LvnSX9jdUkyMKQebc/rvrZU=;
        b=JuY7D3qf68I1Cr6HiMCR92+k5Da6oMGhtESPOORS+TGmvFZxRd2dD6hkAhU+c8KEd3
         1I9JGlTXOvmNehjPsV+2jPKmlhifWB/UThK9y6jXracN5NVOecT0UgPK4dKYbooCaFt+
         eMOip7NQ8W+vJmZrlGxAlaF71wAJxsOWZ0AP/WEhdiTiIyLmvbntOW7rTpkRl7fgeiY9
         X/GvKV3KBfRxecQ9pfVNClXuVQ2PM0iNH8BUdOH/1GLLLqk4+IrmOwn8+Jt9UDMh9Ojv
         o3SJkP/VG/wfAclN0b7EhOA1ei9t+JmbV9znjleiVCEhRi6s7l8QbEtSGD1vJM2BUH3W
         9mfg==
X-Gm-Message-State: AOJu0YzCN7nnpiOngh026uuHvneGLcaRlutStJSYB4p2E0k4g5osJp6m
        pLMzBuBkD13sSXMu66w1lY2Lvw==
X-Google-Smtp-Source: AGHT+IFUiV8p/ANbFTNC9RIN/3r4iqb4l6G/ZsoMzvfM4AkWJBdPw90kH5yF7d7rR4Roq+3CcYVclg==
X-Received: by 2002:a17:906:530c:b0:9a5:8155:6de with SMTP id h12-20020a170906530c00b009a5815506demr7288568ejo.45.1693302709860;
        Tue, 29 Aug 2023 02:51:49 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.196])
        by smtp.gmail.com with ESMTPSA id d16-20020a1709061f5000b009931a3adf64sm5857775ejk.17.2023.08.29.02.51.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Aug 2023 02:51:49 -0700 (PDT)
Message-ID: <0cb5fbd9-083f-8db7-e850-fcda9817bd23@linaro.org>
Date:   Tue, 29 Aug 2023 11:51:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 03/11] thermal: exynos: switch from workqueue-driven
 interrupt handling to threaded interrupts
Content-Language: en-US
To:     Mateusz Majewski <m.majewski2@samsung.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Amit Kucheria <amitk@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Marek Szyprowski <m.szyprowski@samsung.com>
References: <20230829091853.626011-1-m.majewski2@samsung.com>
 <CGME20230829092410eucas1p243a88662e8e64f0c406685931d9a80a3@eucas1p2.samsung.com>
 <20230829091853.626011-4-m.majewski2@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230829091853.626011-4-m.majewski2@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/08/2023 11:18, Mateusz Majewski wrote:
> The workqueue boilerplate is mostly one-to-one what the threaded
> interrupts do.
> 
> Signed-off-by: Mateusz Majewski <m.majewski2@samsung.com>


>  	data->clk = devm_clk_get(&pdev->dev, "tmu_apbif");
>  	if (IS_ERR(data->clk)) {
>  		dev_err(&pdev->dev, "Failed to get clock\n");
> @@ -1094,8 +1080,10 @@ static int exynos_tmu_probe(struct platform_device *pdev)
>  		goto err_sclk;
>  	}
>  
> -	ret = devm_request_irq(&pdev->dev, data->irq, exynos_tmu_irq,
> -		IRQF_TRIGGER_RISING | IRQF_SHARED, dev_name(&pdev->dev), data);
> +	ret = devm_request_threaded_irq(
> +		&pdev->dev, data->irq, NULL, exynos_tmu_threaded_irq,

This does not look properly aligned.

Best regards,
Krzysztof

