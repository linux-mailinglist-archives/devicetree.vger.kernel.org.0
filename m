Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 535813FCF4A
	for <lists+devicetree@lfdr.de>; Tue, 31 Aug 2021 23:50:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235177AbhHaVvM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 Aug 2021 17:51:12 -0400
Received: from mail.xenproject.org ([104.130.215.37]:51562 "EHLO
        mail.xenproject.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232518AbhHaVvL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 Aug 2021 17:51:11 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=xen.org;
        s=20200302mail; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
        MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
        bh=KDikq3/Y9FNSXKAkmxM79QxL9QS+WYZns9xfFRcobEM=; b=DtlZsdsN4f572nnvR4neLssr4Y
        Qt1LxqATVpNe5RrRjl+TBfqnbKu446NZLawYOfhzHQwEfS1W6YNkS5ecGpUNhZxV5/Et0INC55l7M
        0NI0NJ84DjSoQLRbuSEEHWP6b0hUg4HxAt8KrDAQGwzqsNdKu5Xn9ztevljOZ4ceTtqM=;
Received: from xenbits.xenproject.org ([104.239.192.120])
        by mail.xenproject.org with esmtp (Exim 4.92)
        (envelope-from <julien@xen.org>)
        id 1mLBe3-0007Vw-ID; Tue, 31 Aug 2021 21:50:15 +0000
Received: from [54.239.6.185] (helo=a483e7b01a66.ant.amazon.com)
        by xenbits.xenproject.org with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.92)
        (envelope-from <julien@xen.org>)
        id 1mLBe3-0004tM-B8; Tue, 31 Aug 2021 21:50:15 +0000
Subject: Re: Clarification regarding updating "Xen hypervisor device tree
 bindings on Arm"
To:     Stefano Stabellini <sstabellini@kernel.org>
Cc:     Oleksandr <olekstysh@gmail.com>, robh+dt@kernel.org,
        devicetree@vger.kernel.org, Mark Rutland <mark.rutland@arm.com>
References: <CAPD2p-kPXFgaLtwy95ZswYUK3xCDaxC4L85vQw=EvTWgehJ7-A@mail.gmail.com>
 <alpine.DEB.2.21.2108061306140.18743@sstabellini-ThinkPad-T480s>
 <f45250de-fdca-18c4-044b-276d0ff66b05@xen.org>
 <alpine.DEB.2.21.2108061519500.18743@sstabellini-ThinkPad-T480s>
 <fa3ad927-14c8-59ac-6cdc-673c65850ac6@xen.org>
 <8b311e33-89e5-87f3-63d2-54bbc2f8f8e7@gmail.com>
 <alpine.DEB.2.21.2108271620160.17851@sstabellini-ThinkPad-T480s>
 <d893021a-c20d-d4fd-e9c7-b1e8a9427b9e@xen.org>
 <alpine.DEB.2.21.2108311406460.18862@sstabellini-ThinkPad-T480s>
From:   Julien Grall <julien@xen.org>
Message-ID: <0d0b6dc4-7290-f4de-2539-92cbda87cd8e@xen.org>
Date:   Tue, 31 Aug 2021 22:50:13 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.2108311406460.18862@sstabellini-ThinkPad-T480s>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Stefano,

