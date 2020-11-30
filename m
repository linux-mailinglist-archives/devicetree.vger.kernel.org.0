Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 116202C82F5
	for <lists+devicetree@lfdr.de>; Mon, 30 Nov 2020 12:14:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728632AbgK3LOW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Nov 2020 06:14:22 -0500
Received: from foss.arm.com ([217.140.110.172]:52628 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728619AbgK3LOW (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 30 Nov 2020 06:14:22 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 23DA71042;
        Mon, 30 Nov 2020 03:13:36 -0800 (PST)
Received: from bogus (unknown [10.57.62.34])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BDCD23F66B;
        Mon, 30 Nov 2020 03:13:33 -0800 (PST)
Date:   Mon, 30 Nov 2020 11:13:27 +0000
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Jens Wiklander <jens.wiklander@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Trilok Soni <tsoni@codeaurora.org>,
        Trilok Soni <tsoni@quicinc.com>, arve@android.com,
        Andrew Walbran <qwandor@google.com>,
        David Hartley <dhh@qti.qualcomm.com>,
        Achin Gupta <Achin.Gupta@arm.com>,
        Android Kernel Team <kernel-team@android.com>,
        Fuad Tabba <tabba@google.com>
Subject: Re: [PATCH v2 7/9] firmware: arm_ffa: Setup in-kernel users of FFA
 partitions
Message-ID: <20201130111327.xnw7gzqgygpjiays@bogus>
References: <20201103174350.991593-1-sudeep.holla@arm.com>
 <20201103174350.991593-8-sudeep.holla@arm.com>
 <20201128133655.GB8649@jade>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201128133655.GB8649@jade>
User-Agent: NeoMutt/20171215
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Nov 28, 2020 at 02:36:55PM +0100, Jens Wiklander wrote:
> Hi Sudeep,
>

[...]

> > @@ -113,12 +117,19 @@ struct ffa_driver {
> >
> >  #define to_ffa_driver(d) container_of(d, struct ffa_driver, driver)
> >
> > +struct ffa_dev_ops {
> > +	int (*open)(struct ffa_device *dev);
> > +	int (*close)(struct ffa_device *dev);
> > +	long (*ioctl)(struct ffa_device *dev, unsigned int ioctl, void *arg);
> > +};
>
> I assume that all interaction with a SP is done via ffa_ops->ioctl().

Yes that was the idea.

> For example the ffa_msg_send_direct_req() function is then called via:
> struct ffa_send_recv_sync arg = { .endpoint_id = xxx, .data = yyy };
> rc = ffa_ops->ioctl(ffa_dev, FFA_SEND_RECEIVE_SYNC, &arg);
>

Correct.

> That isn't too hard to use, but is a bit inconvenient and less safe
> compared to a plain:
> rc = ffa_ops->send_recieve_sync(ffa_dev, xxx, yyy);
>

Agreed.

> I don't see any big win in then next patch with ffa_ioctl() either. That
> function must still do some actions specific for each ioctl id. So I'm a
> bit curious about the design choice.
>

Initial idea was to keep both in-kernel and user-space interface inline.
Also the assumption was that expect few old/legacy usecases, the userspace
is the way forward. While that is still ideal, but things have changed
since the main user of userspace interface(pKVM) is no longer using
FFA. I will change the interface as you mention above. I was also more
inclined towards that after dropping userspace. Good timing though, I was
about to post revised version dropping userspace. I will modify the
interface something on lines of your suggestion.

--
Regards,
Sudeep
