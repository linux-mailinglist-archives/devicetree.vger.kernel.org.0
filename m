Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2E9CA46B862
	for <lists+devicetree@lfdr.de>; Tue,  7 Dec 2021 11:04:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234673AbhLGKHl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Dec 2021 05:07:41 -0500
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124]:31757 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234670AbhLGKHk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Dec 2021 05:07:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1638871450;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=l97/6fDJHvkZnda1wfxTIBUhKhfRaBFzP+ulUygxG1E=;
        b=Uv3FmWyzdp3LIhabo4I1g4xLg4J/lmleZXw1mLEf84L0Z/SwTK91HKBgwKMqelszPn6xUu
        ejPi9CHsdpEnYM7j+P8jdA5lHmQrpGw3/ockdyQa3OTLIXw/0XVEVZFPE22StxecRAiRmE
        o6hFVL+tQ7gYm3Bsgmmpo8wW5lP2lk4=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-188-RhxcN491PGyUoeiVBZhwhg-1; Tue, 07 Dec 2021 05:04:09 -0500
X-MC-Unique: RhxcN491PGyUoeiVBZhwhg-1
Received: by mail-ed1-f72.google.com with SMTP id w18-20020a056402071200b003e61cbafdb4so11010315edx.4
        for <devicetree@vger.kernel.org>; Tue, 07 Dec 2021 02:04:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=l97/6fDJHvkZnda1wfxTIBUhKhfRaBFzP+ulUygxG1E=;
        b=DSWUTNJXIYIwJQTXWmo2ehMzDciAbiNQO9UWldW6JhNmDQ/3iE8AcZb38a7q+HSk7D
         I8ElV3QMeZ0yX0nvcX1M7mn7RGRze9GI2qRBBgd3IQVftEFhy3f9cbWVPhHU1I8xXBTK
         gliAPYWRf7sYxqG+OWsacQksH8zBceNt9klvH6gsyecV1blKmWZCZ9kBpRh4lzfGUlcg
         ARvNNvCQ9/Sp+K7FQpCx9v8dHtL0e89+92ARvYxlX2RVg6fRyYxDQRXH5AbgeXvYwOJl
         1Vmprq8tvmtQuiFqGxTn55lft83FCcTI+tqg/vxmVsr6PIc5S/KNQyXmdQp9iKu6NKIk
         q+8w==
X-Gm-Message-State: AOAM532+0k4NVV+BU5FL+iaxX1Arw8Or85ots0tik4m6iLLrp0TiXkqT
        eWgcvAQTq/B0b7U307nd86xEt599L8QnfnByzJrxOx03JCXz9uPhQpzMxIWBGxQAq0/AkSo63WV
        xGaNKsyQKz+vanDPlNmo7/Q==
X-Received: by 2002:a17:907:9495:: with SMTP id dm21mr51471469ejc.478.1638871446897;
        Tue, 07 Dec 2021 02:04:06 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzWIFrlGeIw9MuBvTr7YM1KAit9iqpqrc7rvrO02dVbxv/6+Xz0gvUMFjnTMnDOpfqYEi8yjQ==
X-Received: by 2002:a17:907:9495:: with SMTP id dm21mr51471434ejc.478.1638871446671;
        Tue, 07 Dec 2021 02:04:06 -0800 (PST)
