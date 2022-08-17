Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 94C67596908
	for <lists+devicetree@lfdr.de>; Wed, 17 Aug 2022 07:55:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238636AbiHQFwY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Aug 2022 01:52:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45222 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233815AbiHQFwX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Aug 2022 01:52:23 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58FB77D78C
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 22:52:22 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id v2so17719286lfi.6
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 22:52:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=1i+JQXGxC/c50b5L0o2wLJNKRyNVF1t9I6RR77ZvyPM=;
        b=nsy7sVHhpRC+BfPvnvvANwxj5ImBlLrxpCVe5pzHL5uxA/9+wUFb3ah5XRBVeH3wxz
         rg8ABdVoxsN0YeTQIwrqfCqt2ucdc9IvQqsIUg1G5yDcv0X+/WdhuuzDH5a8jhLi/z49
         13nRZupFWnGylmmZeEK0OUT0WNyikW9vhEAojwU5w3q99v1a1v90iNl7sYTuMHhpzysa
         DX0BjXe4E/s59goOXehGJ4JvGnAd7Z5gfq/WPEdCjNZEUwm0288/0gjOZR60PAVyp1+c
         EHx1ycoGuMWLM1AzMCcpekUQyhpkGekN25nySaAI5IJ7VOgbksZMJYYkdgbgwTNtBTzh
         Hdow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=1i+JQXGxC/c50b5L0o2wLJNKRyNVF1t9I6RR77ZvyPM=;
        b=VwHv38Yf46rXzBly0qXCQf/dPsLFy4MgTjKhMK7mM8C2KW1DM5Dsjq+g5ijnJnnTJH
         Qx3CkmupxZNwGvStk2mJHU7pcP2bFvpnst5qICYAjR3hsfY/XdH13kk3BxywM2iz7CJW
         EJXThZspRw/NNL0mDav7U9RCOjenyrUnIk34WeinMHi86PoyJvaKKaBX7ACIYs69PJFO
         BCbCqPc/vfX1MvAe72rcEdqYtnL9Fupd1MiLxzqqBhkiQn48EPrghzOrSR9tzeIkkc8w
         9VFNBrXqRmEaRRhs6vVj3+hyCRkHX7XwTtPJj2ID1rX90VJ0CT+IuPUMoaIJ5KJPyh5X
         FpZA==
X-Gm-Message-State: ACgBeo28g/lEGs+Fz7MoWgr16zb7/vMWrVR4j97/3ei2uLsD7tvOUXFM
        E0okNzCdPde+Y2QfHYzXXAXnEA==
X-Google-Smtp-Source: AA6agR5VGxhgrccYa4L0dqXC6PCPEd6Fs9BSyR+78GstCAiSgHoXA29qK/3DSm5TYA1ZK0s6iEQ2cQ==
X-Received: by 2002:ac2:51af:0:b0:48a:f341:21a1 with SMTP id f15-20020ac251af000000b0048af34121a1mr7695287lfk.625.1660715540692;
        Tue, 16 Aug 2022 22:52:20 -0700 (PDT)
Received: from ?IPV6:2001:14bb:ae:539c:1b1c:14b7:109b:ed76? (d15l54h48cw7vbh-qr4-4.rev.dnainternet.fi. [2001:14bb:ae:539c:1b1c:14b7:109b:ed76])
        by smtp.gmail.com with ESMTPSA id j19-20020a056512345300b0048b2583fb46sm1513482lfr.200.2022.08.16.22.52.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Aug 2022 22:52:20 -0700 (PDT)
Message-ID: <d2b28def-28d8-1a7b-8971-e13eb35e43fa@linaro.org>
Date:   Wed, 17 Aug 2022 08:52:18 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH V2 net 1/2] dt-bindings: net: ar803x: add
 disable-hibernation-mode propetry
Content-Language: en-US
To:     wei.fang@nxp.com, andrew@lunn.ch, hkallweit1@gmail.com,
        linux@armlinux.org.uk, davem@davemloft.net, edumazet@google.com,
        kuba@kernel.org, pabeni@redhat.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, f.fainelli@gmail.com,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220817020322.454369-1-wei.fang@nxp.com>
 <20220817020322.454369-2-wei.fang@nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220817020322.454369-2-wei.fang@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/08/2022 05:03, wei.fang@nxp.com wrote:
> From: Wei Fang <wei.fang@nxp.com>
> 
> The hibernation mode of Atheros AR803x PHYs defaults to be
> enabled after hardware reset. When the cable is unplugged,
> the PHY will enter hibernation mode after about 10 seconds
> and the PHY clocks will be stopped to save power.
> However, some MACs need the phy output clock for proper
> functioning of their logic. For instance, stmmac needs the
> RX_CLK of PHY for software reset to complete.
> Therefore, add a DT property to configure the PHY to disable
> this hardware hibernation mode.
> 
> Signed-off-by: Wei Fang <wei.fang@nxp.com>
> ---
> V2 change:
> 1. Add subject prefix.
> 2. Modify the property name and description to make them
> clear.


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
