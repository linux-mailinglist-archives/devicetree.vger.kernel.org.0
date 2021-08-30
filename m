Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5E9A53FB169
	for <lists+devicetree@lfdr.de>; Mon, 30 Aug 2021 08:52:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233110AbhH3GxB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Aug 2021 02:53:01 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:46010
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232358AbhH3GxA (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 30 Aug 2021 02:53:00 -0400
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com [209.85.128.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 60DAB4078F
        for <devicetree@vger.kernel.org>; Mon, 30 Aug 2021 06:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1630306326;
        bh=MgfWimLEdQUarvzIGTaBBVzfBQJf+vNUd1nNymnWejg=;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=kdwNYmhIPcBAncaKJUgsxYu8e0ib7cLmwCCEHqHdfX9pVGUovJOv1nfD+cjU/l5kR
         plEn4pAICma4Z2O2Xu+xumfjtNJBDZ4gmi7kcbmv8wz/c8NjZ+4yRcBgmoWgnSDqtK
         uHvdP49Df+fRf3HQm+pAHH4uY8mVLzTjNK5wJ+7I/rxWHWr3HJZl2TZYPMkF4z5kMx
         oEF+2EXItPUcOeCmc6cCCzspqxnCyQCvhAsOqBEdkzh1dvPhZlGxgaHWVx+I6F0+Qj
         vY73cGFREAN1PD9JOdBem88x1zN4Hnif9t0S4m2OM7fNoRWN5JzbRHEed6Lk+92yJS
         WsyJsrEmZkmPg==
Received: by mail-wm1-f70.google.com with SMTP id p5-20020a7bcc85000000b002e7563efc4cso4173216wma.4
        for <devicetree@vger.kernel.org>; Sun, 29 Aug 2021 23:52:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=MgfWimLEdQUarvzIGTaBBVzfBQJf+vNUd1nNymnWejg=;
        b=SrkuB8fuVq3aWMGl0HfjrT4ldq/w773yWzSs3z/RW2KfYIPrhjHYNHT4sLWS718+ny
         yUh2mksD44jdLrJSM6elXRHQ7tqtKhQruKcf4kuA8H9kqh3XS+XfHc3K9QOvFJNacstS
         +d9SY4oaDNCETDKuBmICVHU5Av3k5HtFqIFKPecjtHlC274CrqTbRhu311NRn9oFtT/x
         8G1N+Z9Z378JMJd1Wxq2g9jj0hdcAU8t7CoSJdNfySKgjGoOZvkyiVRWX+q+s6wN+Q7c
         dVOf29PlhULcdoAi5ShuBJXeypVK5uO+3+5GoQ+1X2n9MENSneL8QScxzu1jQt95FaRv
         /cjw==
X-Gm-Message-State: AOAM5339hQWPmNBnoqgYXnIDtyBdqOYEG06OPWwoIh9BA+hZP9aUh5AT
        clEKH/a+8Wg3Ac/MtmdnbZnjalgPp/PzBL2ItPHCZz+A5YS3b6RnNYSozlwz+Um6zuUkjgUFw37
        TF/XVOFnpETvuUe4VlVhs25Gc4gX/UTrqjTAb6g8=
X-Received: by 2002:a7b:c7c3:: with SMTP id z3mr20662354wmk.96.1630306326153;
        Sun, 29 Aug 2021 23:52:06 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzKes6qCmO78Vl1Mx8rIagHedcVuejvecLvmaILX7azR2lg3wu5LqUpJOXs2fPSLJi+OusJCw==
X-Received: by 2002:a7b:c7c3:: with SMTP id z3mr20662340wmk.96.1630306326013;
        Sun, 29 Aug 2021 23:52:06 -0700 (PDT)
Received: from [192.168.3.211] ([79.98.112.166])
        by smtp.gmail.com with ESMTPSA id x11sm14679065wro.83.2021.08.29.23.52.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Aug 2021 23:52:05 -0700 (PDT)
Subject: Re: [PATCH v3 0/8] dt-bindings: clock: samsung: convert to dtschema
To:     Stephen Boyd <sboyd@kernel.org>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org
Cc:     Sam Protsenko <semen.protsenko@linaro.org>
References: <20210825134056.219884-1-krzysztof.kozlowski@canonical.com>
 <163022098497.2676726.6455473597971395732@swboyd.mtv.corp.google.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <7228126e-2ba8-bcba-af26-8d7ec4e33a62@canonical.com>
Date:   Mon, 30 Aug 2021 08:52:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <163022098497.2676726.6455473597971395732@swboyd.mtv.corp.google.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/08/2021 09:09, Stephen Boyd wrote:
> Quoting Krzysztof Kozlowski (2021-08-25 06:40:48)
>> Hi,
>>
>> Changes since v2:
>> 1. Add reviews.
>> 2. Split Exynos4 ISP into separate schema.
>> 3. Add maxItems to clocks and power-domains (review feedback).
>> 4. Do not allow samsung,exynos5420-clock and samsung,exynos5800-clock
>>    without syscon. These clock controllers should always use syscon
>>    to allow DMC bindings access the registers.
>> 5. Drop assigned-clocks.
>>
>> Changes since v1:
>> 1. Patch 7/8: include header to fix clock IDs error in example.
> 
> I think this header file isn't in clk tree?
> 

It is in Linus' tree... full path is:
include/dt-bindings/clock/s5pv210.h

What's missing is entry in MAINTAINERS.

Best regards,
Krzysztof
