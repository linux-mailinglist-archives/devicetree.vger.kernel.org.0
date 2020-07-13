Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2710521DE22
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2020 19:03:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729751AbgGMRDn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Jul 2020 13:03:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729849AbgGMRDn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Jul 2020 13:03:43 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8AB8C061794
        for <devicetree@vger.kernel.org>; Mon, 13 Jul 2020 10:03:42 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id o11so17384006wrv.9
        for <devicetree@vger.kernel.org>; Mon, 13 Jul 2020 10:03:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=CPSWw64mXOwsZCsijrwvsAEz1b4GFJuj5M6D0TIa2Y4=;
        b=sqYyZCjlzGtKUdjQ8mhJhTfzzemy2MkNKIWqAUalFwRGpbEYxDschPntoZzktQOiAu
         K+h53t1qzpSeSlG7jIs+5itZw7L3aoHSXonlpbOcTIk4FcPQgaLjOU+sz74Dr8PCz+So
         gpMoAdFgVaZUl4nWgwg5rrx+GaRcaIsUVl+KHwGU1xC4+e0FvK4AoW5bfyO6KnJ/MlTg
         nWomACfGj8IQL7NQCAS8To/F62fE9GAqBkiw32JXvgfE9zvZ5Vp1ZOzPzWLrKZVCWrfq
         OoFVAiW6pdBdKGXZJK6UQBrqlM7d0egxtWC+Au3kS/B2IUd7UQ0FhsnW7x6JGGHiEwGC
         hGgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=CPSWw64mXOwsZCsijrwvsAEz1b4GFJuj5M6D0TIa2Y4=;
        b=tQChovW2GfoPtO5p0zP75KBaM0tB46CybbxZLYVLdlhr6/kS9m8dQ7uCv7tq0I41L8
         6GoA7BoitoShmIdxc8ySZbKfgE7RfG+S806y5ZBblWoz0F1v8RsAPWhK+ZuKo+g7gzWG
         F4PxgGRYrx2RwNWVvh0WaL6Oq+19bcPO9g/XrjO1njHosmUaAVhe+zmCA+0etMvGw7VL
         Ub0JfoWr/c+qC1DubbTNJEW69ULE9ZFEsj4LLND2mHggyYjSqT2lyk/Fs6gG3YTloAAR
         2y+jMGAFejg2h6+SHhuVMj+ZtWrZMMGGGOdjoS5iu8sAirGizmNk58CjX2iHJMm5Mbuj
         dbJg==
X-Gm-Message-State: AOAM533aWzfBTeL5jf51UFXqeA8H64ew9i9j/mWttd3w6fD77QGISXxL
        yGVfJL/QldpK1sAVpO/sJ2FR3Q==
X-Google-Smtp-Source: ABdhPJxwQBfsNMkNI4xGLvZYHPzk1Tka3WLrm/vB852YmxjUd1eWVokbCzi7pGH2UsnflDHI2l+6iw==
X-Received: by 2002:adf:cf0c:: with SMTP id o12mr307750wrj.265.1594659821364;
        Mon, 13 Jul 2020 10:03:41 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:501b:b12d:3463:93f8? ([2a01:e34:ed2f:f020:501b:b12d:3463:93f8])
        by smtp.googlemail.com with ESMTPSA id a22sm304308wmj.9.2020.07.13.10.03.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jul 2020 10:03:40 -0700 (PDT)
Subject: Re: [RFC PATCH 1/4] dt-bindings:thermal:Add cold trip point type
To:     Thara Gopinath <thara.gopinath@linaro.org>, rui.zhang@intel.com,
        robh+dt@kernel.org
Cc:     linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20200710135154.181454-1-thara.gopinath@linaro.org>
 <20200710135154.181454-2-thara.gopinath@linaro.org>
 <08503e0c-c8db-6d03-9692-5339dadf6c4f@linaro.org>
 <2b845792-41f0-7fb1-122e-a77aa70c9a3c@linaro.org>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <b1ee5a73-863b-c6d2-5d09-1ac231f40fe2@linaro.org>
Date:   Mon, 13 Jul 2020 19:03:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <2b845792-41f0-7fb1-122e-a77aa70c9a3c@linaro.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/07/2020 19:01, Thara Gopinath wrote:
> 
> 
> On 7/13/20 11:05 AM, Daniel Lezcano wrote:
>> On 10/07/2020 15:51, Thara Gopinath wrote:
>>> Extend thermal trip point type property to include "cold" trip type
>>> indicating point in the temperature domain below which a warming action
>>> must be intiated.
>>>
>>> Signed-off-by: Thara Gopinath <thara.gopinath@linaro.org>
>>> ---
>>>   Documentation/devicetree/bindings/thermal/thermal.txt | 1 +
>>>   1 file changed, 1 insertion(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/thermal/thermal.txt
>>> b/Documentation/devicetree/bindings/thermal/thermal.txt
>>> index f78bec19ca35..1689d9ba1471 100644
>>> --- a/Documentation/devicetree/bindings/thermal/thermal.txt
>>> +++ b/Documentation/devicetree/bindings/thermal/thermal.txt
>>> @@ -87,6 +87,7 @@ Required properties:
>>>       "active":    A trip point to enable active cooling
>>>       "passive":    A trip point to enable passive cooling
>>>       "hot":        A trip point to notify emergency
>>> +    "cold":        A trip point to enable warming
>>>       "critical":    Hardware not reliable.
>>>     Type: string
>>
>>
>> thermal.txt should have been removed. Perhaps, a patch is missing. The
>> thermal.txt has been converted into 3 yaml schema.
>>
>> The change should be in thermal-zones.yaml.
> 
> Hi Daniel..
> 
> Thanks for the review. My bad.. I will fix this in the next version.
> I can send a patch removing thermal.txt as well

Yes, sure.

Thanks


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog
