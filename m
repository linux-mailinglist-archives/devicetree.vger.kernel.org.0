Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B06764ECA9F
	for <lists+devicetree@lfdr.de>; Wed, 30 Mar 2022 19:28:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344382AbiC3RaK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Mar 2022 13:30:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40350 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245162AbiC3RaI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Mar 2022 13:30:08 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4CF8755759
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 10:28:23 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id bq8so28985587ejb.10
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 10:28:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=ZsXgBTrCuEUxC1QZQ0H2Ukv1GeSn41ah9SOqQNdPE7M=;
        b=oJLD1USfQGNXmh8umJRilraVZc9jthngKtOn/GdB9lcFP3jbqhtVZWPFPC0D62l3hw
         vLWXTeE6XRN6+SovH0Z9z2ecTReOxQ4+G8nEGQQDVSoaVNW//uuDDPw+neLNdqvj9pwe
         6beKe54sSMzYbbv5rc71eNK7uysO8puaSwRrK9QEL9I3lX+Eisv56ALY3v/+Iyqn3lJg
         ot4ahZJCAB4UBAj3+qjybA0iEGDuNmb58m2Fblw/umLLrf55Doi0thEfBiCOQH4VEcKO
         c0X+dTBxUWqw3dr2RC0ezjxvmiWGzUmIO+VB+D+om6vZ6KqzNECf95GYg56DgCpihm0S
         n2xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ZsXgBTrCuEUxC1QZQ0H2Ukv1GeSn41ah9SOqQNdPE7M=;
        b=HIUHcCOcY+leQkPGPscEuSfDRzoZO3DqQYxI1yOm6QDnwai33goMpaxlFvZNhC8zbJ
         QIoQfjQo9DyG+SHIBj42fVoppVu6dqmRb8KQxlE4LJCDv1NNh8/Z2FbG0yoV1xdPFqhC
         2prJlf3aM9DBhCfv5YEO9mAGmgLfwaXDEEbyROcKh3feHF85/WtuL/vT+StDrA/sdrk0
         63jB1/oTpMosdJ55evwHx37LeLmcsg9x2G74RxO2gsC40gPBg60fz1vub5cYiR/gq+4z
         1sOhC33orJ5rIcvaMHEAwIw2kBb4LmSA3VG45ppJYJ3JKDtsu9fZDdVfPUHaEBS5sSKD
         lJ2w==
X-Gm-Message-State: AOAM533VVPlgnpvO0Qk2TVNZIqu2pVnsjwv2sFY4lQPmlrn2N0Ij/p+I
        iSa2URLbnRRykiOuIkWT0v86/Q==
X-Google-Smtp-Source: ABdhPJwAF/kWlcbyw+AnOhkeZyWbHk5sSJiKV2D52eeGBittR1aJjyH4YGKCBAWEytDCQ4+LdVuN6Q==
X-Received: by 2002:a17:906:9c8e:b0:6df:f6bf:7902 with SMTP id fj14-20020a1709069c8e00b006dff6bf7902mr631908ejc.191.1648661301916;
        Wed, 30 Mar 2022 10:28:21 -0700 (PDT)
Received: from [192.168.0.164] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id ky5-20020a170907778500b006d1b2dd8d4csm8521852ejc.99.2022.03.30.10.28.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Mar 2022 10:28:21 -0700 (PDT)
Message-ID: <faee52b3-6d43-dfe0-500d-2fae70fe2fd9@linaro.org>
Date:   Wed, 30 Mar 2022 19:28:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v1 1/3] dt-bindings: clock: convert
 rockchip,rk3036-cru.txt to YAML
Content-Language: en-US
To:     Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de,
        zhangqing@rock-chips.com
Cc:     robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
        sboyd@kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220330114847.18633-1-jbx6244@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220330114847.18633-1-jbx6244@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/03/2022 13:48, Johan Jonker wrote:
> Convert rockchip,rk3036-cru.txt to YAML.
> 
> Changes against original bindings:
>   Add clocks and clock-names because the device has to have
>   at least one input clock.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../bindings/clock/rockchip,rk3036-cru.txt    | 56 ---------------
>  .../bindings/clock/rockchip,rk3036-cru.yaml   | 72 +++++++++++++++++++
>  2 files changed, 72 insertions(+), 56 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3036-cru.txt
>  create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3036-cru.yaml
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
