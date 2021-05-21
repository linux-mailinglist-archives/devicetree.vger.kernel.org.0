Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CCC8538CFD7
	for <lists+devicetree@lfdr.de>; Fri, 21 May 2021 23:23:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229956AbhEUVYp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 May 2021 17:24:45 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:56523 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229988AbhEUVYi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 May 2021 17:24:38 -0400
Received: from mail-ua1-f69.google.com ([209.85.222.69])
        by youngberry.canonical.com with esmtps  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
        (Exim 4.93)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lkCbw-00019E-LD
        for devicetree@vger.kernel.org; Fri, 21 May 2021 21:23:12 +0000
Received: by mail-ua1-f69.google.com with SMTP id b34-20020ab014250000b02901eb696c5fbaso7991838uae.22
        for <devicetree@vger.kernel.org>; Fri, 21 May 2021 14:23:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=fROMD6BYmf3h06oRhpwPZGf5qSe1v9Tji/Vc0NCzaJs=;
        b=txvYkIpOa7aaUXZxZxQnBLx/+GyappqEk6YSdZxytKGU4Dmn2WPrC41frOPk1xx3TU
         gxIUZdpK8+3uIlfRgnIQ3KmafR7rftWLwszWyw0gVtOmLwBiI0zudxY8WLISfitbtZdf
         SI9D+D5+yfbZLGD7Dm642eDZZ5jroVYzegJlcCDI4Loodsii93PCsB/0r46FaK5PnHiV
         gIw3QJdryBrlkdvDShycTDbQHJANbXGm3fFn4LeLJuiHmVcvQb3bXRPuDcF/1OBWJfZv
         o62Vm1QjUqoVmCH4/Eh0Myisgr9ksN/7c6uIvDsmLlMFphdAC23GZZAw7i4hfcwzky65
         BkhA==
X-Gm-Message-State: AOAM531CbdA4lfiHYskJiEC8Wyu7niu/Jb2Ib4RqsMWdgW3sod+rbqBw
        LsnekQJlh30ndSzb8UV7eKV7FcjNtmCjWKfqRmcpdObM/SXmeJClCumFe8/ky2LHSozvjrmOMS9
        KA6vSyKrAGyi14f6mud/zDdX7qKm3sZjEDcMKiqM=
X-Received: by 2002:a67:2c57:: with SMTP id s84mr13304958vss.32.1621632191789;
        Fri, 21 May 2021 14:23:11 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzAkzP0vI6cvbwXWhDnOK8BKrtLOqAAl/3T8yacV2iIbe5gMjJbANDaWCWgPJfJiZWzKX/R1Q==
X-Received: by 2002:a67:2c57:: with SMTP id s84mr13304943vss.32.1621632191648;
        Fri, 21 May 2021 14:23:11 -0700 (PDT)
Received: from [192.168.1.4] ([45.237.48.5])
        by smtp.gmail.com with ESMTPSA id r12sm825043uao.6.2021.05.21.14.23.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 May 2021 14:23:11 -0700 (PDT)
Subject: Re: [PATCH v1 10/13] memory: tegra30-emc: Use
 devm_tegra_core_dev_init_opp_table()
To:     Dmitry Osipenko <digetx@gmail.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        =?UTF-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>,
        =?UTF-8?Q?Nikola_Milosavljevi=c4=87?= <mnidza@outlook.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Peter Geis <pgwipeout@gmail.com>,
        Nicolas Chauvet <kwizart@gmail.com>,
        Viresh Kumar <vireshk@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Matt Merhar <mattmerhar@protonmail.com>,
        Paul Fertser <fercerpav@gmail.com>,
        Mikko Perttunen <mperttunen@nvidia.com>
Cc:     linux-kernel@vger.kernel.org, linux-tegra@vger.kernel.org,
        Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
        Nathan Chancellor <nathan@kernel.org>,
        linux-clk@vger.kernel.org
References: <20210520230751.26848-1-digetx@gmail.com>
 <20210520230751.26848-11-digetx@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <670d0d27-867a-7a1a-db58-692429ec30d6@canonical.com>
Date:   Fri, 21 May 2021 17:23:09 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210520230751.26848-11-digetx@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/05/2021 19:07, Dmitry Osipenko wrote:
> Use common devm_tegra_core_dev_init_opp_table() helper for the OPP table
> initialization.
> 
> Tested-by: Peter Geis <pgwipeout@gmail.com> # Ouya T30
> Tested-by: Matt Merhar <mattmerhar@protonmail.com> # Ouya T30
> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
> ---
>  drivers/memory/tegra/tegra30-emc.c | 48 +++---------------------------
>  1 file changed, 4 insertions(+), 44 deletions(-)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
