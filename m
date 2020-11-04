Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3AC562A5B87
	for <lists+devicetree@lfdr.de>; Wed,  4 Nov 2020 02:09:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729864AbgKDBJN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Nov 2020 20:09:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34360 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729188AbgKDBJN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Nov 2020 20:09:13 -0500
Received: from mail-oo1-xc41.google.com (mail-oo1-xc41.google.com [IPv6:2607:f8b0:4864:20::c41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1FF29C0401C1
        for <devicetree@vger.kernel.org>; Tue,  3 Nov 2020 17:09:13 -0800 (PST)
Received: by mail-oo1-xc41.google.com with SMTP id v123so4685284ooa.5
        for <devicetree@vger.kernel.org>; Tue, 03 Nov 2020 17:09:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=6jy8fFic57RdIFileviJwjXLwFRqdZNs7kug+Ku5PIw=;
        b=fmDKK47bFXb8wwkPB2TkYljcDREd9h7uMWuB1B/fQYo2NHTWWXcjEDTm8xXnjAb4Qv
         CO1oQvpDjYOKpmvD0HLroAPTS5EBYt892qBobL+tWyneCf+M/gL+/4lkylzIUc1d1nnn
         7aNxUwr7sxV/9E1QxpUZVQqoI5uZw7YwVec6L/zxstdiQsHaHvsRp+vS9DfkdDhl3feh
         mqMb1mHh92SXK3E5qALxAPn92tz8LN5Hio9ROLrE9asilMONPJ1yeBaVoqkiS8V6M9bs
         ls3kdKY2Q6CA0hMXZxzFUYXVVjzp6VUfvrLPIx4D6LuAxMIyKGoWXkkWtB4AyAK6QXfo
         BGSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=6jy8fFic57RdIFileviJwjXLwFRqdZNs7kug+Ku5PIw=;
        b=bb+kgeIjRncI7dKGAuNavRwdo2m//N3ffwzZ2ihSDJOGKFl/h6voKySiBbvN8j4b8f
         9QcYGb692u4ufEC5ihw67kVGZwUuliqzvZkR43PuD7AmUMrFoawpL2Q5llHzKj3koYRP
         7ETu4neDxUkhkVjHMj1VAMKyUoVPxNEzWAo4Pz7LSyeUdP9n1y5fftB72KRC0/In4a5H
         Y7yz843IQ9o5IIkOR+i5kelfSC9kFlu0zOh6lpbrgHUOtWhtfetV0/1m6wTkV1Digu52
         s5H+RYTETZlgoUMP3sAX3gmMhoyxSfwsGEVR9hGN7RMN9UUvdajgzltl0i24NDVymmu4
         6CYw==
X-Gm-Message-State: AOAM532bhZIjIiK/OMwkpZkOnowXObEASMMRpIGIpB7i+60pXc++Yl34
        eA6pbDOi9m6boCLTn8T7Adrlkg==
X-Google-Smtp-Source: ABdhPJxRQhWjCdKoJxCdOUtNsw4L4FhcElHRFbmVfB/0uPdB3G1hF/7P1F+ScvNoiedAfV98wS8YaQ==
X-Received: by 2002:a4a:9607:: with SMTP id q7mr11757384ooi.79.1604452152450;
        Tue, 03 Nov 2020 17:09:12 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id b185sm107229oif.5.2020.11.03.17.09.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Nov 2020 17:09:11 -0800 (PST)
Date:   Tue, 3 Nov 2020 19:09:09 -0600
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        linus.walleij@linaro.org
Cc:     Andy Gross <agross@kernel.org>,
        "open list:DRM DRIVER FOR MSM ADRENO GPU" 
        <linux-arm-msm@vger.kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: qcom: sm8250: remove wakeup-parent for TLMM
 node
Message-ID: <20201104010909.GE65067@builder.lan>
References: <20201027015420.908945-1-dmitry.baryshkov@linaro.org>
 <20201028044056.GA3151@builder.lan>
 <947976df-05c5-bc6d-455f-e71aa061055f@linaro.org>
 <20201103174041.GB65067@builder.lan>
 <CAA8EJpoNnsBNXhHy1nO_5eYbBDndtuhi71nuiwZ4M22eU2QTrg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAA8EJpoNnsBNXhHy1nO_5eYbBDndtuhi71nuiwZ4M22eU2QTrg@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue 03 Nov 17:53 CST 2020, Dmitry Baryshkov wrote:

> Hello,
> 
> On Tue, 3 Nov 2020 at 20:40, Bjorn Andersson <bjorn.andersson@linaro.org> wrote:
> >
> > On Wed 28 Oct 06:52 CDT 2020, Dmitry Baryshkov wrote:
> >
> > > On 28/10/2020 07:40, Bjorn Andersson wrote:
> > > > On Mon 26 Oct 20:54 CDT 2020, Dmitry Baryshkov wrote:
> > > >
> > > > > On SM8250 TLMM doesn't use PDC interrupt controller for wakeup events.
> > > > > Instead it handles them on their own (not implemented yet). In addition
> > > > > setting wakeup-parent property to &pdc will result in parent hwirq being
> > > > > set to ~0UL, which interact badly with the irqdomains trimming code. So
> > > > > remove the wakeup-parent property.
> > > > >
> > > >
> > > > Would you accept this patch instead?
> > > >
> > > > https://lore.kernel.org/r/20201028043642.1141723-1-bjorn.andersson@linaro.org
> > >
> > > not found
> > >
> >
> > Seems like the tubes where slow last week, but the link works now.
> > Please take a look and let me know if this works better for you.
> 
> I will check this patch. However note, that we need to get 5.10 fixed
> wrt TLMM irqs. And the mentioned patch probably doesn't stand a chance
> of being merged into 5.10-rc, does it?
> 

If the driver is broken in v5.10-rc and my patch fixes the problem we
should make a case for that and I'm sure Linus Walleij will consider
picking it up as a -rc fix.

Regards,
Bjorn
