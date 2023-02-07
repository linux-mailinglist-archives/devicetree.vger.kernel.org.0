Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6725668D147
	for <lists+devicetree@lfdr.de>; Tue,  7 Feb 2023 09:08:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230450AbjBGIID (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Feb 2023 03:08:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47872 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230256AbjBGIIB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Feb 2023 03:08:01 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6AAF62B284
        for <devicetree@vger.kernel.org>; Tue,  7 Feb 2023 00:08:00 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id ba1so8611799wrb.5
        for <devicetree@vger.kernel.org>; Tue, 07 Feb 2023 00:08:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=RQlDidB6Gvvp6ghBrLgv75BvvHu3m4TEuLCw4BC1C/U=;
        b=sEDJ1fu0JDTI24wHOg1lgL/WoCnjFuVGa7uzyEZNEFTIewsjrxYH8wjB5CfvF6IGwG
         4mMpnDpzmYZm6v4rR8GObnKIcJhTNFiYp4cchYRfiYLaZEs5//+6a0aEVjLP/mxpC1Rg
         fGJ/4iUKSs0FMVz+2TpqE4LIMW/ziGHtl0edQd9uNLan3a3bPlcaHeFQjcm3Vj6d/vyb
         fU4KXb3tFx2z8RVQSQ54lKBvToSP3d0CDjTEe+cmThPSxLpXC8MUS2CBvzVhCnmScFQM
         TvL+6CtWAHca6ezrDoIMvl26AEXD0SeLcEe1rPCaD8Nc3tOvNjyFJglPvPTPImZKNaML
         yo/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RQlDidB6Gvvp6ghBrLgv75BvvHu3m4TEuLCw4BC1C/U=;
        b=v9yoUxbRGXJcNGXajgM4HuzzUhWCKoFWBuSdBequyTMqJxuxf3bJNbueblHkjTPgXZ
         8KOey6IKONeT5q4klHfJXOn1L2M3JM7JbANMJRiTdHL5MDoxNPMD+b9fRH2VH9+xNtIX
         NE8LGN+v8y/l55MMHC8PgtGZVwrWE36UFF4OikRIbtj+2ajOcAlW/WOTl40WpW9Kck/p
         rY+ScmBuSHeSMG2P3QDMkmte0DPBb8CLOD4wFttM/kQXiMiLXJF+CXRI+V/JAhlixKcE
         1x1L/pTeg7n1aVwGjvvMg3yOO70uMZpa9hAR5RT5oLP1mjWnm+GKLOVC7wpjDZKHgvBs
         xUbA==
X-Gm-Message-State: AO0yUKXU/eSpJiD5ZejMJF5TdpL2/xkY5ihvT8AjMSoS6g5xZuqcM1t4
        bPD6ihFoC9YRp22RFB2EZ5P97g==
X-Google-Smtp-Source: AK7set9MUnU8VvfsvVaIq/Or338muK8PL0UGOugI4JZSjpEDpqiycPmBpgyzKRDbCfFOS2RaJaUHew==
X-Received: by 2002:a5d:6b4f:0:b0:2bf:b68a:e122 with SMTP id x15-20020a5d6b4f000000b002bfb68ae122mr1898790wrw.33.1675757278977;
        Tue, 07 Feb 2023 00:07:58 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:c58c:fc5c:67d6:e5f3? ([2a01:e0a:982:cbb0:c58c:fc5c:67d6:e5f3])
        by smtp.gmail.com with ESMTPSA id e6-20020a5d6d06000000b002be099f78c0sm11055130wrq.69.2023.02.07.00.07.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Feb 2023 00:07:58 -0800 (PST)
Message-ID: <c65e894d-2682-9fc4-1843-1e30b2779d42@linaro.org>
Date:   Tue, 7 Feb 2023 09:07:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 3/4] dt-bindings: pwm: Convert Amlogic Meson PWM binding
Content-Language: en-US
To:     =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
        Heiner Kallweit <hkallweit1@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Marc Zyngier <maz@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Thierry Reding <thierry.reding@gmail.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>, linux-pwm@vger.kernel.org
References: <8df4ceec-663c-dc68-d775-5caeb02c0cca@gmail.com>
 <5b83767e-c53d-316f-df10-45a39dbd9c88@gmail.com>
 <20230206082317.ygvixvhjqppz4nmy@pengutronix.de>
Organization: Linaro Developer Services
In-Reply-To: <20230206082317.ygvixvhjqppz4nmy@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 06/02/2023 09:23, Uwe Kleine-König wrote:
> Hello,
> 
> On Wed, Feb 01, 2023 at 09:00:21PM +0100, Heiner Kallweit wrote:
>> Convert Amlogic Meson PWM binding to yaml.
>>
>> Reviewed-by: Rob Herring <robh+dt@kernel.org>
>> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
> 
> How is supposed to pick up this patch? Does it go in together with the
> other patches in this series via amlogic/arm; or is there an expectation
> that it enters via PWM?

I expect Thierry to pick it, if he can't I can take with his ack.

Neil

> 
> Best regards
> Uwe
> 

