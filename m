Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C0B3F467496
	for <lists+devicetree@lfdr.de>; Fri,  3 Dec 2021 11:14:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1379673AbhLCKRZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Dec 2021 05:17:25 -0500
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124]:31519 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1379787AbhLCKRY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Dec 2021 05:17:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1638526441;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=fLre/Y3l3hXHK2KGehFZWvESqx/umh+q43bpZlkgUbE=;
        b=hwLe7ha/W7D53Udp8P2EMOECKN7sSDrd7EJunQE5aik2mkkyDHjSCXII06ZzwqAc2WklKR
        es/v7WebT65iD32lljw5ppO2EyadLfgFlLFc3lJOB79dCvlK+iwuk79hiO6IhCDVHBrPqU
        bK3OAd6VoNDYeE9TWTNhMUVufcUSFjU=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-254-KcXIoZadOZC8pyRzREWxQQ-1; Fri, 03 Dec 2021 05:14:00 -0500
X-MC-Unique: KcXIoZadOZC8pyRzREWxQQ-1
Received: by mail-ed1-f71.google.com with SMTP id d13-20020a056402516d00b003e7e67a8f93so2231538ede.0
        for <devicetree@vger.kernel.org>; Fri, 03 Dec 2021 02:13:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=fLre/Y3l3hXHK2KGehFZWvESqx/umh+q43bpZlkgUbE=;
        b=Kss0DxwN/Ew4CmRLRSoqdSWk8yXDWW8yaDMy/wVsY/n3A0r7HzGmkjgmnsJIHixiPV
         bnyUDsauyys1fK6+yuTqkcN84yzBek351NxdaoJYmAlNVCskh0a4xzlXR2kdGDxhZV7u
         u0tH4Le4WLCcNkAn7ZWCSijmCH2bRWYTqS9rD/Dmeo8IbjckrvdBttyouaMxwibKgns0
         fxpjubT5ZZOGOMcjCFE4kgYJPipbiHNEgT8vZtIH2VclZi2j49S9J4ywIjd4hgnj8nSt
         kEA4TBrM5Bf4sWqrcKsc5ltwSyU4lpMMFsC6M4z5XpjphT+W5FZB+uZvk2R+/Ash0OPN
         srRw==
X-Gm-Message-State: AOAM533pvo7BVdkPEJ6WUll0jdyeV93TWk4pOSOodfKrrbyrk3gqmfoy
        3aNN3j6oeAkln3QnNpHVp7g/ulxDLkVcqaEFCgiGd5LJDhO0sI+a+looCivLnaiQA0PqvQf9MNB
        3b5UKBIqAyfF6QB/jFRyhGQ==
X-Received: by 2002:a17:907:97d2:: with SMTP id js18mr17208062ejc.179.1638526437767;
        Fri, 03 Dec 2021 02:13:57 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxpbEra0JrE5wi9BVi+ADZpTBhoF9O5QwCOuP4YScWSuf4m/0w32ehAr45gegslKIL2xSzoZQ==
X-Received: by 2002:a17:907:97d2:: with SMTP id js18mr17208037ejc.179.1638526437515;
        Fri, 03 Dec 2021 02:13:57 -0800 (PST)
Received: from ?IPV6:2001:1c00:c1e:bf00:1054:9d19:e0f0:8214? (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl. [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
        by smtp.gmail.com with ESMTPSA id sa3sm1678173ejc.113.2021.12.03.02.13.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Dec 2021 02:13:57 -0800 (PST)
Message-ID: <9a5d71ae-a571-248c-173b-7545f9f7d344@redhat.com>
Date:   Fri, 3 Dec 2021 11:13:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Subject: Re: PATCH 0/4] usbd: typec: fusb302: Add support for specifying
 supported alternate-modes through devicetree/fwnodes
Content-Language: en-US
To:     Prashant Malani <pmalani@chromium.org>
Cc:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Tobias Schramm <t.schramm@manjaro.org>,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        bleung@chromium.org
References: <20200714113617.10470-1-hdegoede@redhat.com>
 <Yakej0+7W+Lk9OWP@google.com>
From:   Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <Yakej0+7W+Lk9OWP@google.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Prashant,

On 12/2/21 20:29, Prashant Malani wrote:
> Hi Hans,
> 
> Sorry for posting on an old thread, but I was wondering if there was
> still a plan to submit this? This is something we'd like to use on
> Chrome OS too.
> 
> It sounded like the primary discussion was whether to have an "altmodes"
> property encaspulating the various alt modes, but not sure what the
> final consensus on that was (sounded to me like your current
> implementation was fine for now, and ACPI use cases would be handled
> later?).

Support for this has already landed, but so far has only been tested
on a x86/ACPI device, where the firmware-nodes parsed by the new
typec_port_register_altmodes() helper are setup through software-nodes,
see:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=7b458a4c5d7302947556e12c83cfe4da769665d0
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=55d8b34772e0728a224198ba605eed8cfc570aa0
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=3d28466e5f4f8

In theory this should be usable for devicetree as is. But that would
require documenting the current in kernel swnode bindings as
official devicetree bindings and getting that through the devicetree
bindings review process.

I have deliberately not done this because the devicetree maintainers
have asked for properties / swnode "bindings" used only inside
the kernel (1) to NOT be documented as official devicetree bindings,
they (the dt bindings maintainers) want to first see at least one
real devicetree users before adding things like this to the
official devicetree bindings docs.

Note if the way typec_port_register_altmodes() parses the fwnode
properties needs to change as result of the devicetree bindings review
process, please let me know, because then the swnode-s created in
drivers/platform/x86/intel/int33fe/intel_cht_int33fe_typec.c
need to change to match so as to not regress things on those devices.

Regards,

Hans


1) between different kernel parts, as platform_data equivalent really





 Tue, Jul 14, 2020 at 01:36:13PM +0200, Hans de Goede wrote:
>> Hi All,
>>
>> This is a replacement series for an earlier attempt by me for this
>> from quite a while ago:
>>
>> https://patchwork.kernel.org/patch/11199517/
>>
>> As discussed there, this series implements an altmodes devicetree-fwnode
>> under the usb-connector node which has 1 child-node per supported
>> altmode and in that child-node the svid and vdo for the supported
>> altmode are specified.
>>
>> Note this patch-set does not contain any devicetree users of the
>> new bindings. The new support/binding is used on X86 Cherry Trail
>> devices with a fusb302 Type-C controller (special variant of the
>> INT33FE device in ACPI). But this patch should also help getting
>> Display Port altmode to work with the mainline kernel on boards
>> like the Pine RockPro64 and Pinebook Pro, which is why I've added
>> Tobias Schramm to the Cc since he has done mainline devicetree
>> work for the Pinebook Pro in the past.
>>
>> The 1st patch adds the dt-bindings docs. I'm not sure if this one
>> should go upstream through the USB tree together with patches 2-3 or
>> if this should go upstream separately, Rob ?
>>
>> Patches 2-3 add support for the new binding to Type-C controller drivers
>> using the tcpm framework, such as the fusb302 driver.
>>
>> Patch 4 uses swnodes to add the altmode info on the earlier mentioned
>> X86 CHT devices, making DP-altmode work there for the first time.
>>
>> Regards,
>>
>> Hans
>>
> 

