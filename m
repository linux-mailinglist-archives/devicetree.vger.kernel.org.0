Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 66D4A143EDC
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2020 15:04:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728898AbgAUOEK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Jan 2020 09:04:10 -0500
Received: from mail.kernel.org ([198.145.29.99]:39124 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728896AbgAUOEK (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 21 Jan 2020 09:04:10 -0500
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id A245422314
        for <devicetree@vger.kernel.org>; Tue, 21 Jan 2020 14:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1579615448;
        bh=RhQe3QXk/zDnaa/l8gaC+5yGDQC5asHgWocfmrxWn1U=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=WnCBsBD6Ubqmsw+kuDpAuwoXL+ZBKTujsV2Mn9pGOGY/JpcSL4Z4wCIMC4/bQiIxs
         ciqdP3aF193Vy8Ynphlo+jx2gNFDamyVt+ugDe72nqzZ6L/YVpPjU5OVCRSmv3OiPq
         oyKNS7wpbkA4CxR5eorhPsu9/8RfxcZbyLbsK71E=
Received: by mail-qv1-f41.google.com with SMTP id y8so1465410qvk.6
        for <devicetree@vger.kernel.org>; Tue, 21 Jan 2020 06:04:08 -0800 (PST)
X-Gm-Message-State: APjAAAW1p0YebzlajJ1GRLZ6f+zah7SQfBU3/VYONS29CQQE3PKYyHRq
        MDXjFZBD3I94ksjhY0LP0DSadRZjV4h/LEtFdQ==
X-Google-Smtp-Source: APXvYqwJp13n5rPTJJDOXfMUKI9hXM9vs+rUXNz1Y5Q8u6qz7eER6mpKwoqon55uA3F4Uxi8MfmUkTp8hNPqSH0uU+Y=
X-Received: by 2002:ad4:4511:: with SMTP id k17mr4650910qvu.135.1579615447751;
 Tue, 21 Jan 2020 06:04:07 -0800 (PST)
MIME-Version: 1.0
References: <20200121123445.29774-1-dafna.hirschfeld@collabora.com>
In-Reply-To: <20200121123445.29774-1-dafna.hirschfeld@collabora.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Tue, 21 Jan 2020 08:03:55 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJv-gXOK=80nqnO0TB1P-+1+E_vDaN3XSymKQfSLVTBsQ@mail.gmail.com>
Message-ID: <CAL_JsqJv-gXOK=80nqnO0TB1P-+1+E_vDaN3XSymKQfSLVTBsQ@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: convert rockchip-drm.txt to rockchip-drm.yaml
To:     Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Cc:     "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        =?UTF-8?B?6buE5a626ZKX?= <hjc@rock-chips.com>,
        "heiko@sntech.de" <heiko@sntech.de>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Mark Rutland <mark.rutland@arm.com>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        devicetree@vger.kernel.org,
        dri-devel <dri-devel@lists.freedesktop.org>,
        Helen Koike <helen.koike@collabora.com>,
        Ezequiel Garcia <ezequiel@collabora.com>,
        Collabora Kernel ML <kernel@collabora.com>, dafna3@gmail.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jan 21, 2020 at 6:35 AM Dafna Hirschfeld
<dafna.hirschfeld@collabora.com> wrote:
>
> convert the binding file rockchip-drm.txt to yaml format.
> This was tested and verified with:
> make dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml

Also, make sure just 'make dt_binding_check' passes as that checks the
example against all schemas.

> make dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
>
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
> Changes since v1:
> - fixed worng sign-off
> - fixed the path of the $id property to be the path of the yaml file
>
>  .../display/rockchip/rockchip-drm.txt         | 19 ----------
>  .../display/rockchip/rockchip-drm.yaml        | 38 +++++++++++++++++++
>  2 files changed, 38 insertions(+), 19 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-drm.txt
>  create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
>
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-drm.txt b/Documentation/devicetree/bindings/display/rockchip/rockchip-drm.txt
> deleted file mode 100644
> index 5707af89319d..000000000000
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip-drm.txt
> +++ /dev/null
> @@ -1,19 +0,0 @@
> -Rockchip DRM master device
> -================================
> -
> -The Rockchip DRM master device is a virtual device needed to list all
> -vop devices or other display interface nodes that comprise the
> -graphics subsystem.
> -
> -Required properties:
> -- compatible: Should be "rockchip,display-subsystem"
> -- ports: Should contain a list of phandles pointing to display interface port
> -  of vop devices. vop definitions as defined in
> -  Documentation/devicetree/bindings/display/rockchip/rockchip-vop.txt
> -
> -example:
> -
> -display-subsystem {
> -       compatible = "rockchip,display-subsystem";
> -       ports = <&vopl_out>, <&vopb_out>;
> -};
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
> new file mode 100644
> index 000000000000..538898ada9d1
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
> @@ -0,0 +1,38 @@
> +# SPDX-License-Identifier: (GPL-2.0+ OR MIT)

Do you have rights to change the license? The default is GPL-2.0-only.
Looks like Rockchip owns the copyright.

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/rockchip/rockchip-drm.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip DRM master device
> +
> +maintainers:
> +  - Sandy Huang <hjc@rock-chips.com
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +description: |
> +  The Rockchip DRM master device is a virtual device needed to list all
> +  vop devices or other display interface nodes that comprise the
> +  graphics subsystem.
> +
> +properties:
> +  compatible:
> +    const: rockchip,display-subsystem
> +
> +  ports:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    description: |
> +      Should contain a list of phandles pointing to display interface port
> +      of vop devices. vop definitions as defined in
> +      Documentation/devicetree/bindings/display/rockchip/rockchip-vop.txt
> +
> +required:
> +  - compatible
> +  - ports

Add:

additionalProperties: false

> +
> +examples:
> +  - |
> +    display-subsystem {
> +        compatible = "rockchip,display-subsystem";
> +        ports = <&vopl_out>, <&vopb_out>;
> +    };
> --
> 2.17.1
>
