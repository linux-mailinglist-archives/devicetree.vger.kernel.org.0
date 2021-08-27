Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 251003F9957
	for <lists+devicetree@lfdr.de>; Fri, 27 Aug 2021 15:06:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245113AbhH0NG5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Aug 2021 09:06:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57914 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231271AbhH0NG4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Aug 2021 09:06:56 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BE5EC061757
        for <devicetree@vger.kernel.org>; Fri, 27 Aug 2021 06:06:07 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id b4so14160309lfo.13
        for <devicetree@vger.kernel.org>; Fri, 27 Aug 2021 06:06:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=3tMnP0mNaBQdpdIRmVDF6sBZsrsvqJbngKw29spJzuE=;
        b=BMcKXNVwOo4A+nzmWzqT6hyQbkSuYzZctFkI6fRiKu+7QeUEtp3mpxq//lDi5W8Gmv
         k9zvi6QlayUrRChdH0xeKwg5b5+LJGsotpey+Cv6jZyLUSFLurbJecWXo+aau0WAGekl
         j+MTxSN07D9u0OouIlBQd0RcVPCVCWXSz+nTGUQXckakEWq8y2bZAUMNSEOYu+KxWZ4G
         Uulx9l+y7A9Quq3g1IA6ddBnieTFTq5v0aSCXAclZukqwEsluOcJzrkvjngeCAGZU2cf
         8bd5I122nw3fzB209Diz/XI3Wf1eVSHakThzyOwwJQkoss1xO/k2i+CZMROPyk8hk3Go
         HPBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=3tMnP0mNaBQdpdIRmVDF6sBZsrsvqJbngKw29spJzuE=;
        b=M4sItcPel23fzykm7TGxEWgof7U+0K4gQmlU+K1Y4pQhurCX0D/ph0HI8tK7UvW1Wx
         4Es3zp77Qlz7aBeaodF2xHkJ2x+7i5U5fKFJwl+DPbhle59XxdM9aiRMAAMtHBH/g65N
         iMsgBm+ZJmrzGxzrF5vgftSN/h+FUyO5RXCmwFSBqeAsH9Dj2/Tm+gy+9iXmJ/A2i6bL
         oTVEan0W7z9hb5iD56J8c7GJ9SJbThd84CKLsdFI8SCi6B29h9iGh63vYWB8hniJVVcv
         naEHdrw3m8PnQg2u3lDQzGYHRFZrjJHQDRbwpj8C5QvlCf1ndrsNJ8zXugPK4lyqgdoC
         M8dA==
X-Gm-Message-State: AOAM5339IyhhfSr1YgFffFRDc4KW+JwnjcU0SG14AR/VXzOfXJxJXU6I
        LWRNvVhGQz5b26MqyLuWMzw=
X-Google-Smtp-Source: ABdhPJx8F36Z+uhGUEPQDYWhnR/OQiJPAacK5hCGi+jpK9hJBZqj1cme6tSGeMg4ipbwPsU+VTZCVQ==
X-Received: by 2002:a05:6512:1394:: with SMTP id p20mr6441639lfa.189.1630069565562;
        Fri, 27 Aug 2021 06:06:05 -0700 (PDT)
Received: from [192.168.1.7] ([212.22.223.21])
        by smtp.gmail.com with ESMTPSA id l13sm591052lfj.199.2021.08.27.06.06.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Aug 2021 06:06:04 -0700 (PDT)
Subject: Re: Clarification regarding updating "Xen hypervisor device tree
 bindings on Arm"
To:     robh+dt@kernel.org, devicetree@vger.kernel.org
Cc:     Julien Grall <julien@xen.org>,
        Stefano Stabellini <sstabellini@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
References: <CAPD2p-kPXFgaLtwy95ZswYUK3xCDaxC4L85vQw=EvTWgehJ7-A@mail.gmail.com>
 <alpine.DEB.2.21.2108061306140.18743@sstabellini-ThinkPad-T480s>
 <f45250de-fdca-18c4-044b-276d0ff66b05@xen.org>
 <alpine.DEB.2.21.2108061519500.18743@sstabellini-ThinkPad-T480s>
 <fa3ad927-14c8-59ac-6cdc-673c65850ac6@xen.org>
From:   Oleksandr <olekstysh@gmail.com>
Message-ID: <8b311e33-89e5-87f3-63d2-54bbc2f8f8e7@gmail.com>
Date:   Fri, 27 Aug 2021 16:06:04 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <fa3ad927-14c8-59ac-6cdc-673c65850ac6@xen.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


Hello, all.

Gentle reminder.


