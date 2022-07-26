Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 187D4580BE1
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 08:47:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237967AbiGZGrw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 02:47:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237971AbiGZGrv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 02:47:51 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0D3320BD6
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 23:47:50 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id y11so21128310lfs.6
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 23:47:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=s9ZmYUyCnBVCgn8I0a4gHlUL2QkHakLsoQIE+4rbZIU=;
        b=VGpYbF8dlaX9HMAQSkAseu3FRNIClR63M+fO6slYmLoTG1/XrAc4OVO6vPaPwU8Cz4
         jMKYSrZ4mMcPXmgsKZ0aLZCBkVbQLSKSyJz0JqHB/hMhX+MJhvT9r1kAuFDEMEQlt03B
         wqeqOPwzFIfHTqFV7On6t/vhxbGdpA2255fCzKYTekoXIVPpX6NXG8K8Lgf2M3Jo0Hvy
         3Ymk2Qaj2mEG6CwkKIqVj7+zG5DnhA1ilLjRQIZrY5bXyQaMRgKLk1AYqEiPbnrdrYSe
         9hQGy+JRVPHXQg50KbpBmZlk+s2axwmcqBazGYw0wq6TT7IE1EzasLE8EiFXRieT2Iol
         pPPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=s9ZmYUyCnBVCgn8I0a4gHlUL2QkHakLsoQIE+4rbZIU=;
        b=4HYSqZW60iRQ9HTYj6K+TSHiN3rIkAj09SuWq99l+mE+zZIJZqNwjdEb1nbMv66IbI
         obcNe20QpKhMUvjnCNFTwvhcCocz/gbKXC60ausfWTyk8JJXvfmhE6gL4i4QM+6m7x7x
         ghzW58IVEKzegC9Sa3K+teOAYotSCLQshxKaL2qX1UlUjMDi/5bRa015aYYEPyQRlyQ3
         4d2QelSuJSwpvoP9rZVyx9ubmwvu4FmBkXnPI6m6XIPfJZjOkuw4SbofTG+rfQIlP/Os
         efAzUTjQbZAc98Uihiq3cAmUuZO1yhGPUsIF6QfgTKF3CUHsJwaeNoS3b6MOLEpaN2vT
         gZ8w==
X-Gm-Message-State: AJIora+ZuZbgMmJcDIDMIAUzNoChy88Dcd8+u9do9XKRhb04QBpnKB0t
        13KzdcixnPlc4VGjUqogvBWscQ==
X-Google-Smtp-Source: AGRyM1uiEyJ1nP5zh3TphkWCCynKG5URODiPVpMQc+i4JRYaf/DzC3PAuI3BhnUAkzvZF+62ssNM1Q==
X-Received: by 2002:a05:6512:3501:b0:48a:712b:a99 with SMTP id h1-20020a056512350100b0048a712b0a99mr5735515lfs.608.1658818069063;
        Mon, 25 Jul 2022 23:47:49 -0700 (PDT)
Received: from [192.168.3.197] (78-26-46-173.network.trollfjord.no. [78.26.46.173])
        by smtp.gmail.com with ESMTPSA id k15-20020a0565123d8f00b0048aab0259c0sm28716lfv.107.2022.07.25.23.47.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Jul 2022 23:47:48 -0700 (PDT)
Message-ID: <13697702-20fc-5fef-e335-b6765f93d1a0@linaro.org>
Date:   Tue, 26 Jul 2022 08:47:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 2/4] firmware: Samsung: Add secure monitor driver
Content-Language: en-US
To:     dj76.yang@samsung.com,
        "jesper.nilsson@axis.com" <jesper.nilsson@axis.com>,
        "lars.persson@axis.com" <lars.persson@axis.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
        "lee.jones@linaro.org" <lee.jones@linaro.org>
Cc:     "javierm@redhat.com" <javierm@redhat.com>,
        "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
        "linux-arm-kernel@axis.com" <linux-arm-kernel@axis.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Moon-Ki Jun <moonki.jun@samsung.com>,
        Sang Min Kim <hypmean.kim@samsung.com>,
        Wangseok Lee <wangseok.lee@samsung.com>
References: <aec4ffd0-368d-e71a-06e4-a084138fbab9@linaro.org>
 <20220713045516epcms1p86b3f6a8795d767faac65eb947405f911@epcms1p8>
 <CGME20220713045516epcms1p86b3f6a8795d767faac65eb947405f911@epcms1p6>
 <20220726000429epcms1p6c32018733b1cf87c9f138f76f5c1bdd4@epcms1p6>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220726000429epcms1p6c32018733b1cf87c9f138f76f5c1bdd4@epcms1p6>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/07/2022 02:04, Dongjin Yang wrote:
> 
> On 14/07/2022 04:28, Krzysztof Kozlowski wrote:
>> On 13/07/2022 06:55, Dongjin Yang wrote:
>>>  Introduce a driver to provide calls into secure monitor mode.
>>>  This driver is used for SoCs produced by Samsung Foundry to provide
>>>  SMC call. This patch supports register read/write request to secure
>>>  monitor. Also, SMC call request which uses shared memory to exchange
>>>  the data between kernel and secure monitor.
>>>  
>>>  Signed-off-by: Dongjin Yang <dj76.yang@samsung.com>
>>>  ---
>>>   MAINTAINERS                              |   2 +
>>>   drivers/firmware/Kconfig                 |  11 +++
>>>   drivers/firmware/Makefile                |   1 +
>>>   drivers/firmware/samsung-smc-svc.c       | 154 +++++++++++++++++++++++++++++++
>>>   include/linux/firmware/samsung-smc-svc.h |  59 ++++++++++++
>>>   5 files changed, 227 insertions(+)
>>>   create mode 100644 drivers/firmware/samsung-smc-svc.c
>>>   create mode 100644 include/linux/firmware/samsung-smc-svc.h
>>>  
>>>  diff --git a/MAINTAINERS b/MAINTAINERS
>>>  index 6763746c349f..d173043ffb46 100644
>>>  --- a/MAINTAINERS
>>>  +++ b/MAINTAINERS
>>>  @@ -1868,8 +1868,10 @@ F:        arch/arm/boot/dts/artpec6*
>>>   F:        arch/arm/mach-artpec
>>>   F:        drivers/clk/axis
>>>   F:        drivers/crypto/axis
>>>  +F:        drivers/firmware/samsung-smc-svc.c
>>>   F:        drivers/mmc/host/usdhi6rol0.c
>>>   F:        drivers/pinctrl/pinctrl-artpec*
>>>  +F:        include/linux/firmware/samsung-smc-svc.h
>>
>> Same as for bindings - not related to Artpec platforms. Either add
>> dedicated entry or put it under Samsung SoC.
>>
> 
> This patch is for Artpec8 SoC.

This does not answer my comment at all.


> 


Best regards,
Krzysztof
