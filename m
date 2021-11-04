Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 929AC4453B6
	for <lists+devicetree@lfdr.de>; Thu,  4 Nov 2021 14:19:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231672AbhKDNWZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Nov 2021 09:22:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55806 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231160AbhKDNWZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Nov 2021 09:22:25 -0400
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com [IPv6:2607:f8b0:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31567C06127A
        for <devicetree@vger.kernel.org>; Thu,  4 Nov 2021 06:19:47 -0700 (PDT)
Received: by mail-pl1-x62c.google.com with SMTP id u11so7193796plf.3
        for <devicetree@vger.kernel.org>; Thu, 04 Nov 2021 06:19:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6znl9g1aF/ktgrLgP4pKgxmC6R6G/5lzoN2lQ83r4Mg=;
        b=SScnlvLKSBYSwGgZP4vXFrjpR6++jonn1IAkJ/8MW2BJSA2mHq9ozIp5zOWltU4txf
         KEcAkUp7XKW/+xjgW7JHZmku4Gs1DG1S9cxWEc9mAGaJjLIp/M4m6vr+GREIlJkTIG1M
         Q30ULMEpm+YSsPBT+BzB4nLMw1tkXFptMuD90=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6znl9g1aF/ktgrLgP4pKgxmC6R6G/5lzoN2lQ83r4Mg=;
        b=Yu2WC1kehWl/0lO9QJVZxqPMq5sZCkDhcCEa6n1ISqEP8PEbxGqiJe5bKZ9aFMlOPf
         ZKgUYH7soBMg2wBL22ydR0DnYw8OBFGRfyETBkrvIx2qvhpK/lur0BusAOfQPsAiLSzn
         YbJ3EveEteevclHOm4/NifhbZOpRYM9KOOALM0u0114Xe1WaNfWM7fyFemJ6b48sPEgn
         R7tuuB0ak7EupGVF3RwZP8OpVIpehIKtlwyw79AaC7IDnG4toxW7kZkhMmEUg6zM6sEv
         RuekhR4fgFpbRmRzHBk9rivnzET6T4/L8VXTi1Co4KcneS8N3aBABmGj+5ZNYNhrt9uC
         vlKQ==
X-Gm-Message-State: AOAM5326KlLd4nE1VSyKJNDRpIj0wOkeXcRrImNrKX8zFFZt9Wo6XqjI
        E1pHuRlC7iSVEN0kGDrw9N6FQGF8DY2tKpoCZa+Hug==
X-Google-Smtp-Source: ABdhPJwRuqvbL3YNO+3lAhAYC8fQPcfdCceIuT0J9FcvnJEdBufdZI50ieoIk0wLUXqk5ffazI6KxxaDW3Yu6J/9Ljs=
X-Received: by 2002:a17:902:6a86:b0:13f:f048:9778 with SMTP id
 n6-20020a1709026a8600b0013ff0489778mr44611543plk.27.1636031986615; Thu, 04
 Nov 2021 06:19:46 -0700 (PDT)
MIME-Version: 1.0
References: <20211016102232.202119-1-michael@amarulasolutions.com> <YWrFIz08A8ZVKXvi@ravnborg.org>
In-Reply-To: <YWrFIz08A8ZVKXvi@ravnborg.org>
From:   Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Date:   Thu, 4 Nov 2021 14:19:33 +0100
Message-ID: <CAOf5uwnv=MxqK772YJ3mggkqFQJW+Z3_WrCNHgDPTpDH8d-2Xw@mail.gmail.com>
Subject: Re: [PATCH 0/5] Add support for Wanchanglong panel used in px30-evb v11
To:     Sam Ravnborg <sam@ravnborg.org>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        David Airlie <airlied@linux.ie>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>,
        =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        devicetree@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Sam

On Sat, Oct 16, 2021 at 2:27 PM Sam Ravnborg <sam@ravnborg.org> wrote:
>
> Hi Michael,
>
> On Sat, Oct 16, 2021 at 10:22:27AM +0000, Michael Trimarchi wrote:
> > This patch series add support for W552946ABA panel. This panel is used
> > in px30-evb v11. All the patches can be applied on top of drm-fixes
> > branch. The last patch is suppose to fix a race when the panel is built
> > in. Tested on px30 evb
> >
> > Michael Trimarchi (5):
> >   dt-bindings: vendor-prefix: add Wanchanglong Electronics Technology
> >   drm/panel: ilitek-ili9881d: add support for Wanchanglong W552946ABA
> >     panel
> >   dt-bindings: ili9881c: add compatible string for Wanchanglong
> >     w552946aba
> >   drm/panel: ilitek-ili9881c: Make gpio-reset optional
> The four patches has been applied to drm-misc-next.
>

I sent another fix on the same panel. Are those patches queued on some tree?

> >   drm/bridge: dw-mipi-dsi: Fix dsi registration during drm probing
> This patch looks like it does not belong in this series.
> Anyway - commented on it as I did not understand the code.
>
>         Sam

Michael
