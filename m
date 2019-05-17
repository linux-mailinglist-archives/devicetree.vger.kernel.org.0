Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DF47C21FF7
	for <lists+devicetree@lfdr.de>; Fri, 17 May 2019 23:55:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729608AbfEQVzV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 May 2019 17:55:21 -0400
Received: from mail-pl1-f194.google.com ([209.85.214.194]:40430 "EHLO
        mail-pl1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729522AbfEQVzV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 May 2019 17:55:21 -0400
Received: by mail-pl1-f194.google.com with SMTP id g69so3923014plb.7
        for <devicetree@vger.kernel.org>; Fri, 17 May 2019 14:55:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=message-id:mime-version:content-transfer-encoding:in-reply-to
         :references:subject:from:cc:to:user-agent:date;
        bh=3cmDmKVrpmOZMNgPRAiH0olqmC9Yh+Gmdf/HadyohC4=;
        b=J6sBCDZEcDFHQljhONfwZsgtsfwSoAQY/BmYrJ9Df8UUnT54h3T2+eZsxV5rHjLhSt
         gsEPT4lke+v+APQlrZCxIn4+A4jvnTSS7HiMae4+5DVhMVIiML1iXWIYyz6mP7E9bSa/
         hJYSNflLuHdJBE65HxtMr6Q6fCKRPt8A47avk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:mime-version
         :content-transfer-encoding:in-reply-to:references:subject:from:cc:to
         :user-agent:date;
        bh=3cmDmKVrpmOZMNgPRAiH0olqmC9Yh+Gmdf/HadyohC4=;
        b=ZQcFqPdP+X5D16YTkfCXe7GeL6uEfLb62aO2fEvbtS+ZIQ+LkQAmxrERyMKOqYlUPK
         Rq2uvAC7gLSSklV8ycxBish8fVEZPE6Q7j5zWwtH4gxKMpCLZtNB1NFNX/V4gnC77HQ5
         QR9OhTeXKl0IDm1n1f5Srl4K9Lp67j4mcQZrppW5TsdUMiDw1Y3nFt8Ce/jwSKRVxyjW
         nU1CUOA81Perry8CSCND+GrAAF2HS2hah+T+FPzz8ojCw0jZ6HzeQrwRTL6I+UPSFEHF
         kviPvBgdO+bkhUiHVZDZNy1yZgiodJoAcE1o83fjAwdeEQY17O6Mdd/DNJ9UYlb3yZaZ
         Zz5A==
X-Gm-Message-State: APjAAAXoVBE1j61A35D4q7P0xgv0Xt3wkLCFpJp6YNOSWX8nG4DJf2eN
        EuEdvosE/YvJqJ/Xcf3s9acs/g==
X-Google-Smtp-Source: APXvYqw9MkFyQZykC6TAt/08Rk/EnsGsIC2de8Bs+rNwfZLiGzHmFC8ZPpTfd4rxAE6RGMd2uFlcaw==
X-Received: by 2002:a17:902:868c:: with SMTP id g12mr42106151plo.323.1558130120619;
        Fri, 17 May 2019 14:55:20 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id e73sm9564668pfh.59.2019.05.17.14.55.19
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 17 May 2019 14:55:20 -0700 (PDT)
Message-ID: <5cdf2dc8.1c69fb81.521c8.9339@mx.google.com>
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAHLCerP69Jw27VyO+ek4Fe3-2fDiOejtz6XZPykPSRA2G1831w@mail.gmail.com>
References: <20190114184255.258318-1-mka@chromium.org> <CAHLCerP+F9AP97+qVCMqwu-OMJXRhwZrXd33Wk-vj5eyyw-KyA@mail.gmail.com> <CAHLCerPZ0Y-rkeMa_7BJWtR4g5af2vwfPY9FgOuvpUTJG3rf7g@mail.gmail.com> <155786856719.14659.2902538189660269078@swboyd.mtv.corp.google.com> <CAHLCerP69Jw27VyO+ek4Fe3-2fDiOejtz6XZPykPSRA2G1831w@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: sdm845: Add CPU topology
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     Matthias Kaehlcke <mka@chromium.org>,
        David Brown <david.brown@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:ARM/QUALCOMM SUPPORT" <linux-soc@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Douglas Anderson <dianders@chromium.org>,
        Rajendra Nayak <rnayak@codeaurora.org>
To:     Amit Kucheria <amit.kucheria@linaro.org>,
        Andy Gross <agross@kernel.org>
User-Agent: alot/0.8.1
Date:   Fri, 17 May 2019 14:55:19 -0700
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Amit Kucheria (2019-05-16 04:54:45)
> (cc'ing Andy's correct email address)
>=20
> On Wed, May 15, 2019 at 2:46 AM Stephen Boyd <swboyd@chromium.org> wrote:
> >
> > Quoting Amit Kucheria (2019-05-13 04:54:12)
> > > On Mon, May 13, 2019 at 4:31 PM Amit Kucheria <amit.kucheria@linaro.o=
rg> wrote:
> > > >
> > > > On Tue, Jan 15, 2019 at 12:13 AM Matthias Kaehlcke <mka@chromium.or=
g> wrote:
> > > > >
> > > > > The 8 CPU cores of the SDM845 are organized in two clusters of 4 =
big
> > > > > ("gold") and 4 little ("silver") cores. Add a cpu-map node to the=
 DT
> > > > > that describes this topology.
> > > >
> > > > This is partly true. There are two groups of gold and silver cores,
> > > > but AFAICT they are in a single cluster, not two separate ones. SDM=
845
> > > > is one of the early examples of ARM's Dynamiq architecture.
> > > >
> > > > > Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> > > >
> > > > I noticed that this patch sneaked through for this merge window but
> > > > perhaps we can whip up a quick fix for -rc2?
> > > >
> > >
> > > And please find attached a patch to fix this up. Andy, since this
> > > hasn't landed yet (can we still squash this into the original patch?),
> > > I couldn't add a Fixes tag.
> > >
> >
> > I had the same concern. Thanks for catching this. I suspect this must
> > cause some problem for IPA given that it can't discern between the big
> > and little "power clusters"?
>=20
> Both EAS and IPA, I believe. It influences the scheduler's view of the
> the topology.

And EAS and IPA are OK with the real topology? I'm just curious if
changing the topology to reflect reality will be a problem for those
two.

