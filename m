Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1B54C387B78
	for <lists+devicetree@lfdr.de>; Tue, 18 May 2021 16:42:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235178AbhEROoI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 May 2021 10:44:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58378 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234454AbhEROoI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 May 2021 10:44:08 -0400
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com [IPv6:2607:f8b0:4864:20::1029])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8FB6EC061756
        for <devicetree@vger.kernel.org>; Tue, 18 May 2021 07:42:50 -0700 (PDT)
Received: by mail-pj1-x1029.google.com with SMTP id b9-20020a17090a9909b029015cf9effaeaso1652363pjp.5
        for <devicetree@vger.kernel.org>; Tue, 18 May 2021 07:42:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=b3DMt2F3yR1S8LhJiSdAhlPcYPUp2f9kxGSREUS+xFY=;
        b=hrKuPisLxc8CgXd9G6ghQ6FBg4IJtnIX7kOnnpJojVxnuLnLTdp7lfi3kHnxK9dz0+
         v+gfHV/vAujTUbSAZUMzTXMkFkS06vjZKGpIpbupOJ0CQzyDiB9qEwDG9gBbYwNjwB4d
         4/Sf3gbt9uYnMkgDd4vJ4RAplDIoz0rt8sNrsoWPDkLadtBj8lQDAplYoqANqXtRTxxB
         9Uu38T6Ax0+/znT5ex5MKtIhfm+jjo6r6sCDk+5rEXrNF0dGBmJcQq2cfYm3W6e2PAML
         +bdCUUIS3x+IPNlwCBnwGWge0nKbJeB1ZSjS4dDyFnma0emXEP+2ooA+vRqNc1qdezZ/
         xQ/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=b3DMt2F3yR1S8LhJiSdAhlPcYPUp2f9kxGSREUS+xFY=;
        b=iJZmBdtx+Jm4lRK9EqdCUfC8N1lpW0cH9MWI+EktmSV3blqQhTc/MErcwV73w9WDtL
         LfNKyhr2Mc6OgX3uj/CDSbg036uBkO73J3uhI28i/Uy+SOivmGsH7unYXwxg8tFwcK18
         VBbtPZK9Jh5H64kJ/lCEIzqL/J3+6ssX4aNyBxK/nMev8yifeze5ngdSjfSZdLbklXPo
         j73V3TDTGqMuLhGwfipKZK58KyWxsudjDXqPfUHvY1h37nQOb5d5jKMraSrSG+ffPbNP
         VW7veUUDTOPmHe4ttxsmCtbU64vAI5/chOX0cK1J961E7PiTkhfwx0zJdMEWd6tlueEd
         hAdA==
X-Gm-Message-State: AOAM532Rn7hPfbuajfOffsTTCdxQBxY3SmrfPZmpjVFilkYMJbi85bK2
        vcIQrMrdHSonisnGrR3sWlAEIasYjjyWQ3NeIzrA0NWPgh/3ms1M
X-Google-Smtp-Source: ABdhPJz6HxDCbuqQzC6kuOWJ/Z4wKk+gxz+hYXy740zOMxhRX6CV1XDh880v/3VEjfhmUyaukGJCeYabreKqbOSypV0=
X-Received: by 2002:a17:90a:e391:: with SMTP id b17mr1086553pjz.75.1621348970117;
 Tue, 18 May 2021 07:42:50 -0700 (PDT)
MIME-Version: 1.0
References: <20210518141927.24795-1-dafna.hirschfeld@collabora.com> <20210518141927.24795-2-dafna.hirschfeld@collabora.com>
In-Reply-To: <20210518141927.24795-2-dafna.hirschfeld@collabora.com>
From:   Robert Foss <robert.foss@linaro.org>
Date:   Tue, 18 May 2021 16:42:38 +0200
Message-ID: <CAG3jFyuu7Vvd3QtKpfVg+uSFB9JJmKOAovxpX_gs=BoBUYuamw@mail.gmail.com>
Subject: Re: [PATCH v6 RESEND 1/2] dt-bindings: display: add google,cros-ec-anx7688.yaml
To:     Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        linux-mediatek@lists.infradead.org,
        linux-kernel <linux-kernel@vger.kernel.org>, megous@megous.com,
        linux-usb@vger.kernel.org, Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        enric.balletbo@collabora.com,
        Nicolas Boichat <drinkcat@chromium.org>,
        Hsin-Yi Wang <hsinyi@chromium.org>, kernel@collabora.com,
        dafna3@gmail.com, Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Series applied to drm-misc-next.

