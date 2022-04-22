Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2EDAF50B972
	for <lists+devicetree@lfdr.de>; Fri, 22 Apr 2022 16:04:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1386092AbiDVOG2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Apr 2022 10:06:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1448296AbiDVOG0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Apr 2022 10:06:26 -0400
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com [IPv6:2607:f8b0:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6328C5A160
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 07:03:33 -0700 (PDT)
Received: by mail-pf1-x42a.google.com with SMTP id h1so8085228pfv.12
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 07:03:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=yIxJ0wDa8EMSjPBeJ0MH0ee5bXLTHtfgfaqE1L8G+40=;
        b=lJxrPZlkatu783HAwlcGCkHOGo7DXQhGtEQqtJXdK1/LRl+CFmh8ejREqMzuQsb/EO
         mSWo3xSE3IyrXmkejiW/vWdGNWXHJq3XuWPVwHfOrNTHe22aLtJOSFoF9VbWxGShMkLI
         9Q+PuNjFAIycQZ3Wxp1Hlw+8+12yQNRH0GG+fNhLoV/3xJ4+LhbnZOUxx6MZEP9nSodA
         yqgCHWgXniNWxjtrX3H3On6nZ4yPcA3da8QSX9nhLRZ5IjY5tb6uARk2tJLXfFalCk4P
         xGPGUKbc8fkI0Vi0kDpxm6o08sdvcBkKHkthDdk164bksR8xqFiWBvr+aIqy948MIjR+
         97aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=yIxJ0wDa8EMSjPBeJ0MH0ee5bXLTHtfgfaqE1L8G+40=;
        b=vOWHev+5H+9Ow05w4ayhu3DT6eKBZ8QXD2AmI5ToDZhrUijDNyij494vS64ZMTBgL7
         LKJ1wQzub+mJYOq0+H1VkW/pDH8qgi1NI5B3lSfZRMz6KjJT/AWwRz19bXbleg0mCidF
         tC/7tf9ur0NlxdGXi5IaVeGy7/Yx9SerfQKcc/9RJKpr6tWOmuKNe6k5guAKPTvO94aV
         uYzea0rpFZHXclwTo6OPS3CRzIY0AsQ5HikMqkM51qptTXDIDOfrdXgACa6rWx60+WiQ
         hRFud7JXkI7c7T5dtqys3TLJYKaOUh0trG0R7EJvSIsQvpiERR7ShpWTtSeHAHXsWt8G
         LrFg==
X-Gm-Message-State: AOAM531jUhAfJ1P9WADYfDQCHNcdlNaDutfev2xe9BRnYesD1ZHjsHZv
        U0HOnwJL8icobDC+ReeQlZeGohF/zT4xC983oxrpeQ==
X-Google-Smtp-Source: ABdhPJxRtgE3RbFTfbHXqawhd/4ATwWIhmdUbK2D/ER+hiax8GwWWsOHlmE4gELgS/jXpG50IMB4XeGk31Iq3HBZuEs=
X-Received: by 2002:a05:6a00:1747:b0:505:d75c:e0b2 with SMTP id
 j7-20020a056a00174700b00505d75ce0b2mr5271101pfc.0.1650636212574; Fri, 22 Apr
 2022 07:03:32 -0700 (PDT)
MIME-Version: 1.0
References: <20220422084720.959271-1-xji@analogixsemi.com> <20220422084720.959271-3-xji@analogixsemi.com>
In-Reply-To: <20220422084720.959271-3-xji@analogixsemi.com>
From:   Robert Foss <robert.foss@linaro.org>
Date:   Fri, 22 Apr 2022 16:03:21 +0200
Message-ID: <CAG3jFysyj7sO0qh3FAAeuOQYUSz6nkZ8svX7f4xdfSY980OkCg@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] dt-bindings:drm/bridge:anx7625: add port@0 property
To:     Xin Ji <xji@analogixsemi.com>
Cc:     Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        bliang@analogixsemi.com, qwen@analogixsemi.com,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 22 Apr 2022 at 10:48, Xin Ji <xji@analogixsemi.com> wrote:
>
> Add 'bus-type' and 'data-lanes' define, bus-type 7 for MIPI DPI
> input, others for DSI input.
>
> Signed-off-by: Xin Ji <xji@analogixsemi.com>
>
> ---
> V1 -> V2: rebase on the latest code.
> ---
>  .../display/bridge/analogix,anx7625.yaml      | 19 ++++++++++++++++++-
>  1 file changed, 18 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml b/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
> index 35a48515836e..4590186c4a0b 100644
> --- a/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
> @@ -94,7 +94,22 @@ properties:
>          $ref: /schemas/graph.yaml#/$defs/port-base
>          unevaluatedProperties: false
>          description:
> -          Video port for MIPI DSI input.
> +          MIPI DSI/DPI input.
> +
> +        properties:
> +          endpoint:
> +            $ref: /schemas/media/video-interfaces.yaml#
> +            type: object
> +            additionalProperties: false
> +
> +            properties:
> +              remote-endpoint: true
> +
> +              bus-type:
> +                enum: [7]
> +                default: 1
> +
> +              data-lanes: true
>
>        port@1:
>          $ref: /schemas/graph.yaml#/properties/port
> @@ -143,6 +158,8 @@ examples:
>                      reg = <0>;
>                      anx7625_in: endpoint {
>                          remote-endpoint = <&mipi_dsi>;
> +                        bus-type = <7>;
> +                        data-lanes = <0 1 2 3>;
>                      };
>                  };
>

Reviewed-by: Robert Foss <robert.foss@linaro.org>
