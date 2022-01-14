Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9ADE848E68F
	for <lists+devicetree@lfdr.de>; Fri, 14 Jan 2022 09:32:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234630AbiANIcB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Jan 2022 03:32:01 -0500
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124]:26370 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232860AbiANIcA (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 14 Jan 2022 03:32:00 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1642149119;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=4e3R0cGDEuzfJCTMeYBZ008JX3SkTwc1ShwrpVRZ6sY=;
        b=apNcJLebiuwa4AumGp5IN3b7JW06jy+zTPoyF8kHFVWsE1klWYCAcskS3CY0asDJYCUdmZ
        XQgI/9OK5hYWUUPvguQgLPboFFat/6hcBqpDi/zvKvIJcgY7PBnhtVyRiNTawNuGhQy4dn
        RQbq7btQATB6KeJDX39GQQ/VFyDCMSU=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-127-nZEZYge7MyCC581zcn4a2g-1; Fri, 14 Jan 2022 03:31:58 -0500
X-MC-Unique: nZEZYge7MyCC581zcn4a2g-1
Received: by mail-ed1-f69.google.com with SMTP id t1-20020a056402524100b003f8500f6e35so7765253edd.8
        for <devicetree@vger.kernel.org>; Fri, 14 Jan 2022 00:31:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=4e3R0cGDEuzfJCTMeYBZ008JX3SkTwc1ShwrpVRZ6sY=;
        b=yWajbqyZWmP3wkRsp8ucT9aZ0yDtIBR7Hx54Wx0g+41yhXUfrIVrH4vPuqWGI76hKY
         +J0YuF/GE+hjY34yYngcYfPKgpWWNyJMW3Qo6T9Irjp76W0zq6r/jcOQtWOlEU+dxDjC
         sEnaYty4blX9GYEQAfleVqUC+ZK6ucC8cugPANv8r1QRx3ZOjVDDuICYxzTmZn7DjPrB
         GRiO3UVXfI6wOaHYu7VpPkDDHKjSIYG/bxIdVdfgAgiURrq3fX6Nd8+OIo+xIgM7MPvP
         2HKg69twOU1dODSnnbai4f2TBpJUmxH2Qh05Ufj6PVY42s16+r4RHw0GcmV7EAcwh2nm
         GNUg==
X-Gm-Message-State: AOAM530nPJRB/6r0u8oKnLW1B5L+SHEwqwTT1ObdhHYKAh3dcyZK7kk3
        54mMjRhAdQ+Ge6Q9l1JQWC9xSIMMswaBnJ1JfrkYNQ0v5PFVxDVPxeGUDKN6aiFsQKEDVquHvTE
        n1VOS7kj9iifWMzjMEwvyuA==
X-Received: by 2002:a17:907:7b9a:: with SMTP id ne26mr6794388ejc.24.1642149117279;
        Fri, 14 Jan 2022 00:31:57 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyc7ZUjSZiOi4vR7JBwLNXvaLjQlMFxrVHe1I54Rh0HNGyN31qRHcwp/dgJR+l4YdLADSfyPQ==
X-Received: by 2002:a17:907:7b9a:: with SMTP id ne26mr6794377ejc.24.1642149117132;
        Fri, 14 Jan 2022 00:31:57 -0800 (PST)
Received: from ?IPV6:2001:1c00:c1e:bf00:1db8:22d3:1bc9:8ca1? (2001-1c00-0c1e-bf00-1db8-22d3-1bc9-8ca1.cable.dynamic.v6.ziggo.nl. [2001:1c00:c1e:bf00:1db8:22d3:1bc9:8ca1])
        by smtp.gmail.com with ESMTPSA id 17sm1623091ejo.27.2022.01.14.00.31.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Jan 2022 00:31:56 -0800 (PST)
Message-ID: <2d6ab8ab-79c8-681b-a898-a88b48fceb55@redhat.com>
Date:   Fri, 14 Jan 2022 09:31:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Subject: Re: [PATCH 2/5] platform: surface: Propagate ACPI Dependency
Content-Language: en-US
To:     Geert Uytterhoeven <geert@linux-m68k.org>,
        Felipe Balbi <balbi@kernel.org>
Cc:     Jarrett Schultz <jaschultzms@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Mark Gross <markgross@kernel.org>,
        Maximilian Luz <luzmaximilian@gmail.com>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        platform-driver-x86@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Jarrett Schultz <jaschultz@microsoft.com>
References: <20211202191630.12450-1-jaschultz@microsoft.com>
 <20211202191630.12450-3-jaschultz@microsoft.com>
 <CAMuHMdUPwo7pCSwY8_9xTaDruTHt6d=wHiNHvRmE71k8hWeLBw@mail.gmail.com>
 <87czku4z2i.fsf@kernel.org>
 <CAMuHMdWEh07zXZZesuY0sksXaa6ptDvv3Fv4UC1RDkf7_KUv8w@mail.gmail.com>
From:   Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <CAMuHMdWEh07zXZZesuY0sksXaa6ptDvv3Fv4UC1RDkf7_KUv8w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 1/14/22 09:29, Geert Uytterhoeven wrote:
> Hi Felipe,
> 
> On Fri, Jan 14, 2022 at 7:21 AM Felipe Balbi <balbi@kernel.org> wrote:
>> Geert Uytterhoeven <geert@linux-m68k.org> writes:
>>> On Mon, Dec 6, 2021 at 4:03 PM Jarrett Schultz <jaschultzms@gmail.com> wrote:
>>>> Since the Surface XBL Driver does not depend on ACPI, the
>>>> platform/surface directory as a whole no longer depends on ACPI. With
>>>> respect to this, the ACPI dependency is moved into each config that depends
>>>> on ACPI individually.
>>>>
>>>> Signed-off-by: Jarrett Schultz <jaschultz@microsoft.com>
>>>
>>> Thanks for your patch, which is now commit 272479928172edf0 ("platform:
>>> surface: Propagate ACPI Dependency").
>>>
>>>> --- a/drivers/platform/surface/Kconfig
>>>> +++ b/drivers/platform/surface/Kconfig
>>>> @@ -5,7 +5,6 @@
>>>>
>>>>  menuconfig SURFACE_PLATFORMS
>>>>         bool "Microsoft Surface Platform-Specific Device Drivers"
>>>> -       depends on ACPI
>>>>         default y
>>>>         help
>>>>           Say Y here to get to see options for platform-specific device drivers
>>>
>>> Without any dependency, all users configuring a kernel are now asked
>>> about this. Is there any other platform dependency that can be used
>>> instead?
>>
>> there's probably no symbol that would be true for x86 and arm64 while
>> being false for everything else. Any ideas?
> 
> depends on ARM64 || X86 || COMPILE_TEST?

That sounds reasonable to me, I would be happy to take a patch for that.

Regards,

Hans


