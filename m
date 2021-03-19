Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2918D341F87
	for <lists+devicetree@lfdr.de>; Fri, 19 Mar 2021 15:35:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229994AbhCSOfT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Mar 2021 10:35:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56442 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229973AbhCSOfR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 Mar 2021 10:35:17 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB18BC06174A
        for <devicetree@vger.kernel.org>; Fri, 19 Mar 2021 07:35:16 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id w203-20020a1c49d40000b029010c706d0642so8487334wma.0
        for <devicetree@vger.kernel.org>; Fri, 19 Mar 2021 07:35:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=aG3hsMsSF84DehWdMYy5xOrEmBMs4XEnaGkmWmOkDWc=;
        b=J9KMgYMVZseCs92nqFlibr8ezBeRsZFadGIPmmu/06a+u0aGNjKfDUsrc+pjDzxsQE
         mkk1nwhozlvKHGJtiqN9OYBEjM/MhYawGCNV9AZIkQb1W1HPR5pkRUYPwXzyCF/Z8sKi
         YAB4c6ZDaNWDu6y2KAd/ywmWM449zp6gCE6Or+BLnvbW0tkmqaH4rgBH27e8ZB2hT7jL
         eT0Uxb5VDOaOUozeyfySML0u1sh9L2htmSknpJj3WgOhkhyarEHRA9fkTjwDWI903HhL
         Flrv6XHcy8t1Nd8x2EZC2tPAEbNe7L6Vob/H6O55Ussv13uP10jTLSCHYscvnXmvZwAL
         ffTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=aG3hsMsSF84DehWdMYy5xOrEmBMs4XEnaGkmWmOkDWc=;
        b=H6adUhrC/oB4A/WIYW6/49TwSBuKFJPmZKKlrR5x2NgAoY3X37Q0VlTRfHQAuVO9pO
         HWxGyZc7eeSZpeZgs6rabvvAsw43v5n8pNaZAvMPqUewQsiheI5UJW4EEDd450ndH9Cm
         JfHfAn35oIy6RGnGNYkndP2RB1V14//DQRMoLvj+L61Cqllk5jY3BZ/yrqpmItcrPD9Z
         FX93jdtWo+AtPuv6TiukZ+k7dKCG0AOKhuVpgxfwxm+95F1Hqv/P1zS8ggkRS9z8wMnx
         kV7zhcUEm5QJBWmzyzhysE0ap3Z7Ix0d4sJAMSMyJcEVU1uIbrimzzn+kDqRVydfs937
         3Gtw==
X-Gm-Message-State: AOAM5325CuagWoS3UdZBxwYQROzEyDi5P3l6q7Verra23Zfc7yfJAWhO
        Ji3xOVFfS3RtbPqTX5phZueqDA==
X-Google-Smtp-Source: ABdhPJzSX3PFY+cvi6T6/TD2sAivLk7L3F3d4hXr31NTWiAroz3YXBttnpjlUk5WQvBG43jOnRuznQ==
X-Received: by 2002:a1c:b006:: with SMTP id z6mr3877987wme.19.1616164515310;
        Fri, 19 Mar 2021 07:35:15 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:ddd7:1eb:a66:7a85? ([2a01:e34:ed2f:f020:ddd7:1eb:a66:7a85])
        by smtp.googlemail.com with ESMTPSA id l15sm6781389wme.43.2021.03.19.07.35.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Mar 2021 07:35:14 -0700 (PDT)
Subject: Re: [PATCH] dt: rockchip: rk3399: Add dynamic power coefficient for
 GPU
To:     Robin Murphy <robin.murphy@arm.com>, heiko@sntech.de
Cc:     Rob Herring <robh+dt@kernel.org>, Johan Jonker <jbx6244@gmail.com>,
        Helen Koike <helen.koike@collabora.com>,
        Shunqian Zheng <zhengsq@rock-chips.com>,
        Jacob Chen <jacob2.chen@rock-chips.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Markus Reichl <m.reichl@fivetechno.de>,
        Boris Brezillon <boris.brezillon@collabora.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:ARM/Rockchip SoC support" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC support" 
        <linux-rockchip@lists.infradead.org>,
        open list <linux-kernel@vger.kernel.org>
References: <20210319110511.24787-1-daniel.lezcano@linaro.org>
 <5db868e4-5b86-7b32-51e0-665a2e1fc1ac@arm.com>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <9322db05-2cad-453c-ec1b-1fdb3df142fa@linaro.org>
Date:   Fri, 19 Mar 2021 15:35:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <5db868e4-5b86-7b32-51e0-665a2e1fc1ac@arm.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


Hi Robin,

On 19/03/2021 13:17, Robin Murphy wrote:
> On 2021-03-19 11:05, Daniel Lezcano wrote:
>> The DTPM framework is looking for upstream SoC candidates to share the
>> power numbers.
>>
>> We can see around different numbers but the one which seems to be
>> consistent with the initial post for the values on the CPUs can be
>> found in the patch https://lore.kernel.org/patchwork/patch/810159/
> 
> The kernel hacker in me would be more inclined to trust the BSP that the
> vendor actively supports than a 5-year-old patch that was never pursued
> upstream. Apparently that was last updated more recently:
> 
> https://github.com/rockchip-linux/kernel/commit/98d4505e1bd62ff028bd79fbd8284d64b6f468f8

Yes, I've seen this value also.

> The ex-mathematician in me can't even comment either way without
> evidence that whatever model expects to consume this value is even
> comparable to whatever "arm,mali-simple-power-model" is. >
> The way the
> latter apparently needs an explicit "static" coefficient as well as a
> "dynamic" one, and the value here being nearly 3 times that of a
> similarly-named one in active use downstream (ChromeOS appears to still
> be using the values from before the above commit), certainly incline me
> to think they may not be...

Sorry, I'm missing the point :/

We dropped in the kernel any static power computation because as there
was no value, the resulting code was considered dead. So we rely on the
dynamic power only.

>> I don't know the precision of this value but it is better than
>> nothing.
> 
> But is it? If it leads to some throttling mechanism kicking in and
> crippling GPU performance because it's massively overestimating power
> consumption, that would be objectively worse for most users, no?

No because there is no sustainable power specified for the thermal zones
related to the GPU.



-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog
