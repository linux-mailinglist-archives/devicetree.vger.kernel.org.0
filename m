Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5CFF5604C32
	for <lists+devicetree@lfdr.de>; Wed, 19 Oct 2022 17:51:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229765AbiJSPvx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Oct 2022 11:51:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59704 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232450AbiJSPvf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Oct 2022 11:51:35 -0400
Received: from mail-qv1-xf31.google.com (mail-qv1-xf31.google.com [IPv6:2607:f8b0:4864:20::f31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 527E21290AB
        for <devicetree@vger.kernel.org>; Wed, 19 Oct 2022 08:47:30 -0700 (PDT)
Received: by mail-qv1-xf31.google.com with SMTP id g9so11606879qvo.12
        for <devicetree@vger.kernel.org>; Wed, 19 Oct 2022 08:47:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vrFWkLuR3jMPPnmrB2JfbwYDWpDDskQjLWBXZha57GU=;
        b=xYXM2Z2ltScJJy4QcFwBtAffA5VWVcQlo0S4/hkyRqt6H5Ks0RZJaxlhTBsI79Y6eN
         nFnWo+u0hMFbF+VjkYxxKp+38kEspd1VSYB6/PdEweaqtWhrXgtAYIAiFXL+mWiPl7/1
         s18tySpWt6wCd4+mWeTq5U1FX6M/8M4U7KWZZ64r26KeultSol1gEqKyChFaiqmX/+E/
         CjoBpmukF21eVQ5eVK6bdttdvO6zb8sehxxW8jtB2s76ZX5Rulr0F3PrLm7JBNweclVb
         LbAaRWMWqp7rlp15YmWqHsBkChiZY/rZpxLlKMMnWQ71YaUzu8nKg+myW36d3vIdMkMY
         iBKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vrFWkLuR3jMPPnmrB2JfbwYDWpDDskQjLWBXZha57GU=;
        b=wLk7iwWunBln57aOC+gE50BF3LzdOnSDR0CU7gpUPooUfjLOajzD38MgeH4Uc8h6ab
         1YZO0tC1WuzxU1v+CZY/uLFBnQl6UHuDNPjuZwH4/9fR9KclYnd+sPGZtZfa30VDVkjX
         Ndo1LDTZMqF1MYl3TYuF+nrIMEn2Y9jyqkd37or0hcdRGmOHbC7p/dPf/bOTKlk7yxzp
         TsPONhDLzjYvyvgRzRe0dfECvfaOEeS0idXxdGak5X5bkbBZZIN9j06U+I8RIdG2Pfwh
         AMgnFMDDt39bDYvDQ3ITdC0+Bw6KxBklroybzhaMPCK20A91HlOEuFnbMK6V7Y3oplR+
         8TWA==
X-Gm-Message-State: ACrzQf1LZBV25tzW7ISggagctd8gIEAFh0fLmj9LwK0mRf8pKO+nxouN
        iz6TAxVn1XvON5a8DguHowYtZM4iMKn4wA==
X-Google-Smtp-Source: AMsMyM7tuiMw+QrtUrI0S4X8+zom/Ro5V8tZ6UfEyKSPIYgWvqIcLfEZfPwJd3CWu3zGvXED1w2vBw==
X-Received: by 2002:ad4:5bc1:0:b0:4ad:34b2:d29c with SMTP id t1-20020ad45bc1000000b004ad34b2d29cmr7300069qvt.21.1666194415380;
        Wed, 19 Oct 2022 08:46:55 -0700 (PDT)
Received: from [192.168.10.124] (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id x5-20020a05620a258500b006bb366779a4sm4966487qko.6.2022.10.19.08.46.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Oct 2022 08:46:54 -0700 (PDT)
Message-ID: <5bf984f4-681c-7001-281f-f35bb7fdfc8b@linaro.org>
Date:   Wed, 19 Oct 2022 11:46:53 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH 0/3] Suspending i.MX watchdog in WAIT mode
Content-Language: en-US
To:     Andrej Picej <andrej.picej@norik.com>,
        linux-watchdog@vger.kernel.org
Cc:     shawnguo@kernel.org, linux@roeck-us.net,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, linux-imx@nxp.com, festevam@gmail.com,
        kernel@pengutronix.de, s.hauer@pengutronix.de,
        wim@linux-watchdog.org, robh+dt@kernel.org
References: <20221019111714.1953262-1-andrej.picej@norik.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221019111714.1953262-1-andrej.picej@norik.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/10/2022 07:17, Andrej Picej wrote:
> The i.MX6 watchdog can't be stopped once started. This means that
> special hardware suspend needs to be configured when the device enters
> low-power modes.
> Usually i.MX devices have two bits which deal with this:
> - WDZST bit disables the timer in "deeper" low power modes and
> - WDW bit disables the timer in "WAIT" mode which corresponds with
> Linux's "freeze" low-power mode.
> 
> WDZST bit support is already in place since 1a9c5efa576e ("watchdog: imx2_wdt: disable watchdog timer during low power mode").
> WDW bit is not common for all imx2-wdt supported devices, therefore use
> a new device-tree property "fsl,suspend-in-wait" which suspends the
> watchdog in "WAIT" mode.
> 
> Andrej Picej (3):
>   watchdog: imx2_wdg: suspend watchdog in WAIT mode
>   dt-bindings: watchdog: fsl-imx: document suspend in wait mode
>   ARM: dts: imx6ul/ull: suspend i.MX6UL watchdog in wait mode
> 
>  .../devicetree/bindings/watchdog/fsl-imx-wdt.yaml          | 5 +++++

Please use scripts/get_maintainers.pl to get a list of necessary people
and lists to CC.  It might happen, that command when run on an older
kernel, gives you outdated entries.  Therefore please be sure you base
your patches on recent Linux kernel.

Best regards,
Krzysztof

