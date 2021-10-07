Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A143F4253AC
	for <lists+devicetree@lfdr.de>; Thu,  7 Oct 2021 15:07:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241005AbhJGNJm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Oct 2021 09:09:42 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:35522
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S233114AbhJGNJl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Oct 2021 09:09:41 -0400
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com [209.85.221.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 971793FFEF
        for <devicetree@vger.kernel.org>; Thu,  7 Oct 2021 13:07:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1633612066;
        bh=FORzsUXne7M2qBjMCfFLm5GuHPWnU7ify0SwCg4gAzA=;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=XEqBbV2i2rSqT8ONkBiX0A2Wd5dfk07hslLT/+ZTugU8iIjX3Yv07jynl9t6i687u
         d6gh1EQ759SPJGYRKLeawX9payUCifUnK48USmn49Fvr8Gf059XaOhlFSwCKEi2uud
         kfWHvMzri4As5Vup2egOqCoMA/I0o/jeKPBOrngH1he78HdW4bYR2Ad1zeGLB69xqU
         4hWpsPPqTmDjhnee8yT6T7HpZjO981ih6pbaW1JaulSWI1R8TD6w+T2QIERW0DPsip
         p3mawA6PT3QFQ+iAWzlmCZmTa7gYDYEvmm3ksOS6hsBAAEkxgjSLx1w+RapH0/mvVd
         TF8pI0xzC/4Yg==
Received: by mail-wr1-f72.google.com with SMTP id k16-20020a5d6290000000b00160753b430fso4667330wru.11
        for <devicetree@vger.kernel.org>; Thu, 07 Oct 2021 06:07:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=FORzsUXne7M2qBjMCfFLm5GuHPWnU7ify0SwCg4gAzA=;
        b=c2EzdFiQD4kpCHt0g0MNx/Cr6ZAYRs01tIgxGtc8hRUgY+GiJEq4+gmKU84AaObjH4
         tWvbotBYFdL5IkNkjU3q0N5evORsoZBURTYqSALqdTtFDosbUVJUNzN1KD+hfDpa77j/
         dcXR1bSFzNJtiuzvkkw7g3AjsG66w88WReHV0p2lP1wUF/tEK0KtgpcAocIv61rPoHTN
         d7Wa6knrUQFz5uC9WMFZ5RRfIRT2Zg46i3WJ/irkdRpUSJE8xkhGIBlJCXSSIf6wd0Rp
         LdoXpZffr4O5q2dia+IxjSfaKBe60aK5cvHchsN6kR62sH6QdVaQflmXtAt9OJLIplqN
         HirA==
X-Gm-Message-State: AOAM530pAXmgNQT6JOOy7jIc8/ZAWiCe6Cc8/APYFRbLQondPe3negvo
        glLU4lqLak/Sjcy79/b6/WnzrJ2/Y1KehXTMopyYryQPbiVn6bcah6eRC6NQRe5ivxo/GL2/P9/
        ErZOTf9y+a0d+ONthDAZqa1zhNH924KkE05/uy7c=
X-Received: by 2002:adf:b355:: with SMTP id k21mr5428718wrd.380.1633612064184;
        Thu, 07 Oct 2021 06:07:44 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy5pF3b8+6MeNpQSCXgOMr7rU57lLrOb+1ZGnujvyw0abYwmsBGvSJGW2lo9jvHE2DDTsCMuQ==
X-Received: by 2002:adf:b355:: with SMTP id k21mr5428054wrd.380.1633612059354;
        Thu, 07 Oct 2021 06:07:39 -0700 (PDT)
Received: from [192.168.1.115] (xdsl-188-155-186-13.adslplus.ch. [188.155.186.13])
        by smtp.gmail.com with ESMTPSA id d2sm24198585wrc.32.2021.10.07.06.07.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Oct 2021 06:07:38 -0700 (PDT)
Subject: Re: [PATCH v3 10/10] dt-bindings: mfd: samsung,s5m8767: document buck
 and LDO supplies
To:     Sam Protsenko <semen.protsenko@linaro.org>
Cc:     Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Lee Jones <lee.jones@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        linux-clk <linux-clk@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux Samsung SOC <linux-samsung-soc@vger.kernel.org>,
        Rob Herring <robh@kernel.org>
References: <20211006132324.76008-1-krzysztof.kozlowski@canonical.com>
 <20211006132324.76008-11-krzysztof.kozlowski@canonical.com>
 <CAPLW+4migQ+3NBsHgMd04N-Fc71CTzxoUMS3HN2S8377qFDa6g@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <25ecf19b-eb40-ada6-2469-b0c29820b498@canonical.com>
Date:   Thu, 7 Oct 2021 15:07:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAPLW+4migQ+3NBsHgMd04N-Fc71CTzxoUMS3HN2S8377qFDa6g@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/10/2021 22:02, Sam Protsenko wrote:
> On Wed, 6 Oct 2021 at 16:24, Krzysztof Kozlowski
> <krzysztof.kozlowski@canonical.com> wrote:
>>
>> Document the properties with regulator supplies for bucks and LDOs.  At
>> least one board uses it (Exynos5250 Arndale).
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
>> Reviewed-by: Rob Herring <robh@kernel.org>
>> ---
>>  .../bindings/mfd/samsung,s5m8767.yaml         | 38 +++++++++++++++++++
>>  1 file changed, 38 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/mfd/samsung,s5m8767.yaml b/Documentation/devicetree/bindings/mfd/samsung,s5m8767.yaml
>> index b2529a48c890..12dea5aac8b6 100644
>> --- a/Documentation/devicetree/bindings/mfd/samsung,s5m8767.yaml
>> +++ b/Documentation/devicetree/bindings/mfd/samsung,s5m8767.yaml
>> @@ -96,6 +96,44 @@ properties:
>>      description: |
>>        GPIO specifiers for three host gpio's used for dvs.
>>
>> +  vinb1-supply:
>> +    description: Power supply for buck1
>> +  vinb2-supply:
>> +    description: Power supply for buck1
> 
> Nitpick: all those vinb* are for buck1, or that's a typo (here and below)?

Copy paste and needs fixing. Thanks for checking.

> 
>> +  vinb3-supply:
>> +    description: Power supply for buck1
>> +  vinb4-supply:
>> +    description: Power supply for buck1
>> +  vinb5-supply:
>> +    description: Power supply for buck1
>> +  vinb6-supply:
>> +    description: Power supply for buck1
>> +  vinb7-supply:
>> +    description: Power supply for buck1
>> +  vinb8-supply:
>> +    description: Power supply for buck1
>> +  vinb9-supply:
>> +    description: Power supply for buck1
>> +

Best regards,
Krzysztof
