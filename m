Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9BE17454956
	for <lists+devicetree@lfdr.de>; Wed, 17 Nov 2021 15:54:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231635AbhKQO5t (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Nov 2021 09:57:49 -0500
Received: from mail.kernel.org ([198.145.29.99]:32976 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231324AbhKQO5t (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 17 Nov 2021 09:57:49 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id EBC2B61B2B
        for <devicetree@vger.kernel.org>; Wed, 17 Nov 2021 14:54:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1637160891;
        bh=bgjr8yJOWsL+nIbaL9cKsP3o2b2qmUpIgL5aZebelLo=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=JTd+v5Z6z01TfR/bR9dmTn87qBNRyDSSvXGsI6etW0Txeu2IWFcrwMihng3+EG9mz
         LKecFZeu1/tBJmEol1kk0tGJY+wpza49zFtz0zxD9ncwSonfkgf70Oxdjp2X6g3p7T
         fxfHu+nWTwLhQptBX4c71rHmo6sjpTTuzP9WxA62K19TLz9n/CQYcGVv6h1aakx4VA
         B6aTvz9mvI5L/Q0CN+S7SuD97aCm0chOJC/75/rggKjR8MNq103umV7WwdkQlXaank
         n6+8i6L3FxSrCDuN2UNRGsp3YKneIHfGYkdPqzKWyHrPRQD19t3QDXjbbWTemFj2G3
         vv6FvS3XEMRzQ==
Received: by mail-ed1-f45.google.com with SMTP id y12so12275422eda.12
        for <devicetree@vger.kernel.org>; Wed, 17 Nov 2021 06:54:50 -0800 (PST)
X-Gm-Message-State: AOAM530NoAqiRG91ERUsMqlCKo9fIaWcLM/Rh8b7Q1CDVUFXfzy4Ck25
        XlI7k6t9dvwf6y1To33kKh2o62XOY29xM+67sw==
X-Google-Smtp-Source: ABdhPJw0S7ajbekMY4Kz6agkssG2VWOwZDiRqdiVwjh429yqwO31JlqnTUZtYuiwYFavxe4b0vRatEav0QC/Rq3OPEs=
X-Received: by 2002:a50:8dcb:: with SMTP id s11mr22594000edh.318.1637160889361;
 Wed, 17 Nov 2021 06:54:49 -0800 (PST)
MIME-Version: 1.0
References: <20211117143347.314294-1-s.hauer@pengutronix.de>
In-Reply-To: <20211117143347.314294-1-s.hauer@pengutronix.de>
From:   Rob Herring <robh@kernel.org>
Date:   Wed, 17 Nov 2021 08:54:37 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJxJj2JT-0vN45vYyoy_Sh87NnoTfJQH-4qxRoPNwtj5Q@mail.gmail.com>
Message-ID: <CAL_JsqJxJj2JT-0vN45vYyoy_Sh87NnoTfJQH-4qxRoPNwtj5Q@mail.gmail.com>
Subject: Re: [PATCH v1 00/12] drm/rockchip: RK356x VOP2 support
To:     Sascha Hauer <s.hauer@pengutronix.de>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        devicetree@vger.kernel.org, Sascha Hauer <kernel@pengutronix.de>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Nov 17, 2021 at 8:34 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> This series adds initial graphics support for the Rockchip RK356[68]
> SoCs.  Graphics support is based around the VOP2 controller which
> replaces the VOP controller found on earlier Rockchip SoCs. The driver
> has been tested with HDMI support included in this series and MIPI-DSI
> which is not included because it needs some more work. The driver is
> taken from the downstream Rockchip kernel and heavily polished, most non
> standard features have been removed for now. I tested the driver with
> the libdrm modetest utility and also with weston with both pixman and
> panfrost driver support. Michael Riesch reported the driver to work on
> the RK3566 as well, but device tree support for this SoC is not yet
> included in this series.

Can you outline what exactly you want to disable? I don't think
'status' is the right way. I think between the parent device being
disabled, an incomplete graph and user configuration choice that
should be enough to disable parts.

Rob
