Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A61E7AA1FD
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2019 13:49:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730939AbfIELtk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Sep 2019 07:49:40 -0400
Received: from mail-io1-f65.google.com ([209.85.166.65]:39544 "EHLO
        mail-io1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730780AbfIELtk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Sep 2019 07:49:40 -0400
Received: by mail-io1-f65.google.com with SMTP id d25so4119447iob.6
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2019 04:49:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dowhile0-org.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=07XjWPhuRTiUsIcEUDNjhZ6tpZVcaU36P56dDdLY0Pk=;
        b=ZWbds64KtyFdL7uMmE4khRKKozzY0xYd0T6A3Tny14KpXb0FphtSgDL/hsu+4oIaZ7
         qSWAaYJj1gdQT5zpEe/pMQ1r0B9jA4p99pYF5auuV0lsHaO1WK3LKAu+TBes+C46ZjPC
         4hdMzofRj2D8m+e5jeUE+ZYSASN/gI5oNvI14A5OHw72kQKJT2reLGS+qQcYlpgQCRKO
         /uIn0Ojh2PDfYaBUxLQsUSj2bvx2jrGXq1Ysne+FcaVejETBSGgcP9NUpHm7aZ6UsUZ5
         Lnj1sBbCDxw63qe/KEUMBHboyeYAIVj+IDfyHG+BIihZMmXOUN18ScVwwWFEf79EkgC+
         GbJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=07XjWPhuRTiUsIcEUDNjhZ6tpZVcaU36P56dDdLY0Pk=;
        b=p+g8p5+5BXgSsPw6G2/Ii6naDhbHrUuukLmIO7lgBxtcFDtRNHMhQH0N/UFqw1F8cf
         wYSsGQkvqcAOd0KWdGuesmaztX2PtbyLg0aNIFDqc0I4XtTsy8papgk4CrxQAGefDzis
         nLABO9VLWICjset+Qsip2/uXBfl58lOyTUQje6+0LVOpxWQ8knen96h7+nR+9ndauWQ0
         ZawHcOW42OcXpRyjLn8DnTLf5bvdfsbDzajl+T9geC5NFGZsQf0iG3UXPWvUWluFVFNV
         LFO5o2sCXnj+TX0R8KZUa9zfmlOCzri4W1LKJ1pDizf0mbdcKSb2bCtsBAzj5OTfF55a
         rpXg==
X-Gm-Message-State: APjAAAWQpM6ckUYLRtkznCS2+RD7M/jAbN1UQs4sxSqGBztjGgZhgaRG
        TtF2ERPWnUOtNfPfdd7kOiqS/uKSDDcjUfb5Cl9D7w==
X-Google-Smtp-Source: APXvYqyiGxGtl4n/7uL2NBTrtUM5FvEKngetPUXADWAWtMsSh3HfkH+hQtGoOy7IvevSfM/V35Ie24aKLw08l2LlsN4=
X-Received: by 2002:a5d:8f8d:: with SMTP id l13mr3726673iol.6.1567684179776;
 Thu, 05 Sep 2019 04:49:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190905072142.14606-1-dongchun.zhu@mediatek.com>
 <20190905072142.14606-2-dongchun.zhu@mediatek.com> <20190905101406.GA2680@smile.fi.intel.com>
 <20190905104829.GB5475@paasikivi.fi.intel.com> <20190905113509.GD2680@smile.fi.intel.com>
In-Reply-To: <20190905113509.GD2680@smile.fi.intel.com>
From:   Javier Martinez Canillas <javier@dowhile0.org>
Date:   Thu, 5 Sep 2019 13:49:28 +0200
Message-ID: <CABxcv=knP+-x0O-Ga-Dy8WTNovHk6GfX4ZEv0vVjnQvwchuVzg@mail.gmail.com>
Subject: Re: [V2, 1/2] media: i2c: dw9768: Add DT support and MAINTAINERS entry
To:     Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc:     Sakari Ailus <sakari.ailus@linux.intel.com>,
        dongchun.zhu@mediatek.com,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>, drinkcat@chromium.org,
        Tomasz Figa <tfiga@chromium.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        bingbu.cao@intel.com, srv_heupstream@mediatek.com,
        linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, sj.huang@mediatek.com,
        Linux Media Mailing List <linux-media@vger.kernel.org>,
        devicetree@vger.kernel.org, sam.hung@mediatek.com,
        shengnan.wang@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Sep 5, 2019 at 1:35 PM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> On Thu, Sep 05, 2019 at 01:48:30PM +0300, Sakari Ailus wrote:
> > On Thu, Sep 05, 2019 at 01:14:06PM +0300, Andy Shevchenko wrote:
> > > On Thu, Sep 05, 2019 at 03:21:41PM +0800, dongchun.zhu@mediatek.com wrote:
> > > > From: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > >
> > > > This patch is to add the Devicetree binding documentation and
> > > > MAINTAINERS entry for dw9768 actuator.
> > > >
> > > > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > > ---
> > > >  Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.txt | 9 +++++++++
> > > >  MAINTAINERS                                                     | 7 +++++++
> > >
> > > This should be:
> > > 1) two separate patches
> >
> > Why? The MAINTAINERS entry is usually added in the first patch needing it,
> > isn't it?
>
> Bindings are required to be a separate patch.
> Rob, is it still the case or am I mistaken?
>

According to the rule 0 in [1] it should be a separate patch indeed
and also use as subject "dt-bindings: <binding dir>: ..." which this
patch also doesn't follow.
So if I'm reading that document correctly, then I think the
maintainers entry should be added in patch 2/2 along with the driver.

[1]: https://www.kernel.org/doc/Documentation/devicetree/bindings/submitting-patches.txt

Best regards,
Javier
