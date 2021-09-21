Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CCBFF4130F1
	for <lists+devicetree@lfdr.de>; Tue, 21 Sep 2021 11:49:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231530AbhIUJvG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Sep 2021 05:51:06 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:41742
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231521AbhIUJvD (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 21 Sep 2021 05:51:03 -0400
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com [209.85.221.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 345213F31E
        for <devicetree@vger.kernel.org>; Tue, 21 Sep 2021 09:49:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632217770;
        bh=TC8to0fdr9vxFSQxicA3tEJVkEMx8qYFCoQHA/EWSRQ=;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=ewR8X7tPOefeU0cAt047cYQtlpu5DRDi1TBxfRsJ2PkJWDyawz+FCijJ5QlQWgdsQ
         76kHXvfa+CA/86bjWJzlfMeE0JP7I5NZYAIzXn/aAEPyyP0oWQ5tCjG4POpnC1VHaJ
         YyyU12+kWf5lLphTuRCet29fSlKcXLWVjg9+E9bNipAiHS8wV3pXHR4EKKfvi6Btye
         opCToHTcNyJTuJfHobm/ABvHT42Nsd4GaL+StG/Odw7meSnBgSRK/VpbuxEwm7yGnZ
         hQ+KaHieJ6hiIWePkIEXOVXo6i57k2Cfwb67dExrhB2n1E5YXIUjlLbt+tcc8pqJpj
         2mfJUWwzs8XiQ==
Received: by mail-wr1-f71.google.com with SMTP id l9-20020adfc789000000b00160111fd4e8so3103106wrg.17
        for <devicetree@vger.kernel.org>; Tue, 21 Sep 2021 02:49:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=TC8to0fdr9vxFSQxicA3tEJVkEMx8qYFCoQHA/EWSRQ=;
        b=mdPNrwPrHrFo1ZS9mYSqR7owA2aQYc9sN49SIghZEVntGhxSpBoTdPU74523uEmofU
         fJ4weVmrjK/4YBhgiSLx2lChKKEB2EcQ4vB/o3AyTmtdRrsXe2LwneDbeqSzt1Tz64VU
         p6gbleJ7kknAaFsTFakXM3/a6bEcmN/ShJl8PGld2TBDn5i8DZPfsAvuHG+t43sy2S24
         G/trB3NHVDaQAxCTZ+ZRMudvzY79wbymK2mFEO8U56D7qubSO1tbrLRjxFJz2+I/q1jW
         3BZ6Us4hULsMyR1GJC7/JNd4XGYshUGSSM6xjBwKIXVvU4EaFO64Sv/WVv+dkvXrJZS0
         l2MQ==
X-Gm-Message-State: AOAM5302K8SvMPzLbr9UtCVRnals/T4RqxlY3AkE8FDjWdxHlLhbCFBc
        gJE3Fsw+xLlB4YUqcAvdYXnf4z878n/XA3AQEULd8dkCujwdE0HOB2pCZyw/eZqzWJw7yi1nXKH
        6NjzzxbkDBge84sHdJy9OAKp2VVR8tmcG4lkCkqY=
X-Received: by 2002:adf:e6d0:: with SMTP id y16mr33331514wrm.284.1632217769961;
        Tue, 21 Sep 2021 02:49:29 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxQF/TUirez5540bL5zNEt/2NcRjxdz50w7vq6r7Er4fKkMq96l4CT6K2GEozMAHCojeKegcg==
X-Received: by 2002:adf:e6d0:: with SMTP id y16mr33331492wrm.284.1632217769817;
        Tue, 21 Sep 2021 02:49:29 -0700 (PDT)
Received: from [192.168.0.134] (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.gmail.com with ESMTPSA id j134sm2798987wmj.27.2021.09.21.02.49.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Sep 2021 02:49:29 -0700 (PDT)
Subject: Re: [PATCH V1 1/3] dt-bindings: tegra: memory,bpmp-thermal: add SPDX
 license
To:     Bitan Biswas <bbiswas@nvidia.com>,
        Rob Herring <robh+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        Steven Rostedt <rostedt@goodmis.org>,
        Ingo Molnar <mingo@redhat.com>,
        Jassi Brar <jassisinghbrar@gmail.com>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc:     Sowjanya Komatineni <skomatineni@nvidia.com>,
        Mark Brown <broonie@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-tegra@vger.kernel.org
References: <20210921094206.2632-1-bbiswas@nvidia.com>
 <20210921094206.2632-2-bbiswas@nvidia.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <176ba3a3-5179-56b6-081a-6c93493b207b@canonical.com>
Date:   Tue, 21 Sep 2021 11:49:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210921094206.2632-2-bbiswas@nvidia.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/09/2021 11:42, Bitan Biswas wrote:
> Add Dual licensing SPDX license identifier for tegra186,tegra194
> memory and bpmp-thermal headers.
> 
> Signed-off-by: Bitan Biswas <bbiswas@nvidia.com>
> ---
>  include/dt-bindings/memory/tegra186-mc.h            | 1 +
>  include/dt-bindings/memory/tegra194-mc.h            | 1 +
>  include/dt-bindings/thermal/tegra186-bpmp-thermal.h | 1 +
>  include/dt-bindings/thermal/tegra194-bpmp-thermal.h | 1 +
>  4 files changed, 4 insertions(+)
> 
> diff --git a/include/dt-bindings/memory/tegra186-mc.h b/include/dt-bindings/memory/tegra186-mc.h
> index 82a1e27f7357..be313d3790ae 100644
> --- a/include/dt-bindings/memory/tegra186-mc.h
> +++ b/include/dt-bindings/memory/tegra186-mc.h
> @@ -1,3 +1,4 @@
> +/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
>  #ifndef DT_BINDINGS_MEMORY_TEGRA186_MC_H
>  #define DT_BINDINGS_MEMORY_TEGRA186_MC_H
>  

The files were licensed as GPL-2.0 only, so you are effectively
re-licensing them. I guess this is ok, as you act on behalf of copyright
holders, but please state it in the commit message.

Best regards,
Krzysztof
