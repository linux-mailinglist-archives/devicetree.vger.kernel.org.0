Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2A76741619B
	for <lists+devicetree@lfdr.de>; Thu, 23 Sep 2021 17:01:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241764AbhIWPDH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Sep 2021 11:03:07 -0400
Received: from mail.kernel.org ([198.145.29.99]:55670 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S241734AbhIWPDH (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 23 Sep 2021 11:03:07 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7904E60E05
        for <devicetree@vger.kernel.org>; Thu, 23 Sep 2021 15:01:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1632409295;
        bh=UKPoJ1KZE1z8ljuJANQ6+sZBWeEk8dHbYbTuzdUR2ww=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=WdXupnGG8P/SY1GhKPxEK4BV+u9r2DxJ4MGqxxQMCW95xdYvFzOGmfLKsK71+/UFz
         snf1DKnhKmvigjn3OUG79I/0fa0BbwSYyxgLpLKd4qY1qAYVjQzwEeAURUwnYHetSh
         PvdEF8DmmRpRE4oTO8fKOz3NWyXoD0pnexlXZzkqt4G7dT1hRj/Wx+hx0+tyVJIqZ/
         qn+ldXxySO7c+2oIKRSpJqkO6wmJl1GkmCtdYZAKjCRY3BP4so1i3vvgOQvFhzU0+3
         5iIk+p47AeqLu3GCuzYx/IezKkc8ZtADNtKDRwBZn2bK7fAQiY9MZM4PJ5dbVFYcFd
         RHJkQEiSa0bMQ==
Received: by mail-ed1-f47.google.com with SMTP id v10so20186061edj.10
        for <devicetree@vger.kernel.org>; Thu, 23 Sep 2021 08:01:35 -0700 (PDT)
X-Gm-Message-State: AOAM531l+RDPxQvljhavNoacDaUIsQCKWcimHrHdizcU12iNjb2XIFWD
        P1Ywqa92Kp/tc5BztAfdzq/8xfcoYGGb9h7GdQ==
X-Google-Smtp-Source: ABdhPJwz3cvRPhk3j1bboE+QzjGu9L+JPMytRrsRcFKcPa7XTZo0ubf39qz2rIVfw8AMAHTTNj4aJeUftfPkDZLKP+s=
X-Received: by 2002:a17:906:abd1:: with SMTP id kq17mr5338261ejb.390.1632409276680;
 Thu, 23 Sep 2021 08:01:16 -0700 (PDT)
MIME-Version: 1.0
References: <20210913080024.6951-1-zajec5@gmail.com> <20210913080024.6951-3-zajec5@gmail.com>
 <YUriBVIH/n0p2H+D@google.com>
In-Reply-To: <YUriBVIH/n0p2H+D@google.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Thu, 23 Sep 2021 10:01:05 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+a9nKvMwzTPxCvF421cGw7CtAqHZxT=E6oO1twJ41d5Q@mail.gmail.com>
Message-ID: <CAL_Jsq+a9nKvMwzTPxCvF421cGw7CtAqHZxT=E6oO1twJ41d5Q@mail.gmail.com>
Subject: Re: [PATCH 3/4] dt-bindings: mfd: brcm,cru: add USB 2.0 PHY
To:     Lee Jones <lee.jones@linaro.org>
Cc:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org,
        Florian Fainelli <f.fainelli@gmail.com>,
        Chunfeng Yun <chunfeng.yun@mediatek.com>,
        devicetree@vger.kernel.org,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 22, 2021 at 2:58 AM Lee Jones <lee.jones@linaro.org> wrote:
>
> On Mon, 13 Sep 2021, Rafa=C5=82 Mi=C5=82ecki wrote:
>
> > From: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
> >
> > Northstar's USB 2.0 PHY is part of the CRU MFD.
> >
> > Signed-off-by: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
> > ---
> >  .../devicetree/bindings/mfd/brcm,cru.yaml         | 15 ++++++++++++++-
> >  1 file changed, 14 insertions(+), 1 deletion(-)
>
> Applied, thanks.

Hopefully this works without patch 2???

Rob
