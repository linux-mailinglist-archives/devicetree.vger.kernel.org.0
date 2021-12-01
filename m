Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3D8C64652D8
	for <lists+devicetree@lfdr.de>; Wed,  1 Dec 2021 17:34:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351161AbhLAQiP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Dec 2021 11:38:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351107AbhLAQiO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Dec 2021 11:38:14 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB2BFC061748
        for <devicetree@vger.kernel.org>; Wed,  1 Dec 2021 08:34:51 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id s13so53666306wrb.3
        for <devicetree@vger.kernel.org>; Wed, 01 Dec 2021 08:34:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google;
        h=message-id:date:mime-version:user-agent:subject:to:cc:references
         :from:in-reply-to:content-transfer-encoding;
        bh=3sEGuWI76stDnurv18Sa0jyWxu5kNd2FGaaOg39vJxc=;
        b=POGxka8o+dDai8yOx0YedKy/Ak1H7hVlKjgjI/1HTgqZUpXzAixSKlxhgIPOpyiB5P
         xZO2BegLDxuZY8G/4qavPqIBaY/B3KKGXHO7z0gANg6ETJ0Hm9KXQI5h9rkkthiAPYHi
         6oG7+EXcmrIalStVf+GZ+y7OeN+Y6IM7w0ZLS6VbENxt6l8bYqgSgj0B/oqBL85T3xzo
         3wA0sp3oGvaVQFOpCEEqJFwKJ1s1a8+zOX4VpYhWDSfnqRPPxjgCwADdXRW4h2fYQWxD
         TcSMi43DdKdK9R3W/wRrol+Zfzzoo6oG0BEbw8juG3hycTVf/VWnEvXDhzWm9pXZxyxY
         eOdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :to:cc:references:from:in-reply-to:content-transfer-encoding;
        bh=3sEGuWI76stDnurv18Sa0jyWxu5kNd2FGaaOg39vJxc=;
        b=t8yBd03t9kEfxOTtsqV5YT+fZQkv8DkOvP/0wj1bQauKD6EKLd5z5kboiW4HQA6WmU
         0iMsL1kAg/Wg8NiHnRn3w+nIJMW9KNtidQkeHsVSj/ZKFR/+XtMThrBUXI0YMDQcnJUk
         wy8G+dzKdLAIJpRgUm/gvavv8xUk+KP+DPC4uPf9i9gDL7WnGFP5KlXDhJ7eZsyofYq5
         Y/hOvwZ0etKuUqdghJyOfmhlZYU45rQslf12yGUvL4/gYeaFp1k04P7Qr8OqPu9jMZPq
         aYihevfqvCn3/zn+yZajDVlF2nrxA7SaTTdohYbT6YF3ZE2ZTyn0I/vEhlWxzI24aqKv
         ZI8w==
X-Gm-Message-State: AOAM530U3aV0R84B3RWMZ37Yp8TjqSAFkb7x/aJQar11Z8IxCOBlEOhm
        PQeGsq8zQ1ReoVOb4Qx60B5g7Q==
X-Google-Smtp-Source: ABdhPJx1vXaQUgoVYXk4KwfFJpda+AzTkrp3TsTVTBAuQP5AGHXbVmJRxqYFH9lTWUwmu+iZnCn6kg==
X-Received: by 2002:a5d:668c:: with SMTP id l12mr8156141wru.19.1638376490548;
        Wed, 01 Dec 2021 08:34:50 -0800 (PST)
Received: from ?IPV6:2a00:1098:3142:14:3430:4041:27d3:fbce? ([2a00:1098:3142:14:3430:4041:27d3:fbce])
        by smtp.gmail.com with ESMTPSA id b188sm246755wmd.45.2021.12.01.08.34.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Dec 2021 08:34:50 -0800 (PST)
Message-ID: <155d6d14-8556-9466-fb41-1f40ef202cdd@raspberrypi.com>
Date:   Wed, 1 Dec 2021 16:34:49 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Subject: Re: [PATCH 1/2] pinctrl: bcm2835: Change init order for gpio hogs
To:     Andy Shevchenko <andy.shevchenko@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        "bcm-kernel-feedback-list@broadcom.com" 
        <bcm-kernel-feedback-list@broadcom.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Thierry Reding <treding@nvidia.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-rpi-kernel@lists.infradead.org" 
        <linux-rpi-kernel@lists.infradead.org>,
        "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>
References: <20211129105556.675235-1-phil@raspberrypi.com>
 <20211129105556.675235-2-phil@raspberrypi.com>
 <CAHp75Vei9FUY0gGD99gVv_FZzcpN1y_i65BB-auyAFUwqsQxNA@mail.gmail.com>
 <06345f5a-c8e7-848b-d25f-3f3e32ab5418@raspberrypi.com>
 <CAHp75VcZNUXxk7rD2sL=AFe4kz+hXX361rp15K8fN1c4x8zhXA@mail.gmail.com>
 <3f03d11b-ed73-9f1e-5de1-44cb3ae3e415@raspberrypi.com>
 <CAHp75VfWCpi+kzch1qH6rZkd+8mZmnBTYF-MWnmUvTRdJCFLtw@mail.gmail.com>
From:   Phil Elwell <phil@raspberrypi.com>
In-Reply-To: <CAHp75VfWCpi+kzch1qH6rZkd+8mZmnBTYF-MWnmUvTRdJCFLtw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 01/12/2021 16:25, Andy Shevchenko wrote:
> On Wed, Dec 1, 2021 at 6:08 PM Phil Elwell <phil@raspberrypi.com> wrote:
>> On 01/12/2021 15:38, Andy Shevchenko wrote:
> 
> ...
> 
>>>>>       Fixes: 73345a18d464b ("pinctrl: bcm2835: Pass irqchip when adding
>>>>>                               gpiochip")
> 
>>>>> Is it originally so strange indentation or is it only on my side?
>>>>
>>>> The "g" is below the "p" in the patch.
>>>
>>> Which is wrong. Tags mustn't be multilines (i.e. split over a single line).
>>
>> checkpatch disagrees:
> 
> I don't care less about checkpatch false positives. You have a chance
> to fix it, btw.

I only split it because of checkpatch. What a great tool.

I'll change for V2, which I can submit now if you'll ack it with just that change.

Phil
