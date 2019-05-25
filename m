Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4522A2A25A
	for <lists+devicetree@lfdr.de>; Sat, 25 May 2019 04:09:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726583AbfEYCJg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 May 2019 22:09:36 -0400
Received: from mail-ot1-f68.google.com ([209.85.210.68]:37086 "EHLO
        mail-ot1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726341AbfEYCJd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 May 2019 22:09:33 -0400
Received: by mail-ot1-f68.google.com with SMTP id r10so10367733otd.4
        for <devicetree@vger.kernel.org>; Fri, 24 May 2019 19:09:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=LZzs5xzeqtVuzgwwnEv2OC+wDQwHzVptWWlrVSZVAQI=;
        b=LpSfcMLDiUhQLwFnbv22EYTidAmanIzvxucTe3e3Huy/p1Pv+V8iQonG/LTIbtqSWP
         9Mp9d+nb8WvRERLdmhJmbQ41VSRNvOmAVJ5D0lN8KdiLk4w0FDjGQaU4ppwrVx+S+WjV
         in5CGq3+upoHcc5SpSSxDe+e1+p84Psxss2SgCpq5LjgwHvBkTBVC9utrFESDIqTzsPz
         O57+O5yBKxJBq7ZHP3q+xSNxtVV+bcMRif+DI+fCRXXh2Un/j/BDDcmVQosE/Wr3BsER
         8OoeFAnK0EHvaGtU91i4CNa5tspsh08desjK5wg9SPtIzbYyu5O4iF05+Hrb1Fw3F+9L
         wz3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=LZzs5xzeqtVuzgwwnEv2OC+wDQwHzVptWWlrVSZVAQI=;
        b=Sf1j19tFiDnskLbL3Gu9JECBHC5ckOmNYnEoZI/n7P12yJMzmMPj8EMAZelVt83ZMR
         do1Yxf4ueVZa5aPvHFTpXYHM46RBazaeG6tzjctmEUNou0k/KZM7bIheJiajC3xjZHyF
         8NQufHK2x8G4Vg7xIldayL5OrdD6/fs3vxYVVxR8wKdvupUaj3zOUZcbuMkm41GvIoEs
         eKdtIwyF38rR3eZDVX9Ev71v58CjBP4Rx8UpAfCYK+R5z403QCN89ImX15JR9oDDxf8e
         lxBAh9iX9p+TX9I5F0Oa23wNc8Rpm2m+DU33z7PUsoxnvfjP0zfb6TKqXoLZxSe0ZMjK
         uSEA==
X-Gm-Message-State: APjAAAXvV9LPIGNZjREZ0qPg2LB87c1WyMbkuHFvtGLhbLHoCLyh0GdC
        qt2/W4eRdVDWT3PF02XYjQMqwVrTKvhEikQj2N9BXQ==
X-Google-Smtp-Source: APXvYqywCXHUTcsaMeWUQ99nmh25iIlVZDM17cQeOhrhvN/0hvRddyY0+adbYQ5SE14e+43owKTnBffphfwKTj126pQ=
X-Received: by 2002:a9d:3b49:: with SMTP id z67mr53168810otb.236.1558750172585;
 Fri, 24 May 2019 19:09:32 -0700 (PDT)
MIME-Version: 1.0
References: <20190524010117.225219-1-saravanak@google.com> <06b479e2-e8a0-b3e8-567c-7fa0f1c5bdf6@gmail.com>
 <CAGETcx-21GEoBKhpzcsrDt3sEo-vUpwqnr3To7VbSPd8aW86Nw@mail.gmail.com>
 <6d3995c1-e1e7-35ff-d091-501822c97ecd@gmail.com> <0634ea45-2941-73fb-f8d8-b536e929a4a8@gmail.com>
In-Reply-To: <0634ea45-2941-73fb-f8d8-b536e929a4a8@gmail.com>
From:   Saravana Kannan <saravanak@google.com>
Date:   Fri, 24 May 2019 19:08:56 -0700
Message-ID: <CAGETcx-bNhnfaThygrSbnbAmQ8PqEGHj8eVO3OvhJAomJ936Eg@mail.gmail.com>
Subject: Re: [PATCH v1 0/5] Solve postboot supplier cleanup and optimize probe ordering
To:     Frank Rowand <frowand.list@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Android Kernel Team <kernel-team@android.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Ugh... mobile app is sending HTML emails. Replying again.

On Fri, May 24, 2019 at 5:25 PM Frank Rowand <frowand.list@gmail.com> wrote:
>
> On 5/24/19 5:22 PM, Frank Rowand wrote:
> > On 5/24/19 2:53 PM, Saravana Kannan wrote:
> >> On Fri, May 24, 2019 at 10:49 AM Frank Rowand <frowand.list@gmail.com> wrote:
> >>>
> >>> On 5/23/19 6:01 PM, Saravana Kannan wrote:
> >
> > < snip >
> >
> >>> Another flaw with this method is that existing device trees
> >>> will be broken after the kernel is modified, because existing
> >>> device trees do not have the depends-on property.  This breaks
> >>> the devicetree compatibility rules.
> >>
> >> This is 100% not true with the current implementation. I actually
> >> tested this. This is fully backwards compatible. That's another reason
> >> for adding depends-on and going by just what it says. The existing
> >> bindings were never meant to describe only mandatory dependencies. So
> >> using them as such is what would break backwards compatibility.
> >
> > Are you saying that an existing, already compiled, devicetree (an FDT)
> > can be used to boot a new kernel that has implemented this patch set?
> >
> > The new kernel will boot with the existing FDT that does not have
> > any depends-on properties?

You sent out a lot of emails on this topic. But to answer them all.
The existing implementation is 100% backwards compatible.

> I overlooked something you said in the email I replied to.  You said:
>
>    "that depends-on becomes the source of truth if it exists and falls
>    back to existing common bindings if "depends-on" isn't present"

This is referring to an alternate implementation where implicit
dependencies are used by the kernel but new "depends-on" property
would allow overriding in cases where the implicit dependencies are
wrong. But this will need a kernel command line flag to enable this
feature so that we can be backwards compatible. Otherwise it won't be.

> Let me go back to look at the patch series to see how it falls back
> to the existing bindings.

Current patch series doesn't really "fallback" but rather it only acts
on this new property. Existing FDT binaries simply don't have this. So
it won't have any impact on the kernel behavior. But yes, looking at
the patches again will help :)

-Saravana
