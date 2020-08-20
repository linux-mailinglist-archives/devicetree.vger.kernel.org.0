Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 02D2524C38F
	for <lists+devicetree@lfdr.de>; Thu, 20 Aug 2020 18:48:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730306AbgHTQr7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Aug 2020 12:47:59 -0400
Received: from pb-smtp1.pobox.com ([64.147.108.70]:55167 "EHLO
        pb-smtp1.pobox.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730290AbgHTQrx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Aug 2020 12:47:53 -0400
Received: from pb-smtp1.pobox.com (unknown [127.0.0.1])
        by pb-smtp1.pobox.com (Postfix) with ESMTP id 0FCE5703AD;
        Thu, 20 Aug 2020 12:47:51 -0400 (EDT)
        (envelope-from nico@fluxnic.net)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=date:from:to
        :cc:subject:in-reply-to:message-id:references:mime-version
        :content-type; s=sasl; bh=wdYMeq/iDAON7u+9mXSY99qFs4k=; b=XIDWJa
        kEw7CeDy7zd0SDNL0htjjJKv8u8OBYZXARTYRHkGaPvCXUppkVMhax4fwVBTaPp/
        treDWuolzDcJVZCettbvDjnwIEGgcxXzXsFFm68nUGS+J0uqaH5ZxbcwJ0EKOIDl
        XS+2xhk2CVup/JtltMGKYxeX49djMv1yviUIM=
Received: from pb-smtp1.nyi.icgroup.com (unknown [127.0.0.1])
        by pb-smtp1.pobox.com (Postfix) with ESMTP id 07303703AA;
        Thu, 20 Aug 2020 12:47:51 -0400 (EDT)
        (envelope-from nico@fluxnic.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=fluxnic.net;
 h=date:from:to:cc:subject:in-reply-to:message-id:references:mime-version:content-type; s=2016-12.pbsmtp; bh=/uQeyO134Kmg5f7MnrjYjAxh3mJEe6OJ1sddWo90uaE=; b=x+Vwvn514Ck719+vrI+/Oyh0c5IIrOvS49aACx7Ud5WZUquD2z1IIeM0gPeCoKUypzFADzZ0uY5SUCK47KngiZ6ZEySkhJoe7h5YIDw/+9BRrN9XR9Y/FP2cU/dePxF61+sqsZBad9frW/UuwAWFxcY1KoHbq9WdEhkYw2EwNlA=
Received: from yoda.home (unknown [24.203.50.76])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by pb-smtp1.pobox.com (Postfix) with ESMTPSA id 71C82703A9;
        Thu, 20 Aug 2020 12:47:50 -0400 (EDT)
        (envelope-from nico@fluxnic.net)
Received: from xanadu.home (xanadu.home [192.168.2.2])
        by yoda.home (Postfix) with ESMTPSA id 848E22DA01C4;
        Thu, 20 Aug 2020 12:47:49 -0400 (EDT)
Date:   Thu, 20 Aug 2020 12:47:49 -0400 (EDT)
From:   Nicolas Pitre <nico@fluxnic.net>
To:     Boris Brezillon <boris.brezillon@collabora.com>
cc:     Miquel Raynal <miquel.raynal@bootlin.com>,
        linux-i3c@lists.infradead.org, devicetree@vger.kernel.org,
        Laura Nixon <laura.nixon@team.mipi.org>,
        Robert Gough <robert.gough@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Matthew Schnoor <matthew.schnoor@intel.com>
Subject: Re: [PATCH 2/2] i3c/master: add the mipi-i3c-hci driver
In-Reply-To: <20200820103944.08a55ba4@collabora.com>
Message-ID: <nycvar.YSQ.7.78.906.2008201234370.1479@knanqh.ubzr>
References: <20200814034854.460830-1-nico@fluxnic.net> <20200814034854.460830-3-nico@fluxnic.net> <20200820100829.0e44200a@xps13> <20200820103944.08a55ba4@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Pobox-Relay-ID: E2555116-E304-11EA-9AE0-01D9BED8090B-78420484!pb-smtp1.pobox.com
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 20 Aug 2020, Boris Brezillon wrote:

> On Thu, 20 Aug 2020 10:08:29 +0200
> Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> 
> > > +		/*
> > > +		 * TODO: Extend the subsystem layer to allow for registering
> > > +		 * new device and provide BCR/DCR/PID at the same time.  
> > 
> > Not sure this is needed if you don't use it directly as the core will
> > anyway (in its current form) send the relevant CCC to read these
> > registers.
> 
> We considered optimizing that in the past but that means making the DAA
> and SETDASA registration different. I'm not sure it's worth it to be
> honest, PID/DCR/BCR only happens when initializing devices and I
> suspect the overhead of querying those DATA twice in case of DAA is
> negligible anyway.

Wellllll... I know some people who do feel strongly about this 
particular issue for some reasons. So I'd prefer giving them some hope 
and leave the door open to some i3c_master_add_i3c_dev_and_info() 
interface. In the end, it's just a matter of pre-filling the info struct 
and skipping the PID retrieval in i3c_master_getpid_locked() if already 
available, etc.


Nicolas
