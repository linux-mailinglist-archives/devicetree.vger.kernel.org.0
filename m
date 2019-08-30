Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A0718A3A88
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2019 17:40:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728221AbfH3PkN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Aug 2019 11:40:13 -0400
Received: from mail.kernel.org ([198.145.29.99]:51732 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727434AbfH3PkN (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 30 Aug 2019 11:40:13 -0400
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 4379123427
        for <devicetree@vger.kernel.org>; Fri, 30 Aug 2019 15:40:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1567179612;
        bh=CUBbtf0vFE1nde+pP9wjLrp16M7oNNsE0ztDeDpMvyo=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=Q9KQy+YNdu84KhVBk69egisbxRYLE/HKPlOTSlqZe57iWo9vMXok3Nmyx+Idugazf
         uov3Haq9DUc0OtxaHeHBGe5ogz0Y8J9pO6LPBo/1lZFqnddceSidF0FScV55z/uHN4
         jpB3TKCjA5zLCiBX0VbnE/apd1nrB3bQSyCG3Tz4=
Received: by mail-qk1-f172.google.com with SMTP id i78so5050636qke.11
        for <devicetree@vger.kernel.org>; Fri, 30 Aug 2019 08:40:12 -0700 (PDT)
X-Gm-Message-State: APjAAAXuIfFP4x6Zoau1Q/Wyvv1i6MLq1clzaGIdk0U84BPTH2EMEa/z
        ynPpuMlAjguYNs8IABrE2HCYBeM0LBp/JA1Apg==
X-Google-Smtp-Source: APXvYqz2kJmiA9uqtucgQvwHXjcvlcKaTwpYdryTknADMy0ucjESEufasarQtlB0mHHN2UX16jnnn8whJSasvKnnXPA=
X-Received: by 2002:a37:8905:: with SMTP id l5mr16254270qkd.152.1567179611442;
 Fri, 30 Aug 2019 08:40:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190828125209.28173-1-mripard@kernel.org> <20190828125209.28173-4-mripard@kernel.org>
In-Reply-To: <20190828125209.28173-4-mripard@kernel.org>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Fri, 30 Aug 2019 10:39:59 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLMvKUu0hp6rSGn=KtPHGe++r4dYyAZcDfLgy16pUi2Bg@mail.gmail.com>
Message-ID: <CAL_JsqLMvKUu0hp6rSGn=KtPHGe++r4dYyAZcDfLgy16pUi2Bg@mail.gmail.com>
Subject: Re: [PATCH v2 4/5] ASoC: dt-bindings: Convert Allwinner A23 analog
 codec to a schema
To:     Maxime Ripard <mripard@kernel.org>
Cc:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Frank Rowand <frowand.list@gmail.com>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        Chen-Yu Tsai <wens@csie.org>, devicetree@vger.kernel.org,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 28, 2019 at 7:52 AM Maxime Ripard <mripard@kernel.org> wrote:
>
> From: Maxime Ripard <maxime.ripard@bootlin.com>
>
> The Allwinner A23 SoC and later have an embedded audio codec that uses a
> separate controller to drive its analog part, which is supported in Linux,
> with a matching Device Tree binding.
>
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
> ---
>
> Changes from v1:
>   - Fix subject prefix
> ---
>  .../allwinner,sun8i-a23-codec-analog.yaml     | 38 +++++++++++++++++++
>  .../bindings/sound/sun8i-codec-analog.txt     | 17 ---------
>  2 files changed, 38 insertions(+), 17 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/sound/allwinner,sun8i-a23-codec-analog.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sound/sun8i-codec-analog.txt
>
> diff --git a/Documentation/devicetree/bindings/sound/allwinner,sun8i-a23-codec-analog.yaml b/Documentation/devicetree/bindings/sound/allwinner,sun8i-a23-codec-analog.yaml
> new file mode 100644
> index 000000000000..832779389cbd
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/allwinner,sun8i-a23-codec-analog.yaml
> @@ -0,0 +1,38 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/allwinner,sun8i-a23-codec-analog.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Allwinner A23 Analog Codec Device Tree Bindings
> +
> +maintainers:
> +  - Chen-Yu Tsai <wens@csie.org>
> +  - Maxime Ripard <maxime.ripard@bootlin.com>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      # FIXME: This is documented in the PRCM binding, but needs to be
> +      # migrated here at some point
> +      # - const: allwinner,sun8i-a23-codec-analog
> +      - const: allwinner,sun8i-h3-codec-analog
> +      - const: allwinner,sun8i-v3s-codec-analog

enum is nicer than oneOf+const.

> +
> +  reg:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    codec_analog: codec-analog@1f015c0 {
> +      compatible = "allwinner,sun8i-h3-codec-analog";
> +      reg = <0x01f015c0 0x4>;
> +    };
> +
> +...
