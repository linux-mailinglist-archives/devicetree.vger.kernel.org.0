Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EB119413586
	for <lists+devicetree@lfdr.de>; Tue, 21 Sep 2021 16:40:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233651AbhIUOmJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Sep 2021 10:42:09 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:48518
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S233606AbhIUOmJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 21 Sep 2021 10:42:09 -0400
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com [209.85.221.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 10E353F320
        for <devicetree@vger.kernel.org>; Tue, 21 Sep 2021 14:40:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632235235;
        bh=/oTgcdxikpH1lVnKw9AbC9PuS0qChPgfzYbqOCmroM8=;
        h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
         In-Reply-To:Content-Type;
        b=N8i5CkEFlYNLlnxMDAza9xyRpxeD35WGyXsFa/qKfQRjW2dJ9A3oxcTSdvZwlJVFP
         ILsfFvdui96MjdXMJ0fN0qTRHe3mqWn/32Bj/NT9k0VQJiXupSncygpISBmuvVDDUr
         pf8fkB6XYCTS5GqflWdJvTG5wHTn7rEsF5Mb15OwZP6WDy1dvDYVVKr0a0qTX+hMQe
         XjXqWRPP3hyD3+NpbthP9XQvP1TSnS59+G/LvCis2wCYWZ2GQvhBqlpBZBjZG5MZbo
         I5jLUfM++YDIlPODvQldyHe4r1jb2yZSrpQ+cMBMzi85UYhpp/QIgO8su7MtKDB9c9
         r4nECdkzx7CJQ==
Received: by mail-wr1-f71.google.com with SMTP id f7-20020a5d50c7000000b0015e288741a4so9009831wrt.9
        for <devicetree@vger.kernel.org>; Tue, 21 Sep 2021 07:40:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=/oTgcdxikpH1lVnKw9AbC9PuS0qChPgfzYbqOCmroM8=;
        b=pnqGDiNQ00Vzv6k26Q2+3DKoh+3YeexzWIxEGAZuJhdBYox1P7FPe5keE8H9SayEIw
         1Ekmk641BtE+qwwHmAIOAKwNmootsd6eiIc/MGovpRPStACAqz3bpyzZWSI7yQUE/cDT
         ah+eedLln0HE8ewMfsL/aEnt+ToPhJdtumTX69/Mh9iQ43qeK+17XRDoWr3P5hJHsfiz
         8CbuSkr9zO3p8V/0tiyUaMPoPhjmze0Fe3TEcUR5w2KtDSG57GD5m0uXJHKRIFKD7PbT
         FKXZynG45H0eR5xstHmOrX0AoMNWVv2empBsQtSVZdoxthxc8Ok2CkMky0z/1LhPT9l6
         mfDA==
X-Gm-Message-State: AOAM5323LPdpW70hNL1VUlBrj213sWt/lAR7QpHVj5zFZExUiuUIioXA
        wCvy4JIrdeQrKFGLPhBUSoyGtgN+dBiCjmSeGV0OZYjYRt/1tc3QXZa6qp8TmS5Is/7flgmbEfG
        xhwoc1pHW38jZ/FFaRaJspxaYCrOrNOBy1c3IjTQ=
X-Received: by 2002:a05:600c:3588:: with SMTP id p8mr4938411wmq.168.1632235234680;
        Tue, 21 Sep 2021 07:40:34 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx4FePTeIl5wziKnDLl+owgti3lnxByBxRv39Bcgv2XiRASRsGGe6be5Z79tKl9EOfmRmvn1A==
X-Received: by 2002:a05:600c:3588:: with SMTP id p8mr4938387wmq.168.1632235234439;
        Tue, 21 Sep 2021 07:40:34 -0700 (PDT)
Received: from [192.168.0.134] (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.gmail.com with ESMTPSA id b16sm19714129wrp.82.2021.09.21.07.40.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Sep 2021 07:40:33 -0700 (PDT)
Subject: Re: [PATCH 3/6] dt-bindings: hwmon: ibm,cffps: move to trivial
 devices
To:     Guenter Roeck <linux@roeck-us.net>
Cc:     Jean Delvare <jdelvare@suse.com>, Rob Herring <robh+dt@kernel.org>,
        Jiri Kosina <trivial@kernel.org>,
        Jonathan Cameron <Jonathan.Cameron@huawei.com>,
        linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20210921102832.143352-1-krzysztof.kozlowski@canonical.com>
 <20210921102832.143352-3-krzysztof.kozlowski@canonical.com>
 <20210921123025.GC1043608@roeck-us.net>
 <68fa27ae-4704-181f-e2f6-92635865798b@canonical.com>
 <20210921131804.GC1864238@roeck-us.net>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <1a8cfa30-769d-d0aa-ffef-1eda42e3a84d@canonical.com>
Date:   Tue, 21 Sep 2021 16:40:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210921131804.GC1864238@roeck-us.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/09/2021 15:18, Guenter Roeck wrote:
> On Tue, Sep 21, 2021 at 02:45:42PM +0200, Krzysztof Kozlowski wrote:
>> On 21/09/2021 14:30, Guenter Roeck wrote:
>>> On Tue, Sep 21, 2021 at 12:28:29PM +0200, Krzysztof Kozlowski wrote:
>>>> The IBM Common Form Factor Power Supply Versions 1 and 2 bindings are
>>>> trivial, so they can be integrated into trivial devices bindings.
>>>>
>>>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
>>>
>>> I won't accept any of those "move to trivial devices" patches. In many cases
>>> the bindings are simply incomplete. I can not and will not make that call,
>>> and I always did and will leave it up to driver authors to decide if they
>>> want to add a device to trivial devices or provide explicit bindings.
>>>
>>> Please stop sending those patches.
>>>
>>
>> Back in the older times, there were no trivial-devices and checkpatch
>> plus maintainers required documenting compatibles, so some of such
>> simple bindings were created.
>>
> 
> At the same time, as I said, the bindings for many chips are incomplete.
> For this driver, we can not make that call because the datasheet is not
> public. The same is true for dps650ab. For others, the datasheet is
> available, and a reasonable decision can be made if the chip may ever
> need more complete bindings.
> 
> So, let's qualify my statement: I'll accept such patches if you can show,
> from the datasheet, that it is unlikely that explicit bindings will ever
> be needed. That would be the case for LM70, for example. That would need
> more than a statement that "bindings are trivial", though. It also require
> a statement along the line that you have confirmed, from to the datasheet,
> that there is nothing to configure for this chip that would ever require
> explicit bindings.

Thanks for longer explanation. I agree with your reasoning here. I'll
re-check my move-to-trivial patches and, if applicable, send a new
version with better explanation.

I hope this won't stop from reviewing the few other patches in the set
adding separate bindings.


Best regards,
Krzysztof
