Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 19D322A3F74
	for <lists+devicetree@lfdr.de>; Tue,  3 Nov 2020 09:57:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727936AbgKCI4Z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Nov 2020 03:56:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727921AbgKCI4Z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Nov 2020 03:56:25 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A192C0617A6
        for <devicetree@vger.kernel.org>; Tue,  3 Nov 2020 00:56:24 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id 205so4199863wma.4
        for <devicetree@vger.kernel.org>; Tue, 03 Nov 2020 00:56:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=rLDVs90HA1Aa+VugGzlqO4fLN0akysT9yEHAzoqJBD4=;
        b=SZQ67zdvLAgNLnEVBHfuSAHpiveEkSKRczKIGbpt3wBrWTve25M0Eh/H0+UqKG042b
         qSWODOktAM/IYQR9xNOtbV/xSzCknBirpktpfU7EM4M7uJRfgQjft4sXp0TOwqm3lkwz
         EcWHTsqfTrddlouXjbF/5+2aSePLpTDgNfOm0Hw+yO9x/yH+FasQ6DJzabfRqN/8k0nK
         hpRWiaqzaJUXtAoRrc3vi87SQtQveoQM/ihh8QI8TWmbCFzEmjvT7A8VWTmTCrhqs+h0
         zySHsWdRiD+vfWP6Wl8pYmI5xeSMkUEnvbKrVh2eSWZ1Mbr5KWUQURH0G8OWE18oRIKg
         8Hdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=rLDVs90HA1Aa+VugGzlqO4fLN0akysT9yEHAzoqJBD4=;
        b=Kz6pa2HM0C1CsI7mRlZwsraGioLXIMiUapPWq73j6jQTzORdSxFgZX0G6tzDPrwR6x
         FfBx8lr/ZgXd8IBSUwI5D8Sge+s9c+hv8b3uLifsRFG+H1JWLRTA1848dVGwSOA3T3+n
         +r1ZGWvePVlUL1P1Q7qGs7y7JRGmS3vMjXNyc4SWoSEnrbmgsgIb6G503V8uI2fiO5kF
         YsB4kKQmfdQtA9zt7QVbMx6C/JI+CXO6eiTCJCrb0hcFqjC843xfCMCsQsPmzsXgyysU
         aaVtBjRGM6yiGGm7ZwIZnSqthtQndA3s5plii1qEAedIU8emjvlttHEwWnSuSZXu14yJ
         lW4w==
X-Gm-Message-State: AOAM531Z5Rnnt9/FVmXG+XaGoISc3kRmkcGGGkkj+NhouTrPnzUA/H1N
        dtLHpzmI/icjrdDK5mnDwqzxiw==
X-Google-Smtp-Source: ABdhPJwJNIYTW9tTc+Ezdxe0aES7lJBJWFwUM1pZ4XapbFkcE4vbG0IUDESF5nCL8gmLDVjDSEHgSQ==
X-Received: by 2002:a1c:2d8f:: with SMTP id t137mr2344738wmt.26.1604393783224;
        Tue, 03 Nov 2020 00:56:23 -0800 (PST)
Received: from dell ([91.110.221.242])
        by smtp.gmail.com with ESMTPSA id u195sm2235969wmu.18.2020.11.03.00.56.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Nov 2020 00:56:22 -0800 (PST)
Date:   Tue, 3 Nov 2020 08:56:20 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Codrin.Ciubotariu@microchip.com
Cc:     Nicolas.Ferre@microchip.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        richard.genoud@gmail.com, alexandre.belloni@bootlin.com,
        Ludovic.Desroches@microchip.com
Subject: Re: [PATCH] ARM: dts: at91: add serial MFD sub-node for usart
Message-ID: <20201103085620.GM4488@dell>
References: <20201030110702.886638-1-codrin.ciubotariu@microchip.com>
 <b054ce5c-58fd-dd86-2cb6-1e1f06a0899e@microchip.com>
 <20201102090122.GF4127@dell>
 <780303c7-2c32-f2e1-c9ce-1e2ee6bf0533@microchip.com>
 <20201102122952.GB4488@dell>
 <e2b038f0-81ea-3d2f-cb06-dd02f0b84860@microchip.com>
 <9f99dcf1-239d-b3b3-4b7d-e6d628bb3fed@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <9f99dcf1-239d-b3b3-4b7d-e6d628bb3fed@microchip.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 02 Nov 2020, Codrin.Ciubotariu@microchip.com wrote:

