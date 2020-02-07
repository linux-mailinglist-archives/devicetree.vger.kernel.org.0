Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 758D9155322
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2020 08:42:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726843AbgBGHmP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Feb 2020 02:42:15 -0500
Received: from mail-qt1-f195.google.com ([209.85.160.195]:46259 "EHLO
        mail-qt1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726136AbgBGHmP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Feb 2020 02:42:15 -0500
Received: by mail-qt1-f195.google.com with SMTP id e25so1194825qtr.13
        for <devicetree@vger.kernel.org>; Thu, 06 Feb 2020 23:42:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=JouVaBY0fCI5PIWz5KEUwev5u0zz6oVOFAENa05Vxbo=;
        b=FTiiXWqZ7kvv+zrl2z4UiK8x9xhnXPQJlaRwiZJZSMXCMS4NRLVQCP3IOoj4MWiYLp
         mACwAXxBeJcgHPJt5yHaziE5rsv47sThbhP3lIF0JoqN6JEROclMMOb04pmdAmLHpAEb
         ZD/wy9eg1Pqg++OYnyO0xPetj76C9NPPKpYKM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=JouVaBY0fCI5PIWz5KEUwev5u0zz6oVOFAENa05Vxbo=;
        b=nQkth+Sh5bXPm+ix6VhRMAZ9vYtgPDSRz7z41hbFhRMxn7Dz7ItdfknjPuPVzqk4c5
         YgivkcZ06sk5NoZs2h1iGYjOQhnNMLKKN7Nl1Zl7AOCj6bFObAdL4EarSDwlXwAVyHiX
         XMaxkkaAz08E+C0YTynfPzo/UW4oqZjf/K7RA7MBQydyrkZL1FsdejEdsPGDzts52TQ8
         G15EEOWC/HD2CWFuWcBPCjXwcNPBT4oAFxdRE1u2CooHkhzaTzwDFKo5s3kIGdV3/xgR
         0oFaWjMnpCMe9G+dAKwqtm1IoQcJ775UhPsjfV4llfnPe8KJe6Wa2XgiYroSGYyc7yOJ
         CGCg==
X-Gm-Message-State: APjAAAWKbXWfp6eK5YakRxewjV+3PPVm8SOF0e90wMPmpKZbB+orrHbt
        5GwTDsqcGd1ru8IlTzKxMQCyPZ8Lgn3xgK3vLjvePA==
X-Google-Smtp-Source: APXvYqxIVQeKEwvKZd8oIBNpYedafqE6f+YdWsq+ZJPsYxo/fGVZGZMcU6612vRZx8gEeKanDH+rwLVQXWgOTZrA/Yk=
X-Received: by 2002:ac8:6e83:: with SMTP id c3mr6388399qtv.346.1581061332637;
 Thu, 06 Feb 2020 23:42:12 -0800 (PST)
MIME-Version: 1.0
References: <20200207052627.130118-1-drinkcat@chromium.org> <5237381b-c232-7087-a3d6-78d6358d80bf@collabora.com>
In-Reply-To: <5237381b-c232-7087-a3d6-78d6358d80bf@collabora.com>
From:   Nicolas Boichat <drinkcat@chromium.org>
Date:   Fri, 7 Feb 2020 15:42:01 +0800
Message-ID: <CANMq1KCD1U7iym_fFWAd-Xa6ipxHmF_FAYxDL5WqGzDnA0KKLw@mail.gmail.com>
Subject: Re: [PATCH v4 0/7] Add dts for mt8183 GPU (and misc panfrost patches)
To:     Tomeu Vizoso <tomeu.vizoso@collabora.com>
Cc:     Rob Herring <robh+dt@kernel.org>, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Mark Rutland <mark.rutland@arm.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Steven Price <steven.price@arm.com>,
        Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        Devicetree List <devicetree@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>,
        linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        Ulf Hansson <ulf.hansson@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Feb 7, 2020 at 2:18 PM Tomeu Vizoso <tomeu.vizoso@collabora.com> wrote:
>
> On 2/7/20 6:26 AM, Nicolas Boichat wrote:
> > Hi!
> >
> > Follow-up on the v3: https://patchwork.kernel.org/cover/11331343/.
> >
> > The main purpose of this series is to upstream the dts change and the
> > binding document, but I wanted to see how far I could probe the GPU, to
> > check that the binding is indeed correct. The rest of the patches are
> > RFC/work-in-progress, but I think some of them could already be picked up.
> >
> > So this is tested on MT8183 with a chromeos-4.19 kernel, and a ton of
> > backports to get the latest panfrost driver (I should probably try on
> > linux-next at some point but this was the path of least resistance).
> >
> > I tested it as a module as it's more challenging (originally probing would
> > work built-in, on boot, but not as a module, as I didn't have the power
> > domain changes, and all power domains are on by default during boot).
> >
> > Probing logs looks like this, currently. They look sane.
> > [  501.319728] panfrost 13040000.gpu: clock rate = 511999970
> > [  501.320041] panfrost 13040000.gpu: Linked as a consumer to regulator.14
> > [  501.320102] panfrost 13040000.gpu: Linked as a consumer to regulator.31
> > [  501.320651] panfrost 13040000.gpu: Linked as a consumer to genpd:0:13040000.gpu
> > [  501.320954] panfrost 13040000.gpu: Linked as a consumer to genpd:1:13040000.gpu
> > [  501.321062] panfrost 13040000.gpu: Linked as a consumer to genpd:2:13040000.gpu
> > [  501.321734] panfrost 13040000.gpu: mali-g72 id 0x6221 major 0x0 minor 0x3 status 0x0
> > [  501.321741] panfrost 13040000.gpu: features: 00000000,13de77ff, issues: 00000000,00000400
> > [  501.321747] panfrost 13040000.gpu: Features: L2:0x07120206 Shader:0x00000000 Tiler:0x00000809 Mem:0x1 MMU:0x00002830 AS:0xff JS:0x7
> > [  501.321752] panfrost 13040000.gpu: shader_present=0x7 l2_present=0x1
> > [  501.324951] [drm] Initialized panfrost 1.1.0 20180908 for 13040000.gpu on minor 2
> >
> > Some more changes are still required to get devfreq working, and of course
> > I do not have a userspace driver to test this with.
>
> Have you tried the Panfrost tests in IGT? They are atm quite basic, but
> could be interesting to check that the different HW units are correctly
> powered on.

