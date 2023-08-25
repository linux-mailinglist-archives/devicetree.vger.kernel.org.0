Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B84DA788042
	for <lists+devicetree@lfdr.de>; Fri, 25 Aug 2023 08:50:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242411AbjHYGtw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Aug 2023 02:49:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52232 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242430AbjHYGt1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Aug 2023 02:49:27 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 491C119AE
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 23:49:24 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-99cdb0fd093so65391066b.1
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 23:49:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692946163; x=1693550963;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lajo7OqjOl8rNN2v6USsxhYYBHIrPlabiPvdvBF4vXE=;
        b=dzoDs5/lDF0GjQ5kZXZxk2yOa49Piy22tw3skoTulieeCRGnP9Mv7HnYX3IjPFh6pd
         HaMBy4bbjmA1xChFTcs48EyjUlsf/NSu9R7NZ35h62lrUIvy5+OF8AMYHvJiLekM29H2
         2OlSutBxRTPj8yFiU13mUUVjYea3zoKx/QoEngtqssASp87p9OfWagBMgvGIlsnTBL7/
         Z4nfbas0owDAM+427A5QSq5CL9gGS3cUkz8q52amlSw9lr+rFitpIZgeZ2+zSMLpeyI9
         G0W598lKD1Rn2uPD+sB1l4NkpFzsaEfza0/hBHfTMhZ70GfizXngR8miIj/C7nsTSM54
         pHjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692946163; x=1693550963;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lajo7OqjOl8rNN2v6USsxhYYBHIrPlabiPvdvBF4vXE=;
        b=gFlGWavYIqFJeiXIai1q1qKpHi7pWsXCkpNxopljHtBm1mIfuYNPjcQ9HumdwTyRiT
         3abqrIIK4ru/9HPKWvW8wgKp4bP/WhVpERBbKin8S8bGF/CnDKxNj50DNsJplVT9DQvu
         31k5RB156G92xFQ+KBPDZLgT7gDFdBJrAqztaSAL5YbcxdZQH/S4svkDqdbppfiCAazb
         ieeNcyArtpcfCzaiIEpOQp59383ErSBh3XBWyHx6XtIzfN1sM0e+UbuoDoYYJschQEiR
         QBCfaG0NqVN+SsVa1Z02PgZZKlQCZsEOcJjHkvsXZhIr9FjcZAD1KB5g4fsxdMmTf6It
         T2bQ==
X-Gm-Message-State: AOJu0YwTiGNufGd86qaTsLq0ySEIqB9fQEd4cIlnKIM2/OAc49RLVUjW
        BHkynrzLZ9J/0iIySZketDwuTA==
X-Google-Smtp-Source: AGHT+IHM0u5TqZw/AW+78y+hWyLMRR4dUmiJS290WiUMgNgRrW7spqkKVWWxp/6asczYj3lW/GZuRw==
X-Received: by 2002:a17:906:2d0:b0:9a1:d0bb:d215 with SMTP id 16-20020a17090602d000b009a1d0bbd215mr5444386ejk.5.1692946162757;
        Thu, 24 Aug 2023 23:49:22 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id h1-20020a1709062dc100b00992b1c93279sm595709eji.110.2023.08.24.23.49.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Aug 2023 23:49:22 -0700 (PDT)
Message-ID: <2eda319d-bdd9-bfeb-005a-5989cf674501@linaro.org>
Date:   Fri, 25 Aug 2023 08:49:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 1/2] TSD: arm64: dts: rockchip: use codec as clock master
Content-Language: en-US
To:     Jakob Unterwurzacher <jakobunt@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>
Cc:     jakob.unterwurzacher@theobroma-systems.com,
        Ermin Sunj <ermin.sunj@theobroma-systems.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230823122000.585787-1-jakob.unterwurzacher@theobroma-systems.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230823122000.585787-1-jakob.unterwurzacher@theobroma-systems.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/08/2023 14:19, Jakob Unterwurzacher wrote:
> From: Ermin Sunj <ermin.sunj@theobroma-systems.com>
> 
> If the codec is not the clock master, the MCLK needs to be
> synchronous to both I2S_SCL ans I2S_LRCLK. We do not have that
> on Haikou, causing distorted audio.
> 
> Before:
> 
>  Running audioloopback.py script on Ringneck, 1kHz
>  output sine wave is not stable and shows distortion.
> 
> After:
> 
>  10h stress tests audioloopback.py failed only one time.
>  That is 0.00014% failure rate.

What is TSD? Why it is in the subject prefix?

Please use subject prefixes matching the subsystem. You can get them for
example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
your patch is touching.

Best regards,
Krzysztof

