Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E148D423E2F
	for <lists+devicetree@lfdr.de>; Wed,  6 Oct 2021 14:51:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238613AbhJFMw4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Oct 2021 08:52:56 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:36066
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S238607AbhJFMwz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Oct 2021 08:52:55 -0400
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com [209.85.167.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 13D363FFF2
        for <devicetree@vger.kernel.org>; Wed,  6 Oct 2021 12:51:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1633524663;
        bh=PKetBUdtpr3Hr2NvlRZBfrIHbbw2Nu4lIQoW/4WvUOo=;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=JUVQZATIAGxy4eF78v3dcedre5L5SDpUFpu46UaaUY91ktX6Cu5vYZPqdXyi4qfkf
         uAYuYuEkOFlpjgaLNLuQmAsyX/Kes0CTE7b8SXtOu7WOQvW6gdwmPKgLjBi+Vq4EjZ
         i6SenxFhpHkdxiIal/CfqHKE60Smt9Mq6MYB0ZezSCoOqG/8OJHvFJ8LzffJzKBJiP
         bMA/K8Ox7ygqx2vCNUGkGc458rRsJWJDhQ3cqdqg8IjhlasdMreNBjMQ7/c0i1z2PV
         a+GYQUm6LW8vvAp112swI4jyBv9NSAJLjfZRljzQSFqTPHcjZOmos6OOz9iXGeCX+L
         eg45hXghPvTRA==
Received: by mail-lf1-f72.google.com with SMTP id t14-20020ac24c0e000000b003fd392f9a5eso1887018lfq.13
        for <devicetree@vger.kernel.org>; Wed, 06 Oct 2021 05:51:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=PKetBUdtpr3Hr2NvlRZBfrIHbbw2Nu4lIQoW/4WvUOo=;
        b=37jaq4cvNjczwJVASv/aFDrdcqsCX2pzbmRGSWeOxFvMHxR84YH8Nq9AlqKGGxPM9K
         vH+spZQMRXj3GcH5fFFhdXkJ1pvmU/MZz27vIK7ta54L9eV7Un2Y2fwQrDZ4fOOaFUly
         JBDz+3dMg6RgON8cpgAuieAcrj+nrNqcig8qK/MkA3FbQVrWJ3Yvo3KfzW6CXWEAHmKm
         O1tPF0O6+5FmFOvBfsXuno671ouXJfivvrHUodAd7rmXnaPGVMVLzSNg5Fih+UBnZLCE
         nCgMCMMV5a2H/bLqnoeoKMOOO0N3oEV+9j/X+UDYzuSApx5E76UM/4Nj67x8p+0K4uEh
         ZDHg==
X-Gm-Message-State: AOAM5327Wg5J5dPmGg0Iqcl7gcRatcy0yOwN0lbR8J4jsblCboYWLkRi
        Gn/jlfIYKI3+uWvafkJ/OcO+X8CorRmC3+im6HGubCQ/81SIU23zyNW30jryB+bjXPZwDo046TX
        wFgrumRxGuISMBGdiIUeqfw9wMdFTLCoSU78MngI=
X-Received: by 2002:ac2:50d3:: with SMTP id h19mr9138092lfm.63.1633524661202;
        Wed, 06 Oct 2021 05:51:01 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyYQXpRfbdij+G/IdEjueEdrmnNAVv9YGwPu64Trw30ig3vpNtjLztb74XfXOnojeuZlsz62w==
X-Received: by 2002:ac2:50d3:: with SMTP id h19mr9138078lfm.63.1633524661042;
        Wed, 06 Oct 2021 05:51:01 -0700 (PDT)
Received: from [192.168.0.20] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id q1sm2261481lfg.18.2021.10.06.05.50.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Oct 2021 05:51:00 -0700 (PDT)
Subject: Re: [PATCH 6/6] clk: samsung: Introduce Exynos850 clock driver
To:     Sam Protsenko <semen.protsenko@linaro.org>
Cc:     Sylwester Nawrocki <s.nawrocki@samsung.com>,
        =?UTF-8?Q?Pawe=c5=82_Chmiel?= <pawel.mikolaj.chmiel@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Ryu Euiyoul <ryu.real@samsung.com>,
        Tom Gall <tom.gall@linaro.org>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        John Stultz <john.stultz@linaro.org>,
        Amit Pundir <amit.pundir@linaro.org>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
        linux-clk <linux-clk@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux Samsung SOC <linux-samsung-soc@vger.kernel.org>
References: <20210914155607.14122-1-semen.protsenko@linaro.org>
 <20210914155607.14122-7-semen.protsenko@linaro.org>
 <3da75dbe-2f98-39db-c455-46adead7097b@canonical.com>
 <CAPLW+4k+1x+qwJJWth7=KwsF_Q2+n5LDA8Q+63M-bxXDO=4bZg@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <826fa28d-05a9-4a1c-a69b-70fc50e26e24@canonical.com>
Date:   Wed, 6 Oct 2021 14:50:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAPLW+4k+1x+qwJJWth7=KwsF_Q2+n5LDA8Q+63M-bxXDO=4bZg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/10/2021 13:29, Sam Protsenko wrote:
> On Wed, 15 Sept 2021 at 11:59, Krzysztof Kozlowski
> <krzysztof.kozlowski@canonical.com> wrote:
>>
> 
>>> +             val = ioread32(reg);
>>> +             val |= GATE_MANUAL;
>>> +             val &= ~GATE_ENABLE_HWACG;
>>> +             iowrite32(val, reg);
>>
>> All other drivers use readl/writel, so how about keeping it consistent?
>>
> 
> Ok. Though io* variants looks better to me (API names consistent with
> ioremap/iounmap) :)

The io* variants are for PCI I/O and I/O port. Since we know this is
MMIO, all drivers use regular readX/writeX, so let's keep it the same.

Best regards,
Krzysztof