On 31/08/2021 22:19, Stefano Stabellini wrote:
> On Tue, 31 Aug 2021, Julien Grall wrote:
>> On 28/08/2021 01:05, Stefano Stabellini wrote:
>>> On Fri, 27 Aug 2021, Oleksandr wrote:
>>>> On 07.08.21 01:57, Julien Grall wrote:
>>>>> Hi Stefano,
>>>>>
>>>>> On 06/08/2021 23:26, Stefano Stabellini wrote:
>>>>>> On Fri, 6 Aug 2021, Julien Grall wrote:
>>>>>>> Hi Stefano,
>>>>>>>
>>>>>>> On 06/08/2021 21:15, Stefano Stabellini wrote:
>>>>>>>> On Fri, 6 Aug 2021, Oleksandr Tyshchenko wrote:
>>>>>>>>> Hello, all.
>>>>>>>>>
>>>>>>>>> I would like to clarify some bits regarding a possible update
>>>>>>>>> for
>>>>>>>>> "Xen
>>>>>>>>> device tree bindings for the guest" [1].
>>>>>>>>>
>>>>>>>>> A bit of context:
>>>>>>>>> We are considering extending "reg" property under the hypervisor
>>>>>>>>> node and
>>>>>>>>> we would like to avoid breaking backward compatibility.
>>>>>>>>> So far, the "reg" was used to carry a single region for the
>>>>>>>>> grant
>>>>>>>>> table
>>>>>>>>> mapping only and it's size is quite small for the new
>>>>>>>>> improvement
>>>>>>>>> we are currently working on.
>>>>>>>>>
>>>>>>>>> What we want to do is to extend the current region [reg: 0] and
>>>>>>>>> add
>>>>>>>>> an
>>>>>>>>> extra regions [reg: 1-N] to be used as a safe address space for
>>>>>>>>> any
>>>>>>>>> Xen specific mappings. But, we need to be careful about running
>>>>>>>>> "new"
>>>>>>>>> guests (with the improvement being built-in already) on "old"
>>>>>>>>> Xen
>>>>>>>>> which is not aware of the extended regions, so we need the
>>>>>>>>> binding
>>>>>>>>> to be
>>>>>>>>> extended in a backward compatible way. In order to detect
>>>>>>>>> whether
>>>>>>>>> we are running on top of the "new" Xen (and it provides us
>>>>>>>>> enough
>>>>>>>>> space to
>>>>>>>>> be used for improvement), we definitely need some sign to
>>>>>>>>> indicate that.
>>>>>>>>>
>>>>>>>>> Could you please clarify, how do you expect the binding to be
>>>>>>>>> changed in
>>>>>>>>> the backward compatible way?
>>>>>>>>> - by adding an extra compatible (as it is a change of the
>>>>>>>>> binding
>>>>>>>>> technically)
>>>>>>>>> - by just adding new property (xen,***) to indicate that "reg"
>>>>>>>>> contains
>>>>>>>>> enough space
>>>>>>>>> - other option
>>>>>>>>      The current description is:
>>>>>>>>
>>>>>>>> - reg: specifies the base physical address and size of a region in
>>>>>>>>       memory where the grant table should be mapped to, using an
>>>>>>>>       HYPERVISOR_memory_op hypercall [...]
>>>>>>>>
>>>>>>>>
>>>>>>>> Although it says "a region" I think that adding multiple ranges
>>>>>>>> would
>>>>>>>> be
>>>>>>>> fine and shouldn't break backward compatibility.
>>>>>>>>
>>>>>>>> In addition, the purpose of the region was described as "where the
>>>>>>>> grant
>>>>>>>> table should be mapped". In other words, it is a safe address
>>>>>>>> range
>>>>>>>> where the OS can map Xen special pages.
>>>>>>>>
>>>>>>>> Your proposal is to extend the region to be bigger to allow the OS
>>>>>>>> to
>>>>>>>> map more Xen special pages. I think it is a natural extension to
>>>>>>>> the
>>>>>>>> binding, which should be backward compatible.
>>>>>>>
>>>>>>> I agree that extending the reg (or even adding a second region)
>>>>>>> should
>>>>>>> be fine
>>>>>>> for older OS.
>>>>>>>
>>>>>>>>
>>>>>>>> Rob, I am not sure what is commonly done in these cases. Maybe we
>>>>>>>> just
>>>>>>>> need an update to the description of the binding? I am also fine
>>>>>>>> with
>>>>>>>> adding a new compatible string if needed.
>>>>>>>
>>>>>>> So the trouble is how a newer Linux version knows that the region is
>>>>>>> big
>>>>>>> enough to deal with all the foreign/grant mapping?
>>>>>>>
>>>>>>> If you run on older Xen, then the region will only be 16MB. This
>>>>>>> means
>>>>>>> the
>>>>>>> Linux will have to fallback on stealing RAM as it is today.
>>>>>>>
>>>>>>> IOW, XSA-300 will still be a thing. On newer Xen (or toolstack), we
>>>>>>> ideally
>>>>>>> want the OS to not fallback on stealing RAM (and close XSA-300).
>>>>>>> This is
>>>>>>> where
>>>>>>> we need a way to advertise it.
>>>>>>>
>>>>>>> The question here is whether we want to use a property or a
>>>>>>> compatible
>>>>>>> for
>>>>>>> this.
>>>>>>>
>>>>>>> I am leaning towards the latter because this is an extension of the
>>>>>>> bindings.
>>>>>>> However, I wasn't entirely whether this was a normal way to do it.
>>>>
>>>>
>>>> May I please ask for the clarification how to properly advertise that we
>>>> have
>>>> extended region? By new compatible or property?
>>>
>>> The current compatible string is defined as:
>>>
>>> - compatible:
>>> 	compatible = "xen,xen-<version>", "xen,xen";
>>>     where <version> is the version of the Xen ABI of the platform.
>>>
>>>
>>> On the Xen side it is implemented as:
>>>
>>> "xen,xen-"__stringify(XEN_VERSION)"."__stringify(XEN_SUBVERSION)"\0"
>>>
>>>
>>> So in a way we already have the version in the compatible string but it
>>> is just the Xen version, not the version of the Device Tree binding.
>>>
>>>
>>> Looking at the way the compatible string is parsed in Linux, I think we
>>> cannot easily change/add a different string format because it would
>>> cause older Linux to stop initializing the Xen subsystem.
>>
>> AFAICT, Linux doesn't care about extra compatible after "xen,xen". So in
>> theory we could write:
>>
>> "xen,xen-<version>", "xen,xen", "xen,xen-v2".
> 
> Keep in mind that the generic compatible string ("xen,xen") is typically
> last.

