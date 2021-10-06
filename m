Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0019B423E94
	for <lists+devicetree@lfdr.de>; Wed,  6 Oct 2021 15:21:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231378AbhJFNXR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Oct 2021 09:23:17 -0400
Received: from mail.kernel.org ([198.145.29.99]:43502 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231469AbhJFNXR (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 6 Oct 2021 09:23:17 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 411A4610C8
        for <devicetree@vger.kernel.org>; Wed,  6 Oct 2021 13:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1633526485;
        bh=alLVztSAR+zVhYna8rbF1fpO8IxYlGuubsf+eUj4w7s=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=Z/JpSi3vSHGrUztG6gWnpyVAgZrssJKAqe/zXFlTRikECYp1fNmeyAQhDi9JkH1oV
         08f03DQzh/naU1iEzwy57JqjO4ktEi9/Ou/RdlYLOvI5t5Y/PuQzDhylGBAQV2ORts
         h7Bpqi81Zm0De/RYOcWivPjdG0aC8RoU5dqnC9MT6zaUz+s7xH69dyRLA8UDU7xcWy
         UeCamA7yTf50Rs9TpU0jID/RKJoeZXbaEQ+KO6RTEEmGoGDhiX78pAC8fgg5/s28Vo
         zveYxbQDjAlLGuskVR3Vz5UyE87NZelfnMipp5yzCtrZcwptjLYpSKLdfyQB1leuVo
         UYSwA1g6vg7BQ==
Received: by mail-ed1-f44.google.com with SMTP id d8so9806951edx.9
        for <devicetree@vger.kernel.org>; Wed, 06 Oct 2021 06:21:25 -0700 (PDT)
X-Gm-Message-State: AOAM533jX09dNWogUd5cymKgqAaNU1I6cOZaQgM46qK9zwfzUNkayf2u
        GBMDYzYw1T1gB/KEN6iCsVubyYMZFW60OFjUew==
X-Google-Smtp-Source: ABdhPJw7MkXaYsUDoeBX7SmE6lCrAD2fJ87SwrdDv7Ez4blzswV4YKvWC/bciH0EDYeIZW5/+bMmgH6JkWx3e/KTAp8=
X-Received: by 2002:a17:907:7d8b:: with SMTP id oz11mr6746523ejc.84.1633526479452;
 Wed, 06 Oct 2021 06:21:19 -0700 (PDT)
MIME-Version: 1.0
References: <20211006074713.1094396-1-alexander.stein@ew.tq-group.com> <20211006074713.1094396-2-alexander.stein@ew.tq-group.com>
In-Reply-To: <20211006074713.1094396-2-alexander.stein@ew.tq-group.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Wed, 6 Oct 2021 08:21:06 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJDNCdc8iqKWqo9r30VnPgXUuNvhzF7aSjA9N7OmYH1dg@mail.gmail.com>
Message-ID: <CAL_JsqJDNCdc8iqKWqo9r30VnPgXUuNvhzF7aSjA9N7OmYH1dg@mail.gmail.com>
Subject: Re: [PATCH 2/3] dt-bindings: drm/bridge: ti-sn65dsi83: Add vcc supply bindings
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Oct 6, 2021 at 2:47 AM Alexander Stein
<alexander.stein@ew.tq-group.com> wrote:
>
> Add a VCC regulator which needs to be enabled before the EN pin is
> released.
>
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
>  .../devicetree/bindings/display/bridge/ti,sn65dsi83.yaml     | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> index 07b20383cbca..149cff3233c2 100644
> --- a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> @@ -32,6 +32,9 @@ properties:
>      maxItems: 1
>      description: GPIO specifier for bridge_en pin (active high).
>
> +  vcc-supply:
> +    description: A 1.8V power supply (see regulator/regulator.yaml).
> +
>    ports:
>      $ref: /schemas/graph.yaml#/properties/ports
>
> @@ -94,6 +97,7 @@ required:
>    - compatible
>    - reg
>    - enable-gpios
> +  - vcc-supply

You generally can't make added properties required unless all DT files
already had this property. It breaks compatibility.

Rob
