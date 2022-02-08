Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5702D4AD29B
	for <lists+devicetree@lfdr.de>; Tue,  8 Feb 2022 08:59:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347784AbiBHH7Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Feb 2022 02:59:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239174AbiBHH7Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Feb 2022 02:59:16 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F143C0401EF
        for <devicetree@vger.kernel.org>; Mon,  7 Feb 2022 23:59:15 -0800 (PST)
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com [209.85.218.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 9006840052
        for <devicetree@vger.kernel.org>; Tue,  8 Feb 2022 07:59:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644307147;
        bh=KUmu+SyX79IqC4JJ7btjA8fb9z3hZtQRTMNCGj6+80w=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=ZaT9o8DR6x0Jh9WF0J4dBiIwXaB1MJ8fB5rID68l/ASmd5fboJQR14EGhmB9jFykd
         KNmLtHkZoPoI0qXApti2/hjMQY5C91wl/FU+xIZnUVQ8UdfGs7eVTwe2Ljx8CgPh3Q
         Qs1saJBR7zBpYuH70NB5cXrPXSVsS6XmPYehYWz2IlSKV1srZxvXCA3Cr6k9os+5By
         E/KP5bb64TtBohSBCb8DRaaBrnOVzxgXpe2tBT40vEKlaRHp4duxDjENN1hhoYtWcu
         koChDhbipP1H4ZkwsLQKDYa0b9JfM7usIqoVKFaqJgX0AERuaBkQtEV5OzT9kd2WcL
         Lez3NP6yxLxzA==
Received: by mail-ej1-f71.google.com with SMTP id q3-20020a17090676c300b006a9453c33b0so5307255ejn.13
        for <devicetree@vger.kernel.org>; Mon, 07 Feb 2022 23:59:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=KUmu+SyX79IqC4JJ7btjA8fb9z3hZtQRTMNCGj6+80w=;
        b=mruK7NaaGgPC+mN5dvLBLxByYic164V60yNcYZqZYk5epLltGbA/jdBR3EaYxBjlND
         iOG3pS/7H2mPfAGG7hO2nY5jPqM4w69Ydx8O6REy2xyr+tDyyfwsO0aaENYtOrREk4un
         MQ0cQeIQvf0aGZbKTqQnmn90u1Pik1tESVbMbiNSkh3KPJLYHlKOiEK6NleaxjzkM0bL
         ew3XPaB0754DsdPG0gJnZ6WQpXhQkYisuSXu61CJ9TiJ8dLdk4fhPmJMxVUicmdTo92A
         CB8Gyk/CkDzB6ESXe/XfXjaBQH5cZtrnw0OA+8qsCkPh9b5y5oMedyaTx7FF+9s4+H8I
         37VA==
X-Gm-Message-State: AOAM5307kjAMCx5VUJxW0H4ghCP4IJ1lCFzhn6XAB3wj1peuEZRmQVvF
        6jbpPd29MVNkm3l3UAk6r6hVvTzAL1kjKKvn/IXRypeeQQjZlEuhc08BYF+kjPpvwfUkZMB+lRj
        PE/kalfjpIVVSoDViKespnVZ9X4IdB5oGsjzQ7tg=
X-Received: by 2002:a17:907:3d9e:: with SMTP id he30mr2695746ejc.625.1644307147047;
        Mon, 07 Feb 2022 23:59:07 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwnMuJKGmrn//ENmSKnBlAudNuu0CWc31cjpAvZg8bgdPfnemJMwR4TMW3LN8I8kjOeWiw/ww==
X-Received: by 2002:a17:907:3d9e:: with SMTP id he30mr2695737ejc.625.1644307146862;
        Mon, 07 Feb 2022 23:59:06 -0800 (PST)
Received: from [192.168.0.92] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id i24sm42682edt.86.2022.02.07.23.59.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Feb 2022 23:59:06 -0800 (PST)
Message-ID: <30ac5fe7-9d96-a756-24b0-384361b48a2d@canonical.com>
Date:   Tue, 8 Feb 2022 08:59:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v1 6/6] i2c: npcm: Support NPCM845
Content-Language: en-US
To:     Tali Perry <tali.perry1@gmail.com>
Cc:     =?UTF-8?Q?Jonathan_Neusch=c3=a4fer?= <j.neuschaefer@gmx.net>,
        Tyrone Ting <warp5tw@gmail.com>, avifishman70@gmail.com,
        Tomer Maimon <tmaimon77@gmail.com>,
        Patrick Venture <venture@google.com>,
        Nancy Yuen <yuenn@google.com>,
        Benjamin Fair <benjaminfair@google.com>,
        Rob Herring <robh+dt@kernel.org>, semen.protsenko@linaro.org,
        yangyicong@hisilicon.com, Wolfram Sang <wsa@kernel.org>,
        jie.deng@intel.com, sven@svenpeter.dev, bence98@sch.bme.hu,
        lukas.bulwahn@gmail.com, arnd@arndb.de, olof@lixom.net,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        Tali Perry <tali.perry@nuvoton.com>,
        Avi Fishman <Avi.Fishman@nuvoton.com>,
        tomer.maimon@nuvoton.com, KWLIU@nuvoton.com, JJLIU0@nuvoton.com,
        kfting@nuvoton.com, devicetree <devicetree@vger.kernel.org>,
        OpenBMC Maillist <openbmc@lists.ozlabs.org>,
        Linux I2C <linux-i2c@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <20220207063338.6570-1-warp5tw@gmail.com>
 <20220207063338.6570-7-warp5tw@gmail.com> <YgEJ1M40AG9EuRPI@latitude>
 <086655b0-b9d2-30ed-1496-47cdc6346003@canonical.com>
 <CAHb3i=vpFwez+ZzDhHkSxjkios3tyoM2urRpCxOn3vfwzvewog@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <CAHb3i=vpFwez+ZzDhHkSxjkios3tyoM2urRpCxOn3vfwzvewog@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/02/2022 08:14, Tali Perry wrote:
