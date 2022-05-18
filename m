Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ED33752B47E
	for <lists+devicetree@lfdr.de>; Wed, 18 May 2022 10:19:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232789AbiERIR1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 May 2022 04:17:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40238 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232799AbiERIRZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 May 2022 04:17:25 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ECD0340A0D
        for <devicetree@vger.kernel.org>; Wed, 18 May 2022 01:17:23 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id u7so888359ljd.11
        for <devicetree@vger.kernel.org>; Wed, 18 May 2022 01:17:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=PVVYuSWeKKOCTgybQ+dTOSOPcAGf8Bzx5TVqJC5mrvY=;
        b=cNNfBzgqzUPTHP95q3mgAbPU+sjDD4S1/buHo0iH/MA1BIiCnJm8YoUgftnSheS9Mg
         Tbklftv/qYgl3NE5qsKVy078GlxqQRNcVS/VRDtH0KlpYGKEzbo+K3hxDi7BzZ4U5qWJ
         5vCpOlgiWGO7yfIDbDPr85M2phyWJ6k3ZTIXaO1a4hUvjjfBdFQRYB0X6XI1XKKNyNVM
         psCGobcrTLJCHQq3+0rIevKIzh9FF3cKxLxtMY69nk6iA7V4hHL91Y5RC63WcJJdu47v
         tFhLZEU5B0Ow+/DTSCSyfifdGi2iWVJ+Y1Wv0CswiD2jotVy++M+pnIsgUxPWzn9T9cO
         qWzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=PVVYuSWeKKOCTgybQ+dTOSOPcAGf8Bzx5TVqJC5mrvY=;
        b=gykByiu888QZIxGkrVImvX55gnaEKPq/u0/W54AM6VoxWCjvCIRHTeyuJIM7s8skKT
         mY5yGG2NZpp5N50Cvlrnz5L5ruyntBaawYVPrB1jrxx4Y2I/oTLyAXEEhMtYJ3U40Weo
         z7C6EIpI9mrSodq4i59cgvatICzxP0QEyICzDL9Ctht9J7BhvGjHPkq6IOwBwn0G6jV8
         m24MPMz9jvadKs/jossLSJ127+TLQi4THw/1j72kB15dDk5vCpRtp4ixZKyQzYPL4l0k
         wu+sT/jh+ipkt9ugsq1ektftW1z2UsGYEvhX5eXwcnfYEZrRHvFkOFA4u+VE5QDLNplf
         XfHA==
X-Gm-Message-State: AOAM532WHkj5N9Mtc6SOqT8kJu4/ztyi8jfGEdF5h+WKwh+CLAg3xQH7
        zgkNUlwBA7oVKmbvJLEWqYZRhvlUmsIAY4F9
X-Google-Smtp-Source: ABdhPJzMuG9p7OEw65AYXi1+Azt8GhLsLWUXIceXlYxErATRMFj5eL+EsfIiXREOYoaHUQVLwYx5PQ==
X-Received: by 2002:a2e:8501:0:b0:249:17a0:ebf8 with SMTP id j1-20020a2e8501000000b0024917a0ebf8mr16676914lji.125.1652861842342;
        Wed, 18 May 2022 01:17:22 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id m1-20020ac24241000000b0047255d2118asm133198lfl.185.2022.05.18.01.17.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 May 2022 01:17:21 -0700 (PDT)
Message-ID: <2c9b80ef-74c6-bd60-cfc9-d69349cdf6b1@linaro.org>
Date:   Wed, 18 May 2022 10:17:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH 2/2] dt-bindings: leds: Add aw21024 binding
Content-Language: en-US
To:     Kyle Swenson <kyle.swenson@est.tech>, pavel@ucw.cz,
        robh+dt@kernel.org, krzk+dt@kernel.org
Cc:     linux-leds@vger.kernel.org, devicetree@vger.kernel.org
References: <20220513190409.3682501-1-kyle.swenson@est.tech>
 <20220513190409.3682501-2-kyle.swenson@est.tech>
 <cb83fbab-7aa3-d1a7-ab80-d2b94a516f6d@linaro.org> <YoPqDLMe+WYWKBxi@p620>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <YoPqDLMe+WYWKBxi@p620>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/05/2022 20:31, Kyle Swenson wrote:
>>> +
>>> +            multi-led@1 {
>>> +                #address-cells = <1>;
>>> +                #size-cells = <2>;
>>> +                reg = <0x0 0x1 0x2>;
>>
>> This is confusing. Does not match unit address and address/size cells.
>> Perhaps you wanted three separate regs?
> The wrong address and size cells and not matching the unit address is a
> mistake on my part, and the next version will actually pass make
> dt_binding_check.
> 
> That said, it's not clear to me how best to handle a combination of
> multi-leds and individual LEDs on a particular board. For example, a
> particular board with this driver might have the first six outputs
> connected to two RGB LEDs, and then the remainder of the outputs
> connected to individual LEDs.
> 
> My (poor) attempt at handling this resulted in this approach where I
> (ab)used the 'reg' property to be able to address each individual LED of
> a multi-led.  I'm sure this problem has been solved before, but I'm
> struggling finding a driver in the tree that has solved it.
> 
> Any advice or pointers will be welcome, and in the mean time I'll plan
> on fixing the (now obvious) issues with the binding.  At the very least,
> cleaning up the binding will make the problem I'm trying to solve more
> clear.

The immediate solution to the DTS reg issue is to use the same unit
address, so:

multi-led@0 {
	reg = <0x0>, <0x1>, <0x2>;
}

However your case is partially (or entirely) covered by multicolor LEDs.
You should add allOf:$ref with reference to leds-class-multicolor.yaml.
I see exactly your pattern being used there - just the fixed one, I
think. I'll send a patch for it and put you on Cc.

Best regards,
Krzysztof