> On 02.11.2020 14:55, Codrin.Ciubotariu@microchip.com wrote:
> > On 02.11.2020 14:29, Lee Jones wrote:
> >> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> >>
> >> On Mon, 02 Nov 2020, Codrin.Ciubotariu@microchip.com wrote:
> >>
> >>> On 02.11.2020 11:01, Lee Jones wrote:
> >>>> On Fri, 30 Oct 2020, Nicolas Ferre wrote:
> >>>>
> >>>>> On 30/10/2020 at 12:07, Codrin Ciubotariu wrote:
> >>>>>> The "atmel,at91sam9260-usart" driver is a MFD driver, so it needs sub-nodes
> >>>>>> to match the registered platform device. For this reason, we add a serial
> >>>>>> subnode to all the "atmel,at91sam9260-usart" serial compatible nods. This
> >>>>>> will also remove the boot warning:
> >>>>>> "atmel_usart_serial: Failed to locate of_node [id: -2]"
> >>>>>
> >>>>> I don't remember this warning was raised previously even if the MFD driver
> >>>>> was added a while ago (Sept. 2018).
> >>>>>
> >>>>> I would say it's due to 466a62d7642f ("mfd: core: Make a best effort attempt
> >>>>> to match devices with the correct of_nodes") which was added on mid August
> >>>>> and corrected with 22380b65dc70 ("mfd: mfd-core: Ensure disabled devices are
> >>>>> ignored without error") but maybe not covering our case.
> >>>>>
> >>>>> So, well, I don't know what's the best option to this change. Moreover, I
> >>>>> would say that all other USART related properties go into the child not if
> >>>>> there is a need for one.
> >>>>>
> >>>>> Lee, I suspect that we're not the only ones experiencing this ugly warning
> >>>>> during the boot log: can you point us out how to deal with it for our
> >>>>> existing atmel_serial.c users?
> >>>>
> >>>> You should not be instantiating drivers through Device Tree which are
> >>>> not described there.  If the correct representation of the H/W already
> >>>> exists in Device Tree i.e. no SPI and UART IP really exists, use the
> >>>> MFD core API to register them utilising the platform API instead.
> >>>>
> >>>> This should do it:
> >>>>
> >>>> diff --git a/drivers/mfd/at91-usart.c b/drivers/mfd/at91-usart.c
> >>>> index 6a8351a4588e2..939bd2332a4f6 100644
> >>>> --- a/drivers/mfd/at91-usart.c
> >>>> +++ b/drivers/mfd/at91-usart.c
> >>>> @@ -17,12 +17,10 @@
> >>>>
> >>>>     static const struct mfd_cell at91_usart_spi_subdev = {
> >>>>            .name = "at91_usart_spi",
> >>>> -       .of_compatible = "microchip,at91sam9g45-usart-spi",
> >>>>     };
> >>>>
> >>>>     static const struct mfd_cell at91_usart_serial_subdev = {
> >>>>            .name = "atmel_usart_serial",
> >>>> -       .of_compatible = "atmel,at91rm9200-usart-serial",
> >>>>     };
> >>>>
> >>>>     static int at91_usart_mode_probe(struct platform_device *pdev)
> >>>
> >>> [snip]
> >>>
> >>> Hi Lee, thank you for looking through our usart driver and for sharing
> >>> your thoughts. Removing the usage of compatible string means that for
> >>> similar serial/SPI IPs we would need to create new platform drivers.
> >>
> >> Why would you need to do that?
> > 
> > In the case we will have to support another similar IP, but with a
> > different set of features. Not a new platform driver from scratch, but
> > at least a new struct platform_driver for each variant.
> 
> I guess we could use struct mfd_cell.platform_data to select the 
> features for the serial/SPI. This platform data can be per compatible of 
> our MFD driver. I will send a patch with the changes you suggested. 

Yes, that is what platform data is for.

> Thank you!

NP.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
