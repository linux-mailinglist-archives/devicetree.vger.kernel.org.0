Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5D7E248E508
	for <lists+devicetree@lfdr.de>; Fri, 14 Jan 2022 08:49:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233534AbiANHtn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Jan 2022 02:49:43 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:60762
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S233844AbiANHtk (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 14 Jan 2022 02:49:40 -0500
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 65093402A3
        for <devicetree@vger.kernel.org>; Fri, 14 Jan 2022 07:49:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1642146578;
        bh=OfGvrCtC8xlimA6cEB+wdrguTqUYJCj+ZRy5BPwVdRo=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=L/EgHIHbJdR8oHWtWf3LqUEgvfA86riHomk6b0iBFStDGkxfG35H4H8dfnBR6Pq1u
         INQ6IFWKTdyK5FMN+okz3qQBFsUaSeHBHMpoMqKzoli09WvF9UkQumFydLHHF6Od4k
         pF98S5YJNr247xBtWqrvVJqrb6ZTVb5GBdixRTxk5+b8bTx8gvFKq94FQmxpLm80zi
         jerHUaDo4MSiiKPlecMiFK+w+Q/wYbZtKT3B9NUGhomgiNyUotRLWEg8FRhP2Zw4dE
         p7ZDEaBsfWnezruJmFKcnuBn0c45mHEVIZTqBIP32XVUCC7+tVxiXfYGFaHOEb73vC
         XpEFBO1mNuFqQ==
Received: by mail-ed1-f69.google.com with SMTP id g11-20020a056402090b00b003f8fd1ac475so7661058edz.1
        for <devicetree@vger.kernel.org>; Thu, 13 Jan 2022 23:49:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=OfGvrCtC8xlimA6cEB+wdrguTqUYJCj+ZRy5BPwVdRo=;
        b=Hh8itoW55VBR/O+usfz+2MQ3ytLPZ9O6FeVWq2ZoqFC3juLQO1EfISlJE65AOlGoYq
         ZbgfIL+xQajS6CjX+PpvWy9qLezKS9Ek68O3WDx5VCspdxWRLOI1ZN9GI98CvkOWS2bh
         uVfXFieMpqNWsEm+mumINgVN/2cl53BrtJdIFIzzRcVNkCXIE4tvQdQog3aSfo5JyPP/
         keoxI5CfzKuiC76rZq2si3I2pG3pDQdyuN9VYH75/enaQ3Irr3sCVDBvf6mOlYBv4pOm
         vHziT86hlusXmUvPbWcU+NPeW1w7CyJ2HvbEJENH74n/1LtANv2dvK1C1lInYeEO167n
         s+SQ==
X-Gm-Message-State: AOAM533+qUjz7NxEtKjjhhSfmzKOd1Yv3ljSODXoXw+OfhWarlzlWQQu
        R/xYH0CNDTvyC2P4ErzmTwjpFfksAwjcy/hiSPIvCkf8l0JS4kW2trQsAe4U64/lfL9EYQ30sH8
        V0QWgTzwG8Yf6L5em2ObFmNwYA5DM9IHuKqePRvU=
X-Received: by 2002:a05:6402:2685:: with SMTP id w5mr7710429edd.151.1642146578015;
        Thu, 13 Jan 2022 23:49:38 -0800 (PST)
X-Google-Smtp-Source: ABdhPJx28rjBXLGcKe6hIBmUk/lmPK/ygVLWajiItPMzl6kJqav/dcWM9ZuCOshtlFa/+UuDpfMTkw==
X-Received: by 2002:a05:6402:2685:: with SMTP id w5mr7710414edd.151.1642146577885;
        Thu, 13 Jan 2022 23:49:37 -0800 (PST)
Received: from [192.168.0.30] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id jg41sm1602954ejc.101.2022.01.13.23.49.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Jan 2022 23:49:37 -0800 (PST)
Message-ID: <65e6f034-278a-81fa-844d-10a1865a25a4@canonical.com>
Date:   Fri, 14 Jan 2022 08:49:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH 10/23] dt-bindings: pinctrl: samsung: Add compatible for
 Tesla FSD SoC
