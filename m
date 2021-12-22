Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 52C1A47D10E
	for <lists+devicetree@lfdr.de>; Wed, 22 Dec 2021 12:33:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229964AbhLVLdv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Dec 2021 06:33:51 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:36528
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S240274AbhLVLdu (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 22 Dec 2021 06:33:50 -0500
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com [209.85.208.197])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id B1F6A402FC
        for <devicetree@vger.kernel.org>; Wed, 22 Dec 2021 11:33:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1640172829;
        bh=Bud3WNiBkA27UvVJCmsfryp1dUMovY1kL8ZJQpJGAV4=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=gnLarOnO17DbSsUktEjFGog+KLWpYvcRIFDjFNUabVhobc9wK1RPgft8N2UtA3uVg
         m17+i3W7gC/vnP8tXdmJUVkCT7ojHBDBtf4NvB1qICEbRmoicKwdMggPjDVp55hamm
         WffC+XWEZLDpMq+XmtNY0i6khyDnSsMwuHEN+1IjHGdEo4WOinXW2NK3f+4QXULwzo
         j0wUOHSOHuWRZznMuqTQYxOZGKp3lmW2IKLWZnYTHOLHNNr9bYH3CfzoCFzsiyqV3a
         gT50e07r5/U0x/Epv/r7a77zVimgHyAHTViS95hRkJBfL5aHQM8Wo2X+ltMw7En0Mj
         lQlHLC2NgfkyQ==
Received: by mail-lj1-f197.google.com with SMTP id h17-20020a05651c125100b0021ba28cf54dso263704ljh.22
        for <devicetree@vger.kernel.org>; Wed, 22 Dec 2021 03:33:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Bud3WNiBkA27UvVJCmsfryp1dUMovY1kL8ZJQpJGAV4=;
        b=wLFpMdpQWcd8vylUVILpZPYsVv0dKOTdkziJKD8sEb+oMfN63E+y3ZJuu/iwWlqu+8
         rHCxPptRzh2SB3xgJXttnR8RmHpsy9IhmGTO8qI8zDzwvqRcuCujKbJnyqLaqBjrity1
         fHDvHsJ1jgIka0OLMM4bIfBEl9O9WtNRSX46MQnwkye4RjXqz5RV/0MPTzCR/bjq0aHY
         bYkGfbP2hjjs+FvkjsD/1XdHUzw9yJjNXIyQdg9Dczid+JmDF7Z+GBVaDHMNjZ8KOqGL
         IR/KijS6WHVA1ShIIEAjshiNICdgVwP+L7P2lbBrC8zyV3r+lB9qRhzxg20TFU+tdbZK
         iINw==
X-Gm-Message-State: AOAM530bplsdXZ+S4Fu73ggbD/LROJCV67Q0VA3YhpvNpYBcwkRv4txB
        5WBO3lPGSx7r6/Oyy13OMM3U83fQXB+JUx/WRGj7fS9m9Bq/EOU91ZNvy9hEwlCCLpB8rIdqgBE
        oq8IDIO7TzHXRx9rjQTRrVH7CNLwLNDkGji3qr4o=
X-Received: by 2002:a2e:9c58:: with SMTP id t24mr1829545ljj.506.1640172829022;
        Wed, 22 Dec 2021 03:33:49 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzrXcAMSKIhda/WRnP+EJBAhMAiZn/qnEX7ocN0kQ6d+ev4XmSMji7hciMkpNl3WXN6IXsTYA==
X-Received: by 2002:a2e:9c58:: with SMTP id t24mr1829529ljj.506.1640172828863;
        Wed, 22 Dec 2021 03:33:48 -0800 (PST)
Received: from [192.168.3.67] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id o3sm188031lfo.255.2021.12.22.03.33.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Dec 2021 03:33:48 -0800 (PST)
Message-ID: <414faffd-cbe3-a784-1f6f-4e2eb325be58@canonical.com>
Date:   Wed, 22 Dec 2021 12:33:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH v5 1/2] arm64: dts: exynos: Add initial Exynos850 SoC
 support
Content-Language: en-US
To:     Sam Protsenko <semen.protsenko@linaro.org>
Cc:     Jaewon Kim <jaewon02.kim@samsung.com>,
        Chanho Park <chanho61.park@samsung.com>,
        David Virag <virag.david003@gmail.com>,
        Youngmin Nam <youngmin.nam@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Daniel Palmer <daniel@0x0f.com>,
        Hao Fang <fanghao11@huawei.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>
References: <20211221142417.19312-1-semen.protsenko@linaro.org>
 <20211221142417.19312-2-semen.protsenko@linaro.org>
 <CAPLW+4=B2DU7SedxfKyFBDH=6ZqiJVVNCNbMH3wmVuedFk_YnQ@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <CAPLW+4=B2DU7SedxfKyFBDH=6ZqiJVVNCNbMH3wmVuedFk_YnQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/12/2021 15:30, Sam Protsenko wrote:
> On Tue, 21 Dec 2021 at 16:24, Sam Protsenko <semen.protsenko@linaro.org> wrote:
>>

(...)

>> diff --git a/arch/arm64/boot/dts/exynos/exynos850.dtsi b/arch/arm64/boot/dts/exynos/exynos850.dtsi
>> new file mode 100644
>> index 000000000000..2abbb972b610
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/exynos/exynos850.dtsi
>> @@ -0,0 +1,759 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/*
>> + * Samsung Exynos850 SoC device tree source
>> + *
>> + * Copyright (C) 2018 Samsung Electronics Co., Ltd.
>> + * Copyright (C) 2021 Linaro Ltd.
>> + *
>> + * Samsung Exynos850 SoC device nodes are listed in this file.
>> + * Exynos850 based board files can include this file and provide
>> + * values for board specific bindings.
>> + */
>> +
>> +#include <dt-bindings/clock/exynos850.h>
>> +#include <dt-bindings/interrupt-controller/arm-gic.h>
>> +#include <dt-bindings/soc/samsung,exynos-usi.h>
>> +
>> +/* TODO: Remove this once corresponding clock bindings are added */
> 
> Krzysztof,
> 
> What would be the best time for me to send the removal of this
> workaround? Is it right after v5.17 release?

The best time is after the merge window, so when v5.17-rc1 is released.


Best regards,
Krzysztof
