Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D13D110757F
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2019 17:13:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726784AbfKVQNN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Nov 2019 11:13:13 -0500
Received: from mail-wr1-f68.google.com ([209.85.221.68]:38929 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726546AbfKVQNN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Nov 2019 11:13:13 -0500
Received: by mail-wr1-f68.google.com with SMTP id y11so6166742wrt.6
        for <devicetree@vger.kernel.org>; Fri, 22 Nov 2019 08:13:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ue+2IthhhGtKyv4t4iHUlxAukreMwi7oDs762tZEuAc=;
        b=KVOL2ZAVkRnPR+f4GChlOTRXBbJqDY56n2tqA4uC+oer6FUMpp/GFUTnENCOCwdTDw
         MfNT4733dkN8pzIiEfUJTCj4gRS3T96dFIrmeTjQ563Wd5aGIHHr+Oyi2lK+epJXU3IA
         HJewQ4Gh7EIx9yw+ljcwhwVtZuGOFe2ps3qudhV/vsrVxz/oLtKtdhR+UsU2GSJ+9z0M
         re/xyXPuIyHRmo+cZXzPO1OYphN0TBmLEOBuH9gIFHTTRr1RiNEGlZ3bIzOGV0uJaydG
         y0atF5KUKuPNWIbB7kNmnwF7DEcdGPz9W+gpopNZQ4rbVniRB3J5h0y6pKKmU34EH5CQ
         v2WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ue+2IthhhGtKyv4t4iHUlxAukreMwi7oDs762tZEuAc=;
        b=WFbzUpXk7P+xCcQ8ZbcEOwKrKOfLrP3PfdA0k9f3CstGxDOhIng4mZ0/+2CK0ZNcsD
         Us9E+bwPyWbZcNjlxVSIdHxnOpbXy/iXxlj6gzIQR7lkabLdH7jqWVsf5YD564hX2dpq
         tBb8pSv4X5UOWD8tChDc8WqM7HqtAVBHSKAEoDUG3BXHurTGfx5IE36TdPQ8PzT5sdu0
         r67HmgswJEI8KBJHVU8FO3AG19S4CX4jbKNOHHyaMy/UZn0j7OES0ptxBXVq1kvOyw+s
         SyJteg6xEfgx6/3/9Gyv6EccNYc2wrGyGq8JTYhuPDbVIWhL0/lTiZc0P/4BgW7gS/57
         jvFw==
X-Gm-Message-State: APjAAAVbAbxMA3QRlU7qvgJSgCpNw/bjzOpaWFIM3LNxRmyGEfSrYkwe
        ox0O6vZLgAX5tT+F2H0sefiHDoRdHHfBpCYdCCBk0A==
X-Google-Smtp-Source: APXvYqzUwCgFnybDJAA94Iz+jswhtq7TUIdhMl8vsH+s/SaWoYv0C0ZIQLw5JdXIGbZZKbd7zy4UxC8zZB/Bs/gzDOc=
X-Received: by 2002:adf:b1cb:: with SMTP id r11mr18963430wra.246.1574439190783;
 Fri, 22 Nov 2019 08:13:10 -0800 (PST)
MIME-Version: 1.0
References: <20191120190028.4722-1-will@kernel.org> <CAL_JsqJm+6Cg4JfG1EzRMJ2hyPV1O8WbitjGC=XMvZRDD+=OGw@mail.gmail.com>
 <20191122145525.GA14153@willie-the-truck> <CAL_JsqJvhP2YqQwAZg=GecpVNMbHN9OcZxTO8LrvH_jphFJw=A@mail.gmail.com>
In-Reply-To: <CAL_JsqJvhP2YqQwAZg=GecpVNMbHN9OcZxTO8LrvH_jphFJw=A@mail.gmail.com>
From:   Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date:   Fri, 22 Nov 2019 17:12:59 +0100
Message-ID: <CAKv+Gu8HjzpDfh2=gUXuV-OLWbePVEPJU369V4_S6=Q7e4_bzg@mail.gmail.com>
Subject: Re: [PATCH] of: property: Add device link support for "iommu-map"
To:     Rob Herring <robh@kernel.org>
Cc:     Will Deacon <will@kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Devicetree List <devicetree@vger.kernel.org>,
        iommu@lists.linuxfoundation.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Saravana Kannan <saravanak@google.com>,
        Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 22 Nov 2019 at 17:01, Rob Herring <robh@kernel.org> wrote:
>
> On Fri, Nov 22, 2019 at 8:55 AM Will Deacon <will@kernel.org> wrote:
> >
> > [+Ard]
> >
> > Hi Rob,
> >
> > On Fri, Nov 22, 2019 at 08:47:46AM -0600, Rob Herring wrote:
> > > On Wed, Nov 20, 2019 at 1:00 PM Will Deacon <will@kernel.org> wrote:
> > > >
> > > > Commit 8e12257dead7 ("of: property: Add device link support for iommus,
> > > > mboxes and io-channels") added device link support for IOMMU linkages
> > > > described using the "iommus" property. For PCI devices, this property
> > > > is not present and instead the "iommu-map" property is used on the host
> > > > bridge node to map the endpoint RequesterIDs to their corresponding
> > > > IOMMU instance.
> > > >
> > > > Add support for "iommu-map" to the device link supplier bindings so that
> > > > probing of PCI devices can be deferred until after the IOMMU is
> > > > available.
> > > >
> > > > Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > > > Cc: Rob Herring <robh@kernel.org>
> > > > Cc: Saravana Kannan <saravanak@google.com>
> > > > Cc: Robin Murphy <robin.murphy@arm.com>
> > > > Signed-off-by: Will Deacon <will@kernel.org>
> > > > ---
> > > >
> > > > Applies against driver-core/driver-core-next.
> > > > Tested on AMD Seattle (arm64).
> > >
> > > Guess that answers my question whether anyone uses Seattle with DT.
> > > Seattle uses the old SMMU binding, and there's not even an IOMMU
> > > associated with the PCI host. I raise this mainly because the dts
> > > files for Seattle either need some love or perhaps should be removed.
> >
> > I'm using the new DT bindings on my Seattle, thanks to the firmware fairy
> > (Ard) visiting my flat with a dediprog. The patches I've posted to enable
> > modular builds of the arm-smmu driver require that the old binding is
> > disabled [1].
>
> Going to post those dts changes?
>

Last time I tried upstreaming seattle DT changes I got zero response,
so I didn't bother since.


> > > No issues with the patch itself though. I'll queue it after rc1.
> >
> > Thanks, although I think Greg has already queued it [2] due to the
> > dependencies on other patches in his tree.
>
> Okay, forgot to check my spam from Greg folder and missed that.
>
> Rob
