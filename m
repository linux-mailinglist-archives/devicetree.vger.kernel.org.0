Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4EF3D51BACD
	for <lists+devicetree@lfdr.de>; Thu,  5 May 2022 10:42:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350096AbiEEIpq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 May 2022 04:45:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57140 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349978AbiEEIpp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 May 2022 04:45:45 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79C044A3D5
        for <devicetree@vger.kernel.org>; Thu,  5 May 2022 01:42:05 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id q20so2205634wmq.1
        for <devicetree@vger.kernel.org>; Thu, 05 May 2022 01:42:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=7Zw+483cJVhINHNi2Z5B6TpTT33M9OSa126+uwsxpcE=;
        b=dL5MhfRDQSgsecjYUQEdt3uf7MugvRb//6suHDmPmKPD1XLnfSvqoVzzu0Z2nkJ8xJ
         d2ZUs+CeUQeDdpFe4dGMgwO80p1zcV+0/+syDo3BbbZksvDghNEpj1Hqwtfd82X4xevW
         vUMv0VvVSfxwmD04VthTNv9eZfnijHMr0rULAPKFbLzKKNtEHu1ZVcXyXVeT5gsOAO+l
         2oew4bwEtC+l8CmlZY+20VOFgh9yAv55ZZslZG0/+sxk2rhXRly4HittNiSUDXejpu6e
         QmNuesP4AW/MWlGCE8xG6HZjh5NTjVK3dZuOt/L2ZtgevCJXcfAXPW/FjRy3NKACUkFl
         JVEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=7Zw+483cJVhINHNi2Z5B6TpTT33M9OSa126+uwsxpcE=;
        b=54HGlU32FiKaLb0hNCvw36qAdFrZuPThin9JhkJ4eNWYbJZuVELAoo01uH+0BksFaf
         fh9akpABGiHYekkTbv5zgASFfZOi0nCqCwoqe9tznfKQEXt5ffooB5yjsOvg9FlgPJoP
         C8AdJl0ZkriU34NjwnlIzyirOV04d1WrYPZkOBUmHT4Axgw06qRvol9M+GGdSLiPdWzi
         s8f6HLPzWLh5voARtlod3GpwDBPEABpx+6wZd5EJlPU/xWspQBo+4JQjY9f3m5lc3sji
         Me4wGTfA60Ok1cqqmNHiiNgAq+PJCeOXyGGF5cJ6qjpwOiUb06QEgq/odG/5zOGwIpUA
         ETUA==
X-Gm-Message-State: AOAM532EaR6+GT9GDuG1rn5xJXgKu6ActcidkOXnioA4Z+3P2yW4BKIi
        x6Tu1a1WkIwqmdOmzKx7k6KXeg==
X-Google-Smtp-Source: ABdhPJzXSgD5tXW4G6BtwxkuBQBL2fvsrVs6agwWEZyYBvcOAGGnrpX60UyfS0yx8KGskZOwOpX/iw==
X-Received: by 2002:a7b:c088:0:b0:394:451e:34a0 with SMTP id r8-20020a7bc088000000b00394451e34a0mr3537148wmh.10.1651740124012;
        Thu, 05 May 2022 01:42:04 -0700 (PDT)
Received: from [192.168.0.217] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id g6-20020a1c4e06000000b00394708a3d7dsm65679wmh.15.2022.05.05.01.42.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 May 2022 01:42:03 -0700 (PDT)
Message-ID: <c374bea4-554d-2e50-4ac6-fb4a2e4fec67@linaro.org>
Date:   Thu, 5 May 2022 10:42:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v2 1/4] MAINTAINERS: Add entries for Apple SoC cpufreq
 driver
Content-Language: en-US
To:     Hector Martin <marcan@marcan.st>,
        Viresh Kumar <viresh.kumar@linaro.org>
Cc:     "Rafael J. Wysocki" <rafael@kernel.org>,
        Sven Peter <sven@svenpeter.dev>,
        Alyssa Rosenzweig <alyssa@rosenzweig.io>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Marc Zyngier <maz@kernel.org>,
        Mark Kettenis <mark.kettenis@xs4all.nl>,
        linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220504075153.185208-1-marcan@marcan.st>
 <20220504075153.185208-2-marcan@marcan.st>
 <20220504101750.wmuicq3dytnxrw5o@vireshk-i7>
 <e0445aa6-0c96-b80d-154e-274be0c1a025@marcan.st>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <e0445aa6-0c96-b80d-154e-274be0c1a025@marcan.st>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/05/2022 16:52, Hector Martin wrote:
> On 04/05/2022 19.17, Viresh Kumar wrote:
>> On 04-05-22, 16:51, Hector Martin wrote:
>>> Splitting this commit, as usual, to facilitate merges via the SoC tree.
>>>
>>> Signed-off-by: Hector Martin <marcan@marcan.st>
>>> ---
>>>  MAINTAINERS | 2 ++
>>>  1 file changed, 2 insertions(+)
>>>
>>> diff --git a/MAINTAINERS b/MAINTAINERS
>>> index edc96cdb85e8..39bfa478fe55 100644
>>> --- a/MAINTAINERS
>>> +++ b/MAINTAINERS
>>> @@ -1835,6 +1835,7 @@ T:	git https://github.com/AsahiLinux/linux.git
>>>  F:	Documentation/devicetree/bindings/arm/apple.yaml
>>>  F:	Documentation/devicetree/bindings/arm/apple/*
>>>  F:	Documentation/devicetree/bindings/clock/apple,nco.yaml
>>> +F:	Documentation/devicetree/bindings/cpufreq/apple,soc-cpufreq.yaml
>>>  F:	Documentation/devicetree/bindings/i2c/apple,i2c.yaml
>>>  F:	Documentation/devicetree/bindings/interrupt-controller/apple,*
>>>  F:	Documentation/devicetree/bindings/mailbox/apple,mailbox.yaml
>>> @@ -1844,6 +1845,7 @@ F:	Documentation/devicetree/bindings/power/apple*
>>>  F:	Documentation/devicetree/bindings/watchdog/apple,wdt.yaml
>>>  F:	arch/arm64/boot/dts/apple/
>>>  F:	drivers/clk/clk-apple-nco.c
>>> +F:	drivers/cpufreq/apple-soc-cpufreq.c
>>>  F:	drivers/i2c/busses/i2c-pasemi-core.c
>>>  F:	drivers/i2c/busses/i2c-pasemi-platform.c
>>>  F:	drivers/irqchip/irq-apple-aic.c
>>
>> This should be the last patch instead, or should at least be added
>> after the files are merged first. If someone checks out at this
>> commit, the files won't be available but still linked here.
> 
> Isn't that backwards? 

No, because we have tools for checking valid paths (in some places), so
when using that tool, the history is not bisectable.

> If someone touches the files, we want them to be
> able to get_maintainer.pl, so the MAINTAINERS entries should come first.
> It doesn't really cause any issues if there are entries that point at
> files that don't exist yet, right?

It hurts any current or future tools checking for valid paths.

> 
> Though this is mostly a moot point because the purpose of splitting this
> out is so we can merge this one patch through the SoC tree, at which
> point the ordering isn't guaranteed (unless the whole series goes
> through SoC). 

Just add each path change to respective commit adding that file. It
should not be a separate commit, at first place.

Separate commits are for adding entire Maintainers entry.

Best regards,
Krzysztof
