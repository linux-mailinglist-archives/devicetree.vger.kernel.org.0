Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 03F9E50DE38
	for <lists+devicetree@lfdr.de>; Mon, 25 Apr 2022 12:53:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237694AbiDYK4H (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Apr 2022 06:56:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47994 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232849AbiDYK4E (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Apr 2022 06:56:04 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 466877DAB7
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 03:52:58 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id g23so10866948edy.13
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 03:52:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=c0GtfBkRSHeFZTruOwJRlqy+Sejoq8V+8yuUoZ3jFBc=;
        b=CbbAqeWONmzWIiGLRvqkhXo3NhecQVj6nlqqLU92Lqr1pACc3YhhvLGZg1SouvWfQ+
         8sH0Gko7TaEwFe7nRdN6dyYPtVZCcL0ae9htgY8wdfKxMPswxpxdM9dhNNCzQGqzw3Z7
         0k5CRiWMlYKJiH03+Nx/K4ew/zYPywhIPfaJcrmgMkryaUAF6ksXyn4Jc+7VGXBm+3+X
         jy2XsSb0qgG8wK+a7mEBgCBxyLrQSltcTgWZIlR8+9gqM6OCZuDjnB5RlYn476VRadCE
         YwKnLkl31yV+HJI8g4PJM4SC+3OFnZngS2XtfFEO88N0Va6VH3OS/As8cr0nY00axZ9z
         q5ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=c0GtfBkRSHeFZTruOwJRlqy+Sejoq8V+8yuUoZ3jFBc=;
        b=EQQdb09DwghXOhRUqmLmbQrMRQ6BpeyDZOpJFOakwx6Z/WLyoauVVQA7GpN3p6pxsJ
         dEmn1DpouEAAX755nBOX9tHD5etuqjdomf6i6HHyRoWMB45zOucOkwmuC9mRJrqk+mUJ
         PtJp4GvgA+ySJWB1NL84btBVb223UzO+xMPNWQAlp/rPuf8La4YHLDGhf66+pp0vFpcN
         6vKcU16/ENjUmoFjG55ieRoytPNxiH8oIc7rzzp9/5wgae7dbohuvUCmU6FBECT+h2PQ
         77eQHLa//O4fKDBDF9oq8GwUtzCM+cSGXqtT5N3+KhtmuUjiVUfefqq9SGtrBwtZZjzI
         Cudg==
X-Gm-Message-State: AOAM533YFh507dcWWOlZyUmKy4amBYy5jP9Y1BTZ/xJ8yQ7i03Ayh7Ov
        d2t6j7kGR4DBgL8f9x+QEttH4g==
X-Google-Smtp-Source: ABdhPJy0dgkTb52njNWz9LvzMjEGTgEAOOjcVV8QzWTIaTLpb3m5wGPLOarhcpcQDrQ3D+MMkn43tw==
X-Received: by 2002:a05:6402:27d0:b0:41a:68bf:ff26 with SMTP id c16-20020a05640227d000b0041a68bfff26mr18293476ede.102.1650883976805;
        Mon, 25 Apr 2022 03:52:56 -0700 (PDT)
Received: from [192.168.0.241] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id w24-20020a50d798000000b00425eb9d893asm1016799edi.79.2022.04.25.03.52.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Apr 2022 03:52:56 -0700 (PDT)
Message-ID: <9ff80bc2-d63b-14aa-5769-20bff6e3a21e@linaro.org>
Date:   Mon, 25 Apr 2022 12:52:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH V4 01/14] dt-bindings: cpufreq: mediatek: Add MediaTek CCI
 property
Content-Language: en-US
To:     Rex-BC Chen <rex-bc.chen@mediatek.com>, rafael@kernel.org,
        viresh.kumar@linaro.org, robh+dt@kernel.org, krzk+dt@kernel.org,
        matthias.bgg@gmail.com
Cc:     jia-wei.chang@mediatek.com, roger.lu@mediatek.com,
        hsinyi@google.com, khilman@baylibre.com,
        angelogioacchino.delregno@collabora.com, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20220422075239.16437-1-rex-bc.chen@mediatek.com>
 <20220422075239.16437-2-rex-bc.chen@mediatek.com>
 <f2e5a34b-ed02-91a1-bc7b-fecaa95e227e@linaro.org>
 <811bf944-a230-ab9b-583a-840e57af8a1e@linaro.org>
 <28f75ac2995b116af9b2accf760786d1d1798c93.camel@mediatek.com>
 <7873f0fa-25c3-191f-5096-3ceb9afd50cc@linaro.org>
 <c1b910098a0a5cbe06ec971c1bf745ac37986274.camel@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <c1b910098a0a5cbe06ec971c1bf745ac37986274.camel@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/04/2022 12:20, Rex-BC Chen wrote:
>> However I am not sure if you solved your problem... see below:
>>
>>> For example:
>>> mediatek cci set 1.2V originally. When cpufreq want to adjust lower
>>> frequency adn set voltage to 1.0V.
>>> The framework will remain using 1.2V to prevent crash of mediatek
>>> cci.
>>
>> No, regulator_set_voltage() for proc_reg says:
>> "NOTE: If the regulator is shared between several devices then the
>> lowest
>>  request voltage that meets the system constraints will be used."
>>
>> Not the highest. So when your devfreq and cpufreq boots, calling
>> regulator_set_voltage will still cause high frequency and low
>> voltage.
>>
> 
> From the driver comment, I think it still needs to match "meets the
> system constraints".
> 
> From drivers, we can trace the driver and it finally to
> regulator_get_optimal_voltage().
> In [1], the framework will get max voltage while finding each device's
> voltage.
> 
> [1]: 
> https://elixir.bootlin.com/linux/latest/source/drivers/regulator/core.c#L3815

Right, actually in your case it's the regulator_check_consumers() above
that line, because you

I think it's quite generic problem, so would be worth solving for more
regulator consumers, but your approach is fine. At least I do not have
anything smarter, at the moment.

Best regards,
Krzysztof
