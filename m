Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CD511519831
	for <lists+devicetree@lfdr.de>; Wed,  4 May 2022 09:29:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345468AbiEDHdJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 May 2022 03:33:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52646 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345474AbiEDHdG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 May 2022 03:33:06 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ABDF4237FC
        for <devicetree@vger.kernel.org>; Wed,  4 May 2022 00:29:26 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id w4so743585wrg.12
        for <devicetree@vger.kernel.org>; Wed, 04 May 2022 00:29:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=8VA4FHvbsRw2CxenU94ej339VkaiHmNkpMn++qhKZkY=;
        b=BLaR8QxgOE15hRZ0jpFOV1OHP0eKmguetIqvw2yRUPitWzmBSDrDOloiPvkrZHsCP4
         d9CeK4r2v43mVUEcDlfsQW5fE7iw7ahIYOIl7PZ8hKFS0fHsWwZNGAn2O3a8frn90nQf
         c70B+1GEnqp8nJD/Oc/MCig+1DnCaJ5SS2uOXPCnDDbNLlXhkMTz8XO2THpfut2HFsdW
         y2Fb0G3PK3GJH7imqh2sWXOBFixa7+BJUdvkda2IcsR1DPRfd8stpJIkCd0WtmYCey0S
         STIJJPmdoOzn7gndEbiXnrZbt6rWUqqyXPtlZPDZj0owD8fg3XzJ70ZOClqayDmE5yl0
         jUow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=8VA4FHvbsRw2CxenU94ej339VkaiHmNkpMn++qhKZkY=;
        b=Wt4VbwaGpiHWkKgy5kIfDEeYjU2Bc+GssGkUrIB+cRNOMS5+FWAzX9aYyG1L/jneo7
         J8Gma9bZLLagB8pZKRuoExqQz7PCogBpjQjrGLNbOmBJzrelzcf2DurpAYIY9VtDvquj
         vmnJyBOROr6qRq8hbJSrig0JVScRqKzDnMLNnFeN2H47Wtz9dxstLmZsS6JejhzFmmhG
         +QCCNgKaBQe9qGfxafCKIEujnaT110jH/1hNF799EjVlKqvPzWX1FqlEpEznsRwqiiDg
         CrqfD/gO1Otg6nikHWJqvkwl6vEKOZ+t97Mw+xvn1PKdgn3gzpphnw72B1/brv/dzFb5
         REog==
X-Gm-Message-State: AOAM5306lmTN418nC/Ak4lm/rdIYHVdhL9bT3+jcuvZmvWIErye6Hbw4
        duBIzYNE36twbZVPIsX5zeBMS4hCC/OeJ1RD
X-Google-Smtp-Source: ABdhPJxfjNTKh33MUceoLSrr/tcSZI46SrnsGB2f3xSrHVOnDDOHrIYE4vZQM7mesLGOqAr8L2huvg==
X-Received: by 2002:a5d:6208:0:b0:203:dde4:c76e with SMTP id y8-20020a5d6208000000b00203dde4c76emr15234569wru.273.1651649365011;
        Wed, 04 May 2022 00:29:25 -0700 (PDT)
Received: from google.com (49.222.77.34.bc.googleusercontent.com. [34.77.222.49])
        by smtp.gmail.com with ESMTPSA id h7-20020adfa4c7000000b0020c5253d907sm11000665wrb.83.2022.05.04.00.29.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 May 2022 00:29:24 -0700 (PDT)
Date:   Wed, 4 May 2022 07:29:23 +0000
From:   Sebastian Ene <sebastianene@google.com>
To:     Rob Herring <robh@kernel.org>
Cc:     linux-kernel@vger.kernel.org,
        Derek Kiernan <derek.kiernan@xilinx.com>,
        Dragan Cvetic <dragan.cvetic@xilinx.com>,
        Arnd Bergmann <arnd@arndb.de>, devicetree@vger.kernel.org,
        qperret@google.com, will@kernel.org, maz@kernel.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v4 2/2] misc: Add a mechanism to detect stalls on guest
 vCPUs
