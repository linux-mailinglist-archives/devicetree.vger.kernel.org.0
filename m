Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 25639452FE6
	for <lists+devicetree@lfdr.de>; Tue, 16 Nov 2021 12:08:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234652AbhKPLLL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Nov 2021 06:11:11 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:57708
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234711AbhKPLLD (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 16 Nov 2021 06:11:03 -0500
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com [209.85.208.199])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id AE7F0405F6
        for <devicetree@vger.kernel.org>; Tue, 16 Nov 2021 11:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1637060885;
        bh=0gQ2ZQRY7ofUxZzekozxLvLRb/wQIYBGFhN6RAAbDMs=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=ExDuFgPwmmkCdGtV4vAIICKsFq0eACGgsuNZgPBO5Ny1SYeZbRhvwIB8r+WeS54XH
         vKr5KokjremA0aFwNf/I9SorNGw853ZIKufUc4PPf9Cwkoh1Vg8033lJFQiwjMnssO
         bOshzqyTbpOZxc81sug5XFhjGw8QAfI51BBhsohR7OMnbYFCA069oHkln369bTbz9E
         cfFq5Da0QOSCTRsBPnpyySho0tlWLUob9NqhmMAi3NlXBqcESOivRx03bKnf63rxGZ
         4jT26b0GmtbFk/HiL9lI2L4A1n4LgaVqeqxPNUiZWPbfiTqKobKrRWFniE0DkVtE37
         llJLyw2yZyjDw==
Received: by mail-lj1-f199.google.com with SMTP id 2-20020a2e0902000000b00218c22336abso6087676ljj.0
        for <devicetree@vger.kernel.org>; Tue, 16 Nov 2021 03:08:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=0gQ2ZQRY7ofUxZzekozxLvLRb/wQIYBGFhN6RAAbDMs=;
        b=Ln5LPO5WbpuOBq3HcfQxhNrgO0AfjERL0Ja9cmfblseK3ppLjPFJbQQZeZvhfA7aIC
         rnzVHl9uw9wgAfCMjBdnF0SJ6zOUH09eEBjmW+SmEanBzQ+28db7Qkr+fppOWH8oAP0g
         sF5Urq5R+QclBPqlBBI7VqzUmLUo68sA7xE7gV9mv+wZdEQkm5cS8eUPsGteFwaP4cjv
         ImipxOkhuXQatlwwFFeb1uOsU3P+xxfXoRcf9BtdjoXiXLvJ1p7EuxWwuYskLe9/wGe5
         dSqCoBgVBHqiwTIFshcX1NMW4CftzD/wgg0jnc+Bx8OuHXX7yFf1NCSsdckCjXekYNF0
         ihAg==
X-Gm-Message-State: AOAM531zYaVgD+TJKr1TbxwR+n8uEgGVcsnu1yrmhX8okTxfcqPcTcJ9
        C0/tL0HN5wj/YjPm33PT1OlgvMeXUKdA1keXkCk1m2ojX5yfuCRICXawd/eVFARSjc1rQHlzoZX
        KXiObieo6cd1BE+YczPD0EUfW8plWeu3WDVcB0VE=
X-Received: by 2002:a2e:5c87:: with SMTP id q129mr5996228ljb.424.1637060883675;
        Tue, 16 Nov 2021 03:08:03 -0800 (PST)
X-Google-Smtp-Source: ABdhPJydMp9fvLto/Bj6qzxU3CHtfkRwWGiNP0TmUHx9AxV+uxOKhgQLlIduUx8AneQrUoqPOC5FPQ==
X-Received: by 2002:a2e:5c87:: with SMTP id q129mr5996205ljb.424.1637060883488;
        Tue, 16 Nov 2021 03:08:03 -0800 (PST)
Received: from [192.168.3.67] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id b13sm1619353lfv.200.2021.11.16.03.08.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Nov 2021 03:08:02 -0800 (PST)
Message-ID: <202f0fd8-1208-b17d-5ee5-e776e45cb065@canonical.com>
Date:   Tue, 16 Nov 2021 12:08:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Subject: Re: [PATCH] riscv: dts: sifive unmatched: Expose the FU740 core
 supply regulator.
Content-Language: en-US
To:     =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Qiu Wenbo <qiuwenbo@kylinos.com.cn>,
        Yash Shah <yash.shah@sifive.com>, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
        David Abdurachmanov <david.abdurachmanov@sifive.com>
Cc:     Vincent Pelletier <plr.vincent@gmail.com>
References: <f6512cc50dc31a086e00ed59c63ea60d8c148fc4.1637023980.git.plr.vincent@gmail.com>
 <0879c5b0c72b9bf6bf71f880def166f8804f41c7.1637023980.git.plr.vincent@gmail.com>
 <2266648.AD6qrfpaa2@diego>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <2266648.AD6qrfpaa2@diego>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/11/2021 10:53, Heiko Stübner wrote:
> Hi Vincent,
> 
> Am Dienstag, 16. November 2021, 01:52:59 CET schrieb Vincent Pelletier:
>> Provides monitoring of core voltage and current:
>> tps544b20-i2c-0-1e
>> Adapter: i2c-ocores
>> vout1:       906.00 mV
>> temp1:        -40.0°C  (high = +125.0°C, crit = +150.0°C)
>> iout1:         5.06 A  (max = +20.00 A, crit max = +26.00 A)
>>
>> Signed-off-by: Vincent Pelletier <plr.vincent@gmail.com>
>>
>> --
>> Note for review: this patch has one warning from checkpatch.pl:
>>   WARNING: DT compatible string "tps544b20" appears un-documented -- check ./Documentation/devicetree/bindings/
>>   #32: FILE: arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts:55:
>>   +               compatible = "tps544b20";
>> This chip is handled by the existing pmbus module, and there is indeed no
>> matching entry in Documentation/devicetree/bindings/hwmon/pmbus. I am not
>> especially knowledgeable about this chip, I only know it is used by this
>> board, so I am not sure I can do the best job in putting such a file
>> together.
>> If needed I can git it a try.
> 
> Devicetree bindings are supposed to be stable into the future, so an actually
> reviewed binding is quite necessary ;-) .
> 
> In the case of your tps544b20 it should also be pretty easy to do, as
> 
> 	Documentation/devicetree/bindings/hwmon/pmbus/ti,ucd90320.yaml
> 
> is probably a pretty good match to what you need in terms of Yaml notation.
> Just need to replace the naming in your copy and drop in the correct
> description from
> 
> 	https://www.ti.com/lit/ds/symlink/tps544b20.pdf?ts=1637055780278
> 
> and you have a working binding.
> 
> Then just add another patch to your series that mimics
> 
> 	https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=8a36e38d8b0fbb92609e837a67f919202ec7ec51
> 
> and include the relevant maintainers that scripts/get_maintainer.pl will
> give you, and you're all set :-)
> 

Hi Heiko,

In current form the bindings would be close to trivial and we actually
do not know how proper bindings would look like (the device is not
trivial). Therefore based on Rob's recent comments - better to have
trivial schema than nothing - I sent a patch adding them to trivial-devices:

https://lore.kernel.org/linux-devicetree/20211116110207.68494-1-krzysztof.kozlowski@canonical.com/T/#u


Best regards,
Krzysztof
