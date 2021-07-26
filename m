Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1D5003D6A2D
	for <lists+devicetree@lfdr.de>; Tue, 27 Jul 2021 01:25:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233491AbhGZWpO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jul 2021 18:45:14 -0400
Received: from mail-il1-f176.google.com ([209.85.166.176]:34601 "EHLO
        mail-il1-f176.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233380AbhGZWpN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Jul 2021 18:45:13 -0400
Received: by mail-il1-f176.google.com with SMTP id a14so10582702ila.1
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 16:25:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=MT4ylZQUL8zUjXo5xoBdpyFKPIyYeR5lDgFshQ2XgV4=;
        b=MpUJjGQ6kuNrHlJpANOwnZ1hcwb6Z9uOFuD6mXWquZYbhf+2qjkLygFGKMCPJrKiI3
         8YCDsxSr13hQljf/7pF2YaBd+1dVrMcLvJVlhtORqRpSza3b58OUwIgGTDxmWg2RYaGw
         KJ/gFSZCQ/gUy5vB+2sdjrW+G6W/bhulSSGs5DaCJyHOG3W3rX7Y+XIG5E5kEb5DTfNV
         nG3922yDeUCxGJuOUFgM65chV6MBWluLXCKqKTuSevbI6xBqtqyYKRXxBg+P4M4Grobi
         1ymqT93hFuc4Q2sBnYr+p9pQBpeetZlpZtjUtkUvPObfxKzRyjvaGHrCCNUFt/QptH+u
         Aq3g==
X-Gm-Message-State: AOAM530c5TIwD1d/oTR/jUtmd76Hd3y3G3D+fSWcwK7sSWcVy4MFxGuP
        Z/eE4hRVLhjEy1nVUOqsKKaHQzffuA==
X-Google-Smtp-Source: ABdhPJybV1QTJn5F7wJak8d/0grLF5h3EbNyDlCgdReZoM4WIRqGcy5VdThDY8w8DBuHmbVt84Bdbg==
X-Received: by 2002:a92:cf05:: with SMTP id c5mr14181235ilo.196.1627341940689;
        Mon, 26 Jul 2021 16:25:40 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id x11sm666558ilu.3.2021.07.26.16.25.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jul 2021 16:25:40 -0700 (PDT)
Received: (nullmailer pid 1074977 invoked by uid 1000);
        Mon, 26 Jul 2021 23:25:37 -0000
Date:   Mon, 26 Jul 2021 17:25:37 -0600
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     dri-devel@lists.freedesktop.org,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH V3 1/2] dt-bindings: display: bridge: lvds-codec:
 Document LVDS data mapping select
Message-ID: <20210726232537.GA1065054@robh.at.kernel.org>
References: <20210726210250.531544-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210726210250.531544-1-marex@denx.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 26, 2021 at 11:02:49PM +0200, Marek Vasut wrote:
> Decoder input LVDS format is a property of the decoder chip or even
> its strapping. Add DT property data-mapping the same way lvds-panel
> does, to define the LVDS data mapping.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: devicetree@vger.kernel.org
> To: dri-devel@lists.freedesktop.org
> ---
> V2: - Use allOf
>     - Move the data-mapping to endpoint
> V3: - Rebase on V2 submitted a while ago, reinstate changelog
>     - Drop the allOf and un-rebase on previous pclk patch
> ---
>  .../bindings/display/bridge/lvds-codec.yaml   | 31 +++++++++++++++++++
>  1 file changed, 31 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
> index 304a1367faaa7..f795c671c3ce1 100644
> --- a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
> @@ -60,6 +60,21 @@ properties:
>            For LVDS encoders, port 1 is the LVDS output
>            For LVDS decoders, port 1 is the parallel output
>  
> +        properties:
> +          endpoint:
> +            $ref: /schemas/media/video-interfaces.yaml#

Adding this means the 'port' needs to reference '$defs/port-base' 
instead of 'properties/port'. Otherwise, it's going to start failing 
when 'unevaluatedProperties' gets implemented (appears to be soon now).

> +            unevaluatedProperties: false
> +
> +            properties:
> +              data-mapping:
> +                enum:
> +                  - jeida-18
> +                  - jeida-24
> +                  - vesa-24
> +                description: |
> +                  The color signals mapping order. See details in
> +                  Documentation/devicetree/bindings/display/panel/lvds.yaml
> +
>      required:
>        - port@0
>        - port@1
> @@ -71,6 +86,22 @@ properties:
>  
>    power-supply: true
>  
> +if:
> +  not:
> +    properties:
> +      compatible:
> +        contains:
> +          const: lvds-decoder
> +then:
> +  properties:
> +    ports:
> +      properties:
> +        port@1:
> +          properties:
> +            endpoint:
> +              properties:
> +                data-mapping: false

With this, I kind of think the schema should be split into encoder and 
decoder schemas. But we can leave that for the next addition...

Rob
