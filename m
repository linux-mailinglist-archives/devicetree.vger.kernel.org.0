Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 55DC52F4775
	for <lists+devicetree@lfdr.de>; Wed, 13 Jan 2021 10:26:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726768AbhAMJX0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jan 2021 04:23:26 -0500
Received: from foss.arm.com ([217.140.110.172]:32954 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726017AbhAMJXZ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 13 Jan 2021 04:23:25 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 02FC61063;
        Wed, 13 Jan 2021 01:22:40 -0800 (PST)
Received: from bogus (unknown [10.57.35.27])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 915B33F66E;
        Wed, 13 Jan 2021 01:22:38 -0800 (PST)
Date:   Wed, 13 Jan 2021 09:22:36 +0000
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Jens Wiklander <jens.wiklander@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Trilok Soni <tsoni@codeaurora.org>, arve@android.com,
        Sudeep Holla <sudeep.holla@arm.com>,
        Andrew Walbran <qwandor@google.com>,
        David Hartley <dhh@qti.qualcomm.com>,
        Achin Gupta <Achin.Gupta@arm.com>,
        Arunachalam Ganapathy <arunachalam.ganapathy@arm.com>
Subject: Re: [PATCH v3 6/7] firmware: arm_ffa: Setup in-kernel users of FFA
 partitions
Message-ID: <20210113092236.pnabzaufzuzwprmw@bogus>
References: <20201204121137.2966778-1-sudeep.holla@arm.com>
 <20201204121137.2966778-7-sudeep.holla@arm.com>
 <20201207123018.GA1748888@jade>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20201207123018.GA1748888@jade>
User-Agent: NeoMutt/20171215
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Dec 07, 2020 at 01:30:18PM +0100, Jens Wiklander wrote:
> Hi Sudeep,
> 
> Some comments below.
> 
> On Fri, Dec 04, 2020 at 12:11:36PM +0000, Sudeep Holla wrote:

[...]

> > +
> > +int ffa_setup_partitions(struct device_node *np)
> > +{
> > +	int ret;
> > +	struct device_node *child;
> > +	struct ffa_device *ffa_dev;
> > +	struct ffa_partition_info pbuf;
> > +	const char *p_uuid, *pfx = "Ignoring FFA partition";
> > +	uuid_t uuid = UUID_INIT(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
> > +
> > +	for_each_child_of_node(np, child) {
> 
> The spec says:
> – If the Nil UUID is specified at the Non-secure virtual FF-A instance,
>   the Hypervisor must provide information for partitions resident in both
>   security states.
>

That was my initial understanding of the specification. However I was told
it is designed mostly for Non-Secure Hypervisor for getting the list of
secure partitions and help in allocation of non-secure partition/endpoint IDs.
This has been topic of discussion recently.

> Doesn't that make this redundant?
>

Not exactly. One main reason why the discovery API (get partition info) is
not much useful here in this context is that it lacks UUID and hence not much
of use unless you know UUID. The result we get for Nil UUID needs to be mapped
to UUID and I can't think of anyway to do so outside the scope of the spec.
I have raised it but not sure if there is a strong requirement to add it.

Similarly, I would have like 32 vs 64 bit capable partition info from there
ideally, but we are here now.

-- 
Regards,
Sudeep