Ok. Even if it is written "xen,xen-<version>", "xen,xen-v2", "xen,xen". 
I still don't see the problem (see more below).

  Also we shouldn't rely on their ordering. Considering the definition
> of hyper_node:
> 
> 
> static __initdata struct {
> 	const char *compat;
> 	const char *prefix;
> 	const char *version;
> 	bool found;
> } hyper_node = {"xen,xen", "xen,xen-", NULL, false};
> 
> 
> And the following code:
> 
> 
> 	s = of_get_flat_dt_prop(node, "compatible", &len);
> 	if (strlen(hyper_node.prefix) + 3  < len &&
> 	    !strncmp(hyper_node.prefix, s, strlen(hyper_node.prefix)))
> 		hyper_node.version = s + strlen(hyper_node.prefix);
> 
> 
> It looks like there is potential for breakage. For instance, It looks
> like that hyper_node.version could end up being set to "xen,xen-v2"
> depending on the success or failure of the first < len check. If not
> "xen,xen-v2", I would guess that "xen,xen-version-2" would cause
> hyper_node.version to be set to "version-2".

How so? s points to the beginning of the property. So if the if 
"xen,xen-4.16" is always first, there there is no way 
"hyper_node.version" can be set to "version-2".

> 
> 
> If we were to introduce a new compatible we would need to make it so the
> prefix "xen,xen-" does not match it. Something like "xen,api-v2" might
> be possible.

I don't particularly care about the compatible name. This was an example 
to show that there is no issue with adding an extra compatible. I 
thought the compatible way was better because at least we don't have to 
add a new property every single time we extend the bindings.

However, the point of this conversation was to figure out whether the 
common way to extend the Device-Tree is to add a compatible or a new 
property. Not what we (Xen Project) prefer.

Cheers,

-- 
Julien Grall
