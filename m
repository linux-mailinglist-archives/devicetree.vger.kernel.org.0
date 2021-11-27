Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A8B1A45FED1
	for <lists+devicetree@lfdr.de>; Sat, 27 Nov 2021 14:20:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354880AbhK0NXz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 27 Nov 2021 08:23:55 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:33620
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1354763AbhK0NVz (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sat, 27 Nov 2021 08:21:55 -0500
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com [209.85.221.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id C9D0840023
        for <devicetree@vger.kernel.org>; Sat, 27 Nov 2021 13:18:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1638019119;
        bh=XlNC1VCy2s9y66a1+PddNrIyqziFzmje/wU1Hvd5Nh0=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=efESBC0EAwon/eGEgVisqN6nJDi2sBoysuAFRJDYHKX+fCg+OFpvTcNCZAZFauJRR
         FBsK3IK/MG69S+oFlV2rCsIVz9f712vYs0anwYjaTk5wctDDy48fwUmXp5Wp/Dwnyw
         29CrnIBxm+ZbxubleHn/Q8ffVhbZMItLcTxLfJkk5eftLyZ5UfDcWdWFy4KqE7Dje7
         qB3WO8tVKDQAYr5La06ox6jgVhwxYaV+2cA221hbKpgK5GqFgU1XNp5Hr0Qjk9oqFi
         cMKHHwjtf1hDFwZ53EyDK72W3yiu8Cd/03zvLn8I5yKQpBhXEk2psIveF9JIN1aJl2
         ++gjpJX88Rl/w==
Received: by mail-wr1-f69.google.com with SMTP id q7-20020adff507000000b0017d160d35a8so2025748wro.4
        for <devicetree@vger.kernel.org>; Sat, 27 Nov 2021 05:18:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=XlNC1VCy2s9y66a1+PddNrIyqziFzmje/wU1Hvd5Nh0=;
        b=J1wrp4ExI18O22j8v8u15F+ngg2QkGRIFZ9UGW8Bi6wX471nSurdLoRd5r8sbtMtkH
         OvbJW8bMGPqsRqdTRdHv5rt+CE/r/d9r1299v3ywGpAANdfn4/3cONhEhhomZGsvZ2YM
         J0lSinmoax3U0PxRRrN4CAqSpDswmSIX7X/HnCFdokvnzRY/+SbtaPqPd1COhUlbyEWe
         MYUvyUMPcApQWMuJm+HtDVQevpCzbaoUPqiZHrHqyKXUQyOs2WLxsbqnRuRmg/daKO/i
         vk/e3eaA5M52DbK7h7Yy9CMElT9l+FdiYDX2rxnISvvbtqDbp1jcnZtmpiWqPRg93j+O
         8pVg==
X-Gm-Message-State: AOAM530vPOzwwHMu50JKMXHYM7cq8io5kJvMwKLCX9U4IPUUDdncCJAz
        JAXYsiCcKkrCzuuKDciKQkcUo2q2kDVpLH4EFMH8YWIGEnI6ukEQqaexNZBUqK5WIITF6iwKexv
        1eKCJWbv0wddgbhNvGzwj4uWIYmuLzzuT9hvPH8I=
X-Received: by 2002:a05:600c:4e91:: with SMTP id f17mr23109835wmq.195.1638019119539;
        Sat, 27 Nov 2021 05:18:39 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzND8ZpYpxyHTPjzGXUg7OxWsPcMAELukJVLJ0LTeNw9xcGhvRvcFGjzAFQKfSCYQJnygsZCA==
X-Received: by 2002:a05:600c:4e91:: with SMTP id f17mr23109807wmq.195.1638019119359;
        Sat, 27 Nov 2021 05:18:39 -0800 (PST)
Received: from [192.168.3.67] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id h27sm15600780wmc.43.2021.11.27.05.18.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 27 Nov 2021 05:18:39 -0800 (PST)
Message-ID: <c5702c2f-d5ea-b322-f10d-93352979a1a1@canonical.com>
Date:   Sat, 27 Nov 2021 14:18:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH 1/2] dt-bindings: clock: exynos850: Add bindings for
 Exynos850 sysreg clocks
Content-Language: en-US
To:     Sam Protsenko <semen.protsenko@linaro.org>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        David Virag <virag.david003@gmail.com>,
        =?UTF-8?Q?Pawe=c5=82_Chmiel?= <pawel.mikolaj.chmiel@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org
References: <20211126203641.24005-1-semen.protsenko@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20211126203641.24005-1-semen.protsenko@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/11/2021 21:36, Sam Protsenko wrote:
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
