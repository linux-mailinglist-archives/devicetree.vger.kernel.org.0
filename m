Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 21A6D4AA593
	for <lists+devicetree@lfdr.de>; Sat,  5 Feb 2022 03:14:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1356172AbiBECOY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Feb 2022 21:14:24 -0500
Received: from mail-oi1-f169.google.com ([209.85.167.169]:40460 "EHLO
        mail-oi1-f169.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355924AbiBECOX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Feb 2022 21:14:23 -0500
Received: by mail-oi1-f169.google.com with SMTP id q8so10635815oiw.7
        for <devicetree@vger.kernel.org>; Fri, 04 Feb 2022 18:14:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=bavDyoeix3ivKrmvk1c86k8fQHTEv2BfyXOQ+LGiGnA=;
        b=V6Z4xlDwZcHXVwTd1eEEKFKKeJVT0Q6uSyerW6YMVFxhwH77cKU3ETPWnZKyC9NhTd
         lobJUDWiJDHIbPzl4iMNNReNQ5yPw/nxJvZUkuLbyyUzTnZSLUYrZICGyq4zKKcfD60M
         rmt7WofVg4SsPeAlNO6MyRcX0A+6K88W4EuoHF5P/PEbPAu5xXZrwtxsNUjq6fBjhOQh
         CGLXPFy61jLQOiKpBnwfRcZweDcD+99oQ9x8YtyMI/oX0ZIQdTtwGf2lQ6GZ6BIweya6
         TqL5y45Z3PmvdMbiBcZ4SMWBdDu4nrIeFhUXPkYUcoYbarKLtuj4M/WRCAJ3m9YWbJUm
         WCjw==
X-Gm-Message-State: AOAM53094tQaVRayD3HVRt9vHJI+/fWB5AZqT0fJJRIS0YjDmhYoKuFy
        u8oItcDL7ffSMd5zht0WPg==
X-Google-Smtp-Source: ABdhPJzohhI86BDByZJvtg/GYgD3FQPT2/j3rlDpD888Vi5x4ag/iD4VE+2Pi/X/ul8DPGRoE3J0Dw==
X-Received: by 2002:aca:c056:: with SMTP id q83mr2812199oif.294.1644027263107;
        Fri, 04 Feb 2022 18:14:23 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id i23sm1389213otj.19.2022.02.04.18.14.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Feb 2022 18:14:22 -0800 (PST)
Received: (nullmailer pid 3618455 invoked by uid 1000);
        Sat, 05 Feb 2022 02:14:21 -0000
Date:   Fri, 4 Feb 2022 20:14:21 -0600
From:   Rob Herring <robh@kernel.org>
To:     Stefano Stabellini <sstabellini@kernel.org>
Cc:     Robin Murphy <robin.murphy@arm.com>,
        Sergiy Kibrik <Sergiy_Kibrik@epam.com>,
        Julien Grall <julien@xen.org>,
        Oleksandr Tyshchenko <olekstysh@gmail.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "xen-devel@lists.xenproject.org" <xen-devel@lists.xenproject.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: xen: document Xen iommu device
Message-ID: <Yf3dfUtYoB8wpWkl@robh.at.kernel.org>
References: <20220117123251.140867-1-Sergiy_Kibrik@epam.com>
 <20220117123251.140867-2-Sergiy_Kibrik@epam.com>
 <e88b882f-4b5d-a801-fc68-66b7f790e11c@arm.com>
 <PAXPR03MB81144A63E18CAF10E785E2A7F0209@PAXPR03MB8114.eurprd03.prod.outlook.com>
 <447f89ca-86c0-dc35-e7ac-e6639a573670@arm.com>
 <alpine.DEB.2.22.394.2201261050300.27308@ubuntu-linux-20-04-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2201261050300.27308@ubuntu-linux-20-04-desktop>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jan 26, 2022 at 10:56:39AM -0800, Stefano Stabellini wrote:
> On Wed, 26 Jan 2022, Robin Murphy wrote:
> > On 2022-01-26 15:09, Sergiy Kibrik wrote:
> > > Hi Robin,
> > > 
> > > > 
> > > > This could break Linux guests, since depending on the deferred probe
> > > > timeout setting it could lead to drivers never probing because the "IOMMU"
> > > > never becomes available.
> > > > 
> > > 
> > > I've noticed no deferred probe timeouts when booting with this patch. Could
> > > you please explain more on how this would break guests?
> > 
> > Right now I think it would actually require command-line intervention, e.g.
> > "fw_devlink=on" or "deferred_probe_timeout=3600" (with modules enabled for the
> > latter to take full effect), but I'm wary of the potential for future config
> > options to control those behaviours by default.

fw_devlink=on is now the default (for at least a couple of cycles).

> 
> If deferred_probe_timeout=3600 was specified, we would just need an
> IOMMU driver in Linux for the "xen,iommu-el2-v1" node to solve the
> problem, right? I guess I am trying to say that it wouldn't be a device
> tree interface problem but rather a Linux implementation discussion.

You would have to add that IOMMU driver to old, existing kernels if you 
want compatibility with a new DT. Otherwise, that kernel would stop 
booting with a new DT.

Rob

