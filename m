Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2AEF814F3AB
	for <lists+devicetree@lfdr.de>; Fri, 31 Jan 2020 22:21:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726319AbgAaVVW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Jan 2020 16:21:22 -0500
Received: from mail-vs1-f66.google.com ([209.85.217.66]:32813 "EHLO
        mail-vs1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726109AbgAaVVW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Jan 2020 16:21:22 -0500
Received: by mail-vs1-f66.google.com with SMTP id n27so5327464vsa.0
        for <devicetree@vger.kernel.org>; Fri, 31 Jan 2020 13:21:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=HUmCvJ9CZbdv53S+5E2jaUgTCUMelwKvc+ZJXLHusD8=;
        b=Nnl0+Bo1hXc3/nI2eC7rLC5xKh8kpmJHLW6gmtYzPVgWfPAswoamHz4LnJ49Haf71s
         aQM53390WwHBbtRhrCen4hqzlvS6qbIjTuOdQAKFJAU4KIHhCvqHg5tw10c0RoeObmy9
         hCO8Lf/TOgG+r5lp5d3nsuYJqnBaLe6oG/xBM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=HUmCvJ9CZbdv53S+5E2jaUgTCUMelwKvc+ZJXLHusD8=;
        b=cTWKcdtYpPydb5kIxYF/YnAfBAoDzAw1x3IBNYmYe0F9ddVu6SI7sYTnKCxf1IAwUA
         hs15ynDiGURreTGDc4b9BV00tBnefQfN3ZsQOWFh6kddl6R7JaxdXmROjjA3IfQFdlc8
         17waaCLK527Jtx69IBhJjQ2O+1fX/Rq8BvUNiTaLJ+MG7Tlnsf74A+uAveh0OLdncq9J
         CWj/QCRfoScrMC7jrQRhBYfn/uMGmTQoP8EiFDy8ZD3tjYkA7iwoQiMAutt5LpeGKVdI
         Mh2F9JaIy12s3XyXeiewqKIOXmg9tYm9WHBpdEeyA6bdf0zn/NyZfBML00SOXLNDcqa1
         aYnA==
X-Gm-Message-State: APjAAAU1Q0k/EVfItry6FE+Jb8n9sn3ywYzEc4JDZyay/Uo22Hc32St4
        8pFzwwtSNrBQeMB0D/kTNf5gshKRKpc=
X-Google-Smtp-Source: APXvYqyDRg6GMMkmjTH3SP2hJZWfitWgM9QwsEPR0xfE8M+Mfimjuoq5SZz5cQEsVYtuyj4BasZHeA==
X-Received: by 2002:a05:6102:21da:: with SMTP id r26mr7680476vsg.210.1580505680408;
        Fri, 31 Jan 2020 13:21:20 -0800 (PST)
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com. [209.85.217.47])
        by smtp.gmail.com with ESMTPSA id r1sm2583482vsi.33.2020.01.31.13.21.19
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jan 2020 13:21:19 -0800 (PST)
Received: by mail-vs1-f47.google.com with SMTP id g15so5323743vsf.1
        for <devicetree@vger.kernel.org>; Fri, 31 Jan 2020 13:21:19 -0800 (PST)
X-Received: by 2002:a67:8704:: with SMTP id j4mr8789829vsd.106.1580505679208;
 Fri, 31 Jan 2020 13:21:19 -0800 (PST)
MIME-Version: 1.0
References: <1580117390-6057-1-git-send-email-smasetty@codeaurora.org>
 <CAD=FV=VFVC6XJ=OXJCSd2_oij5vggKnTedGP0Gj4KHC50QH0SQ@mail.gmail.com>
 <4bd79f53cab95db9286067836722dd4b@codeaurora.org> <CAD=FV=X7pUvab1FXkPbxio_0hW0mvAguFbPAcfQ1=K9HD9bMug@mail.gmail.com>
 <20200131211813.GA16531@jcrouse1-lnx.qualcomm.com>
In-Reply-To: <20200131211813.GA16531@jcrouse1-lnx.qualcomm.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 31 Jan 2020 13:21:07 -0800
X-Gmail-Original-Message-ID: <CAD=FV=VLGPd4jiq8ELqaaC68S6-Fs=FXov1VOMQtAtfzOR+w5A@mail.gmail.com>
Message-ID: <CAD=FV=VLGPd4jiq8ELqaaC68S6-Fs=FXov1VOMQtAtfzOR+w5A@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: sc7180: Add A618 gpu dt blob
To:     Doug Anderson <dianders@chromium.org>,
        Sharat Masetty <smasetty@codeaurora.org>,
        freedreno <freedreno@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, dri-devel@freedesktop.org,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Rob Clark <robdclark@chromium.org>,
        linux-arm-msm-owner@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Jan 31, 2020 at 1:18 PM Jordan Crouse <jcrouse@codeaurora.org> wrote:
>
> On Fri, Jan 31, 2020 at 08:08:09AM -0800, Doug Anderson wrote:
> > Hi,
> >
> > On Fri, Jan 31, 2020 at 4:16 AM <smasetty@codeaurora.org> wrote:
> > >
> > > >> +                       reg = <0 0x0506a000 0 0x31000>, <0 0x0b290000
> > > >> 0 0x10000>,
> > > >> +                               <0 0x0b490000 0 0x10000>;
> > > >> +                       reg-names = "gmu", "gmu_pdc", "gmu_pdc_seq";
> > > >> +                       interrupts = <GIC_SPI 304
> > > >> IRQ_TYPE_LEVEL_HIGH>,
> > > >> +                                  <GIC_SPI 305 IRQ_TYPE_LEVEL_HIGH>;
> > > >> +                       interrupt-names = "hfi", "gmu";
> > > >> +                       clocks = <&gpucc GPU_CC_CX_GMU_CLK>,
> > > >> +                              <&gpucc GPU_CC_CXO_CLK>,
> > > >> +                              <&gcc GCC_DDRSS_GPU_AXI_CLK>,
> > > >> +                              <&gcc GCC_GPU_MEMNOC_GFX_CLK>;
> > > >> +                       clock-names = "gmu", "cxo", "axi", "memnoc";
> > > >> +                       power-domains = <&gpucc CX_GDSC>;
> > > >
> > > > Bindings claim that you need both CX and GC.  Is sc7180 somehow
> > > > different?  Bindings also claim that you should be providing
> > > > power-domain-names.
> > > No this is still needed, We need the GX power domain for GPU recovery
> > > use cases where the shutdown was not successful.
> >
> > This almost sounds as if the bindings should mark the GX power domain
> > as optional?  The driver can function without it but doesn't get all
> > the features?  As the binding is written right now I think it is
> > "invalid" to not specify a a GX power domain and once the yaml
> > conversion is done then it will even be flagged as an error.  That's
> > going to make it harder to land the your patch...
>
> For GMU attached targets the GX power domain is mandatory assuming you want to
> recover successfully from a hard GMU hang, that is.

Sure.  I guess we can quibble about whether this means optional or
mandatory, but it won't gain much.  ;-)

...seems like for now (assuming it works) we should at least specify
it and put a <0>.  Then we should make it a relatively high priority
to get it hooked up more properly.

-Doug
