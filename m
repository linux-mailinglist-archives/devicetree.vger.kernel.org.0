Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 354B0632CF4
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 20:26:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231483AbiKUT0B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 14:26:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53720 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229604AbiKUT0A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 14:26:00 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 267878C489
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 11:25:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1669058702;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=eoLZmv4iwg/w4gE4QH+SCVnULAbBmRBckpkebszPHC0=;
        b=RGupFHTF7vLG+2c3A6g393im3QXFUHg/bdkger4ZwQ4VtOVUlfhFa/CDF2cwheGnQddUJ5
        vzPpxtWeZ8Lo5EbMwjKwD6w4ujSOkXbOGr0/BWOtjEmrmbi2SsV0Nw264d/9+MpfQICqGK
        pck8KVBx85GduNIG+4tw0WjYc1ERhXs=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-313--73i-gXPPcKkRWmmwupnKQ-1; Mon, 21 Nov 2022 14:24:58 -0500
X-MC-Unique: -73i-gXPPcKkRWmmwupnKQ-1
Received: by mail-ed1-f72.google.com with SMTP id dz9-20020a0564021d4900b0045d9a3aded4so7566290edb.22
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 11:24:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eoLZmv4iwg/w4gE4QH+SCVnULAbBmRBckpkebszPHC0=;
        b=Gc2/ymqJtry+aBWgtxxDHtAVDclh2W+5Xqq7Rxxubo7xhX2iwEXZOcG9AERo9bLtBp
         2sg60g298oxSY0TS+zZ5TpyMVmyRSZEPil8p4Rs113Q9U/30fWl20OeFJWrBbG7VhJuN
         qxc8WoEincqKKEbjkj48WqAlARVE6qNccJ72GirKCtUlk/UaEs3stJxCglVIKC2r3r7P
         FzKYY6eex7nBmDAfCXD1BNKSI2c0DWeJzwuwJaAJ9JuNkj69eJkhlb8VyY7JfqTvf5TX
         xy6fdPyWYJCI9r8GIoXNdIlgmMB0bbXlpDMNbXLYSzXZG86ehzW3vc8CjcntU9+ZPQ/V
         Bl/w==
X-Gm-Message-State: ANoB5pm7ju71BWrv50KCoehr5xQHjOI+DEIWwTH63w1phuFlkCRIsK8h
        c6G0HekGo+VGlUQVs6u5bhuvEgRkAxOFvdK4unI0Z5oG8wL7Zt/tK2p61LF2YhTI3++Fvjdp31Q
        qbv9zxnxmfj2OYwcJ2aaISA==
X-Received: by 2002:aa7:c6da:0:b0:469:172:1f38 with SMTP id b26-20020aa7c6da000000b0046901721f38mr15457207eds.195.1669058697327;
        Mon, 21 Nov 2022 11:24:57 -0800 (PST)
X-Google-Smtp-Source: AA0mqf4mcm+9l0MN74vmnCzLHArZvfNvXRoa2WAFysBeHkAtV8iX0vlC/zf5jCAN0bfmt/Xb/ffkbA==
X-Received: by 2002:aa7:c6da:0:b0:469:172:1f38 with SMTP id b26-20020aa7c6da000000b0046901721f38mr15457186eds.195.1669058697111;
        Mon, 21 Nov 2022 11:24:57 -0800 (PST)
Received: from ?IPV6:2001:1c00:c1e:bf00:d69d:5353:dba5:ee81? (2001-1c00-0c1e-bf00-d69d-5353-dba5-ee81.cable.dynamic.v6.ziggo.nl. [2001:1c00:c1e:bf00:d69d:5353:dba5:ee81])
        by smtp.gmail.com with ESMTPSA id ez1-20020a056402450100b004617e880f52sm5437350edb.29.2022.11.21.11.24.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Nov 2022 11:24:56 -0800 (PST)
Message-ID: <89e0955c-2878-6e3f-a947-e208340a9db3@redhat.com>
Date:   Mon, 21 Nov 2022 20:24:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [RFC PATCH 1/7] Input: goodix - fix reset polarity
To:     Quentin Schulz <quentin.schulz@theobroma-systems.com>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc:     Quentin Schulz <foss+kernel@0leil.net>, hadess@hadess.net,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
        festevam@gmail.com, linux-imx@nxp.com, wens@csie.org,
        jernej.skrabec@gmail.com, samuel@sholland.org, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@somainline.org,
        heiko@sntech.de, linux-input@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        arm-mail-list <linux-arm-kernel@lists.infradead.org>,
        linux-sunxi@lists.linux.dev, linux-arm-msm@vger.kernel.org,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
