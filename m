Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 819533DBC3F
	for <lists+devicetree@lfdr.de>; Fri, 30 Jul 2021 17:25:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239692AbhG3PZ4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Jul 2021 11:25:56 -0400
Received: from smtp-relay-canonical-0.canonical.com ([185.125.188.120]:47450
        "EHLO smtp-relay-canonical-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S239341AbhG3PZz (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 30 Jul 2021 11:25:55 -0400
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com [209.85.208.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPS id 08C643F237
        for <devicetree@vger.kernel.org>; Fri, 30 Jul 2021 15:25:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1627658750;
        bh=TEvW673M4tlEqNAgqaz/ijFkYi/5QPh9cKHdp/b4gIY=;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=baZEUwngcHyAHS4V7Yqt7xT42QJ8ttOg1JZS9OtxIQODGSAvwowuVmWJpBzsorYEj
         la/oYC4QiLgwvFHTdIrE0P8qSmMLb22JAoOGzjcX+HXSUbywt/NhOz8ioVGoyt2LfV
         jHrLOC7aAE4DIOrqndPexGgTz9RuBqmRWF/zKgTXYLZRN0ZELD7yIBzTDiQtMsX662
         U0+IQQo/KO7z0PtXCRFEuDJyzxk73DbM88kbQ42EoM8npG3xWdCa+5FLuw0n8N4rDh
         1BJ9zfhl5WXd/YIN5YVvmr0UNuyRFp/tM+FwGAlOuEEK35aJ9eMrx87x4vZkTzWE6B
         /BMLjaRtf90kg==
Received: by mail-ed1-f70.google.com with SMTP id de5-20020a0564023085b02903bb92fd182eso4821444edb.8
        for <devicetree@vger.kernel.org>; Fri, 30 Jul 2021 08:25:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=TEvW673M4tlEqNAgqaz/ijFkYi/5QPh9cKHdp/b4gIY=;
        b=KFq1/h1eISgpSRHOBkSDugrmfturAM75k8uKpJC3HWtjQVo+7zKHXxMfdvsQijUyMj
         +A1zfG+km0fYnYZ0yZEww/iWKFGBlLapOYSRcc80ZlpxGLsDN0iboroqHcg/+wB2+ibU
         poFW9zlCj/Zkb3yGXbvC5vchbcbL1JPV9DIZzu/Top3VNdSwxv3W2M6ruQXb10vKjUvm
         3wbKvSQfgtYJmlsCxxMkuj97G+ZsxH6Y4K/Ie1BsMJ+Lajs6mcwWFXdckabzm61ZwXbr
         OkOBNMiYy0I0P+sRd2FSSYu5phoN6csDk3u1jlAxVKF7+b4Q+pKDAdGrOouuWDvoQtlP
         MspA==
X-Gm-Message-State: AOAM53217ULy0tsVvc2QKJAmzuCKMOtPsBbWoHA4ulWxxJ0GW+or617Z
        1t9Yy8I0ruUnoiDbtfOyPJ4s2og89rrh09DDv5yGQTUo+XrfteaslCQ3tKm9trE9AMNo0nEQF3U
        szzX1OdkD2gr4M8BonYP9LnCVhI7SLUXHFocLtCM=
X-Received: by 2002:a17:906:2d51:: with SMTP id e17mr3031134eji.500.1627658749654;
        Fri, 30 Jul 2021 08:25:49 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzGrmbK76jzm7R0wU9rDjzOLSuvi09IncVRLsAPOuK8inPZj/nU5vtfrdytg3IgHkG0o3Lyzw==
X-Received: by 2002:a17:906:2d51:: with SMTP id e17mr3031123eji.500.1627658749527;
        Fri, 30 Jul 2021 08:25:49 -0700 (PDT)
Received: from [192.168.8.102] ([86.32.47.9])
        by smtp.gmail.com with ESMTPSA id p16sm826354eds.73.2021.07.30.08.25.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jul 2021 08:25:49 -0700 (PDT)
Subject: Re: [PATCH 08/12] MAINTAINERS: Cover Samsung clock YAML bindings
To:     Andy Shevchenko <andy.shevchenko@gmail.com>,
        Sam Protsenko <semen.protsenko@linaro.org>
Cc:     Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Jiri Slaby <jirislaby@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Charles Keepax <ckeepax@opensource.wolfsonmicro.com>,
        Ryu Euiyoul <ryu.real@samsung.com>,
        Tom Gall <tom.gall@linaro.org>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        John Stultz <john.stultz@linaro.org>,
        Amit Pundir <amit.pundir@linaro.org>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
        linux-clk <linux-clk@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux Samsung SOC <linux-samsung-soc@vger.kernel.org>,
        "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>
References: <20210730144922.29111-1-semen.protsenko@linaro.org>
 <20210730144922.29111-9-semen.protsenko@linaro.org>
 <CAHp75VcugLnV6D8xhkMHuW-X6LCtHDDnghD2G+vqwYmRvFP9Nw@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <8202e9f9-06f4-f1ba-4f30-e1a0c8340450@canonical.com>
Date:   Fri, 30 Jul 2021 17:25:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAHp75VcugLnV6D8xhkMHuW-X6LCtHDDnghD2G+vqwYmRvFP9Nw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/07/2021 17:06, Andy Shevchenko wrote:
> On Fri, Jul 30, 2021 at 5:50 PM Sam Protsenko
> <semen.protsenko@linaro.org> wrote:
>>
>> New device tree bindings are usually added in YAML format. Fix "SAMSUNG
>> SOC CLOCK DRIVERS" entry to cover both txt and yaml docs for Exynos
>> clock drivers.
> 
> Fixes tag?

No need because the pattern is correct at the moment. The patch does not
make sense on its own and should be squashed with the next one.


Best regards,
Krzysztof
