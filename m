Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C442940C1B3
	for <lists+devicetree@lfdr.de>; Wed, 15 Sep 2021 10:27:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231689AbhIOI2v (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Sep 2021 04:28:51 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:52856
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232192AbhIOI2a (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 15 Sep 2021 04:28:30 -0400
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 428A83F229
        for <devicetree@vger.kernel.org>; Wed, 15 Sep 2021 08:27:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1631694430;
        bh=c0ktSqPBV6zrAWdMe5+J2g1bcwqmTCFhZ2hdgWxJG/Q=;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=r8z8RovoeCkO2JbRfHjXP0FCMtPrffDtyK/YKArA4RNKv9X+tUex4nMncfSYubhYx
         4i+k3wYdI/c14QzbINMdMVb7lp4NU36PE5ZQ/irLVGi7Rq00CLDQy719FQX2S+LCiY
         kksJG/J2QTGUjE+7JybzRzbl4N4aM4u1pXXpP64EpxV7jWEOfKnWE0S2SEKVkZpvO3
         P6WXCEhrZbstUv0vAr2hQzZLFqDhlMcCJIX9JENw8Le6xuljL23aY6tjfeXWMih7QC
         vi2fCVELZPau9AJxA7JNyqjGm/TTiU7KH/T5BFdKI29hj8amdWQzj+IWkpngR8FMAx
         oHYaKNheB0NBQ==
Received: by mail-ed1-f72.google.com with SMTP id y19-20020a056402441300b003cd8ce2b987so1168348eda.6
        for <devicetree@vger.kernel.org>; Wed, 15 Sep 2021 01:27:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=c0ktSqPBV6zrAWdMe5+J2g1bcwqmTCFhZ2hdgWxJG/Q=;
        b=WaD1CjNzRACKlC17CnYGtWOsQBT2XxjCcWSkdX4T5DItUIL26VTG8Krm39oUJtyBfp
         lRsiSDwgOWxlwUjO2tmvQX8FeL2HRxX9Io09bJEsFCPyR7fbMMhAQ7JkVwUdThQNtpUU
         AWvy+mkMJhBWEmHvjSxij/V12aptDrVHm02uhAliN74apagBJBkaajDrRz15NYyo46VE
         3sRPL9NuG5RfNt4TacmipCmVocVLxwLsBlOOz5QraJYpK1w+uHkQ9S2e38UZc2RhigDJ
         0um3mv4AgzOQT0RPgUmkmFk5TUtC1FUyyqwiZkS1kGJugNOluOnJdjqbCZui8m9L3FfB
         9tgA==
X-Gm-Message-State: AOAM532my9GYG9NKIkJLATkEtqNlHINQ5L0UcckJq+S4eHdADEyKDN4g
        VUnE0iKuF10xQm3kM1c1jFGofpZ0O0ON2aM6t7rWHT/927Cc0bitgDg8nQ3a+lx2dKcFAapEqxb
        KwyUf5l7bt2NMzVqPMjnCbTQWDVRswdTWf/BtvJs=
X-Received: by 2002:a05:6402:42d4:: with SMTP id i20mr18825615edc.348.1631694429960;
        Wed, 15 Sep 2021 01:27:09 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzJujQjYVHel2sNKzotlRkaiyjwxk4PvbAgB7ek3KN7SaHfnHfWRFV7KrDrr/6Z5D4w/Nh3Zw==
X-Received: by 2002:a05:6402:42d4:: with SMTP id i20mr18825590edc.348.1631694429780;
        Wed, 15 Sep 2021 01:27:09 -0700 (PDT)
Received: from [192.168.3.211] (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.gmail.com with ESMTPSA id l22sm4804830eds.58.2021.09.15.01.27.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Sep 2021 01:27:09 -0700 (PDT)
Subject: Re: [PATCH 4/6] dt-bindings: clock: Add bindings definitions for
 Exynos850 CMU
To:     Sam Protsenko <semen.protsenko@linaro.org>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        =?UTF-8?Q?Pawe=c5=82_Chmiel?= <pawel.mikolaj.chmiel@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>
Cc:     Ryu Euiyoul <ryu.real@samsung.com>, Tom Gall <tom.gall@linaro.org>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        John Stultz <john.stultz@linaro.org>,
        Amit Pundir <amit.pundir@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org
References: <20210914155607.14122-1-semen.protsenko@linaro.org>
 <20210914155607.14122-5-semen.protsenko@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <396f1761-567f-0407-7d95-acd7bbd38de9@canonical.com>
Date:   Wed, 15 Sep 2021 10:27:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210914155607.14122-5-semen.protsenko@linaro.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/09/2021 17:56, Sam Protsenko wrote:
> Clock controller driver is designed to have separate instances for each
> particular CMU. So clock IDs in this bindings header also start from 1
> for each CMU.
> 
> Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
> ---
>  include/dt-bindings/clock/exynos850.h | 72 +++++++++++++++++++++++++++
>  1 file changed, 72 insertions(+)
>  create mode 100644 include/dt-bindings/clock/exynos850.h
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
