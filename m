Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1C6E529528E
	for <lists+devicetree@lfdr.de>; Wed, 21 Oct 2020 20:58:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2504557AbgJUS6M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Oct 2020 14:58:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50422 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2395162AbgJUS6M (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Oct 2020 14:58:12 -0400
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com [IPv6:2a00:1450:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68334C0613CF
        for <devicetree@vger.kernel.org>; Wed, 21 Oct 2020 11:58:10 -0700 (PDT)
Received: by mail-ej1-x642.google.com with SMTP id w27so854891ejb.3
        for <devicetree@vger.kernel.org>; Wed, 21 Oct 2020 11:58:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=RD6Pe7uFsqq6lLUnSY5SK+FGVJWIcdwyWReVf1JamtI=;
        b=FPt5Dr2PZVxmcHgGu0EzzWnbd0bBvRHH6JgMV3HonwzIQVLkhj4B4muP3EYJzeuWZH
         R1WTUDZv7Td6B59Tjr6IplLiSgIvMuPgUMzeQkhjuE+qJ/QNXPBSpn59Je+EjX1RXyU4
         IRHj/pG29Ey6zFbGxa4sArGg1YWSAupQ3kKoQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=RD6Pe7uFsqq6lLUnSY5SK+FGVJWIcdwyWReVf1JamtI=;
        b=OpfSGoVZzAdsaDVjUehVMgne/QOMo9eOzUmBsTzp2QQFIsSaOAJ0GhCZlLT85TJKjG
         gduyB9vKnUI/X2ttwtPVxGUqgh8OAzZ1upQGGzg2UWW0ffICmLqy5FBvsXmtZR6rhKI3
         CwB4WD2cq14TLejZEkfodhbH8geq/7+Sq+cG6dzCLVmttSm47RSHlgNQBYNlApHtwf8m
         QgUWVzI2SF0PhfROr0pujIEWqdaGWqy0irQRCD0p8Um8D3fn4gLER3OPjN6UoB7tuNls
         LlsrsGrTbcIlAQ9JboZgqWIHuwsEIKywXbhV9jG2nmzm9Ug0dDnxCVFE7dqhx7fgwYqL
         k57Q==
X-Gm-Message-State: AOAM532269rJT4GhAtm+2s0QxYlLc1HQmE7V51XmrgIeEfQdrSauTs3p
        H21GEaILQAdRh+kKO+WF7Om/s1a0wZQKpTvERkOuEQ==
X-Google-Smtp-Source: ABdhPJxxfUjj7Hta8BePOHoLY9p4KODnXrLobEgMBRj1B+m1IjCAXKJZnnKVfNnNHt3piiQTSKReHx4YebGVv6yUsHk=
X-Received: by 2002:a17:907:a8d:: with SMTP id by13mr4710348ejc.295.1603306689022;
 Wed, 21 Oct 2020 11:58:09 -0700 (PDT)
MIME-Version: 1.0
References: <20200929083217.25406-1-jagan@amarulasolutions.com>
In-Reply-To: <20200929083217.25406-1-jagan@amarulasolutions.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Thu, 22 Oct 2020 00:27:57 +0530
Message-ID: <CAMty3ZDHDC5TMF=8HJRmZd7HijOM6RP-k4y9JkdWVQGgPKyGvg@mail.gmail.com>
Subject: Re: [PATCH v4 0/7] arm64: dts: rockchip: Add Engicam PX30.Core
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>
Cc:     Suniel Mahesh <sunil@amarulasolutions.com>,
        Michael Trimarchi <michael@amarulasolutions.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        devicetree <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Heiko,

On Tue, Sep 29, 2020 at 2:02 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> PX30.Core is an EDIMM SOM based on Rockchip PX30 from Engicam.
>
> PX30.Core needs to mount on top of Engicam baseboards for creating
> complete platform boards.
>
> Possible baseboards are,
> - EDIMM2.2 Starter Kit
> - C.TOUCH 2.0 Carrier Board
>
> Changes for v4:
> - collect Rob A-b
> Changes for v3:
> - resolved Johan comments about sorting node properties
> - add copyright to Amarula Solutions
> - update px30 dtsi author
> Changes for v2:
> - include C.TOUCH 2.0 carrier board
> - skip 10" OF LCD as it requires separate dts with panel support.
>
> Note: These baseboards can be used for i.MX8 SOM's as well. So having
> baseboard on respective SoC seems to be easy rather than making it
> common across all.
>
> Any inputs?
> Jagan.
>
> Jagan Teki (6):
>   dt-bindings: arm: rockchip: Add Engicam PX30.Core EDIMM2.2 Starter Kit
>   arm64: dts: rockchip: px30: Add Engicam EDIMM2.2 Starter Kit
>   arm64: dts: rockchip: Add Engicam PX30.Core EDIMM2.2 Starter Kit
>   dt-bindings: arm: rockchip: Add Engicam PX30.Core C.TOUCH 2.0
>   arm64: dts: rockchip: px30: Add Engicam C.TOUCH 2.0
>   arm64: dts: rockchip: Add Engicam PX30.Core C.TOUCH 2.0
>
> Michael Trimarchi (1):
>   arm64: dts: rockchip: Add Engicam PX30.Core SOM
>
>  .../devicetree/bindings/arm/rockchip.yaml     |  12 +
>  arch/arm64/boot/dts/rockchip/Makefile         |   2 +
>  .../dts/rockchip/px30-engicam-common.dtsi     |  39 +++
>  .../dts/rockchip/px30-engicam-ctouch2.dtsi    |   8 +
>  .../dts/rockchip/px30-engicam-edimm2.2.dtsi   |   7 +
>  .../dts/rockchip/px30-px30-core-ctouch2.dts   |  22 ++
>  .../dts/rockchip/px30-px30-core-edimm2.2.dts  |  21 ++
>  .../boot/dts/rockchip/px30-px30-core.dtsi     | 232 ++++++++++++++++++
>  8 files changed, 343 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi
>  create mode 100644 arch/arm64/boot/dts/rockchip/px30-engicam-ctouch2.dtsi
>  create mode 100644 arch/arm64/boot/dts/rockchip/px30-engicam-edimm2.2.dtsi
>  create mode 100644 arch/arm64/boot/dts/rockchip/px30-px30-core-ctouch2.dts
>  create mode 100644 arch/arm64/boot/dts/rockchip/px30-px30-core-edimm2.2.dts
>  create mode 100644 arch/arm64/boot/dts/rockchip/px30-px30-core.dtsi

Any further comments?

Jagan.
