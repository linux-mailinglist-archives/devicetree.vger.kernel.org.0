Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 165503D412D
	for <lists+devicetree@lfdr.de>; Fri, 23 Jul 2021 21:55:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231341AbhGWTO0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Jul 2021 15:14:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229878AbhGWTOZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Jul 2021 15:14:25 -0400
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com [IPv6:2607:f8b0:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 41EAFC061575
        for <devicetree@vger.kernel.org>; Fri, 23 Jul 2021 12:54:58 -0700 (PDT)
Received: by mail-oi1-x230.google.com with SMTP id t128so3088528oig.1
        for <devicetree@vger.kernel.org>; Fri, 23 Jul 2021 12:54:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=fAZFNKtfJy2tBmSXGgFB+64YhzMY2sE6d9fBKVXjEgU=;
        b=IgsdNh8hpYiR0E6gJloGDtA3nuwQzZaw1e3IzVvDKDNACdDncmDRIpVuXlq4aYu6V5
         z7fBW3mxaygpa/LOYmAxADp+AmmdJsjtaHkxdQCtN+TR3wxv+tOXprvn9gWVlVHqSd4U
         LM5YMxXrcGuXZk72+L9Wr1c2dJ4R6PDG01KcTdwhaQHz2+9X5zgMytH6aipPss4VEEBG
         HphWWvnWSy3qt9gHlck4HNue5RSXesITFxr2zbw/Bu2vPBJoitmrSm3nkjreYqzSVCLm
         zTB7SGVCPkFCVfduL9dgIBlBYXmoeG3KyNkKT04S5r5geFhX+vBMXe685i/fUzd2DDTP
         i4BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=fAZFNKtfJy2tBmSXGgFB+64YhzMY2sE6d9fBKVXjEgU=;
        b=Y2mhkclBr9VQyCYp7Q57xz9zFQlkHlh6WrLfx5EETNiraGPmP3AEQ5yyfApEjVwVCD
         SCPNmY3nxGg9S52FkMGyI8O7esur8DLVN7YnLWK9iv18nMJ1VvCq3x9Vu1NP6h5H4AfU
         t239ArTgz1PdQTDyk7bVm6CIe3IARJbIyuQiSe6j8WuR9U6eg2Yr1t+d51cMM1fPBwX0
         nuV0DKKM0EUa33DCsy2HBgm90Fs7mCRa4cynT6rqsLlf/WKUJen9YKQn4rcxToIYLv6H
         B14a5oCPvPSCXVsHYULlOvzOkCmAg5vCmxRFKox3kT4VQQchinhZKRDaQpQFoudBnTn2
         Oung==
X-Gm-Message-State: AOAM533XO8OIEKpc0mwWIkoYTtHRB4X4D3Sgzb0DwR/zLoV+PWLJOIau
        DIO7zOXv3AFDNuoOWTzkvi+U4A==
X-Google-Smtp-Source: ABdhPJzhHqN66w+C/2xjphTeEC2y3ut4LgJecMAc08lmKvS3Pi7OZOlW2DDNpbkaHWOqg09wpxzkCw==
X-Received: by 2002:aca:f58e:: with SMTP id t136mr9596506oih.33.1627070097639;
        Fri, 23 Jul 2021 12:54:57 -0700 (PDT)
Received: from yoga (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id u7sm1427999oop.11.2021.07.23.12.54.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jul 2021 12:54:57 -0700 (PDT)
Date:   Fri, 23 Jul 2021 14:54:54 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     Serge Semin <fancer.lancer@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Serge Semin <Sergey.Semin@baikalelectronics.ru>,
        John Stultz <john.stultz@linaro.org>,
        Felipe Balbi <balbi@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Andy Gross <agross@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Linux USB List <linux-usb@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Amit Pundir <amit.pundir@linaro.org>
Subject: Re: [PATCH 29/29] arm64: dts: qcom: Harmonize DWC USB3 DT nodes name
Message-ID: <YPsejtV31WrYJX7e@yoga>
References: <20201020115959.2658-30-Sergey.Semin@baikalelectronics.ru>
 <CALAqxLX_FNvFndEDWtGbFPjSzuAbfqxQE07diBJFZtftwEJX5A@mail.gmail.com>
 <20210714124807.o22mottsrg3tv6nt@mobilestation>
 <YPfPDqJhfzbvDLvB@kroah.com>
 <20210721100220.ddfxwugivsndsedv@mobilestation>
 <YPf29+ewbrYgHxRP@kroah.com>
 <YPh/AS5svBk+gddY@yoga>
 <YPp7Q4IofUYQlrqd@kroah.com>
 <YPrTbC7fNOY3qCcJ@yoga>
 <YPrmTYQJ33AIxcwP@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YPrmTYQJ33AIxcwP@kroah.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri 23 Jul 10:54 CDT 2021, Greg Kroah-Hartman wrote:

> On Fri, Jul 23, 2021 at 09:34:20AM -0500, Bjorn Andersson wrote:
> > On Fri 23 Jul 03:18 CDT 2021, Greg Kroah-Hartman wrote:
> > 
> > > On Wed, Jul 21, 2021 at 03:09:37PM -0500, Bjorn Andersson wrote:
> > > > Which tree did you revert this in? 5.13.stable?)
> > > 
> > > My usb-linus branch which will go to Linus later today.  Then we can
> > > backport the revert to older kernels as needed.
> > > 
> > 
> > I'm not worried about the backports, I'm worried about conflicts you're
> > causing because you're taking a non-usb patch through the usb tree.
> > 
> > I was about to push a revert (to this and the other Qualcomm platforms),
> > but as you're taking some set of reverts through the usb tree we're just
> > in for a bunch of merge conflicts.
> 
> It shouldn't be a merge conflict as you can apply the same revert to
> your tree now and keep on merging.  When you pick up 5.14-rc3 from Linus
> it should merge "correctly", right?
> 

I typically don't merge back the -rcs into my -next branch, is that
common practice?


But I still don't understand why you insist on driving this through your
tree. I've asked you several times to show me on the patch so I at least
can Ack it. I made a mistake, but why do you insist on keeping me - the
maintainer - out of the loop?

Regards,
Bjorn
