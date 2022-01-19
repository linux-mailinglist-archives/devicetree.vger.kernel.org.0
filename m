Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DD2CC493D51
	for <lists+devicetree@lfdr.de>; Wed, 19 Jan 2022 16:36:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355799AbiASPgH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jan 2022 10:36:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238476AbiASPgH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Jan 2022 10:36:07 -0500
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6DDF1C061574
        for <devicetree@vger.kernel.org>; Wed, 19 Jan 2022 07:36:07 -0800 (PST)
Received: by mail-pj1-x102f.google.com with SMTP id d15-20020a17090a110f00b001b4e7d27474so2957188pja.2
        for <devicetree@vger.kernel.org>; Wed, 19 Jan 2022 07:36:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=OMrhSxzcq06Y5Du1J5LkmKoFAbKXMAXT3vH7sejriLY=;
        b=ssfImEcNw476pH+KakbvvBbRQNHR8We3jAnB769CrsR7ZqdjUaTl54C8lg28NNpwt3
         Ujsw27eeIbDM0koFZgiviggwBTeQ8pIjeVcgMaH+REWTo1G0rvLESHp0tpSQkfClxlwd
         2mJasD5GOAEw50iMq2vIfwwGOXZeh6nenLxsszU6upFCfLwZvLFmOgFDEP/YteNgzZUS
         cjs54BZG2ME/5bpw7J6x46p9gWGGFTnCbyuChO84a11jFnn4ZgBhuaf/PeXJh2NFEKpm
         hn3fEtEtv0B+n7QD8jAlB0FqXoaJvl8AyYH5Wm0oZhDctURSmdH7zuB6yXwDNZvzBCX1
         +oqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=OMrhSxzcq06Y5Du1J5LkmKoFAbKXMAXT3vH7sejriLY=;
        b=hnoakM9d16j8SxuD26GIx/0pg26JLEKL3R+u1AtZAutRU6YDMz+eKJkg1h+qT/s8lR
         JZE/YuZgMFbOCzyoGbkNMfzDYp41B6TBhNsOW/w9oL0ihQUyNPnG5AkgB8C/7r+VIEe1
         1DWfwFY70KJkA0nuc84rHNrzMnel1t3y8HrGhk4iqkMCxfpDxogeelDTJS9sCvS5NjuE
         u5cd6zGv62ykqLAWB/5/yze76joQQGuRDwzfTjoJ6k+Lx09QLHNG+Xme4zm78sFT/a2F
         jDOm9i5mhJRM2LZmiwTNf1wWwsU2nriwLwrWBJuCb5Ph2SXNXuRUgfHecmMm/txicgqk
         KTtg==
X-Gm-Message-State: AOAM533m3X6/g8Sg2bdUFEzcqYLhAOZTFJ9Zvk+0JdGdbAYU/TKGMn6l
        M+fsvqfpPjE1A/dS2fTcZRzbuBhX1MxIzjfhvDbYPg==
X-Google-Smtp-Source: ABdhPJySyCqqeyw8uXJjJaFzQvTXGSC/lm5A2BRldYPOCcLjtNFpPECtLJjCIH4Pg2dEw9rTuxak1N3cylwER/vXAC8=
X-Received: by 2002:a17:902:b189:b0:149:6c45:24c with SMTP id
 s9-20020a170902b18900b001496c45024cmr33136123plr.21.1642606566766; Wed, 19
 Jan 2022 07:36:06 -0800 (PST)
MIME-Version: 1.0
References: <20220119151751.986185-1-hsinyi@chromium.org> <20220119151751.986185-4-hsinyi@chromium.org>
In-Reply-To: <20220119151751.986185-4-hsinyi@chromium.org>
From:   Robert Foss <robert.foss@linaro.org>
Date:   Wed, 19 Jan 2022 16:35:55 +0100
Message-ID: <CAG3jFyv--OkEOxHr=61oAw8Q0bMdkftZu47M-N0YTiOB0YyiQA@mail.gmail.com>
Subject: Re: [PATCH v5 4/4] dt-bindings: drm/bridge: anx7625: Add aux-bus node
To:     Hsin-Yi Wang <hsinyi@chromium.org>
Cc:     Rob Herring <robh+dt@kernel.org>, Xin Ji <xji@analogixsemi.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hey Hsin-Yi,

While I can review this patch, I don't have the authority to merge it
since it is outside the scope of my maintainership. Rob Herring,
Daniel Vetter or David Airlie would have to Ack this patch.

On Wed, 19 Jan 2022 at 16:18, Hsin-Yi Wang <hsinyi@chromium.org> wrote:
>
> List panel under aux-bus node if it's connected to anx7625's aux bus.
>
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> Reviewed-by: Xin Ji <xji@analogixsemi.com>
> ---
>  .../display/bridge/analogix,anx7625.yaml        | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml b/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
> index 1d3e88daca041a..0d38d6fe39830f 100644
> --- a/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
> @@ -83,6 +83,9 @@ properties:
>      type: boolean
>      description: let the driver enable audio HDMI codec function or not.
>
> +  aux-bus:
> +    $ref: /schemas/display/dp-aux-bus.yaml#
> +
>    ports:
>      $ref: /schemas/graph.yaml#/properties/ports
>
> @@ -167,5 +170,19 @@ examples:
>                      };
>                  };
>              };
> +
> +            aux-bus {
> +                panel {
> +                    compatible = "innolux,n125hce-gn1";
> +                    power-supply = <&pp3300_disp_x>;
> +                    backlight = <&backlight_lcd0>;
> +
> +                    port {
> +                        panel_in: endpoint {
> +                            remote-endpoint = <&anx7625_out>;
> +                        };
> +                    };
> +                };
> +            };
>          };
>      };
> --
> 2.34.1.703.g22d0c6ccf7-goog
>