>> -----Original Message-----
>> From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
>> Sent: Monday, February 7, 2022 5:27 PM
>> To: Jonathan Neuschäfer <j.neuschaefer@gmx.net>; Tyrone Ting <warp5tw@gmail.com>
>> Cc: avifishman70@gmail.com; tmaimon77@gmail.com; tali.perry1@gmail.com; venture@google.com; yuenn@google.com; benjaminfair@google.com; robh+dt@kernel.org; semen.protsenko@linaro.org; yangyicong@hisilicon.com; wsa@kernel.org; jie.deng@intel.com; sven@svenpeter.dev; bence98@sch.bme.hu; lukas.bulwahn@gmail.com; arnd@arndb.de; olof@lixom.net; andriy.shevchenko@linux.intel.com; IS20 Tali Perry <tali.perry@nuvoton.com>; IS20 Avi Fishman <Avi.Fishman@nuvoton.com>; IS20 Tomer Maimon <tomer.maimon@nuvoton.com>; CS20 KWLiu <KWLIU@nuvoton.com>; CS20 JJLiu0 <JJLIU0@nuvoton.com>; CS20 KFTing <KFTING@nuvoton.com>; devicetree@vger.kernel.org; openbmc@lists.ozlabs.org; linux-i2c@vger.kernel.org; linux-kernel@vger.kernel.org
>> Subject: Re: [PATCH v1 6/6] i2c: npcm: Support NPCM845
>>
>> On 07/02/2022 13:00, Jonathan Neuschäfer wrote:
>>> Hello,
>>>
>>> On Mon, Feb 07, 2022 at 02:33:38PM +0800, Tyrone Ting wrote:
>>>> From: Tyrone Ting <kfting@nuvoton.com>
>>>>
>>>> NPCM8XX uses a similar i2c module as NPCM7XX.
>>>> The only difference is that the internal HW FIFO is larger.
>>>>
>>>> Related Makefile and Kconfig files are modified to support as well.
>>>>
>>>> Fixes: 56a1485b102e ("i2c: npcm7xx: Add Nuvoton NPCM I2C controller
>>>> driver")
>>>
>>> It's not really a bug fix, but rather an additional feature.
>>> Therefore, I suggest removing the Fixes tag from this patch.
>>>
>>>> Signed-off-by: Tyrone Ting <kfting@nuvoton.com>
>>>> Signed-off-by: Tali Perry <tali.perry1@gmail.com>
>>>> ---
>>> [...]
>>>>  /* init register and default value required to enable module */
>>>>  #define NPCM_I2CSEGCTL 0xE4
>>>> +#ifdef CONFIG_ARCH_NPCM7XX
>>>>  #define NPCM_I2CSEGCTL_INIT_VAL 0x0333F000
>>>> +#else
>>>> +#define NPCM_I2CSEGCTL_INIT_VAL 0x9333F000
>>>> +#endif
>>>
>>> This is going to cause problems when someone tries to compile a kernel
>>> that runs on both NPCM7xx and NPCM8xx (because the driver will then
>>> only work on NPCM7xx).
>>
>> Yes, good catch.
>>
>> The NPCM7XX is multiplatform, I guess NPCM8xx will be as well, so this looks like an invalid code. How such code is supposed to work on multiplatform kernel?
>>
> 
> NPCM7xx and NPCM8xx are very different devices.
> They share same driver sources for some of the modules but it's not ABI.
> Users cannot compile a single kernel with two separate DTS.
> In case of the i2c controller, the npcm7xx has a 16 byte HW FIFO,
> and the NPCM8xx has 32 bytes HW FIFO.
> This also means that registers fields are slightly different.
> For init data we can move it to the DTS, but register field sizes
> can't be handled with this approach.
> 

What do you mean they cannot compile a kernel with different DTS? Of
course they can - when we talk about multiplatform sub-architectures!
Maybe there is something specific in NPCMxxx which stops it but then it
should not be marked multiplatform.


Best regards,
Krzysztof
