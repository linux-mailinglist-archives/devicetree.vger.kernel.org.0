Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9F1773F8C38
	for <lists+devicetree@lfdr.de>; Thu, 26 Aug 2021 18:32:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232555AbhHZQdZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Aug 2021 12:33:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230200AbhHZQdY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Aug 2021 12:33:24 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACF65C061757
        for <devicetree@vger.kernel.org>; Thu, 26 Aug 2021 09:32:36 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id y5so5538855edp.8
        for <devicetree@vger.kernel.org>; Thu, 26 Aug 2021 09:32:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=RFpKnWPiZT8qUPRIZkqE82HMTSETLSUu9NOh/FV4GCI=;
        b=SImZOYiP74MHW7Kh7UC8aeeP94mIx53u84MihFStH0J2bxGLatQZ02xkmmtpjb4axf
         il6ikp8IovF2zlq01ZuzDAn3fnKgz7oVDo42NGLMz5ffPHqAKi6PnunFRlasTad4rSUj
         eTbI476B6kutflmt9Lm+lECVXJUGB5SwYY7a9GMTlrzSTNV7a40BjZymPbpW28db3zhm
         pc+rBJyzdSzIZbQL2pyRCYKCEP+Ekn2UvqthCRvzXDDT6VTdLJcFawjPX3emgd1LnLCl
         92Y/FZvLXCGZYphI3NMaMy2QXzMu4mhJo6KVeEqwzpPTb2Hbfrl6bqiyI4eVJnBFqTDf
         NsNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=RFpKnWPiZT8qUPRIZkqE82HMTSETLSUu9NOh/FV4GCI=;
        b=TjdhlS3/fmegI4mldcT9/w9WzElcShNZB9z0HbwFoOQNSug65bHTw8oU+XxX+ga9Fy
         D8TyYs13kP7EnYM/U1S5zmW3CK9YMxtZhqNwmcn+jrEFWBedN2w2iVf0IZPVguIe9wrl
         KNzAhtYleuPR/hiGduuRdaPuJ0YwQPHe0HnxDPu80vDhK3oZG15WhrlVfxVQTMlTWp4B
         f/vnKPsR2ZthoV9mzEsUz/bicQawo7WnJxXBirIZeZsWSnQjKb+qX0nfSA/EeklwaU7j
         E2KYwfdg3vMcalD/GmisX/m/dYJ+QpGr0POrTXHI35uOAmD8iS3JI/AvWkmjTLUvJlyB
         64PQ==
X-Gm-Message-State: AOAM532clskeYFoGmFNmXzDw+bWQrGWcnp6kpIoz3Q4ePa6cN67Guz/3
        THsH2xNbk8RSAFRdEyje++0=
X-Google-Smtp-Source: ABdhPJzC+Ja6AO6cqX+ObsKDyq/VFKe86SfZXtv2qn4zeskPkaPaMAdyhkjp+UCOyG3QukGdBNEY8w==
X-Received: by 2002:aa7:dc56:: with SMTP id g22mr5140459edu.187.1629995555210;
        Thu, 26 Aug 2021 09:32:35 -0700 (PDT)
Received: from skbuf ([82.78.148.104])
        by smtp.gmail.com with ESMTPSA id c28sm1661965ejc.102.2021.08.26.09.32.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Aug 2021 09:32:34 -0700 (PDT)
Date:   Thu, 26 Aug 2021 19:32:33 +0300
From:   Vladimir Oltean <olteanv@gmail.com>
To:     Michael Walle <michael@walle.cc>
Cc:     Tom Rini <trini@konsulko.com>, Rob Herring <robh@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org, Priyanka Jain <priyanka.jain@nxp.com>,
        u-boot@lists.denx.de, heiko.thiery@gmail.com
Subject: Re: incompatible device trees between u-boot and linux
Message-ID: <20210826163233.edfj6q7xeptwevkm@skbuf>
References: <51c2a92f6bf771769f1e2da5157727e8@walle.cc>
 <20210825140045.GR858@bill-the-cat>
 <20210825141816.qfn25xlech55rwsg@skbuf>
 <20210825142610.GU858@bill-the-cat>
 <20210825151220.xkpxxucce2oicfvy@skbuf>
 <20210825152408.GW858@bill-the-cat>
 <20210825154323.reksf2nyncech6so@skbuf>
 <20210825200950.GY858@bill-the-cat>
 <20210825230305.hbxhshhbdhe56iod@skbuf>
 <5798d183839b78ed5e6f2cd880934759@walle.cc>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5798d183839b78ed5e6f2cd880934759@walle.cc>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 26, 2021 at 09:35:12AM +0200, Michael Walle wrote:
> Am 2021-08-26 01:03, schrieb Vladimir Oltean:
> > On Wed, Aug 25, 2021 at 04:09:50PM -0400, Tom Rini wrote:
> > In any case, it doesn't sound absurd at all, with a bit of passion it
> > could be done on all Layerscapes. I would be absolutely glad to help on
> > the Ethernet / DSA side of things (which I believe is the reason why
> > Michael summoned me into this thread),
> 
> ;) and because I thought you might be interested in the answer to the
> initial question. After all, you also worked on the device trees in linux
> and u-boot.
> 
> > but I don't believe that's where
> > the problem is right now. When I added the DM_DSA uclass to U-Boot I did
> > my best to pick a reasonable subset of Linux DSA, and with compatible
> > device tree bindings. Also maintaining the Linux side of things, I did
> > provide feedback to Tim Harvey for the Microchip KSZ switches as to
> > what is the subset supported by U-Boot that would also be DT-compatible
> > with Linux. If it turns out that I failed at that, I am willing to
> > rework what we have.
> 
> I started to convert the u-boot device tree yesterday - and it doesn't
> look too bad for now. I was already able to copy the kernel soc dtsi
> and u-boot is still booting and working.
> 
> Theres still one catch at the moment, AFAIK in linux you can put the
> PHYs either in the mdio controller node or in a "mdio" subnode within
> the ethernet controller node. I'm not sure wether the latter works in
> u-boot, but [1] looks promising. At least, linux dtbs are using the
> mdio subnodes and u-boot put the phys into the mdio controller node.

Please change Linux for that, move the PHYs from the per-port MDIO node
to the PF 3 central MDIO controller node. Due to hardware reasons, the
per-port MDIO controller registers are in fact de-featured and should be
hidden from new LS1028A reference manuals.

> Maybe sharing the device tree between linux and u-boot isn't that hard
> for the ls1028a after all and its just that nobody did it for now.
> Renaming the reference here and there and introducing the linux
> compatible strings may do it. I'll come back to you if there are
> problems with ethernet (or DSA).
> 
> -michael
> 
> > I have been known on a few occasions to say "U-Boot does not parse this
> > part of the device tree, you can just strip it away", but I will keep my
> > mouth shut from now on.
> 
> [1] https://lists.denx.de/pipermail/u-boot/2020-May/410169.html