On 07.08.21 01:57, Julien Grall wrote:
> Hi Stefano,
>
> On 06/08/2021 23:26, Stefano Stabellini wrote:
>> On Fri, 6 Aug 2021, Julien Grall wrote:
>>> Hi Stefano,
>>>
>>> On 06/08/2021 21:15, Stefano Stabellini wrote:
>>>> On Fri, 6 Aug 2021, Oleksandr Tyshchenko wrote:
>>>>> Hello, all.
>>>>>
>>>>> I would like to clarify some bits regarding a possible update for 
>>>>> "Xen
>>>>> device tree bindings for the guest" [1].
>>>>>
>>>>> A bit of context:
>>>>> We are considering extending "reg" property under the hypervisor 
>>>>> node and
>>>>> we would like to avoid breaking backward compatibility.
>>>>> So far, the "reg" was used to carry a single region for the grant 
>>>>> table
>>>>> mapping only and it's size is quite small for the new improvement
>>>>> we are currently working on.
>>>>>
>>>>> What we want to do is to extend the current region [reg: 0] and 
>>>>> add an
>>>>> extra regions [reg: 1-N] to be used as a safe address space for any
>>>>> Xen specific mappings. But, we need to be careful about running "new"
>>>>> guests (with the improvement being built-in already) on "old" Xen
>>>>> which is not aware of the extended regions, so we need the binding 
>>>>> to be
>>>>> extended in a backward compatible way. In order to detect whether
>>>>> we are running on top of the "new" Xen (and it provides us enough 
>>>>> space to
>>>>> be used for improvement), we definitely need some sign to
>>>>> indicate that.
>>>>>
>>>>> Could you please clarify, how do you expect the binding to be 
>>>>> changed in
>>>>> the backward compatible way?
>>>>> - by adding an extra compatible (as it is a change of the binding
>>>>> technically)
>>>>> - by just adding new property (xen,***) to indicate that "reg" 
>>>>> contains
>>>>> enough space
>>>>> - other option
>>>>    The current description is:
>>>>
>>>> - reg: specifies the base physical address and size of a region in
>>>>     memory where the grant table should be mapped to, using an
>>>>     HYPERVISOR_memory_op hypercall [...]
>>>>
>>>>
>>>> Although it says "a region" I think that adding multiple ranges 
>>>> would be
>>>> fine and shouldn't break backward compatibility.
>>>>
>>>> In addition, the purpose of the region was described as "where the 
>>>> grant
>>>> table should be mapped". In other words, it is a safe address range
>>>> where the OS can map Xen special pages.
>>>>
>>>> Your proposal is to extend the region to be bigger to allow the OS to
>>>> map more Xen special pages. I think it is a natural extension to the
>>>> binding, which should be backward compatible.
>>>
>>> I agree that extending the reg (or even adding a second region) 
>>> should be fine
>>> for older OS.
>>>
>>>>
>>>> Rob, I am not sure what is commonly done in these cases. Maybe we just
>>>> need an update to the description of the binding? I am also fine with
>>>> adding a new compatible string if needed.
>>>
>>> So the trouble is how a newer Linux version knows that the region is 
>>> big
>>> enough to deal with all the foreign/grant mapping?
>>>
>>> If you run on older Xen, then the region will only be 16MB. This 
>>> means the
>>> Linux will have to fallback on stealing RAM as it is today.
>>>
>>> IOW, XSA-300 will still be a thing. On newer Xen (or toolstack), we 
>>> ideally
>>> want the OS to not fallback on stealing RAM (and close XSA-300). 
>>> This is where
>>> we need a way to advertise it.
>>>
>>> The question here is whether we want to use a property or a 
>>> compatible for
>>> this.
>>>
>>> I am leaning towards the latter because this is an extension of the 
>>> bindings.
>>> However, I wasn't entirely whether this was a normal way to do it.


May I please ask for the clarification how to properly advertise that we 
have extended region? By new compatible or property?


>>
>> Although I think it would be OK to have a new compatible string, am I
>> not sure we need it.
>
> Let's assume we don't add a new compatible string, property... How do 
> would you prevent the following two issues?
>   1) XSA-300: A frontend can DoS the backend
>   2) Existing Xen expects the grant-table to be mapped at the exact 
> same place.
>
> 2# could potentially be solved by reserved the first range for the 
> grant table. For 1#, I think we need a compatible string (or property).
>
> What else do you have in mind?
>
> FAOD, relying on the region to always be big enough would not be an 
> acceptable solution to me :). A frontend may find a new way for a 
> frontend to exhaust the region (*hint* virtio *hint*).
>
>>
>> In any case, we'll have to be able to recognize and handle the case
>> where we run out of the space in the provided region. If the region is
>> too small (16MB) then it just means we'll run out of space immediately
>> after mapping the grant table. Then, we'll have to use other techniques.
>
> Right, one of the other techniques is likely to steal RAM page. Which 
> means that a frontend could potentially DoS the backend. This will be 
> a lot easier to trigger with virtio as the DM tends to cache the 
> mappings.
>
> So I think we ought to prevent stealing the RAM if a new kernel is 
> running on a new Xen.
>
>>
>> Or perhaps you think that if we had a new compatible string to say "Xen
>> binding with a larger region" then we could get away with a simpler
>> implementation in Linux, one that doesn't handle the case where we run
>> out of space in the region? If that was the case, then I agree that it
>> would be worthwhile adding a new compatible.
>
> We will need to keep the code to steal RAM for the forseeable future 
> because a newer Linux may run on an older Xen setup. So simplicity is 
> not the reason here.
>
> I have provided the reason above.


-- 
Regards,

Oleksandr Tyshchenko

