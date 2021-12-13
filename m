Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6E510473680
	for <lists+devicetree@lfdr.de>; Mon, 13 Dec 2021 22:21:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236959AbhLMVVh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Dec 2021 16:21:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243109AbhLMVVh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Dec 2021 16:21:37 -0500
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com [IPv6:2607:f8b0:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA9D3C061574
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 13:21:36 -0800 (PST)
Received: by mail-ot1-x334.google.com with SMTP id x19-20020a9d7053000000b0055c8b39420bso18877411otj.1
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 13:21:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SGUJ+ATiOwlqSXPIaJQsSwDIkW7nJ6v51dId9S/acys=;
        b=mu5RmLU+CcfLD3dU0c/0ynjsZrdC9ysfvWBGg4Ift6i6Ldn+yQYYRk9kLP/O5+I8V9
         OGZFu8qWc29g9dzm6kEbgetl1gaJBmwQrSAur7tm1UXVLlz5EWMfyePb9LsC1ljL4HXQ
         BPUMne1xGa3qd1+lS5FZjKloZiyJcA9yu6zrwMhVYm4ZPr4CsxCwyK/NeXiZMfMBkVRX
         VMFpP1PuKPq8WgOZLN0ruL8Cjnsb/2NOgjP5kW3Y1BKPmigeEBeXpZ95HqEWypD1J6nz
         wCKHSoZ1ox1D9RDIuPCSUJ7jRNNs2T6q+DdyI+9/7v5bV+BMJ/zKXrmX5VWXSbmNNeMI
         5tsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SGUJ+ATiOwlqSXPIaJQsSwDIkW7nJ6v51dId9S/acys=;
        b=uPzvPxzXL5yaPGbMGH36+zqHtYWE3ZJweEtB8+Hc3qvjrKaVifmyPmzaNGelavndPv
         5rfMeUAvl+f6DnJhypfhfK9ekahzBDOKfTAH82Tb63vMhnW7R+/1i9t96B8QKaVyyp8B
         mRoO/j7EoumpWmZ1lWM9UXZXA84ki06xACGinlP3KRMLSPPdad8t7jpjBn82j3D8KPXa
         2JhePu2FMMTkwtEWynivu4MjqUOE2OssQUxX0WXNacrySlEXjih/UovS7IjXFrDOJeaX
         PvZk/irbApsrbj1cyNFTJas/uxAfLLgBijN0V+SxBdx0VaZfr3qIzrxriIM9HQpukaJ9
         NcuQ==
X-Gm-Message-State: AOAM533TG15w/9SnXL14K6RLrSjGl8igogVsOlJeW9xqe9c/3jbLTExR
        emfF6Dg6v7drhXgp2pl0DWW49cO/N2SPPRVDyRxTBHdVZxk=
X-Google-Smtp-Source: ABdhPJzDtQAnHdwQu079YO5ooG3b/xpnzVkPOutQb80wnZ6CI8wlBZAARJ7yfIZEUe5e2pNaMFW3IIHiyDOvibtTkcY=
X-Received: by 2002:a05:6830:1e7c:: with SMTP id m28mr858714otr.93.1639430496256;
 Mon, 13 Dec 2021 13:21:36 -0800 (PST)
MIME-Version: 1.0
References: <20211203181714.3138611-1-dinguyen@kernel.org> <20211206102242.e2ql7kcgzivh75v4@ti.com>
 <CADhT+wfrtqO6dDSUbq-eeyRodzigA7Gsce0xgK6mzLo0ujb5AQ@mail.gmail.com> <YbexsGzz0/tuwjwq@robh.at.kernel.org>
In-Reply-To: <YbexsGzz0/tuwjwq@robh.at.kernel.org>
From:   Dinh Nguyen <dinh.linux@gmail.com>
Date:   Mon, 13 Dec 2021 15:21:25 -0600
Message-ID: <CADhT+wcbU+bCVLTc22N3FebQRONhUh9pUagCivf+8jpMvZBNtg@mail.gmail.com>
Subject: Re: [PATCHv2 1/3] dt-bindings: spi: cadence-quadspi: document "cdns,qspi-nor-ver-00-10"
To:     Rob Herring <robh@kernel.org>
Cc:     Pratyush Yadav <p.yadav@ti.com>, Dinh Nguyen <dinguyen@kernel.org>,
        devicetree@vger.kernel.org, broonie@kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Dec 13, 2021 at 2:48 PM Rob Herring <robh@kernel.org> wrote:
>
> On Wed, Dec 08, 2021 at 05:45:31PM -0600, Dinh Nguyen wrote:
> > On Mon, Dec 6, 2021 at 9:51 PM Pratyush Yadav <p.yadav@ti.com> wrote:
> > >
> > > On 03/12/21 12:17PM, Dinh Nguyen wrote:
> > > > The QSPI controller on Intel's SoCFPGA platform does not implement the
> > > > CQSPI_REG_WR_COMPLETION_CTRL register, thus a write to this register
> > > > results in a crash.
> > > >
> > > > The module/revision ID is written in the MODULE_ID register. For this
> > > > variance, bits 23-8 is 0x0010.
> > >
> > > When I looked at your original patches I was under the impression that
> > > this was a SoCFPGA specific thing and did not apply to other
> > > implementation of the IP in general.
> > >
> > > If this is indeed a generic thing and we can detect it via the MODULE_ID
> > > register [0], then why not just read that register at probe time and
> > > apply this quirk based on the ID? Why then do we need a separate
> > > compatible at all?
> > >
> > > [0] I would like to see it stated explicitly somewhere that version
> > > 0x0010 does not support the WR_COMPLETION_CTRL register.
> > >
> >
> > I cannot for sure confirm that this condition applies to only 0x0010
> > version of the
> > IP. I can verify that the IP that is in all 3 generations of SoCFPGA
> > devices, all have
> > MODULE_ID value of 0x0010 and all do not have the WR_COMPLETION_CTRL
> > register implemented.
>
> Then for the same reason, you shouldn't be trying to have a 'generic'
> compatible.
>
> >
> > I'm almost certain this feature is not SoCFPGA specific, but
> > since I only had SoCFPGA hardware, that was my initial patch. I made the mistake
> > of not CC'ing the devicetree maintainers until I sent the DTS binding
> > patch change,
> > and he rightly suggested making the binding something more generic.
>
> That is completely the opposite of what I said. You had something
> genericish to Intel platforms. You should make the compatible(s) SoC
> specific.
>
>

Sorry, I must have misunderstood. The same QSPI controller is used across the
entire SoCFPGA class of SoCs, so I don't know what you mean by SoC specific?

Dinh
