Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C42BF659231
	for <lists+devicetree@lfdr.de>; Thu, 29 Dec 2022 22:23:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234190AbiL2VXU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Dec 2022 16:23:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40482 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234386AbiL2VWk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Dec 2022 16:22:40 -0500
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 678B2175A7
        for <devicetree@vger.kernel.org>; Thu, 29 Dec 2022 13:20:06 -0800 (PST)
Received: by mail-ed1-x534.google.com with SMTP id i9so28190492edj.4
        for <devicetree@vger.kernel.org>; Thu, 29 Dec 2022 13:20:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wCKY2PQJHOCiDRhEZNp0Rqp+epTZrGx6K/Sb1RZff4g=;
        b=b+IjD7d8FVO9nGq21lEqB26ImDC36QEGC4+0eF7piOvZh0hTZHL75KHPEKQLZjHhkr
         t8RPcTWLGUbxOeOTgo12B7+n2W1tpc0D82f0Nd9dqmRczzH/b9vcMdaEZ6Zfr4grPhFS
         Foe1yh1vjTxiuwLHAvn1xOtHjZ8GEN+HePHn4SaKYJEH6QBpIxAQNMF1OnZuavhmQxxV
         EDsb93Xnou9S3trzAmK9HfT3x0is03bLCw/4BMLxx84OzuqKp1sJoJAvnBaarKrqxN2L
         keUl/rjZ56MnxhIBlyIvCUjM/UpcSdpnwWTRS23roYgQTiM/yH+UdxGeLgwtmY3tbkkG
         Dvlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wCKY2PQJHOCiDRhEZNp0Rqp+epTZrGx6K/Sb1RZff4g=;
        b=qKQM6VBbIYQ3H/GbVM5fOdCHVkp+xv4MHfP0n3Nw7Y09dm2v4Iegzhjx6NDQIlgcqU
         FY91IfqP0YVpgOIEeLPQf7eFIO3Jwwwtgwv7vhxry5FJAzKC4EFo/UQjjfTYfUB/Shpq
         xUS35Gohh3/GZqzvtTJCf+HaWg4Zc8PLCqbpK2YYf+MZbVKGiHKIIsiof//HQ43Gt928
         191LlB6vqibsc5w2MyspumgpfH9s49N7oHzULrjoMfD9YBAuFGqY57wa+aqhKf0KtuzI
         pVP8n0b1i+QjCOOy4lHtCBpcMQgIjBcPtOLpB0Y2n/A1a1uf8i0b6PENs7jhDtY0DhNE
         jhkQ==
X-Gm-Message-State: AFqh2kpPaie4qUJk+he7PfeIYVq7bxCIcwHy635YW4IoEJLFWkg3wjxZ
        +xPHos1mX6cKdRWUUeRGvDwr3Q==
X-Google-Smtp-Source: AMrXdXt9Qg4APzfofYEf0yIb/xcSUmX+cpIGBmWpVd7JEZv5+QAEwAKIyS1lzbzesLNianxSKYL5YA==
X-Received: by 2002:aa7:c0d6:0:b0:488:6fd0:cf88 with SMTP id j22-20020aa7c0d6000000b004886fd0cf88mr6235612edp.36.1672348805033;
        Thu, 29 Dec 2022 13:20:05 -0800 (PST)
Received: from ?IPV6:2001:1c06:2302:5600:12a8:8cf4:e3f6:f90f? (2001-1c06-2302-5600-12a8-8cf4-e3f6-f90f.cable.dynamic.v6.ziggo.nl. [2001:1c06:2302:5600:12a8:8cf4:e3f6:f90f])
        by smtp.gmail.com with ESMTPSA id hz8-20020a1709072ce800b007b839689adesm8995612ejc.166.2022.12.29.13.20.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Dec 2022 13:20:04 -0800 (PST)
Message-ID: <cdcef656-1ae7-fe8a-a4dd-3547d6395b33@linaro.org>
Date:   Thu, 29 Dec 2022 21:20:03 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2 2/2] phy: qcom-usb-hs: Add qcom,dp-manual-pullup logic
Content-Language: en-US
To:     Stephan Gerhold <stephan@gerhold.net>
Cc:     agross@kernel.org, andersson@kernel.org, vkoul@kernel.org,
        kishon@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, konrad.dybcio@linaro.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org
References: <20221229183410.683584-1-bryan.odonoghue@linaro.org>
 <20221229183410.683584-3-bryan.odonoghue@linaro.org>
 <Y63uSgMdP4m6nvhL@gerhold.net> <Y64AfHcUw192Pyr6@gerhold.net>
 <6061938c-b830-2fe0-2f4d-368e34c33676@linaro.org>
 <Y64CaOzWZXERrvkz@gerhold.net>
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <Y64CaOzWZXERrvkz@gerhold.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/12/2022 21:11, Stephan Gerhold wrote:
> Then it doesn't seem to be a particularly complete schematic. 😄
> PM8916 definitely has USB_IN pads (pad # N13, P13). 😄

Let me check again.

No sorry USB_IN_0 and USB_IN_1 are connected to +5V in my schematic, I 
did check USB_IN I just forgot why it wasn't usable... +5v not VBUS is 
what its connected to.

VBUS connects to VBUS_DET on the USB Hub - a USB2514BQFN36, there's no 
corresponding routing of VBUS onto a GPIO or USB_IN_x on the PMIC.

I assume there's some good reason the PCB designer did it this way .. 
there's enough of a reason behind it that Qcom put a workaround for the 
case where PCBs don't route the VBUS state to the SoC or PMIC.

---
bod
