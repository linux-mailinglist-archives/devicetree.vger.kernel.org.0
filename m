Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BD7253FA713
	for <lists+devicetree@lfdr.de>; Sat, 28 Aug 2021 19:58:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229864AbhH1R72 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 28 Aug 2021 13:59:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49086 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229768AbhH1R71 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 28 Aug 2021 13:59:27 -0400
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2E63C0613D9
        for <devicetree@vger.kernel.org>; Sat, 28 Aug 2021 10:58:36 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id w4so17545383ljh.13
        for <devicetree@vger.kernel.org>; Sat, 28 Aug 2021 10:58:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=VvRms+QV4WsSdHyZnok59N803UtPyAalq7HmC1Oo+SU=;
        b=sGlVsxTbPag5nxi61lGKm2sVKmsjejJRZGP5RY35A8keK30dMqkrSwONvvobkAiGwz
         8MywSy99aws34wzF+NOS8R5T7ujf+hEiCd1yJsxIByVTH6gD6JwPqk205olmCEZFZcA2
         /hIcRW4H3hdQ9LT0OIrU74PInZ5L+wSFkklRbT2XZYNDDpT2WP/9o4e2Ju2env84YsCv
         NykeaIECljXKmmLxuNnmLMwmP//+0vYBzroT9EI1RdOO9XwfCFKwOo/jQFR/hep8hFmv
         LHfKnsrGhzW5mt60bia8tbTfq5kmiQT6rX4qKD++L966SSX4nWXU+I2qjIbADZE6x6Nm
         ohtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=VvRms+QV4WsSdHyZnok59N803UtPyAalq7HmC1Oo+SU=;
        b=WzrXiFv2NXweQYgcZyAfQTePdTLaTeg+/ijZAqAB3liN+6kt6dr1+TS7PGO2MT6k0g
         67kecXEBfC4bR9Cof2araG2KMn9gZcrwkkFn3ZceDh72W7rA7cisewn35t5RTMQczr1K
         zvEGP57bdyrY0/z9q9TN2Vsvn41w9O+cWn0uP1FMXEeq0wpBQiTGRQczLCCjWW4piIsC
         u3p+omuEO9b+RktYF3wFeSIlylWZuQZfPdT52e3QgV5O+zH8eFjeRiGbTTLzsGsca9cU
         yIkITu26memkVfSEHcW9d1+yOC8RSYcLJCMFfOzQZ/ZkM4poTNX6JB++AZZARixfoWhm
         mYww==
X-Gm-Message-State: AOAM533wf6ZbUruU5HHu3k9D/Dit0PhZElzTAkz1b3KBuL/RUHknQUek
        5hE6DFSzgYoq3lXa8DBmunw=
X-Google-Smtp-Source: ABdhPJwB4HvVTTcpg7jQ0mBlx1TcxrVYBymvZaJxVclR6ZZSr4ZOFqKa7xBb6EKWN8OAUlHE4NuA5Q==
X-Received: by 2002:a2e:9150:: with SMTP id q16mr12836192ljg.418.1630173515115;
        Sat, 28 Aug 2021 10:58:35 -0700 (PDT)
Received: from [192.168.1.7] ([212.22.223.21])
        by smtp.gmail.com with ESMTPSA id bt42sm925054lfb.118.2021.08.28.10.58.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Aug 2021 10:58:34 -0700 (PDT)
Subject: Re: Clarification regarding updating "Xen hypervisor device tree
 bindings on Arm"
To:     Stefano Stabellini <sstabellini@kernel.org>
Cc:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        Julien Grall <julien@xen.org>,
        Mark Rutland <mark.rutland@arm.com>
References: <CAPD2p-kPXFgaLtwy95ZswYUK3xCDaxC4L85vQw=EvTWgehJ7-A@mail.gmail.com>
 <alpine.DEB.2.21.2108061306140.18743@sstabellini-ThinkPad-T480s>
 <f45250de-fdca-18c4-044b-276d0ff66b05@xen.org>
 <alpine.DEB.2.21.2108061519500.18743@sstabellini-ThinkPad-T480s>
 <fa3ad927-14c8-59ac-6cdc-673c65850ac6@xen.org>
 <8b311e33-89e5-87f3-63d2-54bbc2f8f8e7@gmail.com>
 <alpine.DEB.2.21.2108271620160.17851@sstabellini-ThinkPad-T480s>
From:   Oleksandr <olekstysh@gmail.com>
Message-ID: <6ee7bd94-54fd-9975-978f-c1d3b1fc4cd1@gmail.com>
Date:   Sat, 28 Aug 2021 20:58:33 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.2108271620160.17851@sstabellini-ThinkPad-T480s>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On 28.08.21 03:05, Stefano Stabellini wrote:

Hi Stefano

