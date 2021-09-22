Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8D7CE414344
	for <lists+devicetree@lfdr.de>; Wed, 22 Sep 2021 10:11:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233569AbhIVIMg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Sep 2021 04:12:36 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:46758
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S233538AbhIVIMb (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 22 Sep 2021 04:12:31 -0400
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com [209.85.221.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 000D03F331
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 08:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632298258;
        bh=P8Qe07F/xjMQdNLxVav+Rfl78SB2e9oBWelI8/7HSJc=;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=ipSWKYeenn5tZF1Kr6wKaMcSRUat1u6CwmnYr4WrC02kROUQpYfZQ94ZsUcNSbi0u
         wdYmBf7E0s0byAmRaICB23GqWBdCR9aXAoxnYZY4UQaIXZr2WO9JAWp6AOjs6JRqDt
         amu4KBvhXWWpzuofD2OhpEaqVP4bhTUawHQL9TEBNW1cbupOsdnd4AZhN17dwdXh3f
         oSolPb0ORahsiPfKshml0Z4fcu95pkYV3w5c7e4aS5d3GARLDAeLC8pXY3uBcSF0P/
         fsVsFRTBQxonTseLnZ63acpk6etfaCPhQMuF3I5aZd/jjp3EcBp5CEnkIpD4WZ9Q88
         WPE2S5xRcL0iw==
Received: by mail-wr1-f71.google.com with SMTP id r9-20020a5d4989000000b0015d0fbb8823so1354309wrq.18
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 01:10:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=P8Qe07F/xjMQdNLxVav+Rfl78SB2e9oBWelI8/7HSJc=;
        b=AmrXqsk6u5X6n0hqnhaFK2Z7tAcLAHMhv2a+yWptMS6qDr0Z4PUOtvnkhF3XeTzbHJ
         FxyverrhtMEiAfwlBn50U7Ote6lqB1U+ARv+hRRR2HLPo+ggg00OmA16sRCamu/0qqxy
         JEQlb8+iQeXAnPAO5qmb8P6Hr1H2RUwTmj0YU9xYfg7u03lqH7dDcn1pKxyna7hprnM0
         hrtDroHlTGW1HpBTiEgmeQB7BiLlIqOYRWAOjMibWdNp7F9FKT2veLssCNDO/6AdibVA
         1R1yEfKo/7AZ0O/q8yt3oe/4Z4MXLDYvL+LFl9WzQ+KOwBAU4g2WTXxjWlAECv5wLVgs
         xSaw==
X-Gm-Message-State: AOAM531ZZjrQJxTu6xKhn9XIgK6EulxW9CoVYNDgJZG6tBYYSD874wOJ
        sZaENmeiuEPPQcw0XJvT3DVshrMF82RbU2HYxYjRNAkutlrJqX84YfgJyR9e3+DtTjg4quNmKyv
        tx+Y/4lYS1VV5eaEb3W+RLlKKj3Hivp65S1n1iY8=
X-Received: by 2002:a05:600c:3b89:: with SMTP id n9mr9113899wms.186.1632298258646;
        Wed, 22 Sep 2021 01:10:58 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzb3Ljj7oUI5lHEYQz4nwFDjBGGdyp2FKjKpmWPv5gSTXpVI7LSRlWIyJA3WG9xT/pBfVR0VA==
X-Received: by 2002:a05:600c:3b89:: with SMTP id n9mr9113885wms.186.1632298258458;
        Wed, 22 Sep 2021 01:10:58 -0700 (PDT)
Received: from [192.168.0.134] (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.gmail.com with ESMTPSA id d24sm1174219wmb.35.2021.09.22.01.10.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Sep 2021 01:10:58 -0700 (PDT)
Subject: Re: [RESEND PATCH v2 1/4] mfd: sec-irq: Do not enforce (incorrect)
 interrupt trigger type
To:     Lee Jones <lee.jones@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzk@kernel.org>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
References: <20210602110445.33536-1-krzysztof.kozlowski@canonical.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <7ac677f1-2928-21de-a226-449e72b1bd10@canonical.com>
Date:   Wed, 22 Sep 2021 10:10:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210602110445.33536-1-krzysztof.kozlowski@canonical.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/06/2021 13:04, Krzysztof Kozlowski wrote:
> From: Krzysztof Kozlowski <krzk@kernel.org>
> 
> Interrupt line can be configured on different hardware in different way,
> even inverted.  Therefore driver should not enforce specific trigger
> type - edge falling - but instead rely on Devicetree to configure it.
> 
> The Samsung PMIC drivers are used only on Devicetree boards.
> 
> Additionally, the PMIC datasheets describe the interrupt line as active
> low with a requirement of acknowledge from the CPU therefore the edge
> falling is not correct.
> 
> Marek Szyprowski reports that together with DTS change (proper level in
> DTS) it fixes RTC alarm failure that he observed from time to time on
> TM2e board.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>
> 
> ---
> 
> Rebased on https://git.kernel.org/pub/scm/linux/kernel/git/lee/mfd.git/log/?h=for-mfd-next
> 
> Changes since v1:
> 1. Mention in commit msg that this fixes TM2e RTC alarm.
> 2. Add Marek's tested-by.
> ---
>  drivers/mfd/sec-irq.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

Dear Lee,

This was already a resend. Any comments from your side?

Best regards,
Krzysztof
