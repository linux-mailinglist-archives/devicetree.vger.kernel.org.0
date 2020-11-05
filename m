Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 057212A7AC9
	for <lists+devicetree@lfdr.de>; Thu,  5 Nov 2020 10:42:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727536AbgKEJmn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Nov 2020 04:42:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56076 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726688AbgKEJmm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Nov 2020 04:42:42 -0500
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com [IPv6:2a00:1450:4864:20::141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3EE64C0613CF
        for <devicetree@vger.kernel.org>; Thu,  5 Nov 2020 01:42:42 -0800 (PST)
Received: by mail-lf1-x141.google.com with SMTP id v144so1308556lfa.13
        for <devicetree@vger.kernel.org>; Thu, 05 Nov 2020 01:42:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=OHdJ9O/eb7sklBU/l07atiLZ4vkrCEwrngihboUUROU=;
        b=iiRTzja+wq6lUOKKm42/j/gHbiF5SodCPbvKvogg5CAHNsdau6W+T8LTLaDExfQN0m
         xsXSSkIcgtMb9/TadZq7F5dqrG4LhofhNMCD55eZsf3QuxcYNOVfttkQCmp0XmLrOEUY
         5EJ7LqF+32FwOjC1NNLm5rd2MjaqYhthDMUF1ijtui+nSsajeLVrDwj3wO/rvjlumvBn
         a3dtTSx3kUcFdqkC9u1imv9XL2EcRDUEg2/E/NMV1zTFrE4qppRbF9cmgAXsB+gPcG0H
         EPEkxSM9KeXyPRunaiRtHElWwlfYfXJg1P3XvcVxtjYsqwZ4jE7uDIoXP+S9kJ5S95X3
         44Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=OHdJ9O/eb7sklBU/l07atiLZ4vkrCEwrngihboUUROU=;
        b=HUvmC4pk1UnxNpWuSNdH+mQhACqJiAQALOEmMXotdBLr8rR+HQh23tlq5i4gDKBHLo
         oTYTwRdpZk4z7eD7caCCi/ST/ECF0JnZVHTPx2LV2XC3mAW13F13D2DjUbx+DDftFEBG
         vKMIjb9CiT6IO7Mw2SA54q682V1tPHgobnBz1hDnmZeFmNUgbSKkm+PbYGYf/aao1G1x
         UINgybJX9q4p9Wbjy+BlyJ+5rQAXJhNfLIMsehrG6Upswx/GRMLR4cJRGJOZfJaeBW++
         Q9pvgb6fA934jccUln0/stwUcPBTfoQRtUSDc2NqKuxl2mKIMxd00e6hO8ItSuV1Faq3
         e4xw==
X-Gm-Message-State: AOAM531cSyq0zoezrxR440NlidXtKC5OVKDeRu8WNajFgVfS7Q0pkMKj
        QxVBuw9Rx1//OAdP3OKih9OBrhidreBGhMOL9EpELA==
X-Google-Smtp-Source: ABdhPJyvHqbBfOH4pjVDXcDPP+SU3DUauVr3d4hoArhgygLP7IJAFteeJwECsCh7xRspygPGZoUQ3+4+8VofUysPWYY=
X-Received: by 2002:a05:6512:3225:: with SMTP id f5mr608257lfe.441.1604569360750;
 Thu, 05 Nov 2020 01:42:40 -0800 (PST)
MIME-Version: 1.0
References: <20201011024831.3868571-1-daniel@0x0f.com> <20201011024831.3868571-4-daniel@0x0f.com>
 <CACRpkdYmdZ81q_tsXRQ56aFjGsvV3AwJ8_hiu31mD14DGiK84A@mail.gmail.com>
 <CAFr9PXnX7QyM0VUmosFYueSe4ewA7uT2VZMfxFPaFt6-jUhoSw@mail.gmail.com>
 <CACRpkdbx+T3uX9taZNjsURHGc6qVLvGGC2boEC4=NaOi4_uZTQ@mail.gmail.com> <20201105093107.GB21245@1wt.eu>
In-Reply-To: <20201105093107.GB21245@1wt.eu>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 5 Nov 2020 10:42:29 +0100
Message-ID: <CACRpkdbCB_n_jNJ+wqWWMKHG80du3kqya0vdOu41Cb4vdvOtyg@mail.gmail.com>
Subject: Re: [PATCH 3/5] gpio: msc313: MStar MSC313 GPIO driver
To:     Willy Tarreau <w@1wt.eu>
Cc:     Daniel Palmer <daniel@0x0f.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Nov 5, 2020 at 10:31 AM Willy Tarreau <w@1wt.eu> wrote:
> On Thu, Nov 05, 2020 at 10:21:27AM +0100, Linus Walleij wrote:

> > If your SoC is only used by OpenWrt (like ixp4xx) then it is fine
> > to just use bool because that distribution is always built with an
> > image for a specific hardware, whereas distributions are generic.
>
> Speaking for myself (since I have a few now), I'm not running OpenWRT
> on mine but my own distro, and I guess most users will run either
> Buildroot or their own distro. It's unlikely that we'll see very
> generic distros there given the limited storage you'd typically have
> in an SPI NOR (16-32 MB) and the small RAM (64MB) which tends to
> discourage anyone from booting a regular distro over other storage
> anyway.
>
> Thus my guess is that most users will keep building their own kernels.
>
> But this just emphasizes your points :-)

I think that is a good argument to keep this as bool.

Yours,
Linus Walleij