> On Fri, 27 Aug 2021, Oleksandr wrote:
>> On 07.08.21 01:57, Julien Grall wrote:
>>> Hi Stefano,
>>>
>>> On 06/08/2021 23:26, Stefano Stabellini wrote:
>>>> On Fri, 6 Aug 2021, Julien Grall wrote:
>>>>> Hi Stefano,
>>>>>
>>>>> On 06/08/2021 21:15, Stefano Stabellini wrote:
>>>>>> On Fri, 6 Aug 2021, Oleksandr Tyshchenko wrote:
>>>>>>> Hello, all.
>>>>>>>
>>>>>>> I would like to clarify some bits regarding a possible update for
>>>>>>> "Xen
>>>>>>> device tree bindings for the guest" [1].
>>>>>>>
>>>>>>> A bit of context:
>>>>>>> We are considering extending "reg" property under the hypervisor
>>>>>>> node and
>>>>>>> we would like to avoid breaking backward compatibility.
>>>>>>> So far, the "reg" was used to carry a single region for the grant
>>>>>>> table
>>>>>>> mapping only and it's size is quite small for the new improvement
>>>>>>> we are currently working on.
>>>>>>>
>>>>>>> What we want to do is to extend the current region [reg: 0] and add
>>>>>>> an
>>>>>>> extra regions [reg: 1-N] to be used as a safe address space for any
>>>>>>> Xen specific mappings. But, we need to be careful about running
>>>>>>> "new"
>>>>>>> guests (with the improvement being built-in already) on "old" Xen
>>>>>>> which is not aware of the extended regions, so we need the binding
>>>>>>> to be
>>>>>>> extended in a backward compatible way. In order to detect whether
>>>>>>> we are running on top of the "new" Xen (and it provides us enough
>>>>>>> space to
>>>>>>> be used for improvement), we definitely need some sign to
>>>>>>> indicate that.
>>>>>>>
>>>>>>> Could you please clarify, how do you expect the binding to be
>>>>>>> changed in
>>>>>>> the backward compatible way?
>>>>>>> - by adding an extra compatible (as it is a change of the binding
>>>>>>> technically)
>>>>>>> - by just adding new property (xen,***) to indicate that "reg"
>>>>>>> contains
>>>>>>> enough space
>>>>>>> - other option
>>>>>>     The current description is:
>>>>>>
>>>>>> - reg: specifies the base physical address and size of a region in
>>>>>>      memory where the grant table should be mapped to, using an
>>>>>>      HYPERVISOR_memory_op hypercall [...]
>>>>>>
>>>>>>
>>>>>> Although it says "a region" I think that adding multiple ranges would
>>>>>> be
>>>>>> fine and shouldn't break backward compatibility.
>>>>>>
>>>>>> In addition, the purpose of the region was described as "where the
>>>>>> grant
>>>>>> table should be mapped". In other words, it is a safe address range
>>>>>> where the OS can map Xen special pages.
>>>>>>
>>>>>> Your proposal is to extend the region to be bigger to allow the OS to
>>>>>> map more Xen special pages. I think it is a natural extension to the
>>>>>> binding, which should be backward compatible.
>>>>> I agree that extending the reg (or even adding a second region) should
>>>>> be fine
>>>>> for older OS.
>>>>>
>>>>>> Rob, I am not sure what is commonly done in these cases. Maybe we just
>>>>>> need an update to the description of the binding? I am also fine with
>>>>>> adding a new compatible string if needed.
>>>>> So the trouble is how a newer Linux version knows that the region is big
>>>>> enough to deal with all the foreign/grant mapping?
>>>>>
>>>>> If you run on older Xen, then the region will only be 16MB. This means
>>>>> the
>>>>> Linux will have to fallback on stealing RAM as it is today.
>>>>>
>>>>> IOW, XSA-300 will still be a thing. On newer Xen (or toolstack), we
>>>>> ideally
>>>>> want the OS to not fallback on stealing RAM (and close XSA-300). This is
>>>>> where
>>>>> we need a way to advertise it.
>>>>>
>>>>> The question here is whether we want to use a property or a compatible
>>>>> for
>>>>> this.
>>>>>
>>>>> I am leaning towards the latter because this is an extension of the
>>>>> bindings.
>>>>> However, I wasn't entirely whether this was a normal way to do it.
>>
>> May I please ask for the clarification how to properly advertise that we have
>> extended region? By new compatible or property?
> The current compatible string is defined as:
>
> - compatible:
> 	compatible = "xen,xen-<version>", "xen,xen";
>    where <version> is the version of the Xen ABI of the platform.
>
>
> On the Xen side it is implemented as:
>
> "xen,xen-"__stringify(XEN_VERSION)"."__stringify(XEN_SUBVERSION)"\0"
>
>
> So in a way we already have the version in the compatible string but it
> is just the Xen version, not the version of the Device Tree binding.
>
>
> Looking at the way the compatible string is parsed in Linux, I think we
> cannot easily change/add a different string format because it would
> cause older Linux to stop initializing the Xen subsystem.
>
> So one option is to rely on a check based on the Xen version. Example:
>
>    version >= xen,xen-4.16
>
>
> Or we need to go with a property. This seems safer and more solid. The
> property could be as simple as "extended-region":
>
> hypervisor {
> 	compatible = "xen,xen-4.16", "xen,xen";
>      extended-region;
> 	reg = <0 0xb0000000 0 0x20000 0xc 0x0 0x1 0x0>;
> 	interrupts = <1 15 0xf08>;
> };

Thank you for the detailed analysis, I think, it makes sense.


>
>
> Julien, do you have a better suggestion for the property name?

-- 
Regards,

Oleksandr Tyshchenko

