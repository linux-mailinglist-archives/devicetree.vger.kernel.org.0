Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C68342C9361
	for <lists+devicetree@lfdr.de>; Tue,  1 Dec 2020 00:55:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730655AbgK3XyZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Nov 2020 18:54:25 -0500
Received: from mail-io1-f66.google.com ([209.85.166.66]:39336 "EHLO
        mail-io1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725870AbgK3XyZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Nov 2020 18:54:25 -0500
Received: by mail-io1-f66.google.com with SMTP id j23so13716607iog.6
        for <devicetree@vger.kernel.org>; Mon, 30 Nov 2020 15:54:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Tj7KQ+kkGb49re4IGkD/TCjprsneOEg+TShZUdEXeMI=;
        b=GD2lbFDx0FsDMIZoHA/NQ6ny2aDCyVUbeYMWmfS3A+a0v3T++Cchcd9vx+RJMbhvKh
         KAKJvQvyauvOG7kE6aE91yOlbyAvnRRyV+y+Dmje4rn3b6PqZWIYMqtFfT7P/qaXQ8Zq
         0ea4JyZvtXD0/izDwVkar3kN6VorT6I4P01obqzS7KY0PavSguQ8yOp2KuTqYoNnQu+O
         BJeaVBmPuup7WsakoAHzXEiV9zzmnvAbZASM+bLhfLZjDMQFP49uUUU685Fhj3gRKQip
         oNQeov51TLDtw6WgJEKyazyokJS4AEJLSqPKF8PuOSctQNvAEm1yDEknOaNMui+XS0tS
         jRnA==
X-Gm-Message-State: AOAM531SyfyVWp6LjEY9dfho/ltv2hsrk+xZ6sXwndzG/kEvDZxJ3+Vu
        UXp6kTdewKTQHJX30ubWCQ==
X-Google-Smtp-Source: ABdhPJzyk1sg4vUkVt/2PalHlTdR2KD5FhZWXpuPPwI2kAPrIhiLRQDHcHIK31+fX/uqmw60y3gMZQ==
X-Received: by 2002:a02:2246:: with SMTP id o67mr273074jao.52.1606780423288;
        Mon, 30 Nov 2020 15:53:43 -0800 (PST)
Received: from xps15 ([64.188.179.253])
        by smtp.gmail.com with ESMTPSA id m12sm77695ilq.51.2020.11.30.15.53.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Nov 2020 15:53:42 -0800 (PST)
Received: (nullmailer pid 3283858 invoked by uid 1000);
        Mon, 30 Nov 2020 23:53:40 -0000
Date:   Mon, 30 Nov 2020 16:53:40 -0700
From:   Rob Herring <robh@kernel.org>
To:     Liu Ying <victor.liu@nxp.com>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Lucas Stach <l.stach@pengutronix.de>,
        Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH v4] dt-bindings: display: panel: one file of all simple
 LVDS panels with dual ports
Message-ID: <20201130235340.GA3277565@robh.at.kernel.org>
References: <1605577645-32173-1-git-send-email-victor.liu@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1605577645-32173-1-git-send-email-victor.liu@nxp.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Nov 17, 2020 at 09:47:25AM +0800, Liu Ying wrote:
> To complement panel-simple.yaml, create panel-simple-lvds-dual-ports.yaml.
> panel-simple-lvds-dual-ports.yaml is for all simple LVDS panels that
> have dual LVDS ports and require only a single power-supply.
> The first port receives odd pixels, and the second port receives even pixels.
> Optionally, a backlight and an enable GPIO can be specified as properties.
> 
> Panels with swapped pixel order, if any, need dedicated bindings.
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
> v3->v4:
> * Add type and descriptions for dual-lvds-{odd,even}-pixels properties.
>   Also, update descriptions for port@0 and port@1 properties accordingly. (Rob)
> 
> v2->v3:
> * Do not allow 'port' property. (Rob)
> * Define port number. (Rob)
> * Specify 'dual-lvds-odd-pixels' and 'dual-lvds-even-pixels' properties. (Rob)
> 
> v1->v2:
> * Correct pixel order in example LVDS panel node.
> 
>  .../panel/panel-simple-lvds-dual-ports.yaml        | 130 +++++++++++++++++++++
>  .../bindings/display/panel/panel-simple.yaml       |  10 --
>  2 files changed, 130 insertions(+), 10 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/panel-simple-lvds-dual-ports.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple-lvds-dual-ports.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple-lvds-dual-ports.yaml
> new file mode 100644
> index 00000000..38a789b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/panel-simple-lvds-dual-ports.yaml
> @@ -0,0 +1,130 @@
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
> +  The first port receives odd pixels, and the second port receives even pixels.
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
> +  ports:
> +    type: object
> +    properties:
> +      '#address-cells':
> +        const: 1
> +
> +      '#size-cells':
> +        const: 0
> +
> +      port@0:
> +        type: object
> +        description: The first sink port.
> +        properties:
> +          reg:
> +            const: 0
> +
> +          dual-lvds-odd-pixels:
> +            type: boolean
> +            description: The first sink port for odd pixels.
> +
> +        required:
> +          - reg
> +          - dual-lvds-odd-pixels
> +
> +      port@1:
> +        type: object
> +        description: The second sink port.
> +        properties:
> +          reg:
> +            const: 1
> +
> +          dual-lvds-even-pixels:
> +            type: boolean
> +            description: The second sink port for even pixels.
> +
> +        required:
> +          - reg
> +          - dual-lvds-even-pixels
> +
> +    required:
> +      - "#address-cells"
> +      - "#size-cells"
> +      - port@0
> +      - port@1
> +
> +    additionalProperties: false
> +
> +  backlight: true
> +  enable-gpios: true
> +  power-supply: true
> +
> +additionalProperties: false
> +
> +required:
> +  - compatible
> +  - power-supply

ports should be required.

With that,

Reviewed-by: Rob Herring <robh@kernel.org>

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
