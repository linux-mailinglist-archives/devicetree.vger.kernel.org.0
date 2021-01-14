Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7F2E12F5AF5
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 07:50:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727040AbhANGte (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jan 2021 01:49:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50592 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727051AbhANGtd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jan 2021 01:49:33 -0500
Received: from mail-oi1-x231.google.com (mail-oi1-x231.google.com [IPv6:2607:f8b0:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84E50C061794
        for <devicetree@vger.kernel.org>; Wed, 13 Jan 2021 22:48:47 -0800 (PST)
Received: by mail-oi1-x231.google.com with SMTP id 9so4946004oiq.3
        for <devicetree@vger.kernel.org>; Wed, 13 Jan 2021 22:48:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=OXgvYjowFERirVPsE/q4Rzz5qNIUoZh4EKCULTrJazM=;
        b=EJoM8KXerYL4JOAVjcocLj1QA8Z6Il4XOa/pFJrZqFrVVOJQ0lsioAAeejmzyGvDEh
         FSenOLDDOsaAaKyvKAes16DXJMenmJ8vZkTue5W/o36syv+xTZ4inlqEFTS5AVvF8eIp
         u1eT57naMmmv2lEFPEzyRSfs0iHxXAP0jCNO8UzYj/8A0kG5z5PWgdMFUj4vddAU9lvf
         Xh4p3qXD+PcwdTMM/fBmY9UxWIxr72pT3b/GLoGU0p73r9oUktqo5i4VdGP5lIWnIvRP
         ZN44M61hdP45h3nsTrHBIwFJ8ZUgCOVqsClzct3CetW92kR0lGIwBSLRmkBGIJ5IVnr5
         mLYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=OXgvYjowFERirVPsE/q4Rzz5qNIUoZh4EKCULTrJazM=;
        b=kdND0wBD6MUNRDchxMFK3pGeC6WrIkOXWFjHL4yd4J2PwPrfEOVDtSWOW5VrhlrnfI
         YoPh2tVwQVv3S/RMQRy1rJuyozCEZEMJbDBygj1jSkRck8M951UqNgWnsA/9rGgZMXPY
         Pp4I1JYwsIfIzvf9aIXymSkIWSNE/2uL/E6Bc/RjU9H0DzapMELXls6t6k3qItTWBdYM
         CBySMt2h81UyR63OUjdwvB5E0m+OUD9t55un7WaQl+WapZ9LHV5F5W5rZd27zJ0ntRRL
         a/9SuICtgFjaHG5HYlDfF4puLTfJTlALeFyTgV4IRYTv1IkyliDg/0HR8GOizzm5/ZO3
         xziA==
X-Gm-Message-State: AOAM533OrMzV0r/0G+psqRtMAS/0Z0lBiMdJCd+ZFsya1wR5pTYBZxVZ
        SEw7RGreTstWF2MAHNoztlJ7oGnNfXQSLCN5SjKhWg==
X-Google-Smtp-Source: ABdhPJx9YV+vXFihIaX/raGQOW32gbqHzf3LkPGBVqHUA0im6vxo4X/nTd6jVCl6EwZuCtiO+4Mao0lSCIMTnMk9kT8=
X-Received: by 2002:aca:dd03:: with SMTP id u3mr1834600oig.47.1610606926919;
 Wed, 13 Jan 2021 22:48:46 -0800 (PST)
MIME-Version: 1.0
References: <20201204121137.2966778-1-sudeep.holla@arm.com>
 <20201204121137.2966778-7-sudeep.holla@arm.com> <CAHUa44EfHeKgktefhH2nEM7E++Zap8Nw7kaSqVmYVoH01Zm1VQ@mail.gmail.com>
 <CAHUa44HQJw=190MCphXecaQQn3HujHT6ZkSgG-PNARrKMQmQZw@mail.gmail.com>
 <20210113094408.pjkno4nalk5zizxa@bogus> <CAHUa44EcxCK0ssNHL_GR7uO3airNUdS9+xmVPvXgQfL9DhZCSw@mail.gmail.com>
 <X/78oOu6+YzvYnJ7@C02ZJ1BRLVDN> <20210113170527.3qcxrfgrinfotfbh@bogus>
In-Reply-To: <20210113170527.3qcxrfgrinfotfbh@bogus>
From:   Jens Wiklander <jens.wiklander@linaro.org>
Date:   Thu, 14 Jan 2021 07:48:35 +0100
Message-ID: <CAHUa44EDooBswHYMpEZQCpcDn7Nx9+vT4-4MxL_+WU04fQb=jQ@mail.gmail.com>
Subject: Re: [PATCH v3 6/7] firmware: arm_ffa: Setup in-kernel users of FFA partitions
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     Achin Gupta <achin.gupta@arm.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Devicetree List <devicetree@vger.kernel.org>,
        Trilok Soni <tsoni@codeaurora.org>, arve@android.com,
        Andrew Walbran <qwandor@google.com>,
        David Hartley <dhh@qti.qualcomm.com>,
        Arunachalam Ganapathy <arunachalam.ganapathy@arm.com>,
        nd <nd@arm.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jan 13, 2021 at 6:20 PM Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Wed, Jan 13, 2021 at 01:58:56PM +0000, Achin Gupta wrote:
> > On Wed, Jan 13, 2021 at 01:30:56PM +0100, Jens Wiklander wrote:
> > > On Wed, Jan 13, 2021 at 10:44 AM Sudeep Holla <sudeep.holla@arm.com> wrote:
> > > [...]
> > > > > > > +static int ffa_partition_probe(const char *uuid_str,
> > > > > > > +                              struct ffa_partition_info *buffer)
> > > > > > > +{
> > > > > > > +       int count;
> > > > > > > +       uuid_t uuid;
> > > > > > > +       u32 uuid0_4[4] = { 0 };
> > > > > > > +
> > > > > > > +       if (uuid_parse(uuid_str, &uuid)) {
> > > > > > > +               pr_err("invalid uuid (%s)\n", uuid_str);
> > > > > > > +               return -ENODEV;
> > > > > > > +       }
> > > > > > > +
> > > > > > > +       export_uuid((u8 *)uuid0_4, &uuid);
> > > > > > > +       count = __ffa_partition_info_get(uuid0_4[0], uuid0_4[1], uuid0_4[2],
> > > > > > > +                                        uuid0_4[3], &buffer);
> > > > > Wrong byte order?
> > > > > According to section 5.3 of the SMCCC, UUIDs are returned as a single
> > > > > 128-bit value using the SMC32 calling convention. This value is mapped
> > > > > to argument registers x0-x3 on AArch64 (resp. r0-r3 on AArch32). x0
> > > > > for example shall hold bytes 0 to 3, with byte 0 in the low-order
> > > > > bits.
> > > > >
> > > >
> > > > I need to spend some time to understand the concern here. Initially I agreed
> > > > with your analysis and then a quick review make be realise it is all OK.
> > > > I need to check if my understanding is correct again. I thought I will
> > > > take example and check here itself.
> > > >
> > > > UUID: "fd02c9da-306c-48c7-a49c-bbd827ae86ee"
> >
> > IIUC this maps to (as per RFC4122).
> >
> > fd02c9da = time_low (bytes 0-3)
> > 306c48c7 = time_mid & time_hi_and_version (bytes 4-7)
> > a49cbbd8 = clock_seq_hi_and_reserved, clock_seq_low and bytes/octets 0-1 of node (bytes 8-11)
> > 27ae86ee = bytes 2-5 of node (bytes 12-15)
> >
> > SMCCC says:
> >
> > w0 : bytes 0-3 with byte 0 in the lower order bits.
> > w1 : bytes 4-7 with byte 4 in the lower order bits.
> > w2 : bytes 8-11 with byte 8 in the lower order bits.
> > w3 : bytes 12-15 with byte 12 in the lower order bits.
> >
> > This should amount to:
> >
> > w0 = dac902fd
> > w1 = c7486c30
> > w2 = d8bb9ca4
> > w3 = ee86ae27
> >
> > So, even though RFC4122 uses big-endian i.e network byte order. The UUID is
> > encoded as little-endian as per the SMCCC.
> >
> > What do you reckon?
> >
>
> Thank Achin, that matches my understanding too. I spent some time looking
> at RFC4122[1] and concluded what we have is fine.

Thanks for the analysis.

>
> @Jens, one thing to note, I am not claiming to support this driver with
> big-endian kernel. I plan to take that up once we settle with basic support.

No worries, the OP-TEE driver doesn't support that either.

Cheers,
Jens

>
> > cheers,
> > Achin
> >
> > > >
> > > > UUID[0]   UUID[1]  UUID[2]  UUID[3] (referring uuid0_4 above)
> > > > dac902fd c7486c30 d8bb9ca4 ee86ae27
> > > >
>
> Matches w0-w3 above, thanks for detailed explanation
>
> > > > It seems correct as per SMCCC convention to me, or am I missing something
> > > > obvious ?
> > >
> > > In this example I'd expect the first register to hold 0xfd02c9da
> > > regardless of the byte order of the machine. If there is a different
> > > byte order in the receiver it will still be received as 0xfd02c9da.
> > > That's how I've understood the specification.
> >
>
> --
> Regards,
> Sudeep
>
> [1] https://tools.ietf.org/html/rfc4122
