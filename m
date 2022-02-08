Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 65C044ACD48
	for <lists+devicetree@lfdr.de>; Tue,  8 Feb 2022 02:07:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235487AbiBHBEi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Feb 2022 20:04:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240344AbiBHAxe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Feb 2022 19:53:34 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76EE1C061355
        for <devicetree@vger.kernel.org>; Mon,  7 Feb 2022 16:53:33 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 385DAB80E8C
        for <devicetree@vger.kernel.org>; Tue,  8 Feb 2022 00:53:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57E27C340ED;
        Tue,  8 Feb 2022 00:53:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1644281610;
        bh=BKvtTLmbWxb5jV3BD/gKrYbJ6FspEd+ihRTcx/qBHEE=;
        h=Date:From:To:cc:Subject:In-Reply-To:References:From;
        b=kFemCdk9YkMAKK3gkKKC/Xyps4rO+0ZjNa+cPU6KYIJiUedzkeyq2yi0dYYfXgI85
         LgcAiZ/bKVLHdBZ4FyB0AVqWSQjgleB8ecgPbZZiFc4R5HD8htric3iqJ7qSpGY/56
         LIsBwm96Cnt3gTaoblz3DweMenZ/5J7ekNmWd6DL6eiteKwxjnlHjw9C37YJC+zv05
         D6dFuZR0JQNJPUiGgOcFzYPd0am7p13bLO2l7fRimfiCi07ypkfawzH1oelAtgWJdv
         IpL/tU2I1MIR1SDLJzrFtSfcAI33Fw61yYk7qR/+we+VOzDvsiQzDx6UEj5dJh2hVd
         FhmTbcNgazf+w==
Date:   Mon, 7 Feb 2022 16:53:23 -0800 (PST)
From:   Stefano Stabellini <sstabellini@kernel.org>
X-X-Sender: sstabellini@ubuntu-linux-20-04-desktop
To:     Rob Herring <robh@kernel.org>
cc:     Stefano Stabellini <sstabellini@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Sergiy Kibrik <Sergiy_Kibrik@epam.com>,
        Julien Grall <julien@xen.org>,
        Oleksandr Tyshchenko <olekstysh@gmail.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "xen-devel@lists.xenproject.org" <xen-devel@lists.xenproject.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: xen: document Xen iommu
 device
In-Reply-To: <Yf3dfUtYoB8wpWkl@robh.at.kernel.org>
Message-ID: <alpine.DEB.2.22.394.2202071616300.2091381@ubuntu-linux-20-04-desktop>
References: <20220117123251.140867-1-Sergiy_Kibrik@epam.com> <20220117123251.140867-2-Sergiy_Kibrik@epam.com> <e88b882f-4b5d-a801-fc68-66b7f790e11c@arm.com> <PAXPR03MB81144A63E18CAF10E785E2A7F0209@PAXPR03MB8114.eurprd03.prod.outlook.com>
 <447f89ca-86c0-dc35-e7ac-e6639a573670@arm.com> <alpine.DEB.2.22.394.2201261050300.27308@ubuntu-linux-20-04-desktop> <Yf3dfUtYoB8wpWkl@robh.at.kernel.org>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 4 Feb 2022, Rob Herring wrote:
> On Wed, Jan 26, 2022 at 10:56:39AM -0800, Stefano Stabellini wrote:
> > On Wed, 26 Jan 2022, Robin Murphy wrote:
> > > On 2022-01-26 15:09, Sergiy Kibrik wrote:
> > > > Hi Robin,
> > > > 
> > > > > 
> > > > > This could break Linux guests, since depending on the deferred probe
> > > > > timeout setting it could lead to drivers never probing because the "IOMMU"
> > > > > never becomes available.
> > > > > 
> > > > 
> > > > I've noticed no deferred probe timeouts when booting with this patch. Could
> > > > you please explain more on how this would break guests?
> > > 
> > > Right now I think it would actually require command-line intervention, e.g.
> > > "fw_devlink=on" or "deferred_probe_timeout=3600" (with modules enabled for the
> > > latter to take full effect), but I'm wary of the potential for future config
> > > options to control those behaviours by default.
> 
> fw_devlink=on is now the default (for at least a couple of cycles).
> 
> > 
> > If deferred_probe_timeout=3600 was specified, we would just need an
> > IOMMU driver in Linux for the "xen,iommu-el2-v1" node to solve the
> > problem, right? I guess I am trying to say that it wouldn't be a device
> > tree interface problem but rather a Linux implementation discussion.
> 
> You would have to add that IOMMU driver to old, existing kernels if you 
> want compatibility with a new DT. Otherwise, that kernel would stop 
> booting with a new DT.

The tiny "xen,iommu-el2-v1" driver could be backported to the stable
trees, I would imagine. Otherwise, do you have another suggestion?

It looks like fw_devlink=on applies to supplier/consumer interfaces.
If that is the problem, then maybe we should avoid supplier/consumer
interfaces altogether. Instead, we could add a new Xen specific
property, e.g.:

    device@ff0000 {
        compatible = "this,device";

        xen,iommu = "on";
    };
