Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A92093F8329
	for <lists+devicetree@lfdr.de>; Thu, 26 Aug 2021 09:35:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239566AbhHZHgF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Aug 2021 03:36:05 -0400
Received: from ssl.serverraum.org ([176.9.125.105]:47853 "EHLO
        ssl.serverraum.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234415AbhHZHgF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Aug 2021 03:36:05 -0400
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ssl.serverraum.org (Postfix) with ESMTPSA id 0ED0022234;
        Thu, 26 Aug 2021 09:35:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc; s=mail2016061301;
        t=1629963315;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=FZbVFSRECeSYkYQRmKuYktBgnV8YvuadDqWaGxeohV0=;
        b=EjJCh7+bA5tx9fBxGUYWNYXcJUIHP8ii/Xp+iRPUqnejQRXQ2BHmWaXoPeroQUr5jCIp7Q
        RWeQpuNA6VwFOObCUsTFj2vT6iaEC1ZuFcBdF1TNF2sVeGVTDXanImWJ5NNCKtAZbOi/9v
        5x+1N6fuj6UIzj7eGh8b6EYy6uTeBW0=
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date:   Thu, 26 Aug 2021 09:35:12 +0200
From:   Michael Walle <michael@walle.cc>
To:     Vladimir Oltean <olteanv@gmail.com>
Cc:     Tom Rini <trini@konsulko.com>, Rob Herring <robh@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org, Priyanka Jain <priyanka.jain@nxp.com>,
        u-boot@lists.denx.de, heiko.thiery@gmail.com
Subject: Re: incompatible device trees between u-boot and linux
In-Reply-To: <20210825230305.hbxhshhbdhe56iod@skbuf>
References: <51c2a92f6bf771769f1e2da5157727e8@walle.cc>
 <20210825140045.GR858@bill-the-cat> <20210825141816.qfn25xlech55rwsg@skbuf>
 <20210825142610.GU858@bill-the-cat> <20210825151220.xkpxxucce2oicfvy@skbuf>
 <20210825152408.GW858@bill-the-cat> <20210825154323.reksf2nyncech6so@skbuf>
 <20210825200950.GY858@bill-the-cat> <20210825230305.hbxhshhbdhe56iod@skbuf>
User-Agent: Roundcube Webmail/1.4.11
Message-ID: <5798d183839b78ed5e6f2cd880934759@walle.cc>
X-Sender: michael@walle.cc
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am 2021-08-26 01:03, schrieb Vladimir Oltean:
> On Wed, Aug 25, 2021 at 04:09:50PM -0400, Tom Rini wrote:
> In any case, it doesn't sound absurd at all, with a bit of passion it
> could be done on all Layerscapes. I would be absolutely glad to help on
> the Ethernet / DSA side of things (which I believe is the reason why
> Michael summoned me into this thread),

;) and because I thought you might be interested in the answer to the
initial question. After all, you also worked on the device trees in 
linux
and u-boot.

> but I don't believe that's where
> the problem is right now. When I added the DM_DSA uclass to U-Boot I 
> did
> my best to pick a reasonable subset of Linux DSA, and with compatible
> device tree bindings. Also maintaining the Linux side of things, I did
> provide feedback to Tim Harvey for the Microchip KSZ switches as to
> what is the subset supported by U-Boot that would also be DT-compatible
> with Linux. If it turns out that I failed at that, I am willing to
> rework what we have.

I started to convert the u-boot device tree yesterday - and it doesn't
look too bad for now. I was already able to copy the kernel soc dtsi
and u-boot is still booting and working.

Theres still one catch at the moment, AFAIK in linux you can put the
PHYs either in the mdio controller node or in a "mdio" subnode within
the ethernet controller node. I'm not sure wether the latter works in
u-boot, but [1] looks promising. At least, linux dtbs are using the
mdio subnodes and u-boot put the phys into the mdio controller node.

Maybe sharing the device tree between linux and u-boot isn't that hard
for the ls1028a after all and its just that nobody did it for now.
Renaming the reference here and there and introducing the linux
compatible strings may do it. I'll come back to you if there are
problems with ethernet (or DSA).

-michael

> I have been known on a few occasions to say "U-Boot does not parse this
> part of the device tree, you can just strip it away", but I will keep 
> my
> mouth shut from now on.

[1] https://lists.denx.de/pipermail/u-boot/2020-May/410169.html
