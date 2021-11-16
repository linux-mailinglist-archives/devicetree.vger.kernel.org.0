Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DB304452FD9
	for <lists+devicetree@lfdr.de>; Tue, 16 Nov 2021 12:08:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234662AbhKPLJK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Nov 2021 06:09:10 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:57578
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234742AbhKPLIe (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 16 Nov 2021 06:08:34 -0500
Received: from mail-lf1-f70.google.com (mail-lf1-f70.google.com [209.85.167.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 16F59405F7
        for <devicetree@vger.kernel.org>; Tue, 16 Nov 2021 11:05:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1637060735;
        bh=Z3pn3GdeY94Crx51QDkqArGQtoPgeuK++dovgb7tusc=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=BULQGQbpKlKw9yaPXH9w1nBU1khRAR4qQgp41BZWj5i8+Oh92BXCC/S14lbkyOvvh
         LbjXSNS3FxvomYz72j7FYVBzNUD5nZuVdppM6O92/MJvl7qaXf+8jgunEl66D/5QrY
         W+jWOmQc7ss00+tH5e8c+qimCETtywAFosAdVSewLl6Lqu2ZSX6+wrU3KuRPYwCwWc
         I99y+P6feYlQWEX0zk77XTZJwQKuGT0+G7aYNb+QyiDOAsNkxO2I47WnSbunrurdeU
         PEafw51lV1waGgZC8D6oWfdBNm1HV66RzmBrjMvbf4X/4MrKZZE6tf4iUcfcNeYZXV
         SyziWmQrLFsYg==
Received: by mail-lf1-f70.google.com with SMTP id j9-20020a05651231c900b004037efe9fddso8036031lfe.18
        for <devicetree@vger.kernel.org>; Tue, 16 Nov 2021 03:05:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Z3pn3GdeY94Crx51QDkqArGQtoPgeuK++dovgb7tusc=;
        b=cMK6vkhMcraYVf1lzeQP3g52aeKPg+BPsluq2T09NAUqWiFV31rTUIFpWLmVARh3R/
         i8CqzNIt3O+JMy8ZjwAJfsYrExKSI2jlodwEUKutpozHRu7NQgz5QyMxs4wNQf5yaXcA
         1Z9fL9ec3+vcr5AyTyUvIYYb+86izQRRa//DrvBEqHy0dR+MObKUJ1k6FeEhQdfPqk2N
         niJV18kMao0js3m4RxLPVDZuJlq/Lk5LSye6ECzROMdTeFVbxiDMv+lU/+8+G9baNkuJ
         Km5L1LpvzSaWz1RCAaGmFGdUYXOTBjdmx3b5dp0bu72o3e5VW7WlTbc0og/LuZcy+ktN
         RzRg==
X-Gm-Message-State: AOAM533yTLm1oRtRTs2zKIVS6v4jKuWHbWa2au3qVPCUXMbDLJU0mWXI
        LZtzNl3VIe5co44NarGgxkNGKcsDk2t+3RiMMGXHHEa5JjmVFkd5hM/cK6803+Yj2VrkuaXqHx6
        r/vq2STaaHUJP1ONOJJQ66JOgpBlOLbgm9ZoczeU=
X-Received: by 2002:a2e:a726:: with SMTP id s38mr4983310lje.415.1637060734289;
        Tue, 16 Nov 2021 03:05:34 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyGsVBgU4j2SaQSu3RItSe0Dm79nyIMrOE90s4v9rVKeB/zfelrLbFZad1bqrUOnXEdWDNpVg==
X-Received: by 2002:a2e:a726:: with SMTP id s38mr4983289lje.415.1637060734138;
        Tue, 16 Nov 2021 03:05:34 -0800 (PST)
Received: from [192.168.3.67] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id bt11sm1725283lfb.208.2021.11.16.03.05.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Nov 2021 03:05:33 -0800 (PST)
Message-ID: <ce1618f9-3b56-8670-387c-bca6181089b1@canonical.com>
Date:   Tue, 16 Nov 2021 12:05:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Subject: Re: [PATCH] riscv: dts: sifive unmatched: Name gpio lines.
Content-Language: en-US
To:     Vincent Pelletier <plr.vincent@gmail.com>,
        =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Qiu Wenbo <qiuwenbo@kylinos.com.cn>,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        David Abdurachmanov <david.abdurachmanov@sifive.com>
References: <f6512cc50dc31a086e00ed59c63ea60d8c148fc4.1637023980.git.plr.vincent@gmail.com>
 <11612716.TMCrJ2abzX@diego> <20211116101713.77a0df69@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20211116101713.77a0df69@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/11/2021 11:17, Vincent Pelletier wrote:
> Hello,
> 
> On Tue, 16 Nov 2021 10:39:04 +0100, Heiko Stübner <heiko@sntech.de> wrote:
>> Hi Vincent,
>>
>> Am Dienstag, 16. November 2021, 01:52:56 CET schrieb Vincent Pelletier:
>>> Follow the pin descriptions given in the version 3 of the board schematics.
>>>
>>> Signed-off-by: Vincent Pelletier <plr.vincent@gmail.com>  
>>
>> when sending a patch series with "git format-patch -6" and friends will
>> automcatically generate x/y additions like "[PATCH 1/6]" and so on.
>>
>> Please try to keep them around when sending, as automated tools for patch
>> handling like "b4", stumble when they encounter a patch series without them.
> 
> Actually my intent was to not make this a series, as in my understanding
> independent patches should/may be submitted separately from each other.
> They just happen to be stacked, and in this order, in my working copy,
> but should not functionally have any dependency on one another (I
> believe they should even apply cleanly in any order).
> 

This should be a series because the patches, even though independent,
are logically connected/grouped as one work.

Best regards,
Krzysztof
