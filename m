Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8684448E018
	for <lists+devicetree@lfdr.de>; Thu, 13 Jan 2022 23:12:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236746AbiAMWMN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jan 2022 17:12:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233023AbiAMWMN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jan 2022 17:12:13 -0500
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com [IPv6:2607:f8b0:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F365C061574
        for <devicetree@vger.kernel.org>; Thu, 13 Jan 2022 14:12:13 -0800 (PST)
Received: by mail-oi1-x22a.google.com with SMTP id s9so9748781oib.11
        for <devicetree@vger.kernel.org>; Thu, 13 Jan 2022 14:12:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=Q1RZh6ZlkkGn5haPLf3lJ80OlcrDDIY21UcTQkVGdUE=;
        b=mzka08hkQd6umZIgko9vckt2pT0TXAFY5hXj7PBBDaKyMU2IgojS1mL+OWNCVnYvTA
         +WjwOGYcLzHWCt6MUEuwVapWCQY7I+lw9c0eHjQrSLUgavT+ILjcFZq9yPlEu9W7TwVS
         GTcpSslb0f/spU4EKRZztcJtNaVMjbEWQAXkE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc:content-transfer-encoding;
        bh=Q1RZh6ZlkkGn5haPLf3lJ80OlcrDDIY21UcTQkVGdUE=;
        b=Z+QdAkWn4gQgAFV/Nr6ESW1Jn33027K2KsVtlll8bRHcVJm/GvafHEZWdyY1MUYNDp
         ri7MGkogoh/uhJENRAR11N60cuFp15cUgS2x5tZYBsrgHzRNRSLY5lsW4j2Rs/ilychj
         /R+K2YKtb4nJv38h/Wv4fsp1FCpVxm4jlPKR5QrORdi2JFCY021hnjm73ZMAGOxGU5aC
         aU1+5OGG0fEmCLLTIuUmgeiguVA9xIQy9j8yfwR5qlA+v0HJxLS6cN35iNd2ITPrfaQ1
         i27p+n4jfd9qV+MUid6koGCZZFkkkmSdqSwOtaoNPNtoUUPRWyhlmrYlEn58H+ERJ7x8
         bjag==
X-Gm-Message-State: AOAM531tiZN/Hpv3TvCjG/korWwqlIUkQgeQ5yUuJYkphw6kj1tagPU7
        MJNg38V/SWWgPnrVeuGpTOVbHvN01W/K3yVq04jq/HSVrfM=
X-Google-Smtp-Source: ABdhPJxz8K6CuzBNTBM5ngKwGPADgP7gEDz25qRL5x69UiR1aeNg9hDL/gVh7CdJu6VV9WcPu3i7c76UrpU2imoo7F8=
X-Received: by 2002:aca:a953:: with SMTP id s80mr10614157oie.164.1642111932362;
 Thu, 13 Jan 2022 14:12:12 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 13 Jan 2022 14:12:11 -0800
MIME-Version: 1.0
In-Reply-To: <YeBLuh7/MeyFDxhw@axis.com>
References: <20220111122111.3869046-1-marten.lindahl@axis.com>
 <CAL_JsqLbYmxtG8w7aDxR9kZL3TvhZXyPy3fvPuiqmHa3c8ewJQ@mail.gmail.com> <YeBLuh7/MeyFDxhw@axis.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Thu, 13 Jan 2022 14:12:11 -0800
Message-ID: <CAE-0n51eAN5=pt9RtB6guxmOBy_tGe5mBOpxW6=uKz+=-GUYiQ@mail.gmail.com>
Subject: Re: [PATCH] of: fdt: Check overlap of reserved memory regions
To:     Marten Lindahl <martenli@axis.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     =?UTF-8?Q?M=C3=A5rten_Lindahl?= <Marten.Lindahl@axis.com>,
        Frank Rowand <frowand.list@gmail.com>,
        Kees Cook <keescook@chromium.org>,
        Anton Vorontsov <anton@enomsg.org>,
        Colin Cross <ccross@android.com>,
        Tony Luck <tony.luck@intel.com>, kernel <kernel@axis.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Marten Lindahl (2022-01-13 07:56:42)
> On Tue, Jan 11, 2022 at 07:34:00PM +0100, Rob Herring wrote:
> > On Tue, Jan 11, 2022 at 6:25 AM M=C3=A5rten Lindahl <marten.lindahl@axi=
s.com> wrote:
>
> Hi Rob!
> Thanks for looking at this.
> > >
> > > If a DT specified reserved memory region overlaps an already register=
ed
> > > reserved region no notification is made. Starting the system with
> > > overlapped memory regions can make it very hard to debug what is goin=
g
> > > wrong. This is specifically true in case the ramoops console intersec=
ts
> > > with initrd since the console overwrites memory that is used for init=
rd,
> > > which leads to memory corruption.
> > >
> > > Highlight this by printing a message about overlapping memory regions=
.
> >
> > Won't this be noisy if a region is described in both /memreserve/ and
> > /reserved-memory node?
> >
> Yes, it can potentially be noisy if doing so. But I think notifying this
> can be useful. Should it perhaps be a notification instead of a warning?
>

Please don't print any message for /memreserve/ and /reserved-memory nodes
overlapping. On the chromebook at my desk we have overlapping
/memreserve/ and /reserved-memory. My understanding is that it's
redundant to have both, especially when a reserved-memory node has
'no-map', but it isn't forbidden. The /memreserve/ is like a no-map
/resreved-memory node without the phandle.

Given that initrd is special cased in drivers/of/fdt.c can the reserved
memory handling code look to see if it overlaps with the initrd region
and skip that /reserved-memory carveout? A warning could probably be
printed and ramoops should fail to probe.
