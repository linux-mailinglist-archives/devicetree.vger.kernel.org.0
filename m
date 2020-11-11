Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B9DC52AFD4C
	for <lists+devicetree@lfdr.de>; Thu, 12 Nov 2020 02:55:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727881AbgKLBbp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Nov 2020 20:31:45 -0500
Received: from mail-ot1-f67.google.com ([209.85.210.67]:37942 "EHLO
        mail-ot1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727371AbgKKWzb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Nov 2020 17:55:31 -0500
Received: by mail-ot1-f67.google.com with SMTP id a15so3771908otf.5
        for <devicetree@vger.kernel.org>; Wed, 11 Nov 2020 14:55:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=JA4TKBqhr47SbrGBRF5bk7MJanz683avWDVvtVqt8SI=;
        b=Tc4ZZAun64amWtwmtcSyMTuXdjvlXxSJ71xd2mv8er1dcrPIS+J971YgBYYN/GLUbl
         1XCIq7Vb2e4yLXoFIhwv4Ecm7bGGBCunBc4DcuQL+m83XkZ1w80Nb9b5DYAXhRexe08S
         7mN74uEVetCheQ6I7Ywqbi3nYgIVZBdSSa9jtLW4tuBYrtbsG0ROMrU+QyvNvSANoXZU
         JGLCgKsroFHn7aJ9G9LSxTWzUqrFxmaEr2BUG/EuR00ThIzDPrNgDS0iwno6afGJJ91X
         cQ+jmZr/QkwkYFPr62F72yAJLZvadkErdSoByJHGzW93MTfx6jpkKcfxF1X+mYQ4SSgs
         XyGA==
X-Gm-Message-State: AOAM530cBs8y4NimB/cd+DFC4m07LkkOnug4Rvwe0IYPfQjDCHZcnkV8
        aJlug6kcfDeK19QMF4acaA==
X-Google-Smtp-Source: ABdhPJy6W+YEtqOadVuFv2hg+hQlXdrMPHzWnqEyg4T4SOebG2+c+g3/OInmWAONo4xW092vVswV7w==
X-Received: by 2002:a9d:2c62:: with SMTP id f89mr18258108otb.38.1605135329256;
        Wed, 11 Nov 2020 14:55:29 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id o9sm854024oos.29.2020.11.11.14.55.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Nov 2020 14:55:28 -0800 (PST)
Received: (nullmailer pid 2198096 invoked by uid 1000);
        Wed, 11 Nov 2020 22:55:27 -0000
Date:   Wed, 11 Nov 2020 16:55:27 -0600
From:   Rob Herring <robh@kernel.org>
To:     Liu Ying <victor.liu@nxp.com>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Lucas Stach <l.stach@pengutronix.de>,
        Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH v2] dt-bindings: display: panel: one file of all simple
 LVDS panels with dual ports
Message-ID: <20201111225527.GA2191793@bogus>
References: <1604993797-14240-1-git-send-email-victor.liu@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1604993797-14240-1-git-send-email-victor.liu@nxp.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Nov 10, 2020 at 03:36:37PM +0800, Liu Ying wrote:
> To complement panel-simple.yaml, create panel-simple-lvds-dual-ports.yaml.
> panel-simple-lvds-dual-ports.yaml is for all simple LVDS panels that
> has dual LVDS ports and requires only a single power-supply.
> One LVDS port receives even pixels, and the other receives odd pixels.
> Optionally, a backlight and an enable GPIO can be specified as properties.
> 
> Migrate 'auo,g133han01', 'auo,g185han01', 'auo,g190ean01',
> 'koe,tx26d202vm0bwa' and 'nlt,nl192108ac18-02d' over to the new file.
> 
> The objectives with one file for all the simple LVDS panels with dual ports are:
> - Make it simpler to add bindings for this kind of LVDS panels
> - Keep the number of bindings file lower
> - Keep the binding documentation for this kind of LVDS panels more consistent
> - Make it possible for drivers to get pixel order via
>   drm_of_lvds_get_dual_link_pixel_order(), as the optional 'ports' property is
>   allowed
> 
> Suggested-by: Sam Ravnborg <sam@ravnborg.org>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: David Airlie <airlied@linux.ie>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: Sebastian Reichel <sebastian.reichel@collabora.com>
> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> ---
> v1->v2:
> * Correct pixel order in example LVDS panel node.
> 
>  .../panel/panel-simple-lvds-dual-ports.yaml        | 85 ++++++++++++++++++++++
>  .../bindings/display/panel/panel-simple.yaml       | 10 ---
>  2 files changed, 85 insertions(+), 10 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/panel-simple-lvds-dual-ports.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple-lvds-dual-ports.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple-lvds-dual-ports.yaml
> new file mode 100644
> index 00000000..58774ed
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/panel-simple-lvds-dual-ports.yaml
> @@ -0,0 +1,85 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/panel/panel-simple-lvds-dual-ports.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Simple LVDS panels with one power supply and dual LVDS ports
> +
> +maintainers:
> +  - Liu Ying <victor.liu@nxp.com>
> +  - Thierry Reding <thierry.reding@gmail.com>
> +  - Sam Ravnborg <sam@ravnborg.org>
> +
> +description: |
> +  This binding file is a collection of the LVDS panels that
> +  has dual LVDS ports and requires only a single power-supply.
> +  One LVDS port receives even pixels, and the other receives odd pixels.

