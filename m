Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 031B570D88
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2019 01:44:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731575AbfGVXoP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Jul 2019 19:44:15 -0400
Received: from mail-oi1-f195.google.com ([209.85.167.195]:33354 "EHLO
        mail-oi1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728103AbfGVXoP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Jul 2019 19:44:15 -0400
Received: by mail-oi1-f195.google.com with SMTP id u15so30960613oiv.0
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2019 16:44:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=OWRSakQ5gBDzeVkobWkR8HSpZb9HZUgwqjhmh+8L31o=;
        b=lJkTgLF4pXuf6rTnAZ3wk0l3RK5IoCWMOwcdcSELyLPv/lhyX1oqMbV0qGLhqkbACU
         D46ggq5uoyOzb+MKw/wOAcS1q6kB4LgSGBSXQwNx9O5NeWyyD5+hbSHifWbRtMsVowy9
         1Lb6JupMxU8M0FqVB5KHqPUvEQOa5u3yAH604UX9vZUT0sC7fGXEiN5+vNUi22Bb2Jp4
         VPDem3IgvZIxBJMMHpxtihtHg/0Omj0pfiOjKYlaBtTKQZ9Me0R0sxT6orcLzYaA3Ciw
         eRPORJecZOd6QNPWWk1zRAXfria2MpTw8Li9qH2LukigK10EOVhAh/J9n2zqTjP4Bzj5
         8HrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=OWRSakQ5gBDzeVkobWkR8HSpZb9HZUgwqjhmh+8L31o=;
        b=iNAE2qKaEVW2Sirc4mV8YcXwMF+Qp9VHnQUe3i9Wx5MCXtwoslZ8aRlB9CwdiSZOQK
         cVq2+XlZiJ3ido9XJ+bBjgmS5q8cxn87m5tDyyfYURHPSzWF5euou+eFcqVVBux1kBnf
         zF2noyblVra0Kx2YNpU1Jic2w9UgEzsOT82MDEnw0oDJ5YsejA139+Ya5EvMt6ZfR6ex
         v2e0gl/4T/f9J4hI8YloYUkEljNTDtAVc+JEoSvyqFqr8q4gvPWD3leOYy0Ts4627CwK
         r/9ybdaGEWFZBWD+nmZb9ChLFBkUBtCZDdoLC5m0rCIZgABFZyUF08cf9EXiJL6bL9PB
         twYQ==
X-Gm-Message-State: APjAAAXt0c93+xkunMlRmq9VDW71vAJncd4mwkt2J5Nk2yHrskag/YIR
        G1zWtAX2VFMGzIsEwlA5yXWj2JzzFO4NyUR20vNo/Q==
X-Google-Smtp-Source: APXvYqwoVIJPfpQXiC98z/h8FW7U3z9P5lhBYysrMf8a1285DsxdONOWkFBnZFRYhx+Acqhjh96hKewOCBbxlcHCm94=
X-Received: by 2002:aca:6104:: with SMTP id v4mr36782532oib.172.1563839053869;
 Mon, 22 Jul 2019 16:44:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190703011020.151615-1-saravanak@google.com> <20190703011020.151615-6-saravanak@google.com>
 <20190722233927.GA1353@bogus>
In-Reply-To: <20190722233927.GA1353@bogus>
From:   Saravana Kannan <saravanak@google.com>
Date:   Mon, 22 Jul 2019 16:43:38 -0700
Message-ID: <CAGETcx-vNdqmt9_OHJnCv661i-B-f6WAvvqsz2H8c_EM+=fNBQ@mail.gmail.com>
Subject: Re: [PATCH v3 5/6] dt-bindings: interconnect: Add interconnect-opp-table
 property
To:     Rob Herring <robh@kernel.org>
Cc:     Georgi Djakov <georgi.djakov@linaro.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>,
        "Rafael J. Wysocki" <rjw@rjwysocki.net>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        "Sweeney, Sean" <seansw@qti.qualcomm.com>,
        daidavid1@codeaurora.org, Rajendra Nayak <rnayak@codeaurora.org>,
        Sibi Sankar <sibis@codeaurora.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Evan Green <evgreen@chromium.org>,
        Android Kernel Team <kernel-team@android.com>,
        Linux PM <linux-pm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 22, 2019 at 4:39 PM Rob Herring <robh@kernel.org> wrote:
>
> On Tue, Jul 02, 2019 at 06:10:19PM -0700, Saravana Kannan wrote:
> > Add support for listing bandwidth OPP tables for each interconnect path
> > listed using the interconnects property.
> >
> > Signed-off-by: Saravana Kannan <saravanak@google.com>
> > ---
> >  .../devicetree/bindings/interconnect/interconnect.txt     | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/interconnect/interconnect.txt b/Documentation/devicetree/bindings/interconnect/interconnect.txt
> > index 6f5d23a605b7..fc5b75b76a2c 100644
> > --- a/Documentation/devicetree/bindings/interconnect/interconnect.txt
> > +++ b/Documentation/devicetree/bindings/interconnect/interconnect.txt
> > @@ -55,10 +55,18 @@ interconnect-names : List of interconnect path name strings sorted in the same
> >                        * dma-mem: Path from the device to the main memory of
> >                                   the system
> >
> > +interconnect-opp-table: List of phandles to OPP tables (bandwidth OPP tables)
> > +                     that specify the OPPs for the interconnect paths listed
> > +                     in the interconnects property. This property can only
> > +                     point to OPP tables that belong to the device and are
> > +                     listed in the device's operating-points-v2 property.
> > +
>
> IMO, there's no need for this property. Which OPP is which should be
> defined already as part of the device's binding. That's enough for the
> driver to know which OPP applies to the interconnect.

Sure, I don't mind dropping this.

-Saravana
