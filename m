Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0645759FA25
	for <lists+devicetree@lfdr.de>; Wed, 24 Aug 2022 14:43:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235665AbiHXMnF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Aug 2022 08:43:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40694 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235074AbiHXMnE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Aug 2022 08:43:04 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50A9E696C6
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 05:43:02 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id bx38so16293773ljb.10
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 05:43:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=pxiXsQLkUIpn6DGyvkM4zbmFK0oHck5Mi5OKHLvklTs=;
        b=cL14yVias6q4TrCCRX8JyZ3WRtQmRBsKcXr0WFPwQ+W703goRyFeRJbmCMpi0Nyci6
         JN7SccWcpoEghRu5U5lpfLgsdxyvFXk7hQTkBnrO2jbLh57AhmsGzzitc1+aB8nkyP5D
         0boEkLKRLbMBuSXVwFJ5kMUOvJHWJEwDjv/cmPKRDpoU0rco0I0Kgyg/t/rsP53LLR0H
         MHkgYg7YZbsiQaXU2p3Bv+e5e2bJ9DPMWC7Sz2Y5c3Lo343sreSzbyngMTqhHk9Satre
         fDoJVyysQxNqA0vPEL4L3UYlZyLGoSA8+KXuxJuT7IDSdfUg32o5DAtPzIZ5Z6fWKGOD
         lqGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=pxiXsQLkUIpn6DGyvkM4zbmFK0oHck5Mi5OKHLvklTs=;
        b=0iXsaENYkTCFbtttLq8G5LXtrAG0L4f1PlMPhDjcppOJAW4mT/rQateWMIumI9Skp7
         O54L/RuENE8gAFKo76gYOJm4EIAydvUg7tqxgwmWhDmsuXU0v1wus4J9ISDXAZSVLUFV
         7QRqcHuotJqJEomS/zw+DhzOUx9nNwDyDQ0rNuc10ENdZlxKYf4TBSc5LofnoXAE2aVC
         NXWMWxbXIKsnb/vPn2kIFqESLTlU/IITSvicpFWEkw3giW+PE01gM+45MB+qoWk4WI/l
         3PWiRVLOjuD98ewVeayQDjaAYorvPoR6yNHdSXh0B+ksZ6BDFEBkv386KH/lhVeFvh8y
         CjeA==
X-Gm-Message-State: ACgBeo0cm5BsT0NWVnICi76h5NKEx4IhBLURyoxz/hAttsMfgjf6fujf
        6KSPW7ywyYP//EWmpWc6td2aVLoHINYNVXX0xs0=
X-Google-Smtp-Source: AA6agR7ji62LjBNkX7cD+aGHg9cuNELrVZrVNcfWS9UyQUXEbBZM0ZZvylp8anfeha84FCHLouskfQ==
X-Received: by 2002:a2e:8844:0:b0:261:ae7e:bb93 with SMTP id z4-20020a2e8844000000b00261ae7ebb93mr8587585ljj.157.1661344980697;
        Wed, 24 Aug 2022 05:43:00 -0700 (PDT)
Received: from [10.243.4.185] ([193.94.200.84])
        by smtp.gmail.com with ESMTPSA id v27-20020ac2561b000000b0048a835a60f6sm1017666lfd.251.2022.08.24.05.42.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Aug 2022 05:43:00 -0700 (PDT)
Message-ID: <3df563de-1900-ad60-5771-618907d5fda0@linaro.org>
Date:   Wed, 24 Aug 2022 15:42:26 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Document Radxa ROCK 4C+
Content-Language: en-US
To:     Jagan Teki <jagan@amarulasolutions.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org,
        linux-amarula@amarulasolutions.com
References: <20220824080903.3696847-1-jagan@amarulasolutions.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220824080903.3696847-1-jagan@amarulasolutions.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/08/2022 11:09, Jagan Teki wrote:
> Document the dt-bindings for Radxa ROCK 4C+ SBC.
> 
> 4C+ replaced DP with HDMI and updated FPC connectors
> for MIPI DSI/CSI compared to 4C revision.
> 
> Also, an official naming convention from Radxa mention
> to remove Pi from board name, so this 4C+ is named as
> Radxa ROCK 4C+ not Radxa ROCK Pi 4C+.

This does not look like wrapped according to Linux style.

https://elixir.bootlin.com/linux/v5.18-rc4/source/Documentation/process/submitting-patches.rst#L586

With wrapping fixes:

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof
