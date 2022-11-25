Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2CBA7638EE2
	for <lists+devicetree@lfdr.de>; Fri, 25 Nov 2022 18:16:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230042AbiKYRQR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Nov 2022 12:16:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229753AbiKYRQQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Nov 2022 12:16:16 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A5405132E
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 09:16:15 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id cl5so7701705wrb.9
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 09:16:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:references:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=D5t5pk/Tw2Avo20xT44DfzVJuCpgbHlNJ6TbleqnB8c=;
        b=nIX/RrPlgp/BOtELVRhcFd6OE1QFdwbFsoHrePhw1cx9839H3Ixo+BgSJFMGF+jzO7
         TOo8dOoN798NqveINmFSHegz/B7bGBM5mkNQlCPyrc4/Gf87XRVv21qPPSOxfJSdpgEM
         2qe0v+t43jzB0fXsBfd0jGTYProEBC9XYQzywO37nclhh9o+aItgx/NTsSbn0Ydo7NN8
         DIDKRUyTUJsRQ/EKC3LnCTX+R5z2vcPGK5M7UxYkQHgEYSaTfaFpLqV6Roh2wtj/Q7Yg
         MQeu89ncHiSTtHfogJ2nW2SYe6HfsRyp8Qwst4nc6gTj1lq+Z5vHNZ42ujPmwk+a64P9
         TysQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:references:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D5t5pk/Tw2Avo20xT44DfzVJuCpgbHlNJ6TbleqnB8c=;
        b=2h7kWTPhDu/Dvmf5LnBTCdQ2QyzM5oEzLiBPjky+K8WVG8ZtkUZEEs9q+/IlRbpZbV
         LMi96K6ouYQij+BBtAxyQ3JeQltft7Launa0ShGo3aI5waCGxtDLJVYMPS1lJkMn/P6f
         tUBt6xx7zvUCPALvQ4irfgDeKeoIh+bRkLH2kh/evZ+Q8GLqZ36Hrii/3ZTC4fHoOV1Y
         p4FeHmwLZZEcse/B4DMvr5oa/53IIPFPGWmb2yHJV0h282z/6QQZoDbP5b+xI7BRMNas
         KSXr3rwqE3yyRcR1N+sKAUQjhFYvsuUCqTiXr6SOPIstAE6pfj8TSxzs7RPBep2OpAG9
         aqwQ==
X-Gm-Message-State: ANoB5pkvFqJXVm8kYXjoN8P5b5ro8+MupLWRXnnfeboBpwzVH0pqymjk
        YaO3NVPYpk/AIxzEeN/KbvsxaQ==
X-Google-Smtp-Source: AA0mqf7Rcx3H1sfAYSftgETBIQmzgTPqE79fmZWHKA/WNteq3AkzMFTo1swYpB3H3F1/pas4fOKOhg==
X-Received: by 2002:a5d:5b19:0:b0:241:dea3:ad48 with SMTP id bx25-20020a5d5b19000000b00241dea3ad48mr14423755wrb.357.1669396573516;
        Fri, 25 Nov 2022 09:16:13 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:84a5:7e09:b15:f1fe? ([2a01:e0a:982:cbb0:84a5:7e09:b15:f1fe])
        by smtp.gmail.com with ESMTPSA id u17-20020a05600c19d100b003c6f8d30e40sm10667777wmq.31.2022.11.25.09.16.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Nov 2022 09:16:13 -0800 (PST)
Message-ID: <c8d9e319-238c-8c33-f146-90d292cf63d5@linaro.org>
Date:   Fri, 25 Nov 2022 18:16:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH] ARM: dts: meson: align LED node names with dtschema
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221125144120.476933-1-krzysztof.kozlowski@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20221125144120.476933-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/11/2022 15:41, Krzysztof Kozlowski wrote:
> The node names should be generic and DT schema expects certain pattern:
> 
>    meson8-minix-neo-x8.dtb: gpio-leds: 'blue' does not match any of the regexes: '(^led-[0-9a-f]$|led)', 'pinctrl-[0-9]+'
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>   arch/arm/boot/dts/meson8-minix-neo-x8.dts | 2 +-
>   arch/arm/boot/dts/meson8b-ec100.dts       | 2 +-
>   arch/arm/boot/dts/meson8b-odroidc1.dts    | 2 +-
>   3 files changed, 3 insertions(+), 3 deletions(-)
> 

<snip>


Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

