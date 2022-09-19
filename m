Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2F6F45BCAC5
	for <lists+devicetree@lfdr.de>; Mon, 19 Sep 2022 13:31:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229571AbiISLbm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Sep 2022 07:31:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229557AbiISLbl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Sep 2022 07:31:41 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3545827175
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 04:31:38 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id s10so32823219ljp.5
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 04:31:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=miAOgPQLU6EsLVRd6COzNfR9G2e1bmD7eDgKbBSTkhU=;
        b=SpaV112lGNZleGb7fekFH90+t2Uk9j/MDifXzYgMg9n7LKpBMFEJKt9c03tD8V/N2k
         EePywIWAD0gTmWEcgGY1Qdo3/giqiN4mSKMWgGbBC4oDqa6izg+Lb3KTsYdxGaDhfbaA
         r5/mAT9DDTov0f1OMPXF/3MMJ3Xjf668fPylQzjiFmY6b0L31ldlzha9itnRNRU3zNbj
         Gj8goaG7iqGEwhdSeWPPQVa5GHzBFYroNEnP3FIPNbZVndUDPHAQAv3LA4+DKY4GEmyN
         ggtaVRSyaA9rt/sFGAne2DXdZp0DCjhnJ+4nzoyC60wEZP7wAE1n0jRRcWpnT/9NW1Wg
         DI6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=miAOgPQLU6EsLVRd6COzNfR9G2e1bmD7eDgKbBSTkhU=;
        b=p0MwQ1XhNLpcMrw1zS5DhWzgYjCUClR20A+2Jk5aWIBTFW+6g1YUWoVwmzrkfwIXkQ
         v0gL8f0Jhguw66TNz+xiaO5K7JYYYEaGbPNWhyUiE9w3VI/9pgEV1oPdy7iIYPIDr0Ls
         u20gSf12fX0t83Gwb5dNnPQOa/05511OsSga+nokm2S1Uim1nrVry/9sn20lJaSsKyDt
         di0qSWndTGasTb5t7Jq3lUaNZpCx92TfqxOHielAjdp6kCvTYznNwvS6SIiigFbvRDgZ
         nsEfLPi4lJeWZnDJ63iiwhJCmCI9/deLT8oRuEyPxa51RxCxRRWQXG8gTPRfx7m808fp
         GSfw==
X-Gm-Message-State: ACrzQf095ujoaLmuaKFAXmKKrNfnXvIICWa1cA2OLsDD9NLtA8X+IGvG
        1kLoe3v2F22vi0EZPh/OBkGczg==
X-Google-Smtp-Source: AMsMyM4FlRC9KwI2CUPqnWkCEIDt5tBMn0R/LebxgTP1xihmQl0QXuQZEMrYrF6BE/XP+pfjS/bwdw==
X-Received: by 2002:a2e:96c4:0:b0:26a:cfca:532d with SMTP id d4-20020a2e96c4000000b0026acfca532dmr4789390ljj.410.1663587096891;
        Mon, 19 Sep 2022 04:31:36 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id t10-20020a05651c204a00b002682754293fsm4881446ljo.1.2022.09.19.04.31.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Sep 2022 04:31:36 -0700 (PDT)
Message-ID: <f4f6decb-8f93-1fc8-31ab-9ebfc30a2d55@linaro.org>
Date:   Mon, 19 Sep 2022 13:31:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH] dt-bindings: watchdog: migrate mt7621 text bindings to
 YAML
Content-Language: en-US
To:     Sergio Paracuellos <sergio.paracuellos@gmail.com>,
        devicetree@vger.kernel.org
Cc:     robh+dt@kernel.org, krzk+dt@kernel.org, arinc.unal@arinc9.com
References: <20220915134241.481187-1-sergio.paracuellos@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220915134241.481187-1-sergio.paracuellos@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/09/2022 15:42, Sergio Paracuellos wrote:
> Soc Mt7621 Watchdog bindings used text format, so migrate them to YAML.
> 
> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>

Rebase your patch on recent Linux kernel.

> ---
>  .../watchdog/mediatek,mt7621-wdt.yaml         | 33 +++++++++++++++++++
>  .../bindings/watchdog/mt7621-wdt.txt          | 12 -------
>  2 files changed, 33 insertions(+), 12 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/watchdog/mediatek,mt7621-wdt.yaml
>  delete mode 100644 Documentation/devicetree/bindings/watchdog/mt7621-wdt.txt
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
