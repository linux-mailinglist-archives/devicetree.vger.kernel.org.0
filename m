Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E03D867FE9A
	for <lists+devicetree@lfdr.de>; Sun, 29 Jan 2023 12:40:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230247AbjA2LkJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 29 Jan 2023 06:40:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229637AbjA2LkI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 29 Jan 2023 06:40:08 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 177AC1F91F
        for <devicetree@vger.kernel.org>; Sun, 29 Jan 2023 03:40:07 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id m15so6263077wms.4
        for <devicetree@vger.kernel.org>; Sun, 29 Jan 2023 03:40:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NSQCOw2WSGmmTx3tC+mDOjWpJ6kOuGP8aWZB3E9pAcQ=;
        b=EEaapLJEsGIfVt+FkG1CXj52M2eGAyq5ubgMGCxw+IFRVh+1oKz2IKufhaqymmBWfT
         QplCMNZb2ds8GzZsrn4n63Vf+gwxC9a2Oj77Es7gXUfYwBKPsw1ygftnOlSVYTWF33wE
         u64UOWpE+21Drn1gMpcw+Wso9tzNRRmGvpS+f/uvekP5lAQ4KI2deUhY7WV4iWdBb1xp
         IuafPwFq7LKMjWrGiyUwDEXcaBKodyLbDpiP/n5OiyHT3nLnKwvLVADKCJU623W5ozU4
         X6Z7afMfkmJL0h2HnQVA8H6+N3+LLxuZZyGx6wrL6yhsl3ECVSxvOOkQsqQ3W7XUzj2k
         DEfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NSQCOw2WSGmmTx3tC+mDOjWpJ6kOuGP8aWZB3E9pAcQ=;
        b=eqgCoa5wFX+8SCE4TdUlIxEW/j+9Mk6zu+n0Utn0oGHUP3MJNPmTcpm4x6EiThYzJL
         2+OWKRteNcpL779VggTlwNAbnZoWPNmlml+YWitox6S26+Z86gE0KQTceWJuyFicf4tx
         hX7DN+pdFHu6r8wXnxR1wbeJ5oqfoRspAf7SX605VtpPpzHZLxYbSd0Eme4qsSoiSHNK
         qRv18DKjhU62M6u/7/INkcUptWddR5w/KQyV1s0DDg6kmtT6NK+kwQcl6SjsnysXYD5K
         4KjbHdHSIrLY4yXkZfFlqdgliZ8LD/6bOVgVHnSnLMDflsprLoiuzWIBWRA7n5vMvapx
         Pc1g==
X-Gm-Message-State: AFqh2krfRICdd91uv7LOmIFCg8YrL+qiGqjcO8AZUkmBFpxJOEk4Uw/E
        Qq6Sgnk1ef2PNblzE3a0AAyUNg==
X-Google-Smtp-Source: AMrXdXvc4vHqi6vmjU7hwMX93HX48RyNXbSJXfCRO2o0zsuh2GCpUWEsqPgV29m0Ae7KoJbaL/xCZw==
X-Received: by 2002:a7b:c5d6:0:b0:3d9:fb89:4e3d with SMTP id n22-20020a7bc5d6000000b003d9fb894e3dmr48124372wmk.28.1674992405682;
        Sun, 29 Jan 2023 03:40:05 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id j20-20020a05600c489400b003dc43fffff2sm4831633wmp.40.2023.01.29.03.40.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Jan 2023 03:40:05 -0800 (PST)
Message-ID: <b4794490-b059-373a-dec0-58fcd2344f6f@linaro.org>
Date:   Sun, 29 Jan 2023 12:40:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v6.1] media: dt-bindings: Add OV5670
Content-Language: en-US
To:     Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
        chiranjeevi.rapolu@intel.com, luca@z3ntu.xyz, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     laurent.pinchart@ideasonboard.com, sakari.ailus@iki.fi,
        mchehab@kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20230126165909.121302-2-jacopo.mondi@ideasonboard.com>
 <20230128112736.8000-1-jacopo.mondi@ideasonboard.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230128112736.8000-1-jacopo.mondi@ideasonboard.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/01/2023 12:27, Jacopo Mondi wrote:
> Add the bindings documentation for Omnivision OV5670 image sensor.
> 
> Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
> ---
> v6->6.1
> - Use additionalProperties: false for endpoint properties from
>   video-interfaces.yaml
> - List 'remote-endpoint' among the accepted endpoint properties
>   now that we use additionalProperties: false

b4 diff '20230128112736.8000-1-jacopo.mondi@ideasonboard.com'
Could not create fake-am range for lower series v1

Can you send patches in a way it does not break out workflows? Why
making our review process more difficult?

Best regards,
Krzysztof