Received: from ?IPV6:2001:1c00:c1e:bf00:1054:9d19:e0f0:8214? (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl. [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
        by smtp.gmail.com with ESMTPSA id em21sm7970690ejc.103.2021.12.07.02.04.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Dec 2021 02:04:06 -0800 (PST)
Message-ID: <841af72e-f8f4-9682-3e74-d2e6456d43e8@redhat.com>
Date:   Tue, 7 Dec 2021 11:04:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Subject: Re: PATCH 0/4] usbd: typec: fusb302: Add support for specifying
 supported alternate-modes through devicetree/fwnodes
Content-Language: en-US
To:     Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Prashant Malani <pmalani@chromium.org>
Cc:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>,
        Tobias Schramm <t.schramm@manjaro.org>,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        bleung@chromium.org
References: <20200714113617.10470-1-hdegoede@redhat.com>
 <Yakej0+7W+Lk9OWP@google.com>
 <9a5d71ae-a571-248c-173b-7545f9f7d344@redhat.com>
 <CACeCKafantM4ubxTLnge5DZLT87Pyrpc34nQrUvN1Zu1FgyVKw@mail.gmail.com>
 <Ya8vxq+/P/WG4kHo@kuha.fi.intel.com>
From:   Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <Ya8vxq+/P/WG4kHo@kuha.fi.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 12/7/21 10:56, Heikki Krogerus wrote:
> Hi,
> 
> On Fri, Dec 03, 2021 at 12:22:35PM -0800, Prashant Malani wrote:
>> Hi Hans,
>>
>> On Fri, Dec 3, 2021 at 2:14 AM Hans de Goede <hdegoede@redhat.com> wrote:
>>>
>>> Hi Prashant,
>>>
>>> On 12/2/21 20:29, Prashant Malani wrote:
>>>> Hi Hans,
>>>>
>>>> Sorry for posting on an old thread, but I was wondering if there was
>>>> still a plan to submit this? This is something we'd like to use on
>>>> Chrome OS too.
>>>>
>>>> It sounded like the primary discussion was whether to have an "altmodes"
>>>> property encaspulating the various alt modes, but not sure what the
>>>> final consensus on that was (sounded to me like your current
>>>> implementation was fine for now, and ACPI use cases would be handled
>>>> later?).
>>>
>>> Support for this has already landed, but so far has only been tested
>>> on a x86/ACPI device, where the firmware-nodes parsed by the new
>>> typec_port_register_altmodes() helper are setup through software-nodes,
>>> see:
>>>
>>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=7b458a4c5d7302947556e12c83cfe4da769665d0
>>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=55d8b34772e0728a224198ba605eed8cfc570aa0
>>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=3d28466e5f4f8
>>>
>>> In theory this should be usable for devicetree as is. But that would
>>> require documenting the current in kernel swnode bindings as
>>> official devicetree bindings and getting that through the devicetree
>>> bindings review process.
>>
>> That's good to hear :)
>>
>>>
>>> I have deliberately not done this because the devicetree maintainers
>>> have asked for properties / swnode "bindings" used only inside
>>> the kernel (1) to NOT be documented as official devicetree bindings,
>>> they (the dt bindings maintainers) want to first see at least one
>>> real devicetree users before adding things like this to the
>>> official devicetree bindings docs.
>>>
>>> Note if the way typec_port_register_altmodes() parses the fwnode
>>> properties needs to change as result of the devicetree bindings review
>>> process, please let me know, because then the swnode-s created in
>>> drivers/platform/x86/intel/int33fe/intel_cht_int33fe_typec.c
>>> need to change to match so as to not regress things on those devices.
>>
>> Heikki, can we reconcile this with the format you had in mind for ACPI
>> devices which specify this in ASL files?
> 
> I don't know. I'm not sure what are the changes that need to be made
> in order to fit this thing into the devicetree bindings (or are there
> any)?
> 
> Assuming that the proposal is still that each connector device node
> would have a sub-node "altmodes" which then has a child node for each
> supported alt mode,

Right, this is the format that the current implementation of
typec_port_register_altmodes() expects.

Regards,

Hans


> then the ASL for the first USB Type-C port (as an
> example) should look roughly like this (this is prepared on top the
> ACPI tables from Intel Tigerlake based Chromebook system):
> 
>         Scope (\_SB.H_EC.USBC.CON0)
>         {
>                 Name (_DSD, Package () {
>                         ToUUID("dbb8e3e6-5886-4ba6-8795-1319f52a966b"),
>                         Package () {
>                                 Package () { "altmodes", "ALT0" },
>                         }
>                 })
> 
>                 /* The "altmodes" sub-node */
>                 Name (ALT0, Package () {
>                         ToUUID("dbb8e3e6-5886-4ba6-8795-1319f52a966b"),
>                         Package () {
>                                 Package () { "tbt", "ALT1" },
>                                 Package () { "dp", "ALT2" },
>                         }
>                 })
> 
>                 /* Thunderbolt 3 Alternate Mode */
>                 Name (ALT1, Package() {
>                         ToUUID("daffd814-6eba-4d8c-8a91-bc9bbf4aa301"),
>                         Package () {
>                                 Package () { "svid", 0x8087 },
>                                 Package () { "vdo", 0x00000001 },
>                         },
>                 })
> 
>                 /* DisplayPort Alternate Mode */
>                 Name (ALT2, Package() {
>                         ToUUID("daffd814-6eba-4d8c-8a91-bc9bbf4aa301"),
>                         Package () {
>                                 Package () { "svid", 0xff01 },
>                                 Package () { "vdo", 0x001c1c47 },
>                         },
>                 })
>         }
> 
> So with that, this series should work as is. Let me know if you need
> me to explain that in more detail. The Hierarchical Data Extension
> _DSD UUID is documented here:
> https://uefi.org/sites/default/files/resources/_DSD-hierarchical-data-extension-UUID-v1.1.pdf
> 
> But as said, I'm now not sure what the final design should look like?
> 
> The ACPI format we can in any case quite likely make work with what
> ever requirements/limitation the devicetree has. We just need to
> understand what those are.
> 
> After that I would really like to see the format documented for
> ACPI. Though, I'm not sure where should it be documented. I think we
> are talking about some kind of BIOS writing guide or similar.
> 
> thanks,
> 

