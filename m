Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 94AD83AE629
	for <lists+devicetree@lfdr.de>; Mon, 21 Jun 2021 11:39:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229946AbhFUJla (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Jun 2021 05:41:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48922 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229621AbhFUJl1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Jun 2021 05:41:27 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACF01C061574
        for <devicetree@vger.kernel.org>; Mon, 21 Jun 2021 02:39:12 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id t11-20020a1cc30b0000b02901cec841b6a0so8746889wmf.0
        for <devicetree@vger.kernel.org>; Mon, 21 Jun 2021 02:39:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Xz2iQ3wXKH40FVXn41sFCrnzxq40ArhCxvZyGWhqw/8=;
        b=QXyltf0DQ8Bzl8cV60kIalM6mRGNB9tsfDdBGILXUZnkgiZlDjjZPO2cLFk5bTb3pb
         rrvpdYPSypjwxNIhMSSeg9nNhDKXIE/aIefAx4dGpmEKM0gcO0sDyqhx6hoUk560ebh2
         vqoKsWNzbjzLtBrDgf0wRD0orr8hYTTsoyR7Y8zyGFkZRvY5KIcaiJ5Htb2Zir/rLfkB
         0hA74Xl7dGKhHYQkieIpi1l8Ufv6cgwKbp75eMroDOLOk5bMduYSP6kEH3mS4ADpXrv3
         zzGb4tgw4w6RoNfO0pQlOJ+KidC8uqpK3XQrrCATWnzQbbH8yAqmYQlwJ4BEPaACB5yO
         FyIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Xz2iQ3wXKH40FVXn41sFCrnzxq40ArhCxvZyGWhqw/8=;
        b=AbRy25FZ0w0GKdPArvWIgSY4dAaE1a+WR0FMSU40ClZpboL2xo6gREhKw0rEWpqLTJ
         Jx34tlgjpWOX5AzFDkvOYbCUjoeLebWX9wGDYiUbrI9a1khSYTV/hQMN+tuaLLOakGc8
         uSuP/XHhTL5Mdlz0rXopnGuAWdm9VmSP4eT1gEgEWhrcOtf/4MC1gGayNoIyOuOsomMv
         0zTUp59sQt0lAvJShnUFAVKz+Zp2ZhJvBCyKc4lo1UjEhCPPa39xWoy+NP6yVh4SGZMl
         zdntnneQM6MogeW8x/I75eCP6EPl+9qWwLwNw7+BQH67D7AMFJ5JE0UIWR3TReE0vRWo
         2hMw==
X-Gm-Message-State: AOAM532MqaBbM0DdJhXxO6taiAii+qCEfAAvxdGRHoxLCMrnGgPd/Wmn
        w090IMPWZwAbc4KxMALYjga1ww==
X-Google-Smtp-Source: ABdhPJzpYVLUDYtchrLTE7FOA4YU2weoZRoxr2Znxh2DcgVpOmdZyY1p7AhQAr167VAYA0wT887bHg==
X-Received: by 2002:a1c:f60f:: with SMTP id w15mr26239091wmc.5.1624268351200;
        Mon, 21 Jun 2021 02:39:11 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:5ebd:8bd9:d549:4211? ([2a01:e34:ed2f:f020:5ebd:8bd9:d549:4211])
        by smtp.googlemail.com with ESMTPSA id y189sm3381782wmg.6.2021.06.21.02.39.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Jun 2021 02:39:10 -0700 (PDT)
Subject: Re: [PATCH v2 3/3] dt-bindings: timer: convert rockchip,rk-timer.txt
 to YAML
To:     Ezequiel Garcia <ezequiel@collabora.com>,
        =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Kever Yang <kever.yang@rock-chips.com>,
        Rob Herring <robh+dt@kernel.org>, kernel@collabora.com
References: <20210506111136.3941-1-ezequiel@collabora.com>
 <20210506111136.3941-4-ezequiel@collabora.com> <15819722.JCcGWNJJiE@diego>
 <398f8cd1-59cb-369f-0356-85cc1a64bb28@linaro.org>
 <308309f81a684928bbed52b6d0ca0b367dcb8bbe.camel@collabora.com>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <9202e696-36f9-eeb2-8f56-8d37babdfe20@linaro.org>
Date:   Mon, 21 Jun 2021 11:39:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <308309f81a684928bbed52b6d0ca0b367dcb8bbe.camel@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/06/2021 16:25, Ezequiel Garcia wrote:
> Hi Daniel,
> 
> On Fri, 2021-05-28 at 17:57 +0200, Daniel Lezcano wrote:
>> On 28/05/2021 17:56, Heiko Stübner wrote:
>>> Hi Daniel,
>>>
>>> Am Donnerstag, 6. Mai 2021, 13:11:36 CEST schrieb Ezequiel Garcia:
>>>> Convert Rockchip Timer dt-bindings to YAML.
>>>>
>>>> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
>>>
>>> can you apply this patch to the timer-tree?
>>
>> Yes
>>
>>
> 
> Can't find this one applied in -next, maybe it fell thru somewhere :) ?

Right, I just picked it. Thanks for the heads-up



-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog
