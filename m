Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 728D24565E3
	for <lists+devicetree@lfdr.de>; Thu, 18 Nov 2021 23:49:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232629AbhKRWw5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Nov 2021 17:52:57 -0500
Received: from mail-oi1-f178.google.com ([209.85.167.178]:44580 "EHLO
        mail-oi1-f178.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232600AbhKRWw5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Nov 2021 17:52:57 -0500
Received: by mail-oi1-f178.google.com with SMTP id be32so17582777oib.11
        for <devicetree@vger.kernel.org>; Thu, 18 Nov 2021 14:49:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=NEMOVgkvVV2eWKxnp9UBhrGqsYMELkDt/UIMsRouQTI=;
        b=ZRVDaTj77CWyyXpcJcfLxYy5xRqLoMa68GscUYjRZ1khASt7ZpFlSTbTQedi54o3q+
         T5P3jFg9n8+fAYG5u4YjgHrI/So8W5vt+vK6EY+tyXyrBaS0MmfQG3cs3J4PqN3V+uQI
         TFV9PccldYmRAZCEJQxUa52GXzAizXIvIRYlp/W4VyoDYoVT0zGXYubWoXwOUHVe7LXI
         kFysAtskJteQt89575pw4E0WCqF4rwX2k0/LE2EA87lY0TqX6Qv9McO1NLLpz6S9ZdNR
         gFtfrqKC3T1wONEh5wy1UUZsDO7sDpxJbi0gl5rSuE28eZa/KhY0MYD4ovVQZYILFgTZ
         XzWQ==
X-Gm-Message-State: AOAM532yFkF/kN9CQQvfpzwf0MP0Y/aapvqGLxvxDxRO5U7iXmuHaI4i
        G+rxvylu24ptC30xso4WmA==
X-Google-Smtp-Source: ABdhPJyRhCp+Q8aBhg/oMots96pmWF4+WFdd2UzE562Fg4cqxoNVqdfURkh0kxWYoDlO/IZ60UuToA==
X-Received: by 2002:a05:6808:1784:: with SMTP id bg4mr587209oib.70.1637275796369;
        Thu, 18 Nov 2021 14:49:56 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id e14sm267321oow.3.2021.11.18.14.49.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Nov 2021 14:49:55 -0800 (PST)
Received: (nullmailer pid 1907489 invoked by uid 1000);
        Thu, 18 Nov 2021 22:49:54 -0000
Date:   Thu, 18 Nov 2021 16:49:54 -0600
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH 1/2] dt-bindings: display: Turn lvds.yaml into a generic
 schema
Message-ID: <YZbYkpHFc0XzwMOC@robh.at.kernel.org>
References: <20211116143503.385807-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211116143503.385807-1-maxime@cerno.tech>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Nov 16, 2021 at 03:35:02PM +0100, Maxime Ripard wrote:
> The lvds.yaml file so far was both defining the generic LVDS properties
> (such as data-mapping) that could be used for any LVDS sink, but also
> the panel-lvds binding.
> 
> That last binding was to describe LVDS panels simple enough, and had a
> number of other bindings using it as a base to specialise it further.
> 
> However, this situation makes it fairly hard to extend and reuse both
> the generic parts, and the panel-lvds itself.
> 
> Let's remove the panel-lvds parts and leave only the generic LVDS
> properties.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../display/panel/advantech,idk-1110wr.yaml   | 17 ++++++++++-
>  .../display/panel/innolux,ee101ia-01d.yaml    | 21 +++++++++++++-
>  .../bindings/display/panel/lvds.yaml          | 29 +------------------
>  .../display/panel/mitsubishi,aa104xd12.yaml   | 17 ++++++++++-
>  .../display/panel/mitsubishi,aa121td01.yaml   | 17 ++++++++++-
>  .../display/panel/sgd,gktw70sdae4se.yaml      | 17 ++++++++++-
>  6 files changed, 85 insertions(+), 33 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/advantech,idk-1110wr.yaml b/Documentation/devicetree/bindings/display/panel/advantech,idk-1110wr.yaml
> index 93878c2cd370..f27cd2038636 100644
> --- a/Documentation/devicetree/bindings/display/panel/advantech,idk-1110wr.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/advantech,idk-1110wr.yaml
> @@ -11,13 +11,23 @@ maintainers:
>    - Thierry Reding <thierry.reding@gmail.com>
>  
>  allOf:
> +  - $ref: panel-common.yaml#
>    - $ref: lvds.yaml#
>  
> +select:
> +  properties:
> +    compatible:
> +      contains:
> +        const: advantech,idk-1110wr
> +
> +  required:
> +    - compatible
> +
>  properties:
>    compatible:
>      items:
>        - const: advantech,idk-1110wr
> -      - {} # panel-lvds, but not listed here to avoid false select
> +      - const: panel-lvds
>  
>    data-mapping:
>      const: jeida-24
> @@ -35,6 +45,11 @@ additionalProperties: false
>  
>  required:
>    - compatible
> +  - data-mapping
> +  - width-mm
> +  - height-mm
> +  - panel-timing
> +  - port
>  
>  examples:
>    - |+
> diff --git a/Documentation/devicetree/bindings/display/panel/innolux,ee101ia-01d.yaml b/Documentation/devicetree/bindings/display/panel/innolux,ee101ia-01d.yaml
> index a69681e724cb..6e06eecac14e 100644
> --- a/Documentation/devicetree/bindings/display/panel/innolux,ee101ia-01d.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/innolux,ee101ia-01d.yaml
> @@ -11,15 +11,26 @@ maintainers:
>    - Thierry Reding <thierry.reding@gmail.com>
>  
>  allOf:
> +  - $ref: panel-common.yaml#
>    - $ref: lvds.yaml#
>  
> +select:
> +  properties:
> +    compatible:
> +      contains:
> +        const: innolux,ee101ia-01d
> +
> +  required:
> +    - compatible
> +
>  properties:
>    compatible:
>      items:
>        - const: innolux,ee101ia-01d
> -      - {} # panel-lvds, but not listed here to avoid false select
> +      - const: panel-lvds
>  
>    backlight: true
> +  data-mapping: true
>    enable-gpios: true
>    power-supply: true
>    width-mm: true
> @@ -27,5 +38,13 @@ properties:
>    panel-timing: true
>    port: true
>  
> +required:
> +  - compatible
> +  - data-mapping
> +  - width-mm
> +  - height-mm
> +  - panel-timing
> +  - port
> +
>  additionalProperties: false
>  ...
> diff --git a/Documentation/devicetree/bindings/display/panel/lvds.yaml b/Documentation/devicetree/bindings/display/panel/lvds.yaml
> index 49460c9dceea..5281a75c8bb5 100644
> --- a/Documentation/devicetree/bindings/display/panel/lvds.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/lvds.yaml
> @@ -4,7 +4,7 @@
>  $id: http://devicetree.org/schemas/display/panel/lvds.yaml#
>  $schema: http://devicetree.org/meta-schemas/core.yaml#
>  
> -title: LVDS Display Panel
> +title: LVDS Display Common Properties
>  
>  maintainers:
>    - Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
> @@ -26,18 +26,7 @@ description: |+
>    Device compatible with those specifications have been marketed under the
>    FPD-Link and FlatLink brands.
>  
> -allOf:
> -  - $ref: panel-common.yaml#
> -

I think you can leave this instead of adding everywhere you include 
lvds.yaml. Either way,

Reviewed-by: Rob Herring <robh@kernel.org>
