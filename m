Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3F50B471C58
	for <lists+devicetree@lfdr.de>; Sun, 12 Dec 2021 19:50:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232002AbhLLSu3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Dec 2021 13:50:29 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:41520
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231982AbhLLSu2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sun, 12 Dec 2021 13:50:28 -0500
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com [209.85.167.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 73A3B3F1D7
        for <devicetree@vger.kernel.org>; Sun, 12 Dec 2021 18:50:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1639335027;
        bh=hEPUkc4LL4i/gGwaF5ugHQxC2zekuBT7zmaD1tTpKNA=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=MdM54K5osfJ4ehktXQ9zZnoaui3oXBZEca8rl/t/H1IWIW1kJfLmzMExhJvR1JPqj
         F768yGGQphZoyXjld3S3swglc6AMReDEZPU4dSLZmNQP7EiHDxdk+52ClGrLzF5m1m
         NxNG1EJpLdAssHXRN98pw/ktESyy8u6S1gTHb8jHCYBpP2VxG5sRJy8jUTMEt+8juB
         QBzV28RXoBJrLGjhqtOKRaoDpRKVKcMOGloC/1hkvpYb0MGUiOrLnYInncvPtubZJE
         fZluYvm4gl3+ga/iiz99Q8t34GZu2wfTHZgkGQZkF08uniuRWQmXMFiMdGX51UELnv
         RgSeHyvmooEVw==
Received: by mail-lf1-f71.google.com with SMTP id f15-20020a056512228f00b004037c0ab223so6501799lfu.16
        for <devicetree@vger.kernel.org>; Sun, 12 Dec 2021 10:50:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=hEPUkc4LL4i/gGwaF5ugHQxC2zekuBT7zmaD1tTpKNA=;
        b=fnKXWoRI7b/D6vutuawsxdiCo1ZMOhBzLS+VrrNc7R5rSFkkXcqFukKNlu/mMhuXM1
         mk7MXtrJL2WOTsBW4/4H70lUDTcg4OcqT0+m3GGPZ/yKyeeFOlY2TGr/NNUqHjm+g2Ez
         4z8if+SUraN9GxhUJDeUELSQLRVhgfPvd9A+k5phooRHLeMRbLQEwxR8rl+Slpi12Rhh
         aosBhk/HqjzJ/Uw6yu5uHVxB44uok4QT4yHX2683dHk1R76uHQNUFrlJpCCXah5HpkqD
         j0EAC0LcvQDXpLB9uFodbqw88EgPZWxtrLbLCuoyrIgeARhfaXcaslhhOUYaYVFcQTZl
         lMLQ==
X-Gm-Message-State: AOAM533dnem4Dz+LwIhsFYp7Z21kPibH0ZA7+QAsZVpHtuXBw7TjHHks
        +xn7yQFydAu36hX2sL9Nmt4wN9Gns4Cn1B/bdYrRIYSU0vl9uvlqBZFUvz2TKsIU1pjAh8G0ddI
        op20yOXtYIlthMLEfxqJkUK9xTuM5q2mP+svYOL4=
X-Received: by 2002:a05:6512:3a7:: with SMTP id v7mr1580890lfp.38.1639335026765;
        Sun, 12 Dec 2021 10:50:26 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwjknyFs69XnefPUpSdk+caKnTh6qWLgyrLozHO1KCEUN/kRatVQ59NwitqYuKpsN2ATYd1Ag==
X-Received: by 2002:a05:6512:3a7:: with SMTP id v7mr1580882lfp.38.1639335026615;
        Sun, 12 Dec 2021 10:50:26 -0800 (PST)
Received: from [192.168.3.67] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id b7sm1124779lfb.224.2021.12.12.10.50.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Dec 2021 10:50:26 -0800 (PST)
Message-ID: <77efa5e3-f6bd-9892-8bf2-427b4709329f@canonical.com>
Date:   Sun, 12 Dec 2021 19:50:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH v2 1/6] dt-bindings: memory: tegra: Document
 #interconnect-cells property
Content-Language: en-US
To:     Thierry Reding <thierry.reding@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Jon Hunter <jonathanh@nvidia.com>, linux-tegra@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20211210164741.881161-1-thierry.reding@gmail.com>
 <20211210164741.881161-2-thierry.reding@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20211210164741.881161-2-thierry.reding@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/12/2021 17:47, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> The #interconnect-cells properties are required to hook up memory
> clients to the MC/EMC in interconnects properties. Add a description for
> these properties.
> 
> Also, allow multiple reg and interrupt entries required by Tegra194 and
> later.

I think number of interrupts is fixed and you do not change them for
newer SoC, so the message is a little bit not precise. Also the subject
does not it the patch - maybe something like - "adjust properties for
Tegra196"?

> 
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
> Changes in v2:
> - drop incomplete BPMP snippet from example
> - explicitly set minItems for reg property
> - describe MC and EMC general interrupts
> 
>  .../nvidia,tegra186-mc.yaml                   | 78 ++++++++++++++++---
>  1 file changed, 67 insertions(+), 11 deletions(-)
> 



Best regards,
Krzysztof
