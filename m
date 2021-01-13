Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B03872F4B50
	for <lists+devicetree@lfdr.de>; Wed, 13 Jan 2021 13:32:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725681AbhAMMbs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jan 2021 07:31:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39882 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725613AbhAMMbs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Jan 2021 07:31:48 -0500
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com [IPv6:2607:f8b0:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E2B6C061795
        for <devicetree@vger.kernel.org>; Wed, 13 Jan 2021 04:31:08 -0800 (PST)
Received: by mail-oi1-x22f.google.com with SMTP id p5so1886233oif.7
        for <devicetree@vger.kernel.org>; Wed, 13 Jan 2021 04:31:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=L67T/nYKVtEjbbPM5rtLIUM61GgZ56ZxUxoMAvJcZFk=;
        b=SxNFxWzn8He0hTvgFlvATpTluSyC3LzTIpeB6ST6+9zUhKAb5Nt96WkLqareaKSlzv
         57wxPdcXBJuh4bfoqQPLCIFa1un3h0SDbKJ8maadnynJwVZrzNsSlXTbGJxqI0TOrWEC
         2cbQXOK3iqx+Gb8+LAs5irToltc7e1UnbxT/hCWFmAXqaVTykvrZK/+n81rBQP/ABmzw
         5aJnkmGh1DEMa44+YyG+aDNBAX9C2EUBzHMlnlXdOKpdbFW0iiZ/bKCyH8VTQhw5ovTs
         PZZDUGgEEIzkJTD/i2m1T/5D8LjkBKqDcrcxcteE1Gh+9Usn4ad0rXoSeAsMMPGgXWif
         fO+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=L67T/nYKVtEjbbPM5rtLIUM61GgZ56ZxUxoMAvJcZFk=;
        b=amAi7Gj3h5HB3HAVllXya2E+aclD67PfzL6/7fYUTgeSfTJOg7WS9yXz2kWmYuZxMS
         3ymb/O8YkwwC4Mv1ZZBZmUdx4BqGhEVIAt/ccTnfiyYld/AZo37En/PU8s5Tj1Pm1cml
         j3rgWU8xw1xw6GPbHlXf4Kk+2Ix01J3qphe1DJ1Sdc/kiCaQvfMLC8Mj7rVdbFSa9hrE
         LV1h/sZXmhEP36zAAmZljt327OtNjM3PqSELfxW8J799D1N6vR5tPWReOx6mEwGf5JnN
         aQgluRHJNmGm5F9zZ7znzC1GJuzXPbqbO8qOTXvDVNUXOYiMd3uiJ8bXSkspRoj9sXCZ
         GAyw==
X-Gm-Message-State: AOAM532jvb5sI3+wOevIpi7GUHWjgRYwmbahg9fbKqeEFqnmSH87jESb
        W5n19yQ5KKpX25lvfq/jrf/WkqF5n1ksMzzwL47OGmn3DbMj9A==
X-Google-Smtp-Source: ABdhPJyjzD9ejtEfz3/C2GI6syeQNvP+mVhqLM4bf9F+B5rFLb6Pdn2RNJXHcZSA36EriqK1fExgZnCGjfiPqvlGZEg=
X-Received: by 2002:a54:4711:: with SMTP id k17mr962408oik.149.1610541067605;
 Wed, 13 Jan 2021 04:31:07 -0800 (PST)
MIME-Version: 1.0
References: <20201204121137.2966778-1-sudeep.holla@arm.com>
 <20201204121137.2966778-7-sudeep.holla@arm.com> <CAHUa44EfHeKgktefhH2nEM7E++Zap8Nw7kaSqVmYVoH01Zm1VQ@mail.gmail.com>
 <CAHUa44HQJw=190MCphXecaQQn3HujHT6ZkSgG-PNARrKMQmQZw@mail.gmail.com> <20210113094408.pjkno4nalk5zizxa@bogus>
In-Reply-To: <20210113094408.pjkno4nalk5zizxa@bogus>
From:   Jens Wiklander <jens.wiklander@linaro.org>
Date:   Wed, 13 Jan 2021 13:30:56 +0100
Message-ID: <CAHUa44EcxCK0ssNHL_GR7uO3airNUdS9+xmVPvXgQfL9DhZCSw@mail.gmail.com>
Subject: Re: [PATCH v3 6/7] firmware: arm_ffa: Setup in-kernel users of FFA partitions
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Devicetree List <devicetree@vger.kernel.org>,
        Trilok Soni <tsoni@codeaurora.org>, arve@android.com,
        Andrew Walbran <qwandor@google.com>,
        David Hartley <dhh@qti.qualcomm.com>,
        Achin Gupta <Achin.Gupta@arm.com>,
        Arunachalam Ganapathy <arunachalam.ganapathy@arm.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jan 13, 2021 at 10:44 AM Sudeep Holla <sudeep.holla@arm.com> wrote:
[...]
> > > > +static int ffa_partition_probe(const char *uuid_str,
> > > > +                              struct ffa_partition_info *buffer)
> > > > +{
> > > > +       int count;
> > > > +       uuid_t uuid;
> > > > +       u32 uuid0_4[4] = { 0 };
> > > > +
> > > > +       if (uuid_parse(uuid_str, &uuid)) {
> > > > +               pr_err("invalid uuid (%s)\n", uuid_str);
> > > > +               return -ENODEV;
> > > > +       }
> > > > +
> > > > +       export_uuid((u8 *)uuid0_4, &uuid);
> > > > +       count = __ffa_partition_info_get(uuid0_4[0], uuid0_4[1], uuid0_4[2],
> > > > +                                        uuid0_4[3], &buffer);
> > Wrong byte order?
> > According to section 5.3 of the SMCCC, UUIDs are returned as a single
> > 128-bit value using the SMC32 calling convention. This value is mapped
> > to argument registers x0-x3 on AArch64 (resp. r0-r3 on AArch32). x0
> > for example shall hold bytes 0 to 3, with byte 0 in the low-order
> > bits.
> >
>
> I need to spend some time to understand the concern here. Initially I agreed
> with your analysis and then a quick review make be realise it is all OK.
> I need to check if my understanding is correct again. I thought I will
> take example and check here itself.
>
> UUID: "fd02c9da-306c-48c7-a49c-bbd827ae86ee"
>
> UUID[0]   UUID[1]  UUID[2]  UUID[3] (referring uuid0_4 above)
> dac902fd c7486c30 d8bb9ca4 ee86ae27
>
> It seems correct as per SMCCC convention to me, or am I missing something
> obvious ?

In this example I'd expect the first register to hold 0xfd02c9da
regardless of the byte order of the machine. If there is a different
byte order in the receiver it will still be received as 0xfd02c9da.
That's how I've understood the specification.

Cheers,
Jens
