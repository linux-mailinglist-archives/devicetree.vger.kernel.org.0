Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 28C5D38CFCE
	for <lists+devicetree@lfdr.de>; Fri, 21 May 2021 23:22:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229693AbhEUVYP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 May 2021 17:24:15 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:56459 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229639AbhEUVYO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 May 2021 17:24:14 -0400
Received: from mail-vs1-f71.google.com ([209.85.217.71])
        by youngberry.canonical.com with esmtps  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
        (Exim 4.93)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lkCbY-000152-H1
        for devicetree@vger.kernel.org; Fri, 21 May 2021 21:22:48 +0000
Received: by mail-vs1-f71.google.com with SMTP id y13-20020a67d20d0000b02902354e7b1beaso7248549vsi.5
        for <devicetree@vger.kernel.org>; Fri, 21 May 2021 14:22:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=jSKiGkFsHm8qeUwaLdynXEY7fptjk7YiH8pCxN+OTOM=;
        b=oeK2WZqQMlktHKMSpRnN0cPM0IraD23ALyXYR6cTNf31R399MHaXD2cJqmb7XWLNp3
         M/rU4sbZxCXwgJaNzF93/rh/OwqExBGjDf/7e26g8+8i5lPsHchCRQsa7fkdrZIQAnAw
         6t2Oe6DejdJh72S+ewfrQAphyPyWNxmo/hUL/hoaSOEDYVOSkTTanYEwW04Kt8s7g1Ff
         ex2VsTV5Eo5gVdbHLKY3sZJhownghdxZ8PNSbrYbz9ZDrzmuvVg6z6kihYhYPZUQOuoG
         1Xa5VrVJVpAsLvfvvXekZMC3a4W+uQwv4yEMCQkojVcN6QdSvyonCLKnULrZANUVF2jN
         y5rw==
X-Gm-Message-State: AOAM530gzznCuQeuQKa49O7GNUvH2jzSkvfBE8q1kmjqWyRGkK4QZB1j
        rAZ0o2s4egbPVmajGS8KuwyDynhR++hlA6Yairi7BVJyLO+gGW5B6rbm+PgHy2pJ3jGTEsLeYgl
        jCX5i5WFUrFmhg208DsWv9uAvfDloq1oBbXjayJ0=
X-Received: by 2002:ab0:63d4:: with SMTP id i20mr11750983uap.21.1621632167734;
        Fri, 21 May 2021 14:22:47 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzvQ2l1U8szglgOD1N+hyDpgNDWEMA/0qq5+dQBkcYT64fZxhNQR94GbFgCi0ec6pzhy1FOKA==
X-Received: by 2002:ab0:63d4:: with SMTP id i20mr11750968uap.21.1621632167595;
        Fri, 21 May 2021 14:22:47 -0700 (PDT)
Received: from [192.168.1.4] ([45.237.48.5])
        by smtp.gmail.com with ESMTPSA id 39sm798548uaq.5.2021.05.21.14.22.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 May 2021 14:22:47 -0700 (PDT)
Subject: Re: [PATCH v1 09/13] memory: tegra20-emc: Use
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
 <20210520230751.26848-10-digetx@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <f24704bf-c9aa-1552-659f-a3eff9086ecc@canonical.com>
Date:   Fri, 21 May 2021 17:22:45 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210520230751.26848-10-digetx@gmail.com>
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
> Tested-by: Paul Fertser <fercerpav@gmail.com> # PAZ00 T20
> Tested-by: Nicolas Chauvet <kwizart@gmail.com> # PAZ00 T20
> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
> ---
>  drivers/memory/tegra/tegra20-emc.c | 48 +++---------------------------
>  1 file changed, 4 insertions(+), 44 deletions(-)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
