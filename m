Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CB8F325F678
	for <lists+devicetree@lfdr.de>; Mon,  7 Sep 2020 11:29:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728316AbgIGJ3K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Sep 2020 05:29:10 -0400
Received: from foss.arm.com ([217.140.110.172]:58638 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728284AbgIGJ3J (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 7 Sep 2020 05:29:09 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7F7C930E;
        Mon,  7 Sep 2020 02:29:08 -0700 (PDT)
Received: from bogus (unknown [10.57.10.112])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BF38B3F66E;
        Mon,  7 Sep 2020 02:29:06 -0700 (PDT)
Date:   Mon, 7 Sep 2020 10:29:00 +0100
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Fuad Tabba <tabba@google.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        kernel-team@android.com, Will Deacon <will@kernel.org>,
        tsoni@quicinc.com, pratikp@quicinc.com,
        Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH 6/9] firmware: arm_ffa: Add initial Arm FFA driver support
Message-ID: <20200907092900.GA17330@bogus>
References: <20200829170923.29949-1-sudeep.holla@arm.com>
 <20200829170923.29949-7-sudeep.holla@arm.com>
 <CA+EHjTwYm--tOGjFq0aqP_bsBPu+f1hGTYrVxsuqLw-4K+QJMA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CA+EHjTwYm--tOGjFq0aqP_bsBPu+f1hGTYrVxsuqLw-4K+QJMA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 07, 2020 at 08:55:13AM +0100, Fuad Tabba wrote:
> Hi Sudeep,
> 
> I understand that this is an RFC, but I have a few suggestions about
> how the FF-A interface code might be structured.  See below.
> 
> On Sat, Aug 29, 2020 at 6:09 PM Sudeep Holla <sudeep.holla@arm.com> wrote:
> >
> > This just add a basic driver that sets up the transport(e.g. SMCCC),
> > checks the FFA version implemented, get the partition ID for self and
> > sets up the Tx/Rx buffers for communication.
> >
> > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> > ---
> >  drivers/firmware/arm_ffa/Makefile |   3 +-
> >  drivers/firmware/arm_ffa/common.h |  23 +++
> >  drivers/firmware/arm_ffa/driver.c | 288 ++++++++++++++++++++++++++++++
> >  3 files changed, 313 insertions(+), 1 deletion(-)
> >  create mode 100644 drivers/firmware/arm_ffa/common.h
> >  create mode 100644 drivers/firmware/arm_ffa/driver.c
> >

[...]

> > +
> > +/**
> > + * FF-A specification mentions explicitly about '4K pages'. This should
> > + * not be confused with the kernel PAGE_SIZE, which is the translation
> > + * granule kernel is configured and may be one among 4K, 16K and 64K.
> > + */
> > +#define FFA_PAGE_SIZE          SZ_4K
> > +/* Keeping RX TX buffer size as 64K for now */
> > +#define RXTX_BUFFER_SIZE       SZ_64K
> 
> The code/definitions above will be reused in other parts that deal
> will FF-A (e.g., support for FF-A in KVM itself), so it might be good
> to have it in a common header.  I was wondering if it might even be a
> good idea to reuse the Hafnium headers here (assuming I understand
> licensing right):
> https://review.trustedfirmware.org/plugins/gitiles/hafnium/hafnium/+/refs/heads/master/inc/vmapi/hf/ffa.h
> 

I know few DTS files have dual license, but I am not sure about the
headers and other source. But I agree on a common header and forgot to
mention that explicitly but I am aware of, that we not only need common
header, but some of the functions may also be reused. I am keeping them
in the driver for now. We can move once we the KVM part also starts
shaping up(before or after one of then gets merged, doesn't matter much)

> > +
> > +static ffa_fn *invoke_ffa_fn;
> > +
> > +static const int ffa_linux_errmap[] = {
> > +       /* better than switch case as long as return value is continuous */
> > +       0,              /* FFA_RET_SUCCESS */
> > +       -EOPNOTSUPP,    /* FFA_RET_NOT_SUPPORTED */
> > +       -EINVAL,        /* FFA_RET_INVALID_PARAMETERS */
> > +       -ENOMEM,        /* FFA_RET_NO_MEMORY */
> > +       -EBUSY,         /* FFA_RET_BUSY */
> > +       -EINTR,         /* FFA_RET_INTERRUPTED */
> > +       -EACCES,        /* FFA_RET_DENIED */
> > +       -EAGAIN,        /* FFA_RET_RETRY */
> > +       -ECANCELED,     /* FFA_RET_ABORTED */
> > +};
> > +
> > +static inline int ffa_to_linux_errno(int errno)
> > +{
> > +       if (errno < FFA_RET_SUCCESS && errno >= FFA_RET_ABORTED)
> > +               return ffa_linux_errmap[-errno];
> > +       return -EINVAL;
> > +}
> 
> Hardcoding the range check to be bound by FFA_RET_ABORTED could cause
> some issues in the future if more error codes are added.  It might be
> safer to check against the number of elements in ffa_linux_errmap.
> 

Makes sense, will see how I can fix that.

-- 
Regards,
Sudeep
