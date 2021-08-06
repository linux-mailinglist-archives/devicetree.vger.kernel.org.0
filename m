Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 90CCB3E31D5
	for <lists+devicetree@lfdr.de>; Sat,  7 Aug 2021 00:36:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230119AbhHFWgO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Aug 2021 18:36:14 -0400
Received: from mail.xenproject.org ([104.130.215.37]:41786 "EHLO
        mail.xenproject.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242906AbhHFWgN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 Aug 2021 18:36:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=xen.org;
        s=20200302mail; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
        MIME-Version:Date:Message-ID:References:Cc:To:From:Subject;
        bh=Gm5GwG8UBgLLqglZJAdJnOzaD6LBBDVU6/aanUWSMQY=; b=wGH9XaIlNdxKapF/Vy5XBQINNB
        9kPr761MoXZyF4k/CGMDJ1aM2JKs7mJH/E3+tWeYMmvKoxPXTyckysUva4yl9EWnCevOi9aGcKlRg
        zx0giYu+zzyxsFMSf7Oa1qoCBAU2+duIaOOtsMtxS/0hyHMH14jslpTK2XtYMOYJmiXk=;
Received: from xenbits.xenproject.org ([104.239.192.120])
        by mail.xenproject.org with esmtp (Exim 4.92)
        (envelope-from <julien@xen.org>)
        id 1mC7wG-00019V-R4; Fri, 06 Aug 2021 22:03:36 +0000
Received: from home.octic.net ([81.187.162.82] helo=a483e7b01a66.ant.amazon.com)
        by xenbits.xenproject.org with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.92)
        (envelope-from <julien@xen.org>)
        id 1mC7wG-0001zY-Mc; Fri, 06 Aug 2021 22:03:36 +0000
Subject: Re: Clarification regarding updating "Xen hypervisor device tree
 bindings on Arm"
From:   Julien Grall <julien@xen.org>
To:     Stefano Stabellini <sstabellini@kernel.org>,
        Oleksandr Tyshchenko <olekstysh@gmail.com>
Cc:     robh+dt@kernel.org, Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org
References: <CAPD2p-kPXFgaLtwy95ZswYUK3xCDaxC4L85vQw=EvTWgehJ7-A@mail.gmail.com>
 <alpine.DEB.2.21.2108061306140.18743@sstabellini-ThinkPad-T480s>
 <f45250de-fdca-18c4-044b-276d0ff66b05@xen.org>
Message-ID: <0e11e898-b144-db04-a6cf-cc597191b65a@xen.org>
Date:   Fri, 6 Aug 2021 23:03:35 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <f45250de-fdca-18c4-044b-276d0ff66b05@xen.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 06/08/2021 23:00, Julien Grall wrote:
> Hi Stefano,
> 
> On 06/08/2021 21:15, Stefano Stabellini wrote:
>> On Fri, 6 Aug 2021, Oleksandr Tyshchenko wrote:
>>> Hello, all.
>>>
>>> I would like to clarify some bits regarding a possible update for 
>>> "Xen device tree bindings for the guest" [1].
>>>
>>> A bit of context:
>>> We are considering extending "reg" property under the hypervisor node 
>>> and we would like to avoid breaking backward compatibility.
>>> So far, the "reg" was used to carry a single region for the grant 
>>> table mapping only and it's size is quite small for the new improvement
>>> we are currently working on.
>>>
>>> What we want to do is to extend the current region [reg: 0] and add 
>>> an extra regions [reg: 1-N] to be used as a safe address space for any
>>> Xen specific mappings. But, we need to be careful about running "new" 
>>> guests (with the improvement being built-in already) on "old" Xen
>>> which is not aware of the extended regions, so we need the binding to 
>>> be extended in a backward compatible way. In order to detect whether
>>> we are running on top of the "new" Xen (and it provides us enough 
>>> space to be used for improvement), we definitely need some sign to
>>> indicate that.
>>>
>>> Could you please clarify, how do you expect the binding to be changed 
>>> in the backward compatible way?
>>> - by adding an extra compatible (as it is a change of the binding 
>>> technically)
>>> - by just adding new property (xen,***) to indicate that "reg" 
>>> contains enough space
>>> - other option
>>
>> The current description is:
>>
>> - reg: specifies the base physical address and size of a region in
>>    memory where the grant table should be mapped to, using an
>>    HYPERVISOR_memory_op hypercall [...]

I actually forgot to reply on this one and only remembered now. There 
are some funny things happening in Xen on Arm when mapping the grant 
table. At the moment, we rely on the grant table to always be mapped for 
all the components (toolstack, OS, firmware...) at the same place.

If the region end up to be re-used by something else, then it will end 
up to unmap it... We would need to fix it before we can fully re-use the 
region.

>>
>>
>> Although it says "a region" I think that adding multiple ranges would be
>> fine and shouldn't break backward compatibility.
>>
>> In addition, the purpose of the region was described as "where the grant
>> table should be mapped". In other words, it is a safe address range
>> where the OS can map Xen special pages.
>>
>> Your proposal is to extend the region to be bigger to allow the OS to
>> map more Xen special pages. I think it is a natural extension to the
>> binding, which should be backward compatible.
> 
> I agree that extending the reg (or even adding a second region) should 
> be fine for older OS.
> 
>>
>> Rob, I am not sure what is commonly done in these cases. Maybe we just
>> need an update to the description of the binding? I am also fine with
>> adding a new compatible string if needed.
> 
> So the trouble is how a newer Linux version knows that the region is big 
> enough to deal with all the foreign/grant mapping?
> 
> If you run on older Xen, then the region will only be 16MB. This means 
> the Linux will have to fallback on stealing RAM as it is today.
> 
> IOW, XSA-300 will still be a thing. On newer Xen (or toolstack), we 
> ideally want the OS to not fallback on stealing RAM (and close XSA-300). 
> This is where we need a way to advertise it.
> 
> The question here is whether we want to use a property or a compatible 
> for this.
> 
> I am leaning towards the latter because this is an extension of the 
> bindings. However, I wasn't entirely whether this was a normal way to do 
> it.
> 
> Cheers,
> 

-- 
Julien Grall
