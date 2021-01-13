Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 31BF32F5105
	for <lists+devicetree@lfdr.de>; Wed, 13 Jan 2021 18:21:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727144AbhAMRUz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jan 2021 12:20:55 -0500
Received: from foss.arm.com ([217.140.110.172]:39616 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726996AbhAMRUz (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 13 Jan 2021 12:20:55 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0D43F1FB;
        Wed, 13 Jan 2021 09:20:09 -0800 (PST)
Received: from bogus (unknown [10.57.35.27])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D49D73F66E;
        Wed, 13 Jan 2021 09:20:06 -0800 (PST)
Date:   Wed, 13 Jan 2021 17:20:00 +0000
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Achin Gupta <achin.gupta@arm.com>
Cc:     Jens Wiklander <jens.wiklander@linaro.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Devicetree List <devicetree@vger.kernel.org>,
        Trilok Soni <tsoni@codeaurora.org>, arve@android.com,
        Sudeep Holla <sudeep.holla@arm.com>,
        Andrew Walbran <qwandor@google.com>,
        David Hartley <dhh@qti.qualcomm.com>,
        Arunachalam Ganapathy <arunachalam.ganapathy@arm.com>,
        nd@arm.com
Subject: Re: [PATCH v3 6/7] firmware: arm_ffa: Setup in-kernel users of FFA
 partitions
Message-ID: <20210113170527.3qcxrfgrinfotfbh@bogus>
References: <20201204121137.2966778-1-sudeep.holla@arm.com>
 <20201204121137.2966778-7-sudeep.holla@arm.com>
 <CAHUa44EfHeKgktefhH2nEM7E++Zap8Nw7kaSqVmYVoH01Zm1VQ@mail.gmail.com>
 <CAHUa44HQJw=190MCphXecaQQn3HujHT6ZkSgG-PNARrKMQmQZw@mail.gmail.com>
 <20210113094408.pjkno4nalk5zizxa@bogus>
 <CAHUa44EcxCK0ssNHL_GR7uO3airNUdS9+xmVPvXgQfL9DhZCSw@mail.gmail.com>
 <X/78oOu6+YzvYnJ7@C02ZJ1BRLVDN>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <X/78oOu6+YzvYnJ7@C02ZJ1BRLVDN>
User-Agent: NeoMutt/20171215
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jan 13, 2021 at 01:58:56PM +0000, Achin Gupta wrote:
> On Wed, Jan 13, 2021 at 01:30:56PM +0100, Jens Wiklander wrote:
> > On Wed, Jan 13, 2021 at 10:44 AM Sudeep Holla <sudeep.holla@arm.com> wrote:
> > [...]
> > > > > > +static int ffa_partition_probe(const char *uuid_str,
> > > > > > +                              struct ffa_partition_info *buffer)
> > > > > > +{
> > > > > > +       int count;
> > > > > > +       uuid_t uuid;
> > > > > > +       u32 uuid0_4[4] = { 0 };
> > > > > > +
> > > > > > +       if (uuid_parse(uuid_str, &uuid)) {
> > > > > > +               pr_err("invalid uuid (%s)\n", uuid_str);
> > > > > > +               return -ENODEV;
> > > > > > +       }
> > > > > > +
> > > > > > +       export_uuid((u8 *)uuid0_4, &uuid);
> > > > > > +       count = __ffa_partition_info_get(uuid0_4[0], uuid0_4[1], uuid0_4[2],
> > > > > > +                                        uuid0_4[3], &buffer);
> > > > Wrong byte order?
> > > > According to section 5.3 of the SMCCC, UUIDs are returned as a single
> > > > 128-bit value using the SMC32 calling convention. This value is mapped
> > > > to argument registers x0-x3 on AArch64 (resp. r0-r3 on AArch32). x0
> > > > for example shall hold bytes 0 to 3, with byte 0 in the low-order
> > > > bits.
> > > >
> > >
> > > I need to spend some time to understand the concern here. Initially I agreed
> > > with your analysis and then a quick review make be realise it is all OK.
> > > I need to check if my understanding is correct again. I thought I will
> > > take example and check here itself.
> > >
> > > UUID: "fd02c9da-306c-48c7-a49c-bbd827ae86ee"
> 
> IIUC this maps to (as per RFC4122).
> 
> fd02c9da = time_low (bytes 0-3)
> 306c48c7 = time_mid & time_hi_and_version (bytes 4-7)
> a49cbbd8 = clock_seq_hi_and_reserved, clock_seq_low and bytes/octets 0-1 of node (bytes 8-11)
> 27ae86ee = bytes 2-5 of node (bytes 12-15)
> 
> SMCCC says:
> 
> w0 : bytes 0-3 with byte 0 in the lower order bits.
> w1 : bytes 4-7 with byte 4 in the lower order bits.
> w2 : bytes 8-11 with byte 8 in the lower order bits.
> w3 : bytes 12-15 with byte 12 in the lower order bits.
> 
> This should amount to:
> 
> w0 = dac902fd
> w1 = c7486c30
> w2 = d8bb9ca4
> w3 = ee86ae27
> 
> So, even though RFC4122 uses big-endian i.e network byte order. The UUID is
> encoded as little-endian as per the SMCCC.
> 
> What do you reckon?
>

Thank Achin, that matches my understanding too. I spent some time looking
at RFC4122[1] and concluded what we have is fine.

@Jens, one thing to note, I am not claiming to support this driver with
big-endian kernel. I plan to take that up once we settle with basic support.

> cheers,
> Achin
> 
> > >
> > > UUID[0]   UUID[1]  UUID[2]  UUID[3] (referring uuid0_4 above)
> > > dac902fd c7486c30 d8bb9ca4 ee86ae27
> > >

Matches w0-w3 above, thanks for detailed explanation

> > > It seems correct as per SMCCC convention to me, or am I missing something
> > > obvious ?
> >
> > In this example I'd expect the first register to hold 0xfd02c9da
> > regardless of the byte order of the machine. If there is a different
> > byte order in the receiver it will still be received as 0xfd02c9da.
> > That's how I've understood the specification.
> 

-- 
Regards,
Sudeep

[1] https://tools.ietf.org/html/rfc4122
