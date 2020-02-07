Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6E9BD1550D4
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2020 04:06:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727012AbgBGDGe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Feb 2020 22:06:34 -0500
Received: from mail-qk1-f196.google.com ([209.85.222.196]:39152 "EHLO
        mail-qk1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726509AbgBGDGe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Feb 2020 22:06:34 -0500
Received: by mail-qk1-f196.google.com with SMTP id w15so864802qkf.6
        for <devicetree@vger.kernel.org>; Thu, 06 Feb 2020 19:06:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=s3TxFkwUBzoZxEqhHCb5Dpa2HZc5hJhUkqC/KNrkDQc=;
        b=oPPLUfN/w8TsNQT5FmZWFRbcL2X+OQPCnFdi3CoAh86Vc1akO5DDdEuhA4jXAT8Tgy
         +D48c/EPGWfn/tkt+76tePp/JgvcAiokBGkYgxFjqw/N5OST8Z+xEkNgfLWT5N+Mpp7E
         8jzLtZ/IP75iaFWsIKlT18p0KVqhZqOaK+zxc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=s3TxFkwUBzoZxEqhHCb5Dpa2HZc5hJhUkqC/KNrkDQc=;
        b=hkPs4+ntyMawRH08Vi+GO65z/p5no7XGOIlSiATpqTIQQ+b88FyQVrD/U2lscLrnFz
         4Up/BQuqIQu0VMc9H+O9mwoNiLneuByIKdDiRB7nSGLdNYxsIMfYtkzVAJIaqsEHq4s1
         J524fSvUMlb5yE7hBLNrC4cRtPCaQhxmEBAlXXaxeCl2o470GarSSwEwK70uI/oq5s2R
         U/OHBBmhdkJAWEhrvmXpPr4GcRy6vOoOsOoPuj3llpPMwjX4KCPEXkEKS29SLiRAjq9D
         Nk3KLP8jXKcZ4AyZowP8OYAdkC5JCzk75kV90WBGhTcv0q7Gc9p5ZfaNIsH+Y7bCOVYx
         mjCQ==
X-Gm-Message-State: APjAAAU3iarOCe1dE1SE6GtEWBTzVJRz3RVD8tX4mPYvJT+EBi7+lupF
        H+dlHLD/B+18AIxaZb4JG09cGnvRFWGooSxCayjA6w==
X-Google-Smtp-Source: APXvYqyylJuMDkKA7gnAsAhliXtut7vEzHdVLf8fTNkkiclmjbUpYD2oxeEcbD7bCMDcK99RCxtzazSCPbnSooRDfo8=
X-Received: by 2002:ae9:f003:: with SMTP id l3mr5455012qkg.457.1581044792080;
 Thu, 06 Feb 2020 19:06:32 -0800 (PST)
MIME-Version: 1.0
References: <20200114071602.47627-1-drinkcat@chromium.org> <20200114071602.47627-6-drinkcat@chromium.org>
 <8b300f30-aa6d-89ee-77e3-271e3fa013f8@arm.com>
In-Reply-To: <8b300f30-aa6d-89ee-77e3-271e3fa013f8@arm.com>
From:   Nicolas Boichat <drinkcat@chromium.org>
Date:   Fri, 7 Feb 2020 11:06:21 +0800
Message-ID: <CANMq1KDEdbiHWzfZhvfpKG4cNOnp_x3bMO5rOaCuLzNJ5W4zEA@mail.gmail.com>
Subject: Re: [PATCH v3 5/7] drm/panfrost: Add support for multiple power domains
To:     Steven Price <steven.price@arm.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Devicetree List <devicetree@vger.kernel.org>,
        Tomeu Vizoso <tomeu.vizoso@collabora.com>,
        David Airlie <airlied@linux.ie>,
        lkml <linux-kernel@vger.kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        Mark Brown <broonie@kernel.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jan 20, 2020 at 10:53 PM Steven Price <steven.price@arm.com> wrote:
>
> On 14/01/2020 07:16, Nicolas Boichat wrote:
> [snip]
> >
> > +     err = panfrost_pm_domain_init(pfdev);
> > +     if (err) {
> > +             dev_err(pfdev->dev, "pm_domain init failed %d\n", err);
>
> No need for this print - panfrost_pm_domain_init() will output a (more
> appropriate) error message on failure.

Dropped.

> > +             goto err_out2;
> > +     }
> > +
> [snip]
> > @@ -196,6 +274,7 @@ void panfrost_device_fini(struct panfrost_device *pfdev)
> >       panfrost_mmu_fini(pfdev);
> >       panfrost_gpu_fini(pfdev);
> >       panfrost_reset_fini(pfdev);
> > +     panfrost_pm_domain_fini(pfdev);
>
> NIT: The reverse of the construction order would be to do this before
> panfrost_reset_fini().

Oh right, fixed.

Thanks.

> [snip]
