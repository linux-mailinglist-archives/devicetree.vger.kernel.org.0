Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A272C5F7B7C
	for <lists+devicetree@lfdr.de>; Fri,  7 Oct 2022 18:31:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229761AbiJGQbZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Oct 2022 12:31:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229672AbiJGQbX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Oct 2022 12:31:23 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 277C4102DFD
        for <devicetree@vger.kernel.org>; Fri,  7 Oct 2022 09:31:22 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id bs18so6322923ljb.1
        for <devicetree@vger.kernel.org>; Fri, 07 Oct 2022 09:31:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wps2XPzyoQxJCRCgPjDDBxYyJh4/U/3epD9Q85qlSaM=;
        b=u/dIgJCkhb9Qm/TxY8iaZR2y22X0sEjQGESJeGj2HBsbd9TPr/v596xsHL4dHQHQXP
         zx5XGKWaOwKrTV7FNTDUFdj4v/LNAiF+rc7sFZbXiMx5l9aP4LXdVVABbMwD51rI9Juy
         ZUavj9awkwVcTyWkjzDWql+VvrOUligsGYMcY95DXBKi9/vX4wRF2qK+dLqnZSSw953d
         Mg/Npt06gwY2cvAh1QH57O+C5F7KJ6s6hGA9aCsRf+MMuKseOscKO8JkUZCalKkVTQy9
         n83dp9HsyLfr3ceMnp6lDfC6ACOvtS6o36fEob9LkVS4BcLdCwegK74hZSSXdfesiGgL
         z9Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wps2XPzyoQxJCRCgPjDDBxYyJh4/U/3epD9Q85qlSaM=;
        b=rE0b3qPFk8xaVchk8N56RL9nvvbJHi1j6KSCts8oY/+7Q8oKmvFhnM7ZUsuq3hmBGx
         nVRKLFMdQ+yv9BslSfV0hDMbun1M9VGYF+BPcBhcz7ORtnGOgyXapsObmUBzB+MI1AqE
         PrsNFl2bTTCGeB82xwmbeN2GW07gnTq5OG5hGCoWkuHSSVLu8gGaCWUttK4brq7RGYoa
         tcrBWP4hx4KM4e371I83WgnypKpHD6wYS/eXAHYEqcWdFdgMEHQbBY7oQ9E0gvxPmre3
         HykTqb10Blo+0gmpkUWibru3bN/1TIfbt9UPcmQo5n31oFid1+GyP63Kl1aFhORPhUbR
         9jVw==
X-Gm-Message-State: ACrzQf2/ery1lStYbDoXANmunZyKWci617j9lMCqZ8u/vuBoyy/JtMkJ
        /+P9hYY5EczH95uNd07VUkjpbKLJ3ideVw==
X-Google-Smtp-Source: AMsMyM4zXnsg4AQoc9IvgEEFeekUcCkeQIp5LGwqXPDTLlXnb6QUoO1vfL9uexO+KDSsMXdb5ppqkQ==
X-Received: by 2002:a2e:7211:0:b0:26d:fea5:c7e3 with SMTP id n17-20020a2e7211000000b0026dfea5c7e3mr1923621ljc.101.1665160280530;
        Fri, 07 Oct 2022 09:31:20 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id t16-20020a05651c205000b0026de7400f3bsm334161ljo.5.2022.10.07.09.31.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Oct 2022 09:31:19 -0700 (PDT)
Message-ID: <9e2c95fb-1806-15e6-faca-0140b3c419bd@linaro.org>
Date:   Fri, 7 Oct 2022 18:31:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH] dt-bindings: pwm: renesas,pwm-rcar: Add r8a779g0 support
Content-Language: en-US
To:     Geert Uytterhoeven <geert+renesas@glider.be>,
        Thierry Reding <thierry.reding@gmail.com>,
        =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
        linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-renesas-soc@vger.kernel.org
References: <7785f163a5a798574c68495de8b0ca7a02e35f07.1665156318.git.geert+renesas@glider.be>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <7785f163a5a798574c68495de8b0ca7a02e35f07.1665156318.git.geert+renesas@glider.be>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/10/2022 17:25, Geert Uytterhoeven wrote:
> Document support for the PWM timers in the Renesas R-Car V4H (R8A779G0)
> SoC.
> 
> Based on a patch in the BSP by CongDang.


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

