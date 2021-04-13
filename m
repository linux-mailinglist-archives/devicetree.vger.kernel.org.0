Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EE60435E7ED
	for <lists+devicetree@lfdr.de>; Tue, 13 Apr 2021 23:00:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343490AbhDMU74 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Apr 2021 16:59:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59658 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241568AbhDMU7z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Apr 2021 16:59:55 -0400
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com [IPv6:2607:f8b0:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D73A2C06175F
        for <devicetree@vger.kernel.org>; Tue, 13 Apr 2021 13:59:29 -0700 (PDT)
Received: by mail-ot1-x32c.google.com with SMTP id p6-20020a9d69460000b029028bb7c6ff64so1303910oto.10
        for <devicetree@vger.kernel.org>; Tue, 13 Apr 2021 13:59:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=Hzr+drbNXiK2tYxvWmdfvPi+leW5/F2odA/8wjTreJs=;
        b=BmCcB2+ghlq6G0idKSkghL7hw/drvsShjVRVqiivG/kJ5+Q7Oq+YPu1vkeejFWXNwb
         TJ2yDFWdrxEUbKb/f+FByYO6x0C36v96mQkiLaLcCSQDWDANdosfCpEz5DPzO6Rksscf
         0BLN+2VrM5LYCa1zTCiBA7+TlHfg79OkfCdC2TCoP8u9Ih0DAUcuJJ5RMUKvFcSklxAo
         tT0eBStnNd9/O8tqQL+wRFZ2DHgxJu622oBogm8XVo26eNc3D5bLZTHGCOMH4EHame0f
         hPjM9stcFyseRXfs9AJtH4owa47Wf+vMzE7p8jbmmbi3mblxBYM4TIy/4VYkwOv5t4/y
         KauA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Hzr+drbNXiK2tYxvWmdfvPi+leW5/F2odA/8wjTreJs=;
        b=q3NzePd1ndqr348rLYx/BtlKDpIAZH51jdxSRwEcVDgL5xtPKaq9WpNhHiCYjZd7lq
         inprFydZRkLhA08DYg/wO190EhQzhR22Zx0jZcmTRmQdZLB8RvJ1HoIJHIGkRVMYF+6o
         MUIDSsfRRe20JkSHBCsiaA4pGL0/nlo2JeEneJ1dqc9ZSTN07emfCFE5lAqbAKcaw63F
         T6cMqf0ojJ/ZZ2/LJpYsUQmgI7ofvtygf0yrt9Zghhg1yJrgnU+Y01t3N/dyXW5jCxz5
         zErl+3A7UPNvRBMqZUOyfu4v63wUPRCKGYQkCLa+ma1ENNq8vY96q4Ymf4Ti4ZWhxhVM
         LBuA==
X-Gm-Message-State: AOAM530mRQzN2S5dzuJ75OMVdI1PEWAp34A2c7G3TDklcEZ3LIkXDFxK
        F/MC7dpWorJRByPv9TlaQNWRuw==
X-Google-Smtp-Source: ABdhPJwCzRTr0jfeqL0F1t8YVvyEYWo6fiplNERisZ/Csco6W/DlnVdtqr3ILpTAnP2qdq6a9FwjAg==
X-Received: by 2002:a05:6830:c5:: with SMTP id x5mr17821007oto.317.1618347569113;
        Tue, 13 Apr 2021 13:59:29 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id n25sm735157oop.13.2021.04.13.13.59.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 13:59:28 -0700 (PDT)
Date:   Tue, 13 Apr 2021 15:59:26 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     linux-remoteproc@vger.kernel.org,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, ohad@wizery.com, robh+dt@kernel.org
Subject: Re: [PATCH 3/5] dt-bindings: remoteproc: Add the documentation for
 Meson AO ARC rproc
Message-ID: <YHYGLuxIN7WMakco@builder.lan>
References: <20201230012724.1326156-1-martin.blumenstingl@googlemail.com>
 <20201230012724.1326156-4-martin.blumenstingl@googlemail.com>
 <YFLBPGNQpT9mM3AJ@builder.lan>
 <CAFBinCA92411o5+AGApr8+nkMdmzJ4ddzVY+Cb5FLBez+-92nA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAFBinCA92411o5+AGApr8+nkMdmzJ4ddzVY+Cb5FLBez+-92nA@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue 23 Mar 17:02 CDT 2021, Martin Blumenstingl wrote:

> Hi Bjorn,
> 
> On Thu, Mar 18, 2021 at 3:55 AM Bjorn Andersson
> <bjorn.andersson@linaro.org> wrote:
> [...]
> > > +examples:
> > > +  - |
> > > +    remoteproc@1c {
> > > +      compatible= "amlogic,meson8-ao-arc", "amlogic,meson-mx-ao-arc";
> > > +      reg = <0x1c 0x8>, <0x38 0x8>;
> >
> > I'm generally not in favor of mapping "individual" registers, do you
> > know what hardware block this is part of? Can you express the whole
> > block as an single entity in your DT?
> the answer is unfortunately not easy :-)
> 
> some background information:
> Amlogic SoCs have two power domains:
> - AO (Always-On)
> - EE (Everything-Else)
> 
> AO includes (at least) one ARC core for which this remoteproc dt-binding is.
> EE includes ARM Cortex-A7/15/... cores
> 
> The AO registers can be accessed from the EE power-domain and vice versa
> 
> Following is an extract (with comments added by me) for the AO
> registers (taken from the GPL vendor kernel):
> #define AO_RTI_STATUS_REG0 ((0x00 << 10) | (0x00 << 2))
> #define AO_RTI_STATUS_REG1 ((0x00 << 10) | (0x01 << 2))
> #define AO_RTI_STATUS_REG2 ((0x00 << 10) | (0x02 << 2))
> these three are used for communication with the firmware on the AO ARC core
> I am not sure into which Linux subsystem these would fit into best
> 
> #define AO_RTI_PWR_CNTL_REG1 ((0x00 << 10) | (0x03 << 2))
> #define AO_RTI_PWR_CNTL_REG0 ((0x00 << 10) | (0x04 << 2))
> this includes various power-domains for the following functionality
> (and probably more):
> - DDR PHY I/O
> - AHB SRAM
> - video encoder/decoders
> - EE domain isolation
> 
> #define AO_RTI_PIN_MUX_REG ((0x00 << 10) | (0x05 << 2))
> first part of the pin controller registers for the "AO" bank pads
> this includes various GPIOs, UART, I2C for communication with a PMIC,
> infrared remote decoder, two PWMs, etc.
> all (known) functionality can be used by Linux as well.
> especially the UART, I2C, IR decoder and GPIOs are functionality that
> we use with Linux today - without involving the AO ARC
> remote-processor.
> 
> #define AO_WD_GPIO_REG ((0x00 << 10) | (0x06 << 2))
> (I think this is related to the watchdog being able to trigger the
> SoC's reset line, but there's no documentation on this register)
> 
> #define AO_REMAP_REG0 ((0x00 << 10) | (0x07 << 2))
> #define AO_REMAP_REG1 ((0x00 << 10) | (0x08 << 2))
> remap registers for the AO ARC remote-processor as used in this binding
> 
> #define AO_GPIO_O_EN_N ((0x00 << 10) | (0x09 << 2))
> #define AO_GPIO_I ((0x00 << 10) | (0x0A << 2))
> GPIO controller registers for the "AO" bank pads
> 
> #define AO_RTI_PULL_UP_REG ((0x00 << 10) | (0x0B << 2))
> second part of the pin controller registers for the "AO" bank pads
> 
> #define AO_RTI_WD_MARK ((0x00 << 10) | (0x0D << 2))
> again, I think this is somehow related to the watchdog but there's no
> documentation on this
> 
> #define AO_CPU_CNTL ((0x00 << 10) | (0x0E << 2))
> #define AO_CPU_STAT ((0x00 << 10) | (0x0F << 2))
> used for booting the AO ARC remote-processor
> 
> #define AO_RTI_GEN_CNTL_REG0 ((0x00 << 10) | (0x10 << 2))
> seems to be a multi purpose register as it (seems to) contains some
> reset bits (for the AO UART and RTC) - not documented
> 
> (more registers are following)
> 
> to summarize this: I think there's indeed three different sets of registers
> having one big device-tree node spanning all of these registers seems
> incorrect to me as the other IPs are independent of the AO ARC
> remote-processor.
> so the way I have done it in the original patch is the best I could
> come up with.
> 
> Please let me know what you think!
> 

I see.

Describing these kinds blocks in DT is indeed tricky, I've had
both cases where a block maps to multiple "functions" or where they
contain misc registers to be used in relation to some other block.

The prior typically lends itself to be modelled as a "simple-mfd" and
the latter as a "syscon".

So perhaps you could do a simple-mfd that spans the entire block and
then describe the remoteproc, watchdog?, pinctrl pieces as children
under that?

Regards,
Bjorn