Message-ID: <YnIrU/oTP1h2aawQ@google.com>
References: <20220429083030.3241640-1-sebastianene@google.com>
 <20220429083030.3241640-3-sebastianene@google.com>
 <YmunAm8ooJkNCx5D@kroah.com>
 <YmuvQvuPF/mn5S4C@google.com>
 <YmuyLCdpnCzGnILI@kroah.com>
 <YmxSsSxncvMak+L1@robh.at.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YmxSsSxncvMak+L1@robh.at.kernel.org>
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Apr 29, 2022 at 04:03:45PM -0500, Rob Herring wrote:
> On Fri, Apr 29, 2022 at 11:38:52AM +0200, Greg Kroah-Hartman wrote:
> > On Fri, Apr 29, 2022 at 09:26:26AM +0000, Sebastian Ene wrote:
> > > On Fri, Apr 29, 2022 at 10:51:14AM +0200, Greg Kroah-Hartman wrote:
> > > > On Fri, Apr 29, 2022 at 08:30:33AM +0000, Sebastian Ene wrote:
> > > > > This driver creates per-cpu hrtimers which are required to do the
> > > > > periodic 'pet' operation. On a conventional watchdog-core driver, the
> > > > > userspace is responsible for delivering the 'pet' events by writing to
> > > > > the particular /dev/watchdogN node. In this case we require a strong
> > > > > thread affinity to be able to account for lost time on a per vCPU.
> > > > > 
> > > > > This part of the driver is the 'frontend' which is reponsible for
> > > > > delivering the periodic 'pet' events, configuring the virtual peripheral
> > > > > and listening for cpu hotplug events. The other part of the driver
> > > > > handles the peripheral emulation and this part accounts for lost time by
> > > > > looking at the /proc/{}/task/{}/stat entries and is located here:
> > > > > https://chromium-review.googlesource.com/c/chromiumos/platform/crosvm/+/3548817
> > > > > 
> > > > > Signed-off-by: Sebastian Ene <sebastianene@google.com>
> > > > > ---
> > > > >  drivers/misc/Kconfig       |  12 +++
> > > > >  drivers/misc/Makefile      |   1 +
> > > > >  drivers/misc/vm-watchdog.c | 206 +++++++++++++++++++++++++++++++++++++
> > > > >  3 files changed, 219 insertions(+)
> > > > >  create mode 100644 drivers/misc/vm-watchdog.c
> > > > > 
> > > > > diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
> > > > > index 2b9572a6d114..26c3a99e269c 100644
> > > > > --- a/drivers/misc/Kconfig
> > > > > +++ b/drivers/misc/Kconfig
> > > > > @@ -493,6 +493,18 @@ config OPEN_DICE
> > > > >  
> > > > >  	  If unsure, say N.
> > > > >  
> > > > > +config VM_WATCHDOG
> > > > > +	tristate "Virtual Machine Watchdog"
> > > > > +	select LOCKUP_DETECTOR
> > > > > +	help
> > > > > +	  Detect CPU locks on the virtual machine. This driver relies on the
> > > > > +	  hrtimers which are CPU-binded to do the 'pet' operation. When a vCPU
> > > > > +	  has to do a 'pet', it exits the guest through MMIO write and the
> > > > > +	  backend driver takes into account the lost ticks for this particular
> > > > > +	  CPU.
> > > 
> > > Hi,
> > > 
> > > > 
> > > > There's nothing to keep this tied to a virtual machine at all, right?
> > > > You are just relying on some iomem address to be updated, so it should
> > > > be a "generic_iomem_watchdog" driver as there's nothing specific to vms
> > > > at all from what I can tell.
> > > > 
> > > > thanks,
> > > > 
> > > > greg k-h
> > > 
> > > That's right although I might think of using the term "generic lockup detector"
> > > instead of watchdog. The only reason why I would keep "virtual machine"
> > > word in, is that there is no actual hardware for this.
> > 
> > That doesn't really matter, it's just a memory location in device tree
> > that you are needing, odds are some hardware device could use it just
> > like this.

Hi,

> 
> Such as a shared on-chip memory that both a system control processor and 
> the main processors can access. Of course, those also typically already 
> have a comnunication channel.
> 
> But for a VM-hypervisor interface, why isn't one of the existing 
> communications interfaces being used? One that is discoverable would be 
> better than using DT.
> 

In a protected VM we don't trust the host to present and control the loaded
peripherals. We rely on another entity to generate a trusted device tree
for us. I hope this clarifies the need for DT and I think this information
should also be added in the changelog.

> Rob

Thanks,
Seb
