Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A0CA947A96B
	for <lists+devicetree@lfdr.de>; Mon, 20 Dec 2021 13:22:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231513AbhLTMWm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Dec 2021 07:22:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230321AbhLTMWj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Dec 2021 07:22:39 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83860C06173E
        for <devicetree@vger.kernel.org>; Mon, 20 Dec 2021 04:22:39 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id a83-20020a1c9856000000b00344731e044bso6536385wme.1
        for <devicetree@vger.kernel.org>; Mon, 20 Dec 2021 04:22:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=TSCuxY5wqMw0R+REWpFrewafdOovZ1sGHeMcm+IFJO8=;
        b=LW1kmrl01uNavpeUR+eQGG79Lhg+30st2BcLbsxDBjDezq5+dvLIkE0dW6y6YSHbFg
         evIVqfSTj9XOXN6oRFpoVGG8nvmjXUfZ0pVOmgYqNRc2EuYLCnbhQFXR3IAeb7ea1mCQ
         XVxs0nWfyF7vylGFUP7vfrCs39PmyC8o6RVRKLzVUh/fHhpBPqLHRkGc03tLJkkEnw3F
         lAxstS5F+E6tRFtRQuO+YPf+UT1M+BH7HM5W/m3YidHsLg4+gIjIBZTy7ddpUH+/RcBn
         cJYvrAGpYvvLysHrOqAlAEZ+/o55Maqnxq4vxDZrX+PxponvFtKqFk4fUS1FIiiDMu+9
         oZXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=TSCuxY5wqMw0R+REWpFrewafdOovZ1sGHeMcm+IFJO8=;
        b=7R6hJauwGaZfEshECCUujWQhlNqCUnwnXF+G7DVSBKXxigIvMxZr7qxanC6rZGRDDh
         TJApjmyuFOJhLHXvUQyUYZtErBt0gfm6MaHy8QC0YuLAnL5ySYZSnFY54cnXwZgAdv7i
         3x1yt1ueP1SuKKQ4XGhKoBahBNafehU6gB+XtL3wP1PkvTNFOF0hr1SW595yDVfhvLxj
         7U5GFqUiOXhvdhret87izptj/5yodkWfLn7ngI8gJNj0qbySCx9RoHN9zh2cjOyLZ8CC
         FLdB2PLiCEW9hZFYaWuMq8hBtpjZS7iZhfBbE6g7FjolxRYg7/brt/vevQPilVmJswc/
         aUhw==
X-Gm-Message-State: AOAM532tTw376SwwsIw8ehMycDEXXUuO+Rxn/XlcYniMSZ2JM4Qxo1gF
        vgTrMjqGlxcuh1PdPTdIf/gx5g==
X-Google-Smtp-Source: ABdhPJwUebx4frNTkSpn3y/kryQAmzKe+4PoR1IZphY1WuZESeVcxGZ8e0fuyeiupuhBiP8RI2yZVQ==
X-Received: by 2002:a05:600c:219a:: with SMTP id e26mr13754698wme.136.1640002957948;
        Mon, 20 Dec 2021 04:22:37 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:ac6:da31:b84c:183? ([2a01:e34:ed2f:f020:ac6:da31:b84c:183])
        by smtp.googlemail.com with ESMTPSA id j14sm15234410wrn.88.2021.12.20.04.22.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Dec 2021 04:22:37 -0800 (PST)
Subject: Re: [PATCH v2 0/2] dt-bindings: timer: sifive,clint: Miscellaneous
 improvements
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
To:     Geert Uytterhoeven <geert@linux-m68k.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Anup Patel <anup.patel@wdc.com>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org
References: <cover.1639662093.git.geert@linux-m68k.org>
 <88170fb7-f348-1227-cf8c-863306986917@linaro.org>
Message-ID: <7269ab52-f80b-001a-abf4-cc4744747450@linaro.org>
Date:   Mon, 20 Dec 2021 13:22:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <88170fb7-f348-1227-cf8c-863306986917@linaro.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/12/2021 13:20, Daniel Lezcano wrote:
> On 16/12/2021 14:43, Geert Uytterhoeven wrote:
>> 	Hi all,
>>
>> This patch series contains two improvements for the SiFive PLIC DT
>> bindings.
>>
>> Changes compared to v1[1]:
>>   - Split in two patches,
>>   - Improve patch description and document limit rationale.
>>
>> Thanks!
>>
>> [1] https://lore.kernel.org/r/20211125152317.162958-1-geert@linux-m68k.org
>>
>> Geert Uytterhoeven (2):
>>   dt-bindings: timer: sifive,clint: Fix number of interrupts
>>   dt-bindings: timer: sifive,clint: Group interrupt tuples
>>
>>  .../devicetree/bindings/timer/sifive,clint.yaml          | 9 +++++----
>>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> Please resend the timer bindings changes, the GPU and NAND controller
> series are confusing the b4 tools

Never mind, I just noticed the V3 ;)


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog
