Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0E4A82071FB
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2020 13:24:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390607AbgFXLYV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Jun 2020 07:24:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50144 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388986AbgFXLYT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Jun 2020 07:24:19 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 997A0C061573
        for <devicetree@vger.kernel.org>; Wed, 24 Jun 2020 04:24:19 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id f139so2134168wmf.5
        for <devicetree@vger.kernel.org>; Wed, 24 Jun 2020 04:24:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=NrvSiaDLXTBfKnuOt7hk8LUvf/vD6JGQ7WAbFA5i7Uc=;
        b=h+qiZfi0OhOnDkgTLpZizeUC5IOa97wx3ik8VofmQ5pfxMjOrV/QZdQ1bzH0PCVdiU
         UgreOMhRLysmM+bBtebPY7anIyh5Ho7OoqBtQmM4nX9hm9SZdRD6PwLqtvezCvD5x2bP
         yKLL3oYAOG9YVSUhAPv2B0YkFFu+XrIW2mOMZL0AxwspP7uIhMzfAKKRW5Sjn3PfuI7I
         8tUEK+4WbXF6HcnEghMiSEhm2Z6Z58auYOW96L/YLupOfUvseYw9YDjMWDUdRzEAqj/T
         mPxbp9qt//mWBrqgyYQmdqSzcji9eNyItiQcmo1Ts9oa2hmbhVVJiBaLSzhtiyZR1Cab
         UiuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=NrvSiaDLXTBfKnuOt7hk8LUvf/vD6JGQ7WAbFA5i7Uc=;
        b=pi/DyX4x6DTZTvA2wGhp6rzwdPEn4VcWhP9AN5SEflWHgnYLyT7uzCI+jRBpH/YGBB
         0Wc6VCjfB+xN/oFBv8Yh1FTPQdmoR3TG7lxSGUDSvvmjse1QrBvxjMSc2U3km6txiEYw
         guazZZvviOTmcCjOITaWuPGJdc3q0mrk0XVmJoWxY8EH2dqsMwzRhpvblOUnvq2R1KMn
         Dv5pTMCHi4IEsCSecPgPZb0FipJloCScXbOxl2I9XQ0w/9vu/3j0aC2+Noa7ixixomuT
         HyiPT/3rO+k/Yku2PUj3BCDL+kmHBSWOQmQpamaD6SI4eQ3ZbmKL88v/cJURYisdrPPk
         2TzA==
X-Gm-Message-State: AOAM5314R8XVYz4x2ucwJ0995wB+6bm9PtDM3/eNO9GtpEJ40e0oVr/N
        35tD79TZe3K/fsiVPXfk6i8ulQ==
X-Google-Smtp-Source: ABdhPJxnvJ/bAKboWQS8u3ig+E2OSp3FrtA0y0gJWgzooZABsBXHuo/PhR/sGO75JnZcwGDW//Wkaw==
X-Received: by 2002:a7b:c4c3:: with SMTP id g3mr8696211wmk.126.1592997857631;
        Wed, 24 Jun 2020 04:24:17 -0700 (PDT)
Received: from dell ([2.27.35.144])
        by smtp.gmail.com with ESMTPSA id x5sm7962485wmg.2.2020.06.24.04.24.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2020 04:24:16 -0700 (PDT)
Date:   Wed, 24 Jun 2020 12:24:14 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Michael Walle <michael@walle.cc>
Cc:     Frank Rowand <frowand.list@gmail.com>, andy.shevchenko@gmail.com,
        robh+dt@kernel.org, broonie@kernel.org, devicetree@vger.kernel.org,
        linus.walleij@linaro.org, linux@roeck-us.net,
        andriy.shevchenko@linux.intel.com, robin.murphy@arm.com,
        gregkh@linuxfoundation.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] mfd: core: Make a best effort attempt to match
 devices with the correct of_nodes
Message-ID: <20200624112414.GG954398@dell>
References: <20200611191002.2256570-1-lee.jones@linaro.org>
 <30f03734-61fd-1b6b-bf11-21b6423a7c50@gmail.com>
 <20200624064145.GC954398@dell>
 <7a31b34940984b3f0921ed2d4fb29a58@walle.cc>
 <20200624082352.GF954398@dell>
 <c0a8ebd32ae07ae98fa56728c77f8e79@walle.cc>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <c0a8ebd32ae07ae98fa56728c77f8e79@walle.cc>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 24 Jun 2020, Michael Walle wrote:

> Am 2020-06-24 10:23, schrieb Lee Jones:
> > On Wed, 24 Jun 2020, Michael Walle wrote:
> 
> [..]
> 
> > > Although Rob mentioned to maybe relax that, but I sill fail to see
> > > the advantage to have an arbitrary reg property instead of a unique
> > > node name.
> > 
> > I don't have a strong opinion either way.
> > 
> > We can *also* add node name matching if Rob deems it fit.
> 
> Where do you see a use of the reg property?

The vast proportion of devices do and will have 'reg' properties.

> You already expressed
> that you see exposing the internal offset as a hack:
> 
>  "Placing "internal offsets" into the 'reg' property is a hack." [1]
> 
> So what are you putting into reg instead? Rob suggested "anything"
> documented in the hardware manual. But isn't this just also something
> we make up and especially for the MFD driver. Thus IMHO it doesn't
> qualify as a unit-address, which - as far as I understand it - is
> unique on the parent bus. To repeat my argument, its not a defined
> thing like an I2C address.

So our argument in the past (although this is going back the best part
of 10 years) has always been that; if devices are different, there is
almost always a documented (in the H/W manual/datasheet) way to
differentiate/address them.  Whether that's a physical address, an
offset, a bank ID, an I2C/SPI address or whatever.

As to not being able to use that address/ID due to the DT rules
surrounding address space as per the example in your previous email,
well that's a rule specific to DT and makes little sense in some real
world cases (such as, dare I say it, the AB8500).

You'll have to take the aforementioned point and the point about using
node names instead of 'reg' properties up with Rob and the other
interested DT folk.

Again, I'm happy to extend that functionality if it becomes acceptable
practice.

> [1] https://lore.kernel.org/linux-devicetree/20200609185231.GO4106@dell/
> 
> -michael

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
