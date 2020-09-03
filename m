Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E720025C75D
	for <lists+devicetree@lfdr.de>; Thu,  3 Sep 2020 18:47:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728901AbgICQrX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Sep 2020 12:47:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728458AbgICQrT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Sep 2020 12:47:19 -0400
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com [IPv6:2a00:1450:4864:20::542])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90C76C061244
        for <devicetree@vger.kernel.org>; Thu,  3 Sep 2020 09:47:18 -0700 (PDT)
Received: by mail-ed1-x542.google.com with SMTP id q21so3376530edv.1
        for <devicetree@vger.kernel.org>; Thu, 03 Sep 2020 09:47:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=BoOsmQ2rBW+EbnUHAzVo+1cABtO0sjJmNcwrCxNVF/A=;
        b=DrefXjNN8klAxwkDEtDXlFK8vggfcZ/C/CRF+LX12Ix1TZ08f0o81Izumvko0Z2jVF
         LycY29rD0Pxs+7jbEPJZloKwDB2Uc4g/PH8c5khbTdNmIPWrx8dHYNHOeJMvQMQQB1qJ
         HwAKRNQ2jz9daw1E8VUsyq24UC6Mcxb74XxIs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BoOsmQ2rBW+EbnUHAzVo+1cABtO0sjJmNcwrCxNVF/A=;
        b=GPrdmtePEIPgeLkZMzLhmbN316xIqP0B4EMWSnIaMju0r4qPd5UCSH2pfIdWU8YKbs
         36AETye1k4Zx+ylPEP/BqlORpZJn25DpXmXJlX1Btzzn6IQmJwOfBFfVsMlQ3F7Wwfwp
         3X3fm03vyZqn4qTmSdn7sYkYgiBHbceZkylPtNhV8V2bn9dfZGtLbkdJU4NJzQfUsNW3
         CqqC2OHyj9Mr3vufZ5SNH2AnA/daN38066Um0JKUfBmoR4oOZcCCYUxFAwOJ9setyeXv
         GzpbE/pR1D0KAM4oljSfspKKhYPI5RD762oj/SOe/loaFrNUX6TfYWgy8fGWDTyz0JUK
         yayw==
X-Gm-Message-State: AOAM530yX/5sgl1FzAcKThzfThir58ylXyCvyr2833wkjcfojQ/JK96b
        EFkvYb3/LJIciiodymr/dWCVq6vwVD3VeiS4a6VrLg==
X-Google-Smtp-Source: ABdhPJxMeFogkFas77zemMlntf263DD9ilLv7Qd6K+YljkScZccbQgYQDbdCP80JMCHM2uxPrdDdTxdUYKasre4/cYA=
X-Received: by 2002:aa7:d750:: with SMTP id a16mr4221514eds.362.1599151637185;
 Thu, 03 Sep 2020 09:47:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200831082917.17117-1-jagan@amarulasolutions.com>
 <20200831082917.17117-6-jagan@amarulasolutions.com> <20200903162550.GA2896127@bogus>
In-Reply-To: <20200903162550.GA2896127@bogus>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Thu, 3 Sep 2020 22:17:05 +0530
Message-ID: <CAMty3ZCXV9=VzVKiKJ740RcR+uYA7CHUzjrDL0vwQ1NOw9n4FQ@mail.gmail.com>
Subject: Re: [PATCH v3 5/7] dt-bindings: arm: rockchip: Add Engicam PX30.Core
 C.TOUCH 2.0
To:     Rob Herring <robh@kernel.org>
Cc:     Michael Trimarchi <michael@amarulasolutions.com>,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Suniel Mahesh <sunil@amarulasolutions.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        devicetree <devicetree@vger.kernel.org>,
        Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Sep 3, 2020 at 9:55 PM Rob Herring <robh@kernel.org> wrote:
>
> On Mon, 31 Aug 2020 13:59:15 +0530, Jagan Teki wrote:
> > PX30.Core is an EDIMM SOM based on Rockchip PX30 from Engicam.
> >
> > C.TOUCH 2.0 is a general purpose carrier board with capacitive
> > touch interface support.
> >
> > PX30.Core needs to mount on top of this Carrier board for creating
> > complete PX30.Core C.TOUCH 2.0 board.
> >
> > Add bindings for it.
> >
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> > Changes for v3:
> > - none
> > Changes for v2:
> > - new patch
> >
> >  Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >
>
>
> Please add Acked-by/Reviewed-by tags when posting new versions. However,
> there's no need to repost patches *only* to add the tags. The upstream
> maintainer will do that for acks received on the version they apply.
>
> If a tag was not added on purpose, please state why and what changed.

Yes, it's on purpose. The previous binding was about C.TOUCH with LVDS
board and this one is C.TOUCH carrier only. ie the main reason I have
not included. I did mention in the cover-letter saying previous one
dropped and the C.TOUCH carrier added.

Hope this answers your query.

Jagan.
