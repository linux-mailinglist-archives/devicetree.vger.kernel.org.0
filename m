Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 998923FAF37
	for <lists+devicetree@lfdr.de>; Mon, 30 Aug 2021 02:38:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236106AbhH3AVq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 29 Aug 2021 20:21:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53860 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235855AbhH3AVo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 29 Aug 2021 20:21:44 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3A9FC061575
        for <devicetree@vger.kernel.org>; Sun, 29 Aug 2021 17:20:51 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id dm15so19058111edb.10
        for <devicetree@vger.kernel.org>; Sun, 29 Aug 2021 17:20:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=dXrpuRbINTKN9NC7qONvU+pUjUkCPaupCITRriuHuX4=;
        b=KzF6KMqq6+KKufKKXUMoc69AeNuXbP9od5wQE9WE9jCfd6X4qPFBYwPqrRfYDygYTB
         TdFBQU4BvDZnI4KVRsp+RHVe+aMomMt+jsNrbNvrlZDfQs76Ac9o2t0R9pUkGfmPgNeX
         Go2POUU8jVfOYHZ3IpZjPkN8ppVMbqbzqOY3VkiFPSbpl9Zl6Bxp9m6x4TkPsjel9Arf
         E7ZRklPcQdHYGs0dQlAkis5UBUXAZVXB6vypxjVWnJio8vp6Usp1Ci409acCMRulAyLI
         lS5xK2/53JBEXrmhOIpt1lCRZZAyhgliPFtkm/8SCab4w03mriJ4IcXlgKGyVmbMx4MN
         6Ciw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=dXrpuRbINTKN9NC7qONvU+pUjUkCPaupCITRriuHuX4=;
        b=By/1vrpAAogSrsv1WCDEmRoGszPwDAyfI5MK+DN21j4W5HBp2gk3+xF3Xao0DU6Npt
         3+ho4VVzbIHlJSz2/IvF5bvJyVqSxIl0c9H6Nizacvt3JjStLoVSFuweE4Rw0/G9gPO/
         SI05Dm+JmI8wG1UdmDEsqpenXYP/Pzq3dTs98H6NTzdIl3dglT1Qm41LqT58lcUrbdD1
         +hGOBC1MbfuMHlXPo1Onn1qAs48T4cOsBYa/D6Sr77GD0duE/JvszepThIFHft+ayeyQ
         2lZIzRImI0K6uLM/pOJYmo/yj6Er7UNKtua/ee8HcEmunNk9sYF3G+qVxsTQFgEBlY96
         uwIQ==
X-Gm-Message-State: AOAM530Iit0HznElSGhbgoyB6UsSPpq55+Q1omawkYqfApYhUuq0xh8k
        Q/p7ouM47kvgDjMn5bIvYXVFNun3UL8=
X-Google-Smtp-Source: ABdhPJzgQCb1xjHyjMdiTEVffO9SEpNN7Rp5sN7Rxd4oPb/NQh27uCSKLco6Vq8fDWRnW2XnbRRqMQ==
X-Received: by 2002:aa7:d0c3:: with SMTP id u3mr21245708edo.158.1630282850262;
        Sun, 29 Aug 2021 17:20:50 -0700 (PDT)
Received: from skbuf ([82.78.148.104])
        by smtp.gmail.com with ESMTPSA id s17sm6631691edt.69.2021.08.29.17.20.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Aug 2021 17:20:49 -0700 (PDT)
Date:   Mon, 30 Aug 2021 03:20:48 +0300
From:   Vladimir Oltean <olteanv@gmail.com>
To:     Michael Walle <michael@walle.cc>
Cc:     Tom Rini <trini@konsulko.com>, Rob Herring <robh@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org, Priyanka Jain <priyanka.jain@nxp.com>,
        u-boot@lists.denx.de, heiko.thiery@gmail.com
Subject: Re: incompatible device trees between u-boot and linux
Message-ID: <20210830002048.kbnsv47dnrkh4bvi@skbuf>
References: <20210825141816.qfn25xlech55rwsg@skbuf>
 <20210825142610.GU858@bill-the-cat>
 <20210825151220.xkpxxucce2oicfvy@skbuf>
 <20210825152408.GW858@bill-the-cat>
 <20210825154323.reksf2nyncech6so@skbuf>
 <20210825200950.GY858@bill-the-cat>
 <20210825230305.hbxhshhbdhe56iod@skbuf>
 <5798d183839b78ed5e6f2cd880934759@walle.cc>
 <20210826163233.edfj6q7xeptwevkm@skbuf>
 <0e2f6513b6fb7162faa7afd1f6f21348@walle.cc>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0e2f6513b6fb7162faa7afd1f6f21348@walle.cc>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Aug 29, 2021 at 01:12:30AM +0200, Michael Walle wrote:
> Am 2021-08-26 18:32, schrieb Vladimir Oltean:
> > On Thu, Aug 26, 2021 at 09:35:12AM +0200, Michael Walle wrote:
> > > Theres still one catch at the moment, AFAIK in linux you can put the
> > > PHYs either in the mdio controller node or in a "mdio" subnode within
> > > the ethernet controller node. I'm not sure wether the latter works in
> > > u-boot, but [1] looks promising. At least, linux dtbs are using the
> > > mdio subnodes and u-boot put the phys into the mdio controller node.
> >
> > Please change Linux for that, move the PHYs from the per-port MDIO node
> > to the PF 3 central MDIO controller node. Due to hardware reasons, the
> > per-port MDIO controller registers are in fact de-featured and should be
> > hidden from new LS1028A reference manuals.
>
> Care to share some more details? There should be some more information
> besides "for hardware reasons" which should go into the commit message.
> Is there an erratum?
>
> In fact, I guess in Rev0 of the RM it has already been removed, at least
> from the port memory map (in the RevB RM it was still present).
>
> -michael

It's a long and boring explanation, PM sent.
