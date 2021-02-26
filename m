Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E10153265A5
	for <lists+devicetree@lfdr.de>; Fri, 26 Feb 2021 17:37:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230100AbhBZQhF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Feb 2021 11:37:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50650 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230104AbhBZQhD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Feb 2021 11:37:03 -0500
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com [IPv6:2607:f8b0:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1BF5C06174A
        for <devicetree@vger.kernel.org>; Fri, 26 Feb 2021 08:36:22 -0800 (PST)
Received: by mail-pg1-x52d.google.com with SMTP id o63so6524491pgo.6
        for <devicetree@vger.kernel.org>; Fri, 26 Feb 2021 08:36:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nsvOAu55FgLPhCToArkAdRGmd43y7a+b+sjefBpof74=;
        b=wHthvJCA47mzp0GyO2hNpSjiMVwhSaeG1TJh+ToVxTuVf9I5588PEAwguEOImdCZmI
         wGW/GXpmbaQ+7Uv3XCtiK6jhhbh95Wi0lJYG90FMHhwygxxdPlnOXHg4ofF2d++yXWth
         WjKwVYBpxK6qjzjouT5YgFgy+6W4tLs0CfaOdh8FU0UItgLJw2qxGdTS8aVHlVWOhTEr
         Qb5EmkbN8nbESoMM+J/16eQ8QAtT7Hkq33+n7HmdJoezAW3ZPm9j6LPalw1LFqBUUJNe
         /KqUmeHKIkd8rbqW6jxSGsme7lsK6uUexa5cs35UOF0h7snhPF88CDu1TQUuCth4w0b/
         uZGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nsvOAu55FgLPhCToArkAdRGmd43y7a+b+sjefBpof74=;
        b=Ltp4rvlTNVSF1WcWepI/KpOXZEfKtqHxUa/VwmPWR1EQTpbfXOu7FeluGEgnDKXUPx
         WeWTuE4mGco+jPu40UvJo3OYTJzz0pAs2/0nchubokqQTHtIPizYpQbFMSx+4EDJ5Q9A
         0sBVhhBqGfEQFY/7bgiTA48YNF5gm54YC7kMZ826HV+wHtlGpAeDGq1nTCodtqJ4/CM5
         xs9X1pPuMIH3tF3sUrD4KHZiz5uZ7bqLJWUUBXYjqNsy6KU3ZE7K8nBvehYwiM+7jg8c
         7e26fnIz/67ZhwhaQ8F+WhNh3PguIYPDRfAEM8tnlpW1WWQ1YAWKJIJRMAK3Y8dLmbCj
         Pk7A==
X-Gm-Message-State: AOAM532DNqffjuGC7ATuqOSYYaq/XZ6OiNrRv8oZV35TmPeFhB1U7Bqn
        0ymqtTw/Q8Zv1yBJscBQZObiQc16Hm2m1mM8nJCbIQ==
X-Google-Smtp-Source: ABdhPJzI5t1t6CVjbpJ/jYBjS/sGpFHq14yb4uuIzCsaZRWH5vV3GcNvACclb/rgNZRwFG9uqbl8nYuoLgHlhngXL5g=
X-Received: by 2002:a63:ee4b:: with SMTP id n11mr3638677pgk.265.1614357382184;
 Fri, 26 Feb 2021 08:36:22 -0800 (PST)
MIME-Version: 1.0
References: <1614356086-19745-1-git-send-email-pthombar@cadence.com> <1614356118-21409-1-git-send-email-pthombar@cadence.com>
In-Reply-To: <1614356118-21409-1-git-send-email-pthombar@cadence.com>
From:   Robert Foss <robert.foss@linaro.org>
Date:   Fri, 26 Feb 2021 17:36:11 +0100
Message-ID: <CAG3jFysryArs1DD3pgQAqO8AaW_+OH_Jpb4=o7uc93jaXFKF0Q@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: drm/bridge: MHDP8546 bridge binding
 changes for HDCP
To:     Parshuram Thombare <pthombar@cadence.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>, nikhil.nd@ti.com,
        kishon@ti.com, sjakhade@cadence.com, mparab@cadence.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hey Parshuram,

Thanks for submitting this.

This series rebased on upstream-drm-misc/for-linux-next fails dt
binding verification.
$ make dt_binding_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/bridge/cdns,mhdp8546.yaml


On Fri, 26 Feb 2021 at 17:18, Parshuram Thombare <pthombar@cadence.com> wrote:
>
> Add binding changes for HDCP in the MHDP8546 DPI/DP bridge binding.
>
> Signed-off-by: Parshuram Thombare <pthombar@cadence.com>
> ---
>  .../display/bridge/cdns,mhdp8546.yaml         | 20 +++++++++++++------
>  1 file changed, 14 insertions(+), 6 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8546.yaml b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8546.yaml
> index 63427878715e..89b4bf783c53 100644
> --- a/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8546.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8546.yaml
> @@ -18,7 +18,7 @@ properties:
>
>    reg:
>      minItems: 1
> -    maxItems: 2
> +    maxItems: 3
>      items:
>        - description:
>            Register block of mhdptx apb registers up to PHY mapped area (AUX_CONFIG_P).
> @@ -26,13 +26,16 @@ properties:
>            included in the associated PHY.
>        - description:
>            Register block for DSS_EDP0_INTG_CFG_VP registers in case of TI J7 SoCs.
> +      - description:
> +          Register block of mhdptx sapb registers.
>
>    reg-names:
>      minItems: 1
> -    maxItems: 2
> +    maxItems: 3
>      items:
>        - const: mhdptx
>        - const: j721e-intg
> +      - const: mhdptx-sapb

The reg & reg-names changes appear to be introducing the failure.

>
>    clocks:
>      maxItems: 1
> @@ -53,6 +56,11 @@ properties:
>    power-domains:
>      maxItems: 1
>
> +  hdcp-config:
> +    maxItems: 1
> +    description:
> +      HDCP version supported. Bit [0]:HDCP2.2 [1]:HDCP1.4.
> +
>    interrupts:
>      maxItems: 1
>
> @@ -98,15 +106,15 @@ allOf:
>      then:
>        properties:
>          reg:
> -          minItems: 2
> +          minItems: 3
>          reg-names:
> -          minItems: 2
> +          minItems: 3
>      else:
>        properties:
>          reg:
> -          maxItems: 1
> +          maxItems: 2
>          reg-names:
> -          maxItems: 1
> +          maxItems: 2
>
>  required:
>    - compatible
> --
> 2.25.1
>
