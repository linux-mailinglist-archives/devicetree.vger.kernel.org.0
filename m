Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5F6F7740C6
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2019 23:19:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727868AbfGXVTt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Jul 2019 17:19:49 -0400
Received: from mail-io1-f66.google.com ([209.85.166.66]:39346 "EHLO
        mail-io1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726818AbfGXVTt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Jul 2019 17:19:49 -0400
Received: by mail-io1-f66.google.com with SMTP id f4so92714472ioh.6
        for <devicetree@vger.kernel.org>; Wed, 24 Jul 2019 14:19:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=U42kawvbKkJEpel5zVan/ikF9rLZvUvs8OMQwcRg1UQ=;
        b=Hj+vv5UDzb40nMOp/TYlwPPAC+V4UscPzE4W3bfNlI7Qb97uhVRuGULd4B00296MSj
         EjBIE+XYJXv2DiYixI2xTEUG2Ph2XZ7Ubm85jxcyt/IVI4nCKYZpit8TBHwruNP9ATlo
         bQ8Up4xTuUPB8AJubgG7inQlixBfoprr1mWVM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=U42kawvbKkJEpel5zVan/ikF9rLZvUvs8OMQwcRg1UQ=;
        b=kOWJ085otIP5/dgUi0zke8wl/MGKapIvU6PzqEiaYZhnJfxQ/tQG2xqwIU5VtYwWuT
         pLfgRVht0w23PJkWGhWt9fvoncrgmdiBgAdLheythwkUA9oRYuTtBvpooeNUHRaxex9k
         zNF7g15hiZktMYq/IzOeNLxWlFh1UmY10y3tl8RD5Fgl+Ra4fngVPS4PYxVsEfPQP/Cm
         2j3tayY2PeWgg+CaisFwMr+HAkOlSz2Agfq5IuRo+ol1VsqDxe40WooTy8lYztC9eMgQ
         C8DnFLyxaoSUsxECbJvdSzLGi/9RT6dg3GmkCelFlDPQiI6rDEsFYzkZhmZejET3tHpw
         ZJxw==
X-Gm-Message-State: APjAAAXufEpMJGlKaQxeRiTo4WP5sO8V5iELcC2Uk70Fasc8ucdIR5Im
        XrLO52xqgy9hTfFzRo+LwEHr0r0//jg=
X-Google-Smtp-Source: APXvYqye7hqrzeEKfZQuc69cdCxg5igKa5fqDmgTl1QBjBcTSYxLbdnqhkq5ki1vOBa5k7JBeoVE/Q==
X-Received: by 2002:a5d:8747:: with SMTP id k7mr64360387iol.20.1564003188292;
        Wed, 24 Jul 2019 14:19:48 -0700 (PDT)
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com. [209.85.166.43])
        by smtp.gmail.com with ESMTPSA id p25sm38115568iol.48.2019.07.24.14.19.47
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jul 2019 14:19:47 -0700 (PDT)
Received: by mail-io1-f43.google.com with SMTP id e20so62303491iob.9
        for <devicetree@vger.kernel.org>; Wed, 24 Jul 2019 14:19:47 -0700 (PDT)
X-Received: by 2002:a5e:c241:: with SMTP id w1mr73854059iop.58.1564003187386;
 Wed, 24 Jul 2019 14:19:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190711223455.12210-1-mka@chromium.org>
In-Reply-To: <20190711223455.12210-1-mka@chromium.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 24 Jul 2019 14:19:35 -0700
X-Gmail-Original-Message-ID: <CAD=FV=U5Z4QqyjzJpERwhvJFPATS+khVWBCStnaJKZR0hHBWNQ@mail.gmail.com>
Message-ID: <CAD=FV=U5Z4QqyjzJpERwhvJFPATS+khVWBCStnaJKZR0hHBWNQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] ARM: dts: rockchip: move rk3288-veryon display
 settings into a separate file
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Jul 11, 2019 at 3:35 PM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> diff --git a/arch/arm/boot/dts/rk3288-veyron-edp.dtsi b/arch/arm/boot/dts/rk3288-veyron-edp.dtsi
> new file mode 100644
> index 000000000000..5d812e9e78aa
> --- /dev/null
> +++ b/arch/arm/boot/dts/rk3288-veyron-edp.dtsi
> @@ -0,0 +1,124 @@
> +// SPDX-License-Identifier: GPL-2.0

Please allow MIT license:

// SPDX-License-Identifier: (GPL-2.0+ OR MIT)


> +&pinctrl {
> +       backlight {
> +               bl_en: bl-en {
> +                       rockchip,pins = <7 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
> +               };
> +       };
> +};

nit: convention on Rockchip device tree files is that all pinctrl
stuff is at the bottom.  Downstream I think I added comments about
this but those didn't make it upstream.

Also: why did you move "bl_en" here but not "edp_hpd"?

-Doug
