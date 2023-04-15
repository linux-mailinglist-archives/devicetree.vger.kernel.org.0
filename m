Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B86326E301F
	for <lists+devicetree@lfdr.de>; Sat, 15 Apr 2023 11:35:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229893AbjDOJfD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 15 Apr 2023 05:35:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229561AbjDOJfC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 15 Apr 2023 05:35:02 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1ECFD1A5
        for <devicetree@vger.kernel.org>; Sat, 15 Apr 2023 02:35:01 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id fy21so8656863ejb.9
        for <devicetree@vger.kernel.org>; Sat, 15 Apr 2023 02:35:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681551299; x=1684143299;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iHe7+ZI9vcMXozuw5wEOyHlKfGeNE+50N2oMm3v17Pc=;
        b=I9Y9n63XJPOuSMT1dpoJVmH4Gfyim7lTooHc+4cAPZv4P77Ycc3njmUKzsvxuZSFtU
         /GnRkwHL625syL22vp7hxZNhILWz+JsWf7nDqghpGqXTMbQN8lVd/iAygpF5FG/8kYYc
         VhxtUHF2jaAy7vCIerZT3aMgrZdEi6vxdqBKARG5OifeWzkOltADArVXmgUn8KnTeVmM
         mP60tMI5IfyMxz7knXL7hvb/uTdx8WLM5BZn5O2eL5Gsub9VPFK/1tXAHs1dNcAYZh9h
         w6oGDVsNrB3zziyT9w0uUPyftY06W9T8xnDCobM4F77Ht08xspMYeEbgT6tqcj2sgrL+
         dRXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681551299; x=1684143299;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iHe7+ZI9vcMXozuw5wEOyHlKfGeNE+50N2oMm3v17Pc=;
        b=K5anG1VhU6+fQlOaJbm1hAQFdQvvNIgre7mjji9vTWupKowoKwpcNUftKpUKUoDQjU
         cb9O7UWr4BjtmSm2x6uYFv1+4kQSD4wtkN7BFAx7pjdzKW2JW9pwcFrues/SddHBPFg9
         qLhVUxDojS6mMVIXpE583+GNKLObyclUloHf+Y88gxvieOOyRu30bm+5c3PRuHwDtUcp
         0X8gNX7pYQue62q+GjGvdSLGWxFKKZYOToiS31Ns/VZzIXX0OQhK7l5MI7dDptpL5VCw
         NWv6RRlXy7JdOoUE03ffQoMk6keTymT5hQUUnRuGxkyhP5Q5D3KRlGFz76YPbExEADIT
         HdFQ==
X-Gm-Message-State: AAQBX9fS7oEApONauJq3MwcJ0WR8aNfukvdL7mRzfYlk9tndWBx3SClD
        nYPbHp6XMHHlvhUEizzmtZgNEw==
X-Google-Smtp-Source: AKy350YPr/pPCvzamHm2jAQZ1MFJBtpP8e/tuf9tFawxc3zwEKLFtjR2S3JdniMPaZ5p5oFz1HNqLQ==
X-Received: by 2002:a17:906:9711:b0:94e:dda6:993d with SMTP id k17-20020a170906971100b0094edda6993dmr1580355ejx.3.1681551299400;
        Sat, 15 Apr 2023 02:34:59 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:a3bf:4ed:6c53:2a36? ([2a02:810d:15c0:828:a3bf:4ed:6c53:2a36])
        by smtp.gmail.com with ESMTPSA id r7-20020a170906958700b0094efdfe60dcsm1330403ejx.206.2023.04.15.02.34.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 15 Apr 2023 02:34:58 -0700 (PDT)
Message-ID: <4649763c-4355-758e-dcdc-5bdb4277c441@linaro.org>
Date:   Sat, 15 Apr 2023 11:34:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH V5 2/6] dt-bindings: w1: Add DS2482/DS2484 I2C to 1-W
 bridges
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, linux-imx@nxp.com,
        soc@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh@kernel.org>,
        Stefan Wahren <stefan.wahren@chargebyte.com>,
        Evgeniy Polyakov <zbr@ioremap.net>
References: <20230404080243.9613-1-stefan.wahren@chargebyte.com>
 <20230404080243.9613-3-stefan.wahren@chargebyte.com>
 <20230404133937.GA3778861-robh@kernel.org>
 <e2afed14-fed3-772c-3acc-dc132b5a1078@i2se.com>
 <2023040651-baboon-busybody-6175@gregkh>
 <bdcf41d5-cd61-1e95-0b21-b8fe401644bd@ioremap.net>
 <dc794f94-42ff-33a5-facc-5fe09f6da295@linaro.org>
In-Reply-To: <dc794f94-42ff-33a5-facc-5fe09f6da295@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/04/2023 20:10, Krzysztof Kozlowski wrote:
> On 06/04/2023 13:47, Evgeniy Polyakov wrote:
>> Stefan, Greg, hi
>>
>> On 06/04/2023 10:58, Greg Kroah-Hartman wrote:
>>> On Thu, Apr 06, 2023 at 11:53:28AM +0200, Stefan Wahren wrote:
>>>> Unfortunately no feedback from Evgeniy so far. Should i resend these two
>>>> patches for you?
>>>
>>> Please do.
>>
>> Thank you for the patches Stefan, but I'm no longer a w1 maintainer, 
>> sorry I haven't updated the maintainers file, please send all w1 patches 
>> to Greg.
> 
> Thanks Evgeniy.
> 
> If the one-wire subsystem is orphaned, I can manage the patches to
> offload Greg a bit.

There was not feedback on my proposal, which I am optimistically going
to understand as "go ahead". :)

I'll send a patch, assuming Evgeniy that you are not planning to
maintain w1 anymore and a new maintainer would be useful.

Best regards,
Krzysztof

