Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7868B4117A5
	for <lists+devicetree@lfdr.de>; Mon, 20 Sep 2021 16:54:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236010AbhITOzh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Sep 2021 10:55:37 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:43302
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S235703AbhITOze (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 20 Sep 2021 10:55:34 -0400
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com [209.85.221.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id B11D03F335
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 14:54:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632149646;
        bh=V0X+3uidaeyp1K6mH5laK1N1lZeTwvHcyGOGgKbVfnY=;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=iQ5jiAUZT3HUCVEfdHYiBjz5bV56hvPG0zI8zfqmetNVR57Cr+Y3N00m2IsbKKvtX
         At9kUYO/rQDdEngpaLiuavnLbDbglkSwXYxDk0p3IgnQ1SUvb7PM/JwthLKWxkbhkv
         2cMD5n0fyJt8AMytpHFxe7s+rbw+0s9k8QqH9TTtul4zGLIlK6xEQ5F+KHBeCSLE0/
         1oOa0SVKTauQ23ZB0G5tkuewocRPW7hNtEjIxGu9CtDAcNQqG+A0Ea3iNtqk6Y6KoV
         NYJWhHa9IXqCBYhyraxlMFXTkI9zrb924Wf9IxOa2pvf3yb9LOYo+2GCNygzG3S2wi
         Q1+zdY9tjq47w==
Received: by mail-wr1-f70.google.com with SMTP id v15-20020adff68f000000b0015df51efa18so6306663wrp.16
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 07:54:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=V0X+3uidaeyp1K6mH5laK1N1lZeTwvHcyGOGgKbVfnY=;
        b=uY7wknnrngXXzs7+lNdGjlUs9wNXc3sQJOKSEdkm4OL5RsJo1FBO2/6Vp0K2qSJTed
         ewxBmGMW9kiPfjOwDo85luwFK4UHoLwhPJJai0yoMBKkWcHYwbeYa0k7xrWYZbsrhUwd
         ZwSOuMk6E8Rocc0Mgkj2bwL7HA/h2wuyQoNLvlLPWLi5xgZ9Oc+PR1OO2YeXCKPLwdDv
         AmCe+RKL+CW5nLUuSOz2IeKDCEfGoqNazfpfsXIZ+clKy/ZRSKb7aG5VSk+cf0wQ4REK
         yM+HMTjjGcyzKDLxpzFbNAclWWVnHtALnT+fPPnCCXYvf8UzgE0kSeTa/L8TO3dvjm80
         dR/g==
X-Gm-Message-State: AOAM533wwKn40jRUfO+VZH5DexHYMKuKFARfz5fm7mKdz81hZHPqEEn3
        oy/4VT+pC2tCBopiZ0i9ZKw815lY/8Phwbuu0qf6NUR6mYc3r73GtVip7MoMRsQ2egIMgDolasV
        7Lgm7G5Gbm1u1QbIF77iJRYGYzx60uEEBs57GrDg=
X-Received: by 2002:a7b:c142:: with SMTP id z2mr30489013wmi.10.1632149645732;
        Mon, 20 Sep 2021 07:54:05 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwKtZyLQklhvFP4E8CIP8/HFnNPR2fRGO1PTaijQfdrYO28OItWxsrb7LXGbo8xKOP7lAiUbg==
X-Received: by 2002:a7b:c142:: with SMTP id z2mr30488997wmi.10.1632149645581;
        Mon, 20 Sep 2021 07:54:05 -0700 (PDT)
Received: from [192.168.2.20] (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.gmail.com with ESMTPSA id m18sm16064557wrn.85.2021.09.20.07.54.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Sep 2021 07:54:05 -0700 (PDT)
Subject: Re: [PATCH v2 4/5] riscv: dts: microchip: drop unused pinctrl-names
To:     Geert Uytterhoeven <geert@linux-m68k.org>
Cc:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Conor Dooley <conor.dooley@microchip.com>,
        MTD Maling List <linux-mtd@lists.infradead.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-riscv <linux-riscv@lists.infradead.org>
References: <20210920132830.152802-1-krzysztof.kozlowski@canonical.com>
 <20210920132830.152802-4-krzysztof.kozlowski@canonical.com>
 <CAMuHMdX5vhihbKrXh4x_VyA2Cc=nR+53g_fZPHsuHVF56rBvMQ@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <ef5771df-86fa-524a-8a5c-c519e913330b@canonical.com>
Date:   Mon, 20 Sep 2021 16:54:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAMuHMdX5vhihbKrXh4x_VyA2Cc=nR+53g_fZPHsuHVF56rBvMQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/09/2021 16:32, Geert Uytterhoeven wrote:
> Hi Krzysztof,
> 
> On Mon, Sep 20, 2021 at 3:28 PM Krzysztof Kozlowski
> <krzysztof.kozlowski@canonical.com> wrote:
>> pinctrl-names without pinctrl-0 does not have any sense:
>>
>>   arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dt.yaml: sdhc@20008000: 'pinctrl-0' is a dependency of 'pinctrl-names'
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
>> Reviewed-by: Geert Uytterhoeven <geert@linux-m68k.org>
>>
>> ---
>>
>> Changes since v1:
>> 1. Add review.
> 
>> --- a/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml
>> +++ b/Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml
>> @@ -33,6 +33,7 @@ properties:
>>        - items:
>>            - enum:
>>                - issi,is25lp016d
>> +              - issi,is25wp256
>>                - micron,mt25qu02g
>>                - mxicy,mx25r1635f
>>                - mxicy,mx25u6435f
> 
> This one looks like an accidental addition?

Thanks, I screwed up something during rebase... I'll send a v3.

Best regards,
Krzysztof
