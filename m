Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CBACCD75AD
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2019 13:59:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729763AbfJOL7e (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Oct 2019 07:59:34 -0400
Received: from mail.kernel.org ([198.145.29.99]:37322 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1729411AbfJOL7e (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 15 Oct 2019 07:59:34 -0400
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 194EC21A49
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2019 11:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1571140773;
        bh=P9hmIOQRJU1ioDVTNeU3qPnzy7l3RxwS6/vcyFV4idQ=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=nmKKD8BHMqJhAVIN/DHtIXuW0tr2sujhlgUMFm1zbDNuB3/IRFxnJxqC2Z/je2f4l
         /4QlUNvvHVdS3bNLMV8YxEZBcKhuKRAvKPZAUjcGgckyxn7UwZtgXbWB6q1oDQryiz
         uCRQwVrlpZYmmjK5y4LfrDBXHtu9nlrNJ6be3HOE=
Received: by mail-qk1-f182.google.com with SMTP id y189so18873377qkc.3
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2019 04:59:33 -0700 (PDT)
X-Gm-Message-State: APjAAAVaPuVTm59+RPImbaU5nXk9C3mn1fYzPh9CVWP6BnXQmxSORKNl
        zSt5Ijd1YqXwuPV41wHOo/RdCy8Yyg1BuRACyg==
X-Google-Smtp-Source: APXvYqzNmdpQLv1ZY4dfXYstvDGi8i0lhQoVAv4EDAOUiKb/kipWtgsZg9Ajty5FutZsbgWLBR0tMAU7hcKcVUfh5qs=
X-Received: by 2002:a37:9847:: with SMTP id a68mr35615608qke.223.1571140772087;
 Tue, 15 Oct 2019 04:59:32 -0700 (PDT)
MIME-Version: 1.0
References: <20191015082811.29497-1-linus.walleij@linaro.org>
In-Reply-To: <20191015082811.29497-1-linus.walleij@linaro.org>
From:   Rob Herring <robh@kernel.org>
Date:   Tue, 15 Oct 2019 06:59:20 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJXES8CHGHtyhHo5CWrRjx9QgUVEpHCPc5miN7wEPv8sQ@mail.gmail.com>
Message-ID: <CAL_JsqJXES8CHGHtyhHo5CWrRjx9QgUVEpHCPc5miN7wEPv8sQ@mail.gmail.com>
Subject: Re: [PATCH 1/3 v2] drm/panel: Add generic DSI panel YAML bindings
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Oct 15, 2019 at 3:28 AM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> This adds a starting point for processing and defining generic
> bindings used by DSI panels. We just define one single bool
> property to force the panel into video mode for now.
>
> Cc: devicetree@vger.kernel.org
> Suggested-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> ChangeLog v1->v2:
> - New patch after feedback.
> ---
>  .../display/panel/panel-dsi-common.yaml       | 31 +++++++++++++++++++
>  1 file changed, 31 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/panel-dsi-common.yaml
>
> diff --git a/Documentation/devicetree/bindings/display/panel/panel-dsi-common.yaml b/Documentation/devicetree/bindings/display/panel/panel-dsi-common.yaml
> new file mode 100644
> index 000000000000..4242dc25c917
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/panel-dsi-common.yaml
> @@ -0,0 +1,31 @@
> +# SPDX-License-Identifier: GPL-2.0

(GPL-2.0-only OR BSD-2-Clause) for new bindings.

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/panel/panel-dsi-common.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Common Properties for DSI Display Panels
> +
> +maintainers:
> +  - Linus Walleij <linus.walleij@linaro.org>
> +
> +description: |
> +  This document defines device tree properties common to DSI, Display
> +  Serial Interface panels. It doesn't constitue a device tree binding

constitute

> +  specification by itself but is meant to be referenced by device tree
> +  bindings.
> +
> +  When referenced from panel device tree bindings the properties defined in
> +  this document are defined as follows. The panel device tree bindings are
> +  responsible for defining whether each property is required or optional.
> +
> +properties:
> +
> +  enforce-video-mode:

As all DSI panels are a child of DSI controllers (unless perhaps if
they are video mode only), I think this schema needs to define the DSI
controller and panel (i.e. the bus) structure. Then this property can
be under the child node schema.

So something like this:

properties:
  $nodename:
    pattern: "^dsi-controller@"
  "#address-cells":
    const: 1
  "#size-cells":
    const: 1
patternProperties:
  "^panel@[0-9]$": # not sure what's the range of addresses...
    type: object
    properties:
      reg:
        maxItems: 1
        items:
          - maximum: ??
      enforce-video-mode:
        ...


> +    type: boolean
> +    description:
> +      The best option is usually to run a panel in command mode, as this
> +      gives better control over the panel hardware. However for different
> +      reasons like broken hardware, missing features or testing, it may be
> +      useful to be able to force a command mode-capable panel into video
> +      mode.
> --
> 2.21.0
>
