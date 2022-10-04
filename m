Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2852A5F3EAC
	for <lists+devicetree@lfdr.de>; Tue,  4 Oct 2022 10:44:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230290AbiJDIop (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Oct 2022 04:44:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230297AbiJDIoh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Oct 2022 04:44:37 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4158302
        for <devicetree@vger.kernel.org>; Tue,  4 Oct 2022 01:44:33 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id z97so17856551ede.8
        for <devicetree@vger.kernel.org>; Tue, 04 Oct 2022 01:44:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=0YC5QdMGtgVoawG6o2+yruMqpLarFB1986raGGiYYPY=;
        b=wLHyZcIm76pCMz9a2KQYrac8QQ0KgWbYR0rIC8ngcAWKTwzAji1kdDgN3toqFItVkZ
         mexZs70GoGuayYic2WiFHhVe/QyfIKlRqk1fNmIZ2uaFYKPe4PW0O2eHtlF7/rPs9mcm
         h1cCiZQxdnQVxSl/is9JOCmLSZBFMcgOPltKNxVgSXvlUKvCdvl00aja8BLR4le50sX0
         +0wyF2DrWnFN+j/XqBttx1Xr7R4KQDDh6+KbkU/y3KcVlWhD4952OyTe3uaw5UIkyWdQ
         aoHa/Pqmy8EDEFvWPRyxuZKHc1NwQht2AM8UVGfRKiUxgO8uqZzG9ncTXeFATcX5vJN6
         sEcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=0YC5QdMGtgVoawG6o2+yruMqpLarFB1986raGGiYYPY=;
        b=EBlVf1XlUoljgSIIzQmTi+eu4F/eZoqFpECZaa3zKcauZKvsMR5v65xHq8L8VtEhQ4
         WL9IzjHUF3ZobL2ZNnQ1FDY3EcZFi21Kg8AdC/dnTfwneuXLRhvwNkKftEIZyuKM8NCJ
         k+F281CnLMEf2AT89j+8idCRbsEBi5HbF5yJ43Bqlafga+Z1FTnWUU0WW+TC7EGB9AIB
         TK3QBp0FX/bi/MsqHb22YBjw0Sz91TZgCKFWPk9F3drI350W9mW/v337ahPAT2iBewmM
         bkkpN+3apu4C4r/c4ZbuTkoJCxgrVWLL8jwOIHO1s7BK0PRqRlAUv4RKvejUFiWtVRmN
         qijQ==
X-Gm-Message-State: ACrzQf0HnhaCZGSH3KomThWsRxm7ojO8mKEvygFzmvzpfLiL4BQia8Fd
        yfZ9CYjha0H1nhKJj57NRcUZ5RBOrYKJSTgE7dDKEYmOtQo=
X-Google-Smtp-Source: AMsMyM5BRbaaVd3kOgVOyg9UyQIjh5jijEVhSw8fBEjo056F58rp5HFaB14PCcaXT7Jp1sV6LM0oL4i42OLwFJ7ayGA=
X-Received: by 2002:a50:eb8f:0:b0:458:482d:43de with SMTP id
 y15-20020a50eb8f000000b00458482d43demr21278352edr.205.1664873071538; Tue, 04
 Oct 2022 01:44:31 -0700 (PDT)
MIME-Version: 1.0
References: <20220930102259.21918-1-shubhrajyoti.datta@amd.com> <20220930102259.21918-4-shubhrajyoti.datta@amd.com>
In-Reply-To: <20220930102259.21918-4-shubhrajyoti.datta@amd.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 4 Oct 2022 10:44:20 +0200
Message-ID: <CACRpkdb4b29MDDUE4z=JeWHd8pPH8vEtowuSqxgcByUEF0iZ0Q@mail.gmail.com>
Subject: Re: [PATCH v5 3/3] gpio: pca9570: add slg7xl45106 support
To:     Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>
Cc:     linux-gpio@vger.kernel.org, git@amd.com,
        devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, brgl@bgdev.pl
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Sep 30, 2022 at 12:23 PM Shubhrajyoti Datta
<shubhrajyoti.datta@amd.com> wrote:

> Dialog semiconductors SLG7XL45106 is an 8-bit I2C GPO expander.
> The output port is controlled by a data byte with register
> address. Add a compatible string for the same. Also update
> the driver to write and read from it.
>
> Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
