Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 72D2C2A5AC7
	for <lists+devicetree@lfdr.de>; Wed,  4 Nov 2020 00:53:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728494AbgKCXxT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Nov 2020 18:53:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50756 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726709AbgKCXxT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Nov 2020 18:53:19 -0500
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com [IPv6:2607:f8b0:4864:20::241])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87581C0613D1
        for <devicetree@vger.kernel.org>; Tue,  3 Nov 2020 15:53:19 -0800 (PST)
Received: by mail-oi1-x241.google.com with SMTP id m13so11225391oih.8
        for <devicetree@vger.kernel.org>; Tue, 03 Nov 2020 15:53:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Jzsl0l+u2ZdPhHNWUc0rx+5LePVZdvsGME0CN+mQrUA=;
        b=JaRznvnyDTYEeqgQ8yqM7PV6d5L+zo5YgMLJDJFdHSg4fqPEIiPWuRKK8k8rqq/VM6
         ngo7+vITWlWjPOD/C2JAgT13n0B0VWVLPyewn1hutnprjiGflAT0wqU6gBPUnV6P7Dbv
         GetaXVgNaLQMkoU/zEFINLdQ6904y4DnOONg3MBlEHInfhCUmEdnZpcF7UsARQv2Z6Z1
         NahyYYwzC6AXhv6o0bFcihmpoDHaoT+OP22kH+UUGuNC6vvkkgtalnEHvHMvdYq6Vulr
         iQQ/98UzkUphT723nmu7VOYE/P09u0L7N91umIye8eGcKlZOM6VGNbxrjHphsmzo0aRI
         E7UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Jzsl0l+u2ZdPhHNWUc0rx+5LePVZdvsGME0CN+mQrUA=;
        b=oxSNAuIGlze6Vr8ohsPgz/aH0MdqePsD52Fg9nX86STE6ys9e0NRfcqbxMZyuKioil
         6HjOrHVmCpsGdhucvNvfNJKz2WVgjejjJPF95IEPL7UNjF8gsZ4hTwH6kOQTeHIKg/s6
         tBdl192Yefwiq+Tb9OfY1ojhYtaTn+lCEIWoobjUMVYGfjI/s1Q1oWzPpyQEk5DVE7BA
         BbVk7ji7+EDrb04Z6uZPrDdpLalcO3CoGR1ASvCJhBeAA3aotsAOQBLdwcr0cRwbDr+Z
         IZsr5s7hTPBa0OdkvqxGmGZWIw0fEEwOtQeXJjbmIWEvCAWKFXbBvSJI9+Ux9Mzz8oIe
         tgjw==
X-Gm-Message-State: AOAM532OmcRiHQobkrLlWDNsFNBFO/wifTtGTec9ZZtvUJaQ/D9dXl2V
        Us28dAzWPaLbSjU+WOS7D2mtFsdufL+MaRkKkD6stg==
X-Google-Smtp-Source: ABdhPJx7gKdTHZb2kbQWLJ4DWZcN9AUZld8tYMRKLc9hIwUphni6W4wdtrbpBwoiG+/X94P6mCma2lEbT3vzx7dWfmM=
X-Received: by 2002:aca:f1c6:: with SMTP id p189mr1065757oih.18.1604447598867;
 Tue, 03 Nov 2020 15:53:18 -0800 (PST)
MIME-Version: 1.0
References: <20201027015420.908945-1-dmitry.baryshkov@linaro.org>
 <20201028044056.GA3151@builder.lan> <947976df-05c5-bc6d-455f-e71aa061055f@linaro.org>
 <20201103174041.GB65067@builder.lan>
In-Reply-To: <20201103174041.GB65067@builder.lan>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Wed, 4 Nov 2020 02:53:07 +0300
Message-ID: <CAA8EJpoNnsBNXhHy1nO_5eYbBDndtuhi71nuiwZ4M22eU2QTrg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sm8250: remove wakeup-parent for TLMM node
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        "open list:DRM DRIVER FOR MSM ADRENO GPU" 
        <linux-arm-msm@vger.kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

On Tue, 3 Nov 2020 at 20:40, Bjorn Andersson <bjorn.andersson@linaro.org> wrote:
>
> On Wed 28 Oct 06:52 CDT 2020, Dmitry Baryshkov wrote:
>
> > On 28/10/2020 07:40, Bjorn Andersson wrote:
> > > On Mon 26 Oct 20:54 CDT 2020, Dmitry Baryshkov wrote:
> > >
> > > > On SM8250 TLMM doesn't use PDC interrupt controller for wakeup events.
> > > > Instead it handles them on their own (not implemented yet). In addition
> > > > setting wakeup-parent property to &pdc will result in parent hwirq being
> > > > set to ~0UL, which interact badly with the irqdomains trimming code. So
> > > > remove the wakeup-parent property.
> > > >
> > >
> > > Would you accept this patch instead?
> > >
> > > https://lore.kernel.org/r/20201028043642.1141723-1-bjorn.andersson@linaro.org
> >
> > not found
> >
>
> Seems like the tubes where slow last week, but the link works now.
> Please take a look and let me know if this works better for you.

I will check this patch. However note, that we need to get 5.10 fixed
wrt TLMM irqs. And the mentioned patch probably doesn't stand a chance
of being merged into 5.10-rc, does it?


-- 
With best wishes
Dmitry
