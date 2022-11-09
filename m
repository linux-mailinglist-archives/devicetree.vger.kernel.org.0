Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ABC206230ED
	for <lists+devicetree@lfdr.de>; Wed,  9 Nov 2022 18:01:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231648AbiKIRB0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Nov 2022 12:01:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59950 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231158AbiKIRAt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Nov 2022 12:00:49 -0500
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F12AE095
        for <devicetree@vger.kernel.org>; Wed,  9 Nov 2022 08:58:24 -0800 (PST)
Received: by mail-lf1-x12e.google.com with SMTP id bp15so26580036lfb.13
        for <devicetree@vger.kernel.org>; Wed, 09 Nov 2022 08:58:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wvA1WPZHYnDQjRbMscNASPGLxVS0IuvdVkIGEW4k8Sw=;
        b=LpPgCWUTuCD+Zqs+ae3nUcxPLTa9Yrssp2e5dMnLsUHC/sdsHNw1V10GKQrGUYfPsC
         xF0HewK+Cg0+7XmNn+F8SkkeVFdQOD4bL6J3hwSAey00V4b7ZtiVGG4300AHMIjOrrWd
         HDyyVs8RrNfxS0tsJC6GX/XsSh+CpfDGD04Vs4giNtRKPYQU33AlBSj5mAWC323NHDpb
         f7L0SaX2Rb6bKiioVEvL1g5k8cLU8NZ/icYSlCFCWNpuZr+wjWjmYtDOrL3znvJDKq8n
         tKQ3mREheOEOv5IHCFqrlADQ0BJo5QPyJ5hVO5dIhqpkIdiYshRM/iAc1JxbZwoQFXWb
         qoNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wvA1WPZHYnDQjRbMscNASPGLxVS0IuvdVkIGEW4k8Sw=;
        b=7eZKATG46nsiT9mgrMD+7raEM7td5IpePH51JvdcNA9y8dwezz9sHvFkzu6YOofTkH
         pRFTsuWEjeVyD1z5uSlH/KKlGBwujVxk5bv3zVAjhVhhH7LotuIff3wJgmFIx62m7K4p
         S/ywLM89V264nkfdWTz+HXxqYfwYQz6niX0ijTpzflIthauKuCsiKpFQassjmhYbvkvO
         LthDRly/11v1Hwl95KmebFhAnx5IXRfAmy92H7Zu/OrtFdUmhoWkZ+svHOp7LjhtK2J8
         OBYCdfL31EFLfmrPpmJzFWor2G2jYXB8+gY4NoMwWoldxfD59dwf0ytEmeuNWMm2Ci8a
         inmA==
X-Gm-Message-State: ACrzQf2dOCrVsfbHCUbDsP50SQT8C34uuG7ueGvslEYhm+p2D9FJh6GN
        hTptoS2UdwQpYrDfmOPDGoe1yw==
X-Google-Smtp-Source: AMsMyM5OmC2n74FpFgy5F3WY7wZ0NQxn/J3JdfKJDzSMuBohpT1Wj6QieAqSRuil8zz6VWDPDxgmhQ==
X-Received: by 2002:a19:f80c:0:b0:4a4:5923:5174 with SMTP id a12-20020a19f80c000000b004a459235174mr22191318lff.151.1668013102832;
        Wed, 09 Nov 2022 08:58:22 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id s4-20020a056512202400b0049fff3f645esm2307402lfs.70.2022.11.09.08.58.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Nov 2022 08:58:22 -0800 (PST)
Message-ID: <59ceb2d7-fb46-848e-163e-e0e54c9e6195@linaro.org>
Date:   Wed, 9 Nov 2022 17:58:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 1/5] ARM: dts: nanobone: Fix GPIO settings for RTS/CTS
 pins on UART3 & 4
Content-Language: en-US
To:     Mark Jackson <mpfj@newflow.co.uk>
Cc:     =?UTF-8?Q?Beno=c3=aet_Cousson?= <bcousson@baylibre.com>,
        Tony Lindgren <tony@atomide.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-omap@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221109160904.183147-1-mpfj@newflow.co.uk>
 <20221109160904.183147-2-mpfj@newflow.co.uk>
 <3c530543-6d89-bf63-8734-7ccb02aede84@linaro.org>
 <CAAbcLfjKxZfn8JW6h_k2S42_OHEU366xVm3U=3FWdacGTq6wZA@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAAbcLfjKxZfn8JW6h_k2S42_OHEU366xVm3U=3FWdacGTq6wZA@mail.gmail.com>
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

On 09/11/2022 17:57, Mark Jackson wrote:
> On Wed, 9 Nov 2022 at 16:22, Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 09/11/2022 17:09, Mark Jackson wrote:
>>> The NanoBone platform uses GPIO pins for RTS/CTS control.
>>> The DTS still uses the hardware RTS/CTS pins so this needs fixing.
>>>
>>> Signed-off-by: Mark Jackson <mpfj@newflow.co.uk>
>>> ---
>>>  arch/arm/boot/dts/am335x-nano.dts | 8 ++++----
>>
>> You still use a bit odd subject prefixes. What did the log tell you for
>> am335x files?
> 
> Aha, now I understand ... I need to change "nanobone" in the title to
> "am335x-nano" to match our dts file, correct ?

Yes, I think this is the most popular subject prefix. It allows
sub-architecture maintainers to understand what is it about.

Best regards,
Krzysztof

