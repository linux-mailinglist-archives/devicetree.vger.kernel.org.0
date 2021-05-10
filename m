Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 996CC37937A
	for <lists+devicetree@lfdr.de>; Mon, 10 May 2021 18:15:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231243AbhEJQQE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 May 2021 12:16:04 -0400
Received: from mail-ot1-f41.google.com ([209.85.210.41]:46827 "EHLO
        mail-ot1-f41.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231311AbhEJQPs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 May 2021 12:15:48 -0400
Received: by mail-ot1-f41.google.com with SMTP id d3-20020a9d29030000b029027e8019067fso14867774otb.13
        for <devicetree@vger.kernel.org>; Mon, 10 May 2021 09:14:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=VxXypLnnfQFx2W7ZW08m5m+Mn54EAOFIda0OqddCe0U=;
        b=Mvvv3nFJLQNoqZ+ZkBrCa8wgjr4SPahnF4JOQFtB2vpc2HyTAp2Qsd2ng2qNjvj9D3
         8hO8BZ62FFn/+vQV1OgcrS/l7JkeyjqRFQO/6GTwMP58fpCrexVuTTjzyijTrCRLn1c8
         C24iSlDKzqIuNN9EfAGya3IIDG59BBvS9ENWnEI+rzDqo5Gay4hI14XeRh7JpoeeC1hT
         WK9cAVfkghJmSz3ot/VjUiZGo0nFwq5/be1d8ky0zUKWPUXEv6tLukXfyfStBa29aQTv
         V0b9YkQOSh/7F+ufyNGRfSW+wlKV+prC2vql50QBOIFshs687bflBEUv8uMbb5E6oHUx
         oEAw==
X-Gm-Message-State: AOAM532VYB8w3m8lPsDSmJWz65yAuJq6fGVG0Skcpgzd+W2SUeA6VB5t
        COQM9N/yhSxiDIjUuWpgww==
X-Google-Smtp-Source: ABdhPJz7B3XsxLud7dSbrtxvTm2xPO+u3x5Y2fG9bhxNk3sKPgG8eoO41ErbV9RR1FK5OZqh4EHZgg==
X-Received: by 2002:a05:6830:1bd4:: with SMTP id v20mr22887188ota.101.1620663274976;
        Mon, 10 May 2021 09:14:34 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id q26sm3283265otn.0.2021.05.10.09.14.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 09:14:33 -0700 (PDT)
Received: (nullmailer pid 219647 invoked by uid 1000);
        Mon, 10 May 2021 16:14:32 -0000
Date:   Mon, 10 May 2021 11:14:32 -0500
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     Sam Ravnborg <sam@ravnborg.org>,
        Douglas Anderson <dianders@chromium.org>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        ch@denx.de, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH V4 1/2] dt-bindings: drm/bridge: ti-sn65dsi83: Add TI
 SN65DSI83 and SN65DSI84 bindings
Message-ID: <20210510161432.GA219593@robh.at.kernel.org>
References: <20210508202251.474729-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210508202251.474729-1-marex@denx.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 08 May 2021 22:22:50 +0200, Marek Vasut wrote:
> Add DT binding document for TI SN65DSI83 and SN65DSI84 DSI to LVDS bridge.
> 
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
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
> V3: - Add 0x2c as valid i2c address
>     - Switch to schemas/graph.yaml
>     - Constraint data-lanes to <1>, <1 2>, <1 2 3>, <1 2 3 4> only
>     - Indent example by 4 spaces
>     - Handle dual-link LVDS with two ports and describe the second DSI
>       channel-B port as well. Based on the register defaults of DSI83
>       and DSI84, it is likely that the LVDS-channel-B and DSI-channel-B
>       hardware is present in all the chips, so just reuse port@0 and 2
>       for DSI83, port@0,2,3 for DSI84 and all of 0,1,2,3 for DSI85 when
>       that is supported
> V4: - Fix typo in port@3 description
>     - Add RB from Linus Walleij
>     - Replace oneOf: and const with enum:
>     - ref /schemas/media/video-interfaces.yaml#
>     - Drop empty endpoint: and properties:
> ---
>  .../bindings/display/bridge/ti,sn65dsi83.yaml | 159 ++++++++++++++++++
>  1 file changed, 159 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
