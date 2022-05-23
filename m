Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 19383531041
	for <lists+devicetree@lfdr.de>; Mon, 23 May 2022 15:19:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235747AbiEWMvH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 May 2022 08:51:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44228 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235659AbiEWMu6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 May 2022 08:50:58 -0400
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com [IPv6:2607:f8b0:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2FCA1CF
        for <devicetree@vger.kernel.org>; Mon, 23 May 2022 05:50:57 -0700 (PDT)
Received: by mail-pg1-x529.google.com with SMTP id h9so5403405pgl.4
        for <devicetree@vger.kernel.org>; Mon, 23 May 2022 05:50:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=Ilj++Ggb7llLz57zgVX1b/Z8NvW2D80Wu/CN7999mMc=;
        b=B/SsoT/+byAK0AaxCAVGEG6xRk+crrJBE0uiDdtI5grAW03H7hT9qJzmgI8VhBzp+Q
         Va3elBHMweP63hMtDOR+m+DtbeuKRb5nGVeCeWOrTP8UPqwpcH1k2FDpepJ7P5sGvOhG
         zFOU6f1Viw40N7nCcUWy9d07hq5uc/eXA3rXjiqvrP8G3moSMDgt15/MR9pNSJzuUQ8+
         XlDaPIxkGwZAiZSUDcpLUwHDPq8tr09TqlXdfGr8A04VjLS9VFgqD7BQWl/iCJppElD8
         OZ1jpoXPnWAruKbl73m2f6EYC6zz3aNX66d3R1aWeWdIywfZnKJiatMF6BIdJieo738z
         092g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=Ilj++Ggb7llLz57zgVX1b/Z8NvW2D80Wu/CN7999mMc=;
        b=d1j2LY/zNfaxHxRC5Ea18dB5ZMc+YdAiVsANwuePKr/RiuojyPMM3LDsILMfJSxEc5
         qVTd7fc5Zu/TA4LnfVIqePR1fqss4yWzj7c8mxC3trDNd7lCtidbTQzUgklVLdQ8MR3R
         FjBVygWmsnOq/JlcCUT78FnzFBP+Pr3lDvmDu+TY/reaiZ8AB/Sx09Ep8F8f0JOp5nWS
         mZSDg/9TCup0OKBdUjsOPuG5Net3V8YSsXJgbVdUYgQBD1FRUNKOjcKK85hbmqUuK/Qy
         tKDcvggmPIJQ3nu4J4hNPVuYNHYDbNeCxV/H31JuH/jKrGy+OlznATCuy06Z9ilP+Tn2
         zrYQ==
X-Gm-Message-State: AOAM532ORVTrpjGAmxk+PqqL+hmEEKoJ2aNluqUirWghTUeKQZ8WFLE3
        EEw6QVe4z2mrKoi4zrb3D8ZEMMsP/6Cn/gfCTdjD0g==
X-Google-Smtp-Source: ABdhPJyLSJ2440TIxfxfmgkgMC3GqHEF0cfFCLR88/BeyvY07y92xOk7gPrXsnjmllmXOES0I0RbHdLmMeWivM7EtDs=
X-Received: by 2002:a63:d04a:0:b0:3c1:65f2:5d09 with SMTP id
 s10-20020a63d04a000000b003c165f25d09mr20154616pgi.201.1653310257217; Mon, 23
 May 2022 05:50:57 -0700 (PDT)
MIME-Version: 1.0
References: <20220523084615.13510-1-robert.foss@linaro.org> <20220523084615.13510-2-robert.foss@linaro.org>
In-Reply-To: <20220523084615.13510-2-robert.foss@linaro.org>
From:   Robert Foss <robert.foss@linaro.org>
Date:   Mon, 23 May 2022 14:50:46 +0200
Message-ID: <CAG3jFyt=wjbvgGOqgDZDk5ayChBaf6JcdVwv3L6wkGejbjrG4A@mail.gmail.com>
Subject: Re: [PATCH v1 2/2] Revert "dt-bindings:drm/bridge:anx7625: add port@0 property"
To:     andrzej.hajda@intel.com, narmstrong@baylibre.com,
        robert.foss@linaro.org, Laurent.pinchart@ideasonboard.com,
        jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@linux.ie,
        daniel@ffwll.ch, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, xji@analogixsemi.com,
        hsinyi@chromium.org, sam@ravnborg.org, tzimmermann@suse.de,
        maxime@cerno.tech, jose.exposito89@gmail.com,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 23 May 2022 at 10:46, Robert Foss <robert.foss@linaro.org> wrote:
>
> This reverts commit 7328736d270aa4fa6fcd033ade02acc2874a2db5.
> ---
>  .../display/bridge/analogix,anx7625.yaml      | 19 +------------------
>  1 file changed, 1 insertion(+), 18 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml b/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
> index 4590186c4a0b..35a48515836e 100644
> --- a/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
> @@ -94,22 +94,7 @@ properties:
>          $ref: /schemas/graph.yaml#/$defs/port-base
>          unevaluatedProperties: false
>          description:
> -          MIPI DSI/DPI input.
> -
> -        properties:
> -          endpoint:
> -            $ref: /schemas/media/video-interfaces.yaml#
> -            type: object
> -            additionalProperties: false
> -
> -            properties:
> -              remote-endpoint: true
> -
> -              bus-type:
> -                enum: [7]
> -                default: 1
> -
> -              data-lanes: true
> +          Video port for MIPI DSI input.
>
>        port@1:
>          $ref: /schemas/graph.yaml#/properties/port
> @@ -158,8 +143,6 @@ examples:
>                      reg = <0>;
>                      anx7625_in: endpoint {
>                          remote-endpoint = <&mipi_dsi>;
> -                        bus-type = <7>;
> -                        data-lanes = <0 1 2 3>;
>                      };
>                  };
>
> --
> 2.34.1
>

Signed-off-by: Robert Foss <robert.foss@linaro.org>