You have to define which port number is which in the schema.

> +  There are optionally a backlight and an enable GPIO.
> +  The panel may use an OF graph binding for the association to the display,
> +  or it may be a direct child node of the display.
> +
> +  If the panel is more advanced a dedicated binding file is required.
> +
> +allOf:
> +  - $ref: panel-common.yaml#
> +
> +properties:
> +
> +  compatible:
> +    enum:
> +    # compatible must be listed in alphabetical order, ordered by compatible.
> +    # The description in the comment is mandatory for each compatible.
> +
> +        # AU Optronics Corporation 13.3" FHD (1920x1080) TFT LCD panel
> +      - auo,g133han01
> +        # AU Optronics Corporation 18.5" FHD (1920x1080) TFT LCD panel
> +      - auo,g185han01
> +        # AU Optronics Corporation 19.0" (1280x1024) TFT LCD panel
> +      - auo,g190ean01
> +        # Kaohsiung Opto-Electronics Inc. 10.1" WUXGA (1920 x 1200) LVDS TFT LCD panel
> +      - koe,tx26d202vm0bwa
> +        # NLT Technologies, Ltd. 15.6" FHD (1920x1080) LVDS TFT LCD panel
> +      - nlt,nl192108ac18-02d
> +
> +  backlight: true
> +  enable-gpios: true
> +  port: true

A single port shouldn't be valid.

> +  ports: true
> +  power-supply: true
> +
> +additionalProperties: false
> +
> +required:
> +  - compatible
> +  - power-supply
> +
> +examples:
> +  - |
> +    panel: panel-lvds {
> +      compatible = "koe,tx26d202vm0bwa";
> +      power-supply = <&vdd_lcd_reg>;
> +
> +      ports {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        port@0 {
> +          dual-lvds-odd-pixels;

This needs to be documented. Though really, this property seems 
pointless if the port numbering is fixed (though 0 for even and 1 for 
odd would be a bit more logical).

> +          reg = <0>;
> +
> +          panel_lvds0_in: endpoint {
> +            remote-endpoint = <&lvds0_out>;
> +          };
> +        };
> +
> +        port@1 {
> +          dual-lvds-even-pixels;
> +          reg = <1>;
> +
> +          panel_lvds1_in: endpoint {
> +            remote-endpoint = <&lvds1_out>;
> +          };
> +        };
> +      };
> +    };
> diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> index f9750b0..62618e4 100644
> --- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> @@ -57,14 +57,8 @@ properties:
>        - auo,g104sn02
>          # AU Optronics Corporation 12.1" (1280x800) TFT LCD panel
>        - auo,g121ean01
> -        # AU Optronics Corporation 13.3" FHD (1920x1080) TFT LCD panel
> -      - auo,g133han01
>          # AU Optronics Corporation 15.6" (1366x768) TFT LCD panel
>        - auo,g156xtn01
> -        # AU Optronics Corporation 18.5" FHD (1920x1080) TFT LCD panel
> -      - auo,g185han01
> -        # AU Optronics Corporation 19.0" (1280x1024) TFT LCD panel
> -      - auo,g190ean01
>          # AU Optronics Corporation 31.5" FHD (1920x1080) TFT LCD panel
>        - auo,p320hvn03
>          # AU Optronics Corporation 21.5" FHD (1920x1080) color TFT LCD panel
> @@ -167,8 +161,6 @@ properties:
>        - kingdisplay,kd116n21-30nv-a010
>          # Kaohsiung Opto-Electronics Inc. 5.7" QVGA (320 x 240) TFT LCD panel
>        - koe,tx14d24vm1bpa
> -        # Kaohsiung Opto-Electronics Inc. 10.1" WUXGA (1920 x 1200) LVDS TFT LCD panel
> -      - koe,tx26d202vm0bwa
>          # Kaohsiung Opto-Electronics. TX31D200VM0BAA 12.3" HSXGA LVDS panel
>        - koe,tx31d200vm0baa
>          # Kyocera Corporation 12.1" XGA (1024x768) TFT LCD panel
> @@ -205,8 +197,6 @@ properties:
>        - neweast,wjfh116008a
>          # Newhaven Display International 480 x 272 TFT LCD panel
>        - newhaven,nhd-4.3-480272ef-atxl
> -        # NLT Technologies, Ltd. 15.6" FHD (1920x1080) LVDS TFT LCD panel
> -      - nlt,nl192108ac18-02d
>          # New Vision Display 7.0" 800 RGB x 480 TFT LCD panel
>        - nvd,9128
>          # OKAYA Electric America, Inc. RS800480T-7X0GP 7" WVGA LCD panel
> -- 
> 2.7.4
> 