https://cgit.freedesktop.org/drm/drm-misc/commit/?id=b67f7599c90ae36a5174826132f7690fa13d462c

On Tue, 18 May 2021 at 16:19, Dafna Hirschfeld
<dafna.hirschfeld@collabora.com> wrote:
>
> ChromeOS EC ANX7688 is a display bridge that converts HDMI 2.0 to
> DisplayPort 1.3 Ultra-HDi (4096x2160p60). It is an Analogix ANX7688 chip
> which is connected to and operated by the ChromeOS Embedded Controller
> (See google,cros-ec.yaml). It is accessed using I2C tunneling through
> the EC and therefore its node should be a child of an EC I2C tunnel node
> (See google,cros-ec-i2c-tunnel.yaml).
>
> ChromOS EC ANX7688 is found on Acer Chromebook R13 (elm)
>
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
>  .../bridge/google,cros-ec-anx7688.yaml        | 82 +++++++++++++++++++
>  1 file changed, 82 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/google,cros-ec-anx7688.yaml
>
> diff --git a/Documentation/devicetree/bindings/display/bridge/google,cros-ec-anx7688.yaml b/Documentation/devicetree/bindings/display/bridge/google,cros-ec-anx7688.yaml
> new file mode 100644
> index 000000000000..9f7cc6b757cb
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/bridge/google,cros-ec-anx7688.yaml
> @@ -0,0 +1,82 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/bridge/google,cros-ec-anx7688.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ChromeOS EC ANX7688 HDMI to DP Converter through Type-C Port
> +
> +maintainers:
> +  - Nicolas Boichat <drinkcat@chromium.org>
> +  - Enric Balletbo i Serra <enric.balletbo@collabora.com>
> +
> +description: |
> +  ChromeOS EC ANX7688 is a display bridge that converts HDMI 2.0 to
> +  DisplayPort 1.3 Ultra-HDi (4096x2160p60). It is an Analogix ANX7688 chip
> +  which is connected to and operated by the ChromeOS Embedded Controller
> +  (See google,cros-ec.yaml). It is accessed using I2C tunneling through
> +  the EC and therefore its node should be a child of an EC I2C tunnel node
> +  (See google,cros-ec-i2c-tunnel.yaml).
> +
> +properties:
> +  compatible:
> +    const: google,cros-ec-anx7688
> +
> +  reg:
> +    maxItems: 1
> +    description: I2C address of the device.
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: Video port for HDMI input.
> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: USB Type-c connector.
> +
> +    required:
> +      - port@0
> +      - port@1
> +
> +required:
> +  - compatible
> +  - reg
> +  - ports
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    i2c_tunnel_b: i2c-tunnel1 {
> +        compatible = "google,cros-ec-i2c-tunnel";
> +        google,remote-bus = <1>;
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        anx7688: anx7688@2c {
> +            compatible = "google,cros-ec-anx7688";
> +            reg = <0x2c>;
> +
> +            ports {
> +                #address-cells = <1>;
> +                #size-cells = <0>;
> +                port@0 {
> +                    reg = <0>;
> +                    anx7688_in: endpoint {
> +                        remote-endpoint = <&hdmi0_out>;
> +                    };
> +                };
> +                port@1 {
> +                    reg = <1>;
> +                    anx7688_out: endpoint {
> +                        remote-endpoint = <&typec_connector>;
> +                    };
> +                };
> +            };
> +        };
> +    };
> +
> --
> 2.17.1
>
