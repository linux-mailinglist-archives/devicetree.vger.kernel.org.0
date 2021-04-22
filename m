Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A6A1D367CBE
	for <lists+devicetree@lfdr.de>; Thu, 22 Apr 2021 10:43:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235553AbhDVIn6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Apr 2021 04:43:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235551AbhDVIn6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Apr 2021 04:43:58 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B459BC06174A
        for <devicetree@vger.kernel.org>; Thu, 22 Apr 2021 01:43:23 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id u21so67595951ejo.13
        for <devicetree@vger.kernel.org>; Thu, 22 Apr 2021 01:43:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=FqiDNyS4J6V/J3OGwSYhyDd+SOw2Ixt+IYI2Uj7joGs=;
        b=XMCwYxtYxDNez0T1wLh3FfQDTOBHLoJMqlaCRUHmMyksWtApmS5yNftIcsqWnXI+Ev
         fqg6LmwZRlfd99zk7JMgmp4BuYEazclymGcfJzQlXmpXZlmXReX9naCh/0o9fm9uIULY
         HgELs0fzfyQ72dWO7HAZB3eI/TlUf4ToC8g2o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=FqiDNyS4J6V/J3OGwSYhyDd+SOw2Ixt+IYI2Uj7joGs=;
        b=lalwBqawz4Bi93Pgc994NBuI7CG/bqcCqh5yXbE0FNApnxZhNx685rGdjmA102xtzE
         G5TXXOvHasmEyhayQjs7ocR9LtnGP/OMG+Vlz4AUt/w4X8aiG4Ke1zthbIuK3lzhYrPP
         5OK1d4vCEOPzrfKxFw2+hzlt5PPMXxVJ3thxNqHRxI5+FmeUe+HeVjuGnHL4/VKXcJI4
         VDl2kn5pHZXiEeyLHX6SwqhgDUPKibbQFvLGgcudcpOICFhEj3SI7g+rMB0fWSV3k3IU
         oKdnPbnXaijSkSg0c9q8u5ACXNZK+eCPwfLpXeKfvxQ4dEc8XwGdrnNsBfAEqRq+BL5N
         8e8w==
X-Gm-Message-State: AOAM5329DAJ5cmY/XGkMc6y0GDQvQEFR4u1NAxeOF7vllKrXgKSHmoY6
        joPL36XHYp+6lfwi3+CT8SfSeJkpUfzlGB4+3/7VoQ==
X-Google-Smtp-Source: ABdhPJwf+ZmaxufgGxquqfYcFezshd0co6gU41ZUuLA0rBxCPUZ6oAByg7aIvTPPZ/xyhWDBXOqz3AfiPfDyDW2cHBE=
X-Received: by 2002:a17:906:3018:: with SMTP id 24mr2229023ejz.186.1619081002490;
 Thu, 22 Apr 2021 01:43:22 -0700 (PDT)
MIME-Version: 1.0
References: <20210421223122.112736-1-marex@denx.de>
In-Reply-To: <20210421223122.112736-1-marex@denx.de>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Thu, 22 Apr 2021 14:13:11 +0530
Message-ID: <CAMty3ZB9iHY6-YV7JRrhekR_7yA=m2dgwR=5a+D3=h4hAMi7WQ@mail.gmail.com>
Subject: Re: [PATCH V2 1/2] dt-bindings: drm/bridge: ti-sn65dsi83: Add TI
 SN65DSI83 and SN65DSI84 bindings
To:     Marek Vasut <marex@denx.de>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        Claudius Heine <ch@denx.de>,
        Douglas Anderson <dianders@chromium.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Stephen Boyd <swboyd@chromium.org>,
        devicetree <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Apr 22, 2021 at 4:01 AM Marek Vasut <marex@denx.de> wrote:
>
> Add DT binding document for TI SN65DSI83 and SN65DSI84 DSI to LVDS bridge.
>
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Douglas Anderson <dianders@chromium.org>
> Cc: Jagan Teki <jagan@amarulasolutions.com>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Stephen Boyd <swboyd@chromium.org>
> Cc: devicetree@vger.kernel.org
> To: dri-devel@lists.freedesktop.org
> ---
> V2: Add compatible string for SN65DSI84, since this is now tested on it
> ---
>  .../bindings/display/bridge/ti,sn65dsi83.yaml | 134 ++++++++++++++++++
>  1 file changed, 134 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
>
> diff --git a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> new file mode 100644
> index 000000000000..42d11b46a1eb
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> @@ -0,0 +1,134 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/bridge/ti,sn65dsi83.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: SN65DSI83 and SN65DSI84 DSI to LVDS bridge chip

Can it possible to wait for my v4 to have dual-link LVDS supported
which is quite discussing points on previous versions?

Jagan.
