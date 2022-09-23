Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D7BBB5E81CD
	for <lists+devicetree@lfdr.de>; Fri, 23 Sep 2022 20:33:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229821AbiIWSdk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Sep 2022 14:33:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56304 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232875AbiIWSdj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Sep 2022 14:33:39 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EDFE81251A2
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 11:33:36 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id 10so1589288lfy.5
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 11:33:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=FiSW1I+GEJuCXIUHNz2wmDxxaCfe5vMdELO2IRRAJ3I=;
        b=cMDJcQ1lVnRuB1lsaVE6iFUDBndaW7olWZ36oe9s1FShL4+ZMJpKrBJaSf/dRhtaZK
         m+OSu5KPcNtvqR5G+Ab2RrFXdB8eVxQN5mOAx1cQXukR38XZybeOxKpHKSXtK5PKT0Wh
         0Y6lHIg+xZwB7Uetv677YKz4f+pU2+OpZ+pZ7uexgjbF3+MBLs0S3oO2KNdrOmRJ7Uud
         Ear7Eqd5udi1PsC0eHKum7wXaMVbxcql/+zabSeicxcrBxmP2345XnNNosS2ZodiCzdG
         kDV21zc8VA2y4V1xoUsvXJu/gRzyGa6R8fBNjlfvb1/kn1slaqSPJalZio5FPnpe8BER
         du0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=FiSW1I+GEJuCXIUHNz2wmDxxaCfe5vMdELO2IRRAJ3I=;
        b=2XGp+OBOy/cbWOE2ULCYGrWbi03QGMrPEouwy1jhT5w0umPwygTYmhMH5cdFI7yUiy
         naVDY8tMJLQKclhLyJSyTkNjMwRtdkc/3TjEeKBg7bT4wooDzB7BbrIVwrJuf6x7Xgml
         lsGxKqBom8ks1Ngya1BdXE879/0HOEMsEcTi4P+y7oCKEPQ2aJiK2w2w2vKjGnGBuDQV
         tavtdN3fo/Mr/AR4+9ybq8RspkPLBDODtCKfzGJ6RPKnzhFjNsERp+viR5yVoFoNISby
         kUDZD0u7Ts+FSfD5jOxh9h914lbJguZ/cZgf35+mG6RbjaC0JfjNKFGrS6YpuYWD3+TZ
         1pzw==
X-Gm-Message-State: ACrzQf3qUUx7/kHy8Dxex3ELf3vFB1fmsU+AzoO/vWvvNCvW4k6shonf
        iCIsmJDyY3PNGBmvp4MYeYUvsA==
X-Google-Smtp-Source: AMsMyM6tihMSw5uJwh8HNF2F0Nb/vBnx0C3F/8gVLKpFsziNvxSMc59CbjttGeEwka4wAu/G3d2crg==
X-Received: by 2002:a05:6512:3184:b0:49d:6b29:201c with SMTP id i4-20020a056512318400b0049d6b29201cmr3694157lfe.363.1663958015117;
        Fri, 23 Sep 2022 11:33:35 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id m7-20020a056512114700b004948497e07esm1565501lfg.15.2022.09.23.11.33.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Sep 2022 11:33:34 -0700 (PDT)
Message-ID: <4f5824cd-f0be-13cd-b2ed-2c5ec30954ac@linaro.org>
Date:   Fri, 23 Sep 2022 20:33:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v6 2/3] dt-bindings: interrupt-controller:
 realtek,rtl-intc: require parents
Content-Language: en-US
To:     Sander Vanheule <sander@svanheule.net>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <cover.1663617425.git.sander@svanheule.net>
 <ba3ae8e521ef82dd94f18a602ef53078f4a0d8d5.1663617425.git.sander@svanheule.net>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <ba3ae8e521ef82dd94f18a602ef53078f4a0d8d5.1663617425.git.sander@svanheule.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/09/2022 22:24, Sander Vanheule wrote:
> The interrupt router has 32 inputs, and up to 15 outputs connected to
> the MIPS CPU's interrupts. The way these are mapped to each other is
> runtime configurable. This controller can also mask individual interrupt
> sources, and has a status register to indicate pending interrupts. This
> means the controller is not transparent, and the use of "interrupt-map"
> inappropriate. Instead, a list of parent interrupts should be specified.
> 
> Two-part compatibles are introduced to be able to require "interrupts"
> for new devicetrees. For backward compatibility "interrupt-map" is still
> allowed on these new compatibles, but deprecated. The old compatible,
> with required "interrupt-map" and "#address-cells", is also deprecated.
> The relevant descriptions are added or extended to more clearly describe
> the functionality of this controller.
> 
> To prevent spurious changes to the binding when more SoCs are added,
> "allOf" is used with one "if", and the compatible enum only has one
> item.
> 
> The example is updated to provide a correct example for RTL8380 SoCs.
> 
> Signed-off-by: Sander Vanheule <sander@svanheule.net>
> ---
> Changes in v6:
> - Allow interrupt-map for backwards compatibility, but mark as
>   deprecated.
> - Update commit message to explain forward/backward compatibility
> - Drop Rob's Reviewed-by because of above changes

Please, still wait a bit. I'll leave it to Rob (who should come online
next week) for a review.

Best regards,
Krzysztof

