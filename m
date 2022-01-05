Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0480C4859F9
	for <lists+devicetree@lfdr.de>; Wed,  5 Jan 2022 21:24:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244011AbiAEUYj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Jan 2022 15:24:39 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:44402
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S243981AbiAEUYh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Jan 2022 15:24:37 -0500
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com [209.85.221.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id C749F40029
        for <devicetree@vger.kernel.org>; Wed,  5 Jan 2022 20:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1641414273;
        bh=Z7Q01MgSEbyZYHT3rk+3A+kephcacvWRoAm/f2TTeCA=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=CwlomVquiDB7eJaEX3kTbcFp0MAequdVgGHnzkdMbn0G1IuDjxAwQCoZ9MQ9MyRJO
         7PcLlKy5Ox17Tl7VAVsKXHfKOmL/AG0u1GqxbW48PkgExLmwHvqMaSLKT5ucMZ3QL9
         zSdC49vZNNUUCXe2qPzZTnqN72YgwJYQrhgyWcjKwcliaXFG3EiycnIBLNuD1LHy3y
         8FIp/WeHruWJU5DUrAMJJVOAlzCgikxfZxQLlkA3nFTcpG6XbawEMyWFFKjJu4A+EQ
         2HqMXnbdHjaJCuxPXj0WKJyi4u3i3OcWJH9KotpEY+7XggXRh+H1uXsSXFW/nq5Kjx
         dGHRLFhOAxcbQ==
Received: by mail-wr1-f72.google.com with SMTP id n4-20020adf8b04000000b001a49cff5283so100077wra.14
        for <devicetree@vger.kernel.org>; Wed, 05 Jan 2022 12:24:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Z7Q01MgSEbyZYHT3rk+3A+kephcacvWRoAm/f2TTeCA=;
        b=SzvDu5IbMM/fgq6FUB2aEPYLHkjFebMhBc/AYl0X6fZDyoJdxtEN92iePihYoZpOY5
         p4/R3vVl6bSne1cS8jd1FfdcvxpVdvi9SXkGTR0H6YGH4f2HHBuk0JpaIfMoA+Cq3paH
         6FG4N/dKGS5lolujcFfqGWhiEJ6h4cXdObswCdIJlLFYDCWx97x0Z6WEHabkdpzCLkgf
         6hI4+ocyfM5ODutZSwUQfBc7BuV7jS7LkKxUdk3Kd3Z+R2Gf3y97cj/YOeX6Y1kFOF1s
         hfQsDxF+7IRMgVEf7ffF95F61JoYXGHjN0Zjoye59SJxiWSwcoHLmOaoQDjiiXIS5NAs
         WvOg==
X-Gm-Message-State: AOAM533VQyjnZhdu9vt+ksuCGiTicQAX+WVY/ECm1c2criodS4gikeUR
        yxCG4IZJit8FL0zBjcOvLYG6mJmE3zwuwQX92qVjAjvMi0A53hMT/xUF2xfGlWsDh0RGfac2tHL
        7FAO+O8cAgs7owWfjYAWVPzDNvWgP/91eeQIKecY=
X-Received: by 2002:a1c:9856:: with SMTP id a83mr4298311wme.157.1641414271345;
        Wed, 05 Jan 2022 12:24:31 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyDOoioCbtDcfutGP5nnn1CRcSrlm9FAZ0/AwZzVCuwcbxtjswiY565cQifCl/khgMGZCxOOw==
X-Received: by 2002:a1c:9856:: with SMTP id a83mr4298293wme.157.1641414271152;
        Wed, 05 Jan 2022 12:24:31 -0800 (PST)
Received: from [192.168.1.124] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id l26sm41211495wrz.44.2022.01.05.12.24.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Jan 2022 12:24:30 -0800 (PST)
Message-ID: <e54c289c-6aeb-fcf4-67fe-fc8e375149f9@canonical.com>
Date:   Wed, 5 Jan 2022 21:24:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH 01/24] pinctrl: samsung: drop pin banks references on
 error paths
Content-Language: en-US
To:     Sam Protsenko <semen.protsenko@linaro.org>
Cc:     Tomasz Figa <tomasz.figa@gmail.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Sylwester Nawrocki <snawrocki@kernel.org>,
        Chanho Park <chanho61.park@samsung.com>, stable@vger.kernel.org
References: <20211231161930.256733-1-krzysztof.kozlowski@canonical.com>
 <20211231161930.256733-2-krzysztof.kozlowski@canonical.com>
 <CAPLW+4mosbk2_NPFFP=sUmKjBoZOG3vNcmT+7sMtTunhbVqcxA@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <CAPLW+4mosbk2_NPFFP=sUmKjBoZOG3vNcmT+7sMtTunhbVqcxA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/01/2022 15:49, Sam Protsenko wrote:
> On Fri, 31 Dec 2021 at 18:20, Krzysztof Kozlowski
> <krzysztof.kozlowski@canonical.com> wrote:
>>
>> The driver iterates over its devicetree children with
>> for_each_child_of_node() and stores for later found node pointer.  This
>> has to be put in error paths to avoid leak during re-probing.
>>
>> Fixes: ab663789d697 ("pinctrl: samsung: Match pin banks with their device nodes")
>> Cc: <stable@vger.kernel.org>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
>> ---
>>  drivers/pinctrl/samsung/pinctrl-samsung.c | 29 +++++++++++++++++------
>>  1 file changed, 22 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/pinctrl/samsung/pinctrl-samsung.c b/drivers/pinctrl/samsung/pinctrl-samsung.c
>> index 8941f658e7f1..f2864a7869b3 100644
>> --- a/drivers/pinctrl/samsung/pinctrl-samsung.c
>> +++ b/drivers/pinctrl/samsung/pinctrl-samsung.c
>> @@ -1002,6 +1002,15 @@ samsung_pinctrl_get_soc_data_for_of_alias(struct platform_device *pdev)
>>         return &(of_data->ctrl[id]);
>>  }
>>
>> +static void samsung_banks_of_node_put(struct samsung_pinctrl_drv_data *d)
>> +{
>> +       struct samsung_pin_bank *bank;
>> +       unsigned int i;
>> +
>> +       for (i = 0; i < d->nr_banks; ++i, ++bank)
>> +               of_node_put(bank->of_node);
> 
> But "bank" variable wasn't actually assigned before, only declared?

Good point, bank has to be assigned just like in patch 2/24.

> 
>> +}
>> +

Best regards,
Krzysztof
