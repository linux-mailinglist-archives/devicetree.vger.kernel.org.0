Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 627B2475CF1
	for <lists+devicetree@lfdr.de>; Wed, 15 Dec 2021 17:11:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238089AbhLOQLv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Dec 2021 11:11:51 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:49728
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S238254AbhLOQLu (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 15 Dec 2021 11:11:50 -0500
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com [209.85.208.198])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id A9A083F1C6
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 16:11:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1639584709;
        bh=HEryT/59cwIP/SgJfqP9kYNmdFO5OiSXHgK40bkLxdM=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=O0X4MFdfW9C0nCwVLfHaZBjMBz+yS0FwF5ARgxIANy1Jxaqto9ooU2VAMZmS6Ibaa
         02DSTgQ5ixGykP5PbiCokQpgczADv4u+qL//oR0dVTAOG1kMyPuxGqg2CsjfmchS1f
         QU49CwIgmshFW+hFQ8SUeX4AFT4Q49yYoazYJBUHU6pmR7fjR5RbUoi7bWGJ0CTh4F
         lIredh6VIAhol1EmXWkPwNp9qLpr5bJKuwIfpKq+mJuxTXYwgpYu5Bnpc7V0LaVh69
         waMNM+Hb4MU7iIJmmDxfzyS+GHOmKRToYPB8IhFrYeU2nLEJPX/8nOvH6CMZjVfAiy
         4X32xDBNuyDlw==
Received: by mail-lj1-f198.google.com with SMTP id q19-20020a05651c055300b0021a259ae8bbso7213708ljp.4
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 08:11:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=HEryT/59cwIP/SgJfqP9kYNmdFO5OiSXHgK40bkLxdM=;
        b=M1AbTYTdE8+OV/A9U7IqArHAfd5GY2JXTK7AEWZu0PtAJuV778i7IijI5WI317Co1H
         Q9p3Fe8fHUaAjYaAjNcmjQABcXdmHFWPL5elODJ4UWUMdg0cDOOMVVE6CKTKqCC5VnUR
         Jxe6L0B2a2wj4rj908jfglk/X3Nlbg51rXfoVNp6mcxcw1WfQnf92sUtSOupziaDvR7x
         Qzv54emQcXOcd0DUh+qK7vO9E/laEqkMTCbUSwwXOFQ3JOb2COLcL3SMl5zy+Ni52WXa
         aes4mG6tzColiNmbamosB+g3Ihehpmhv1jvXbt152LeMZq7oOBzhiRjwUeEFR2jPgAcw
         nTFw==
X-Gm-Message-State: AOAM532tps6utioV2uKoZWhqHzR043y+N81HAgWOZ2QYFDIXLZnBeZSA
        ZvOZQ+szxyqAk15nUoTHFLz/SRYP4/CY5lefonbqd20bWtoWxq8yDQG8ddK3xt1xzC9ZjMqsCXr
        D9HsLJwYaIp2sVXnCc616/OXDxL3+bxn5uqc96zY=
X-Received: by 2002:a05:6512:3fa:: with SMTP id n26mr10779805lfq.369.1639584709155;
        Wed, 15 Dec 2021 08:11:49 -0800 (PST)
X-Google-Smtp-Source: ABdhPJw1QHtNZSWhWsx7d0Gr+L7f/sF8couHjZyoyUMKUsr2/tG2om/weSyMTpr4+BviHq0uyXtW0w==
X-Received: by 2002:a05:6512:3fa:: with SMTP id n26mr10779784lfq.369.1639584708997;
        Wed, 15 Dec 2021 08:11:48 -0800 (PST)
Received: from [192.168.3.67] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id m3sm522157lji.112.2021.12.15.08.11.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Dec 2021 08:11:48 -0800 (PST)
Message-ID: <6b5fd3fd-18cf-3b6d-934b-11a82cf404dd@canonical.com>
Date:   Wed, 15 Dec 2021 17:11:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH 1/7] dt-bindings: clock: exynos850: Add bindings for
 Exynos850 sysreg clocks
Content-Language: en-US
To:     Sam Protsenko <semen.protsenko@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>
Cc:     Jaewon Kim <jaewon02.kim@samsung.com>,
        Chanho Park <chanho61.park@samsung.com>,
        David Virag <virag.david003@gmail.com>,
        Youngmin Nam <youngmin.nam@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Daniel Palmer <daniel@0x0f.com>,
        Hao Fang <fanghao11@huawei.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
References: <20211215160906.17451-1-semen.protsenko@linaro.org>
 <20211215160906.17451-2-semen.protsenko@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20211215160906.17451-2-semen.protsenko@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/12/2021 17:09, Sam Protsenko wrote:
> System Register is used to configure system behavior, like USI protocol,
> etc. SYSREG clocks should be provided to corresponding syscon nodes, to
> make it possible to modify SYSREG registers.
> 
> While at it, add also missing PMU and GPIO clocks, which looks necessary
> and might be needed for corresponding Exynos850 features soon.
> 
> Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
> ---
>  include/dt-bindings/clock/exynos850.h | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