References: <20221103-upstream-goodix-reset-v1-0-87b49ae589f1@theobroma-systems.com>
 <20221103-upstream-goodix-reset-v1-1-87b49ae589f1@theobroma-systems.com>
 <1fa371bd-78a6-bb7c-4692-1d8132ec2ab1@redhat.com>
 <Y2P7SsPa04975Rkm@google.com>
 <692fd16e-4183-d58d-802e-2b83563aee4b@redhat.com>
 <267de96a-0129-a97d-9bf6-e1001b422a1a@theobroma-systems.com>
 <16c7f876-102c-60e1-4a81-3378b6c726fb@redhat.com>
 <554ebf0a-2304-6fd0-555a-0ce1b4615bf0@theobroma-systems.com>
Content-Language: en-US, nl
From:   Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <554ebf0a-2304-6fd0-555a-0ce1b4615bf0@theobroma-systems.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 11/21/22 16:06, Quentin Schulz wrote:
> Hi Hans,
> 
> Sorry for the delay.
> 
> On 11/3/22 20:28, Hans de Goede wrote:
> [...]
>> Ok, so I've been taking a look at how we can invert the 'x' passed
>> to the gpiod_direction_output(ts->gpiod_rst, x) calls and not break
>> things with ACPI.
>>
>> The rst pin is looked up through a acpi_gpio_mapping which
>> contains acpi_gpio_params as one of the per pin parameters
>> and that does have an active_low flag.
>>
> 
> I just read the kernel docs about GPIO and ACPI and I'm not entirely sure this is always 100% safe to do:
> 
> https://docs.kernel.org/firmware-guide/acpi/gpio-properties.html
> 
> Specifically:
> """
> The GpioIo() resource unfortunately doesn't explicitly provide an initial state of the output pin which driver should use during its initialization.
> 
> Linux tries to use common sense here and derives the state from the bias and polarity settings. The table below shows the expectations:
> 
> =========  =============  ==============
> Pull Bias     Polarity     Requested...
> =========  =============  ==============
> Implicit     x            AS IS (assumed firmware configured for us)
> Explicit     x (no _DSD)  as Pull Bias (Up == High, Down == Low),
>                           assuming non-active (Polarity = !Pull Bias)
> Down         Low          as low, assuming active
> Down         High         as low, assuming non-active
> Up           Low          as high, assuming non-active
> Up           High         as high, assuming active
> =========  =============  ==============
> """
> 
> But since we actually override this during our devm_gpiod_get_optional by passing forcing the flag to be either GPIOD_IN or GPIOD_ASIS, we should be good for this driver IIUC?

Not entirely I just checked and for some reason the ACPI GPIO
lookup code will override the gpiod_flags passed to gpiod_get()
if it can determine a set of flags from the ACPI GpioIo entry.

For output pins like the reset pin, this requores a pull bias
to be set, which often is not the case, so then the GPIOD_ASIS
which we pass in is used.

But if a pull bias is specified in the ACPI GpioIo entry for
the reset pin then thats get translated to GPIOD_OUT_LOW or
GPIOD_OUT_HIGH and setting acpi_gpio_params.active_low as
your patch do will flip those.

So this may cause unintended side-effects.

This is something which we can fix though, we can force
the ACPI GPIO code to honor the GPIOD_ASIS we pass in
by changing:

static const struct acpi_gpio_params first_gpio = { 0, 0, false };
static const struct acpi_gpio_params second_gpio = { 1, 0, false };

to:

static const struct acpi_gpio_params first_gpio = { 0, 0, false, ACPI_GPIO_QUIRK_NO_IO_RESTRICTION };
static const struct acpi_gpio_params second_gpio = { 1, 0, false, ACPI_GPIO_QUIRK_NO_IO_RESTRICTION };

Which will make gpiod_get honor the GPIOD_ASIS for the reset pin
and the GPIOD_IN for the IRQ pin.

It would be good to do this as a preparation patch, because
this will be good to have regardless of the rest of your series
because the gpiolib-acpi behavior without the
ACPI_GPIO_QUIRK_NO_IO_RESTRICTION flag may already cause the
reset GPIO to get its value changed at probe time which we
do not want to happen in the Goodix driver.

If you can send me such a preparation patch + a new 1/7
on top, then I can give this a test on a x86/ACPI device
with a goodix touchscreen.

(Maybe send them offlist if you don't want to send out another
version this quickly.

Regards,

Hans


