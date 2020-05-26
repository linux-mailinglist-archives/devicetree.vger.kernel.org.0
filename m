Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5EF1619A858
	for <lists+devicetree@lfdr.de>; Wed,  1 Apr 2020 11:12:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731544AbgDAJMN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Apr 2020 05:12:13 -0400
Received: from foss.arm.com ([217.140.110.172]:46626 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727627AbgDAJMM (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 1 Apr 2020 05:12:12 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4C77431B;
        Wed,  1 Apr 2020 02:12:12 -0700 (PDT)
Received: from bogus (unknown [10.37.12.97])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B94FB3F52E;
        Wed,  1 Apr 2020 02:12:10 -0700 (PDT)
Date:   Wed, 1 Apr 2020 10:12:08 +0100
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Peng Fan <peng.fan@nxp.com>
Cc:     "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        dl-linux-imx <linux-imx@nxp.com>
Subject: Re: [PATCH 1/4] firmware: arm_scmi: Make mutex channel specific
Message-ID: <20200401091208.GB3954@bogus>
References: <20200327163654.13389-1-sudeep.holla@arm.com>
 <20200327163654.13389-2-sudeep.holla@arm.com>
 <AM0PR04MB4481562E2A31386752F92C4488C90@AM0PR04MB4481.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <AM0PR04MB4481562E2A31386752F92C4488C90@AM0PR04MB4481.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Apr 01, 2020 at 01:12:37AM +0000, Peng Fan wrote:
> Hi Sudeep,
>
> > Subject: [PATCH 1/4] firmware: arm_scmi: Make mutex channel specific
> >
> > In order to support multiple SMC/HVC transport channels with associated
> > shared memory,
>
> Does this mean each channel will have its own shared memory? Or
> All channels share the same shared memory?
>

It depends on platform firmware and DT. If there is only one shmem at
the top level scmi node, all share that single channel. If some/all
protocols have their own channel, they there must be shmem entry in the
corresponding child node.

> it is better to maintain the mutex per channel instead of
> > existing global one.
>
> If all channels shared the same memory, use per channel mutex lock
> will not be able to prevent other channels accessing shared memory
> at the same time.
>

No we don't create channel per protocol. If they share, we just share
the channel pointer. Look at:

       if (!info->desc->ops->chan_available(dev, idx)) {
                cinfo = idr_find(idr, SCMI_PROTOCOL_BASE);
                if (unlikely(!cinfo)) /* Possible only if platform has no Rx */
                        return -EINVAL;
                goto idr_alloc;
        }

If a protocol doesn't have a dedicated channel, we just assign the base
protocol channel to it. We don't call chan_setup at all on that channel.
Your patch assumed so but the core driver never did that.

Hope this clarifies you doubt.

--
Regards,
Sudeep