Content-Language: en-US
To:     Alim Akhtar <alim.akhtar@samsung.com>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     soc@kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, olof@lixom.net,
        linus.walleij@linaro.org, catalin.marinas@arm.com,
        robh+dt@kernel.org, s.nawrocki@samsung.com,
        linux-samsung-soc@vger.kernel.org, pankaj.dubey@samsung.com,
        linux-fsd@tesla.com
References: <20220113121143.22280-1-alim.akhtar@samsung.com>
 <CGME20220113122354epcas5p19e5cebe9e85e9ba1758fa0b9d7d1ef75@epcas5p1.samsung.com>
 <20220113121143.22280-11-alim.akhtar@samsung.com>
 <849c7772-0f7e-32ff-6ea6-c46aa6837bb4@canonical.com>
 <076101d80909$d5849060$808db120$@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <076101d80909$d5849060$808db120$@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/01/2022 06:44, Alim Akhtar wrote:
> 
> 
>> -----Original Message-----
>> From: Krzysztof Kozlowski [mailto:krzysztof.kozlowski@canonical.com]
>> Sent: Thursday, January 13, 2022 5:57 PM
>> To: Alim Akhtar <alim.akhtar@samsung.com>; linux-arm-
>> kernel@lists.infradead.org; linux-kernel@vger.kernel.org
>> Cc: soc@kernel.org; linux-clk@vger.kernel.org; devicetree@vger.kernel.org;
>> olof@lixom.net; linus.walleij@linaro.org; catalin.marinas@arm.com;
>> robh+dt@kernel.org; s.nawrocki@samsung.com; linux-samsung-
>> soc@vger.kernel.org; pankaj.dubey@samsung.com; linux-fsd@tesla.com
>> Subject: Re: [PATCH 10/23] dt-bindings: pinctrl: samsung: Add compatible for
>> Tesla FSD SoC
>>
>> On 13/01/2022 13:11, Alim Akhtar wrote:
>>> Add compatible for Tesla Full Self-Driving SoC. The pinctrl hardware
>>> IP is similar to what found on most of the exynos series of SoC, so
>>> this new compatible is added in samsung pinctrl binding.
>>>
>>> Cc: linux-fsd@tesla.com
>>> Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
>>> ---
>>>  Documentation/devicetree/bindings/pinctrl/samsung-pinctrl.txt | 1 +
>>>  1 file changed, 1 insertion(+)
>>>
>>> diff --git
>>> a/Documentation/devicetree/bindings/pinctrl/samsung-pinctrl.txt
>>> b/Documentation/devicetree/bindings/pinctrl/samsung-pinctrl.txt
>>> index b8b475967ff9..ba972998a0e4 100644
>>> --- a/Documentation/devicetree/bindings/pinctrl/samsung-pinctrl.txt
>>> +++ b/Documentation/devicetree/bindings/pinctrl/samsung-pinctrl.txt
>>> @@ -24,6 +24,7 @@ Required Properties:
>>>    - "samsung,exynos7-pinctrl": for Exynos7 compatible pin-controller.
>>>    - "samsung,exynos850-pinctrl": for Exynos850 compatible pin-controller.
>>>    - "samsung,exynosautov9-pinctrl": for ExynosAutov9 compatible pin-
>> controller.
>>> +  - "tesla,fsd-pinctrl": for Tesla FSD SoC compatible pin-controller.
>>>
>>
>> Please rebase this on my latest Samsung pinctrl dtschema patches. You also
>> need a tesla vendor prefix patch (separate).
>>
> Sure will rebase when sending v2, your latest patches are in Linux-next or still in your tree?

The SPI (v3) and pinctrl (v2) dtschema patches are on mailing lists.
They seem to be done, so after merge window they will make to
linux-next. If you want earlier, grab them from mailing list or from
branches:
https://github.com/krzk/linux/tree/n/dt-bindings-samsung-spi-schema-v3
https://github.com/krzk/linux/tree/n/dt-bindings-samsung-pinctrl-schema-v2


Best regards,
Krzysztof
