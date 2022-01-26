Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D84EB49D21B
	for <lists+devicetree@lfdr.de>; Wed, 26 Jan 2022 19:56:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229832AbiAZS4l (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jan 2022 13:56:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229814AbiAZS4k (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jan 2022 13:56:40 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC59FC06161C
        for <devicetree@vger.kernel.org>; Wed, 26 Jan 2022 10:56:40 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 6B47A61593
        for <devicetree@vger.kernel.org>; Wed, 26 Jan 2022 18:56:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 767D0C340E3;
        Wed, 26 Jan 2022 18:56:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1643223399;
        bh=hhaLUZfEq1KVOz2cNPrNgOMr3vE07bz5xNTr1adP0tI=;
        h=Date:From:To:cc:Subject:In-Reply-To:References:From;
        b=kCFTPygZEQ+7Vfrn5aTvV6TFY6POgD5vjCuMlk7iOqFoV9eL4KMLANnYv1W/mffsw
         XwjD8X/C8hPeLcQL+A7E+lmQa5pITkcRh1U19CemCzW82QM1OsaoTY8VuHxuMi4wKC
         mdR4n1H0M+EscHj8v6EUc02b9T9E5QiYgXLDpqXedzKeLCXituGMQ71XQqZj2mGpvj
         tzMcWhlDYyasLhvWyYyWYV5HXu+qCswzU6ku4ObpTnQf62xkJINgHXrVjZ6+RF5mQ4
         z5A4L55f7bcTtsIFVgSZIh2VE+7AL5taWGFXpaa9tMFtF+qWwXyn7ZV1wlUHoVUxjr
         FL1fMVfVx65JA==
Date:   Wed, 26 Jan 2022 10:56:39 -0800 (PST)
From:   Stefano Stabellini <sstabellini@kernel.org>
X-X-Sender: sstabellini@ubuntu-linux-20-04-desktop
To:     Robin Murphy <robin.murphy@arm.com>
cc:     Sergiy Kibrik <Sergiy_Kibrik@epam.com>,
        Stefano Stabellini <sstabellini@kernel.org>,
        Julien Grall <julien@xen.org>,
        Oleksandr Tyshchenko <olekstysh@gmail.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "xen-devel@lists.xenproject.org" <xen-devel@lists.xenproject.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: xen: document Xen iommu
 device
In-Reply-To: <447f89ca-86c0-dc35-e7ac-e6639a573670@arm.com>
Message-ID: <alpine.DEB.2.22.394.2201261050300.27308@ubuntu-linux-20-04-desktop>
References: <20220117123251.140867-1-Sergiy_Kibrik@epam.com> <20220117123251.140867-2-Sergiy_Kibrik@epam.com> <e88b882f-4b5d-a801-fc68-66b7f790e11c@arm.com> <PAXPR03MB81144A63E18CAF10E785E2A7F0209@PAXPR03MB8114.eurprd03.prod.outlook.com>
 <447f89ca-86c0-dc35-e7ac-e6639a573670@arm.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 26 Jan 2022, Robin Murphy wrote:
> On 2022-01-26 15:09, Sergiy Kibrik wrote:
> > Hi Robin,
> > 
> > > 
> > > This could break Linux guests, since depending on the deferred probe
> > > timeout setting it could lead to drivers never probing because the "IOMMU"
> > > never becomes available.
> > > 
> > 
> > I've noticed no deferred probe timeouts when booting with this patch. Could
> > you please explain more on how this would break guests?
> 
> Right now I think it would actually require command-line intervention, e.g.
> "fw_devlink=on" or "deferred_probe_timeout=3600" (with modules enabled for the
> latter to take full effect), but I'm wary of the potential for future config
> options to control those behaviours by default.

If deferred_probe_timeout=3600 was specified, we would just need an
IOMMU driver in Linux for the "xen,iommu-el2-v1" node to solve the
problem, right? I guess I am trying to say that it wouldn't be a device
tree interface problem but rather a Linux implementation discussion.
