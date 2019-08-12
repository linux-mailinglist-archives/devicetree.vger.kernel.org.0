Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DFA7E8A6F6
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2019 21:18:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726510AbfHLTSx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Aug 2019 15:18:53 -0400
Received: from mail.kernel.org ([198.145.29.99]:49350 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726200AbfHLTSx (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 12 Aug 2019 15:18:53 -0400
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id DAB8C20842
        for <devicetree@vger.kernel.org>; Mon, 12 Aug 2019 19:18:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1565637532;
        bh=SAZ7+3iWzSFdHt0t+ouVPwJxcISNZwkTzBhnYy7gyYI=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=bCcolVlP8GvWBiocgubLR8mv9SgZW+g7lCPDyjqNgLs2Xw5C76rnQjVMBvDWBPuGA
         FvsDV7kmOeI7w9U9SmxB2AkS6VebSoMI4jxJ/2s/0KNTSRXAuZfJDJAVhK/TY7Vfjw
         lI6bmvNEiteX9SozrB6QG8vEihdCyrSe23B8Ti9U=
Received: by mail-qt1-f174.google.com with SMTP id u34so4687914qte.2
        for <devicetree@vger.kernel.org>; Mon, 12 Aug 2019 12:18:51 -0700 (PDT)
X-Gm-Message-State: APjAAAWwR+R8bnzhAQfuepKLrQlbgYJrn1MtmlMhEIbeJGBlWWTEW3Ei
        xcQqUgZwpND8ok3f8S23pT0zr8zFHXnkG818JA==
X-Google-Smtp-Source: APXvYqyO2vN61nr9Bc+CutAJZzormeluj0RgPVQuuzzd9Ob5t+0uR5H/a2E3sH/M8koro44rI+YeUBrCHeMB224WDLo=
X-Received: by 2002:ac8:7593:: with SMTP id s19mr23705857qtq.136.1565637531060;
 Mon, 12 Aug 2019 12:18:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190810231048.1921-1-laurent.pinchart@ideasonboard.com> <20190810231048.1921-4-laurent.pinchart@ideasonboard.com>
In-Reply-To: <20190810231048.1921-4-laurent.pinchart@ideasonboard.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Mon, 12 Aug 2019 13:18:39 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+NO+s1Wz5AYKzVqC=ki0mHtK8dr3namdt82DvnDebeyw@mail.gmail.com>
Message-ID: <CAL_Jsq+NO+s1Wz5AYKzVqC=ki0mHtK8dr3namdt82DvnDebeyw@mail.gmail.com>
Subject: Re: [PATCH v2 3/9] dt-bindings: display: panel: Add bindings for NEC
 NL8048HL11 panel
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Aug 10, 2019 at 5:10 PM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> The NEC NL8048HL11 is a 10.4cm WVGA (800x480) panel with a 24-bit RGB
> parallel data interface and an SPI control interface.
>
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
> Changes since v1:
>
> - Convert to YAML
> ---
>  .../display/panel/nec,nl8048hl11.yaml         | 49 +++++++++++++++++++
>  1 file changed, 49 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/nec,nl8048hl11.yaml
>
> diff --git a/Documentation/devicetree/bindings/display/panel/nec,nl8048hl11.yaml b/Documentation/devicetree/bindings/display/panel/nec,nl8048hl11.yaml
> new file mode 100644
> index 000000000000..cc3d40975828
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/nec,nl8048hl11.yaml
> @@ -0,0 +1,49 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/panel/nec,nl8048hl11.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NEC NL8048HL11 4.1" WVGA TFT LCD panel
> +
> +description:
> +  The NEC NL8048HL11 is a 4.1" WVGA TFT LCD panel with a 24-bit RGB parallel
> +  data interface and an SPI control interface.
> +
> +maintainers:
> +  - Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> +
> +allOf:
> +  - $ref: panel-common.yaml#
> +
> +properties:
> +  compatible:
> +    const: nec,nl8048hl11
> +
> +  label: true
> +  reset-gpios: true
> +  port: true
> +
> +required:
> +  - compatible
> +  - reset-gpios
> +  - port
> +
> +additionalProperties: false
> +
> +examples:

Your example will fail on 'make dt_binding_check'...

> +  - |
> +    lcd_panel: panel {

SPI devices have to have a minimal SPI controller parent. Primarily
just #size-cells and #address-cells are needed.

'reg' is missing here too.

> +      compatible = "nec,nl8048hl11";
> +      spi-max-frequency = <10000000>;

This needs to be listed in properties ideally with some constraints.

> +
> +      reset-gpios = <&gpio7 7 GPIO_ACTIVE_LOW>;

And GPIO_ACTIVE_LOW. You have to add includes you need.

> +
> +      port {
> +        lcd_in: endpoint {
> +          remote-endpoint = <&dpi_out>;
> +        };
> +      };
> +    };
> +
> +...
> --
> Regards,
>
> Laurent Pinchart
>
