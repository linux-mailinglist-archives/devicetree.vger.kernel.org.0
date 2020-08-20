Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A44EE24C44B
	for <lists+devicetree@lfdr.de>; Thu, 20 Aug 2020 19:14:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730044AbgHTROi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Aug 2020 13:14:38 -0400
Received: from bhuna.collabora.co.uk ([46.235.227.227]:33704 "EHLO
        bhuna.collabora.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730203AbgHTRO2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Aug 2020 13:14:28 -0400
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: bbrezillon)
        by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 9F33329AB27;
        Thu, 20 Aug 2020 18:14:26 +0100 (BST)
Date:   Thu, 20 Aug 2020 19:14:24 +0200
From:   Boris Brezillon <boris.brezillon@collabora.com>
To:     Nicolas Pitre <nico@fluxnic.net>
Cc:     Miquel Raynal <miquel.raynal@bootlin.com>,
        linux-i3c@lists.infradead.org, devicetree@vger.kernel.org,
        Laura Nixon <laura.nixon@team.mipi.org>,
        Robert Gough <robert.gough@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Matthew Schnoor <matthew.schnoor@intel.com>
Subject: Re: [PATCH 2/2] i3c/master: add the mipi-i3c-hci driver
Message-ID: <20200820191424.29c42972@collabora.com>
In-Reply-To: <nycvar.YSQ.7.78.906.2008201234370.1479@knanqh.ubzr>
References: <20200814034854.460830-1-nico@fluxnic.net>
        <20200814034854.460830-3-nico@fluxnic.net>
        <20200820100829.0e44200a@xps13>
        <20200820103944.08a55ba4@collabora.com>
        <nycvar.YSQ.7.78.906.2008201234370.1479@knanqh.ubzr>
Organization: Collabora
X-Mailer: Claws Mail 3.17.6 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 20 Aug 2020 12:47:49 -0400 (EDT)
Nicolas Pitre <nico@fluxnic.net> wrote:

> On Thu, 20 Aug 2020, Boris Brezillon wrote:
> 
> > On Thu, 20 Aug 2020 10:08:29 +0200
> > Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> >   
> > > > +		/*
> > > > +		 * TODO: Extend the subsystem layer to allow for registering
> > > > +		 * new device and provide BCR/DCR/PID at the same time.    
> > > 
> > > Not sure this is needed if you don't use it directly as the core will
> > > anyway (in its current form) send the relevant CCC to read these
> > > registers.  
> > 
> > We considered optimizing that in the past but that means making the DAA
> > and SETDASA registration different. I'm not sure it's worth it to be
> > honest, PID/DCR/BCR only happens when initializing devices and I
> > suspect the overhead of querying those DATA twice in case of DAA is
> > negligible anyway.  
> 
> Wellllll... I know some people who do feel strongly about this 
> particular issue for some reasons.

Mind developing a bit why? Boot-time maybe?

> So I'd prefer giving them some hope 
> and leave the door open to some i3c_master_add_i3c_dev_and_info() 
> interface. In the end, it's just a matter of pre-filling the info struct 
> and skipping the PID retrieval in i3c_master_getpid_locked() if already 
> available, etc.

I'm definitely not closing the door, but I'd like to understand why this
is so important to them :-). Anyway, if the changes are not invasive, I
don't have a good reason to refuse it.
