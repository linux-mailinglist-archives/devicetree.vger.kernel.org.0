Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B806B70650F
	for <lists+devicetree@lfdr.de>; Wed, 17 May 2023 12:25:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230303AbjEQKZz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 May 2023 06:25:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230301AbjEQKZy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 May 2023 06:25:54 -0400
Received: from mail-vk1-xa29.google.com (mail-vk1-xa29.google.com [IPv6:2607:f8b0:4864:20::a29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6660E3C33
        for <devicetree@vger.kernel.org>; Wed, 17 May 2023 03:25:50 -0700 (PDT)
Received: by mail-vk1-xa29.google.com with SMTP id 71dfb90a1353d-4501f454581so442671e0c.3
        for <devicetree@vger.kernel.org>; Wed, 17 May 2023 03:25:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1684319149; x=1686911149;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QzxZD48PY2DhxBTB/AhhijJZHAkj7rHk4JQ272Q2X+s=;
        b=hBGkseWpS5FW055SPb/V4102sqHaRDbGnnpBeApgHymo+Y0XxGQ5mW8x8bskNirjd1
         1nqsdnLtz6jLDHxyR+B1h/CnASnQswbUYJIGQp6gLL/eH26u4/FcmiEp+oXajc8s43c3
         GBP54xYmPceS8LxsdLdDOvLdX5IlK5sOKlgePhIYiR1t3IsHjwQ4TNBv+5a41rLbZSWW
         lDgD1AUfb1LEYvzURXKmRZiBcUaaiEXip5jrYG6KaZ0e0BPdawcuCO1WIqQDhsda80Rr
         m2VqmMq+mOnEfcjSk1WgQXHF34r33KXuUuzw/MtSmkAHmXpln1LSkRwQYpGQPPCM+onF
         RmkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684319149; x=1686911149;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QzxZD48PY2DhxBTB/AhhijJZHAkj7rHk4JQ272Q2X+s=;
        b=AW3rTxcRibqZRlnl4Q3TRg5JZ0JG47nDDfihmCoZHin+lF42EOWvEavotqQLoNRZSX
         IfLZOM2tU1V2rz1N5A2xx/Xw+1kydE4G7l/emDpOc52uKJbLKKXyLfvoW+mYy0zDLiT3
         aSYU6gsXgjO6/QbKeikY/jJhzGJ6Vx6e3Kjc5g8eAcuETFagW4eZAPBFR67DVN7W90bw
         4i9BxF0NP5F8wguxq+zK0EsXdHg3RPTrvIHnPAfaB6Sc4JXlyCkgh9/lwMOpbCx+frdo
         Hhb76yYac590JhUKTzbMxCs+5CiMBRBqosRp6Fu7eYl7ohG5lD6YGl37hRcr1sPzwdjR
         imGQ==
X-Gm-Message-State: AC+VfDy+bvxeUxGIEXyj7guVmVxA+qAssMwiuX4XGwWs1j0Y9j3OsGY1
        mcc8I6zQPQIoqUUbrpifWohoVzQT1+UUxMP1KffPCw==
X-Google-Smtp-Source: ACHHUZ44BqzmGxz3QHxrYPm16vIVE2NUwgPrK7cObMyOFiHcYfIUvs5KttvlZ6bXw8wpg58FmrjXdB681tQgnX4nUyw=
X-Received: by 2002:a1f:4e02:0:b0:44f:ba05:46cf with SMTP id
 c2-20020a1f4e02000000b0044fba0546cfmr14335258vkb.3.1684319149248; Wed, 17 May
 2023 03:25:49 -0700 (PDT)
MIME-Version: 1.0
References: <CAO9szn18KsR0c+U8EEY1=xnmsKMxy6SEArMUic0z=aYJDVwWCQ@mail.gmail.com>
In-Reply-To: <CAO9szn18KsR0c+U8EEY1=xnmsKMxy6SEArMUic0z=aYJDVwWCQ@mail.gmail.com>
From:   Dave Stevenson <dave.stevenson@raspberrypi.com>
Date:   Wed, 17 May 2023 11:25:34 +0100
Message-ID: <CAPY8ntCkZB3K2LoLcBseDcg=qNrOvZbYaCdiyNcR4R2Oo3sLoA@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: display: panel: add panel-mipi-dsi-bringup
To:     =?UTF-8?B?UGF1bG8gUGF2YcSNacSH?= <pavacic.p@gmail.com>
Cc:     krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        neil.armstrong@linaro.org, sam@ravnborg.org, airlied@gmail.com,
        robh+dt@kernel.org, daniel@ffwll.ch, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Paulo

On Tue, 16 May 2023 at 14:09, Paulo Pava=C4=8Di=C4=87 <pavacic.p@gmail.com>=
 wrote:
>
> Add dt-bindings documentation for panel-mipi-dsi-bringup which currently
> supports fannal,c3004 panel. Also added fannal to vendor-prefixes.
>
> v2 changelog:
>   - revised driver title, now describes purpose
>   - revised description, now describes hw
>   - revised maintainers, now has only 1 mail
>   - removed diacritics from commit/commit author
>   - properties/compatible is now enum
>   - compatible using only lowercase
>   - revised dts example
>   - modified MAINTAINERS in this commit (instead of driver commit)
>   - dt_bindings_check checked yml
>   - checkpatch warning fixed
>
> Signed-off-by: Paulo Pavacic <pavacic.p@gmail.com>
> ---
>  .../display/panel/panel-mipi-dsi-bringup.yaml | 54 +++++++++++++++++++
>  .../devicetree/bindings/vendor-prefixes.yaml  |  2 +
>  MAINTAINERS                                   |  6 +++
>  3 files changed, 62 insertions(+)
>  create mode 100644
> Documentation/devicetree/bindings/display/panel/panel-mipi-dsi-bringup.ya=
ml
>
> diff --git a/Documentation/devicetree/bindings/display/panel/panel-mipi-d=
si-bringup.yaml
> b/Documentation/devicetree/bindings/display/panel/panel-mipi-dsi-bringup.=
yaml
> new file mode 100644
> index 000000000000..c9e2b545657e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/panel-mipi-dsi-brin=
gup.yaml
> @@ -0,0 +1,54 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/panel/panel-mipi-dsi-bringup.=
yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: MIPI DSI Bringup Panel Porting Bindings
> +
> +description: |
> +  MIPI DSI Bringup Panel porting bindings to be used for a collection of=
 panels
> +  from different manufacturers which don't require backlight control fro=
m the
> +  driver and have a single reset pin which is required to be passed as a=
n
> +  argument.

Don't we already have support for DSI displays that only need a single
reset pin via panel-simple? [1]

The bit that confuses me is that the driver patch [2] is using DSI DCS
commands to configure the panel - that differs from this dt binding
description of the panel only needing a reset pin.

Potentially there is gain in having a template DSI panel driver
available for reference, but this driver/binding appears to be trying
to act as a generic thing.

  Dave

[1] https://elixir.bootlin.com/linux/v6.3.2/source/drivers/gpu/drm/panel/pa=
nel-simple.c#L4605
[2] https://lists.freedesktop.org/archives/dri-devel/2023-May/404775.html


> +
> +maintainers:
> +  - Paulo Pavacic <pavacic.p@gmail.com>
> +
> +allOf:
> +  - $ref: panel-common.yaml#
> +
> +properties:
> +
> +  compatible:
> +    enum:
> +      # compatible must be listed in alphabetical order, ordered by comp=
atible.
> +      # The description in the comment is mandatory for each compatible.
> +
> +        # Fannal 480x800 panel
> +      - fannal,c3004
> +
> +  reg: true
> +  reset-gpios: true
> +
> +required:
> +  - compatible
> +  - reg
> +  - reset-gpios
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    //example on IMX8MM where GPIO pin 9 is used as a reset pin
> +    mipi_dsi@32e10000 {
> +        panel@0 {
> +            compatible =3D "fannal,c3004";
> +            reg =3D <0>;
> +            pinctrl-0 =3D <&pinctrl_mipi_dsi_rst>;
> +            pinctrl-names =3D "default";
> +            reset-gpios =3D <&gpio1 9 GPIO_ACTIVE_LOW>;
> +        };
> +    };
> +...
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> index 82d39ab0231b..f962750f630a 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -462,6 +462,8 @@ patternProperties:
>      description: Facebook
>    "^fairphone,.*":
>      description: Fairphone B.V.
> +  "^fannal,.*":
> +    description: Fannal Electronics Co., Ltd
>    "^faraday,.*":
>      description: Faraday Technology Corporation
>    "^fastrax,.*":
> diff --git a/MAINTAINERS b/MAINTAINERS
> index e0ad886d3163..46f988ee60bd 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -6566,6 +6566,12 @@ T:    git git://anongit.freedesktop.org/drm/drm-mi=
sc
>  F:    Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi=
.yaml
>  F:    drivers/gpu/drm/tiny/panel-mipi-dbi.c
>
> +DRM DRIVER FOR MIPI DSI BRINGUP
> +M:    Paulo Pavacic <pavacic.p@gmail.com>
> +S:    Maintained
> +C:    mipi-dsi-bringup:matrix.org
> +F:    Documentation/devicetree/bindings/display/panel/panel-mipi-dsi-bri=
ngup.yaml
> +
>  DRM DRIVER FOR MSM ADRENO GPU
>  M:    Rob Clark <robdclark@gmail.com>
>  M:    Abhinav Kumar <quic_abhinavk@quicinc.com>
> --
> 2.40.1
>
