Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 818614D40C
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2019 18:43:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726965AbfFTQnv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Jun 2019 12:43:51 -0400
Received: from mail-vs1-f66.google.com ([209.85.217.66]:43427 "EHLO
        mail-vs1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726686AbfFTQnv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Jun 2019 12:43:51 -0400
Received: by mail-vs1-f66.google.com with SMTP id j26so1957124vsn.10
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2019 09:43:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=OeFgssC06Ca4X3IXaHWlew+6T79MlwgCU07uMivbM10=;
        b=TtS7/2F/OTZGse3QP1Ezkd7+vMwTgyaEqyIgOAtPig7D5aPJz70bKNReyIUkk7+On6
         UWVf+T8HfAS8IFEMpSLgAMqz+HQoyrcztrkZ54szcGOHzusNg5Fw0O9cWtDmQmMLZwJE
         SE7nqQdAv/L+QXxO/PwU7I4Nw3N5EnBJEPuVE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=OeFgssC06Ca4X3IXaHWlew+6T79MlwgCU07uMivbM10=;
        b=IozZds4JZBwj+x4/rw8vHCTGMLFOR4Q2ruI4Z/hStdNzs4ClLB+GI/2bInpebBchZA
         5CxyFYGCdZvb7t+dxgggqlgE+ufoC56/cVV9RQ01DZd/kJfvnmEtpA0MdUFLYgvromm/
         SzbTEhYbJG/UzDYrosJ4zDTraKtI+M/E3nYRVUXhTFvwCwqr/6Eev+SNDe7boxb0XABn
         ELrLFgnNgANOrb1s4JLud3pG5eom02Wo6gxw07hIl/uFcSuh82tZT4VNcucMhLJYVSxi
         bNt8BvhrmBBxHYNU6to/PFnL7GnOZtPbw0PUb6J11B9ANIXG+lyvIz7yQ1VgtRz8NYHF
         hJ6g==
X-Gm-Message-State: APjAAAVH4TZNaj25RDYO/Trkx2WVWT8mCrNiFuwKZL1sqhwS+xObkp+O
        k2PwRGnSV7vMhE9xO/M1DPys2N9dXzY=
X-Google-Smtp-Source: APXvYqxBcdq3T0XvHirXZGYCLz7NhfV0Ye7NxwAtNGQdWAkuVM3An/kFW7rFmQdLOV49BVMOsvmv/A==
X-Received: by 2002:a67:c113:: with SMTP id d19mr54156170vsj.89.1561049030301;
        Thu, 20 Jun 2019 09:43:50 -0700 (PDT)
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com. [209.85.217.46])
        by smtp.gmail.com with ESMTPSA id 127sm25365vsi.24.2019.06.20.09.43.49
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 Jun 2019 09:43:49 -0700 (PDT)
Received: by mail-vs1-f46.google.com with SMTP id 190so1948869vsf.9
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2019 09:43:49 -0700 (PDT)
X-Received: by 2002:a67:fd91:: with SMTP id k17mr58238625vsq.121.1561049028723;
 Thu, 20 Jun 2019 09:43:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190618213406.7667-1-ezequiel@collabora.com> <20190618213406.7667-2-ezequiel@collabora.com>
In-Reply-To: <20190618213406.7667-2-ezequiel@collabora.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 20 Jun 2019 09:43:33 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UpZAjrWkQ7qj5Wo2tf2wkg5Q-34Sun0MOtYLBAwY731Q@mail.gmail.com>
Message-ID: <CAD=FV=UpZAjrWkQ7qj5Wo2tf2wkg5Q-34Sun0MOtYLBAwY731Q@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: display: rockchip: document VOP gamma
 LUT address
To:     Ezequiel Garcia <ezequiel@collabora.com>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        Sandy Huang <hjc@rock-chips.com>, kernel@collabora.com,
        Sean Paul <seanpaul@chromium.org>,
        Boris Brezillon <boris.brezillon@collabora.com>,
        Jacopo Mondi <jacopo@jmondi.org>,
        Ilia Mirkin <imirkin@alum.mit.edu>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Jun 18, 2019 at 2:43 PM Ezequiel Garcia <ezequiel@collabora.com> wrote:
>
> Add the register specifier description for an
> optional gamma LUT address.
>
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
>  .../bindings/display/rockchip/rockchip-vop.txt         | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.txt b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.txt
> index 4f58c5a2d195..97ad78cc7e03 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.txt
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.txt
> @@ -20,6 +20,13 @@ Required properties:
>                 "rockchip,rk3228-vop";
>                 "rockchip,rk3328-vop";
>
> +- reg: Must contain one entry corresponding to the base address and length
> +       of the register space. Can optionally contain a second entry
> +       corresponding to the CRTC gamma LUT address.
> +
> +- reg-names: "base" for the base register space. If present, the CRTC
> +       gamma LUT name should be "lut".

As per Rob Herring, current suggestion is to avoid reg-names when
possible.  The code should just look for the presence of a 2nd entry
and assume that if it's there that it's the lut range.  Full context:

https://lore.kernel.org/lkml/CAL_Jsq+MMunmVWqeW9v2RyzsMKP+=kMzeTHNMG4JDHM7Fy0HBg@mail.gmail.com/

-Doug