I haven't, you mean this right?
https://gitlab.freedesktop.org/tomeu/igt-gpu-tools/tree/panfrost

Any specific test you have in mind?

Thanks,

> Regards,
>
> Tomeu
>
> > I believe at least patches 1, 2, and 3 can be merged. 4 and 5 are mostly
> > useful in conjunction with 6 and 7 (which are not ready yet), so I'll let
> > maintainers decide.
> >
> > Thanks!
> >
> > Nicolas Boichat (7):
> >    dt-bindings: gpu: mali-bifrost: Add Mediatek MT8183
> >    arm64: dts: mt8183: Add node for the Mali GPU
> >    drm/panfrost: Improve error reporting in panfrost_gpu_power_on
> >    drm/panfrost: Add support for multiple regulators
> >    drm/panfrost: Add support for multiple power domains
> >    RFC: drm/panfrost: Add mt8183-mali compatible string
> >    RFC: drm/panfrost: devfreq: Add support for 2 regulators
> >
> >   .../bindings/gpu/arm,mali-bifrost.yaml        |  25 ++++
> >   arch/arm64/boot/dts/mediatek/mt8183-evb.dts   |   7 +
> >   arch/arm64/boot/dts/mediatek/mt8183.dtsi      | 105 +++++++++++++++
> >   drivers/gpu/drm/panfrost/panfrost_devfreq.c   |  17 +++
> >   drivers/gpu/drm/panfrost/panfrost_device.c    | 123 +++++++++++++++---
> >   drivers/gpu/drm/panfrost/panfrost_device.h    |  27 +++-
> >   drivers/gpu/drm/panfrost/panfrost_drv.c       |  41 ++++--
> >   drivers/gpu/drm/panfrost/panfrost_gpu.c       |  11 +-
> >   8 files changed, 326 insertions(+), 30 deletions(-)
> >
