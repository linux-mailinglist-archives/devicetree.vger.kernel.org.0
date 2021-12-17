Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 66797479706
	for <lists+devicetree@lfdr.de>; Fri, 17 Dec 2021 23:25:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229807AbhLQWZJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Dec 2021 17:25:09 -0500
Received: from mail-ot1-f42.google.com ([209.85.210.42]:35604 "EHLO
        mail-ot1-f42.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229743AbhLQWZJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Dec 2021 17:25:09 -0500
Received: by mail-ot1-f42.google.com with SMTP id x43-20020a056830246b00b00570d09d34ebso4635909otr.2
        for <devicetree@vger.kernel.org>; Fri, 17 Dec 2021 14:25:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=s4d4c3incwOgtLKqkF8MQrNgWQ7PbqVn8Snb6/Ty0CQ=;
        b=5LQe6oq0szxa/sek3dUApFbjpUnroOE7g9IqvYIJxDMUXYjmnsgn45q3S6SLv6ZwNJ
         HLMb7biBYIEwigqSKe08EZnLZqvJ1BLV+ROHEXVKe49ROw7OYLcLt9xh1dsIDkalE31O
         9bXr+u+AY0r6bs7HsGaqlpblJtsPzdXzD7BWRzLFPUqghzSOlRy07RiTRkISgTrQuJfx
         bqWqs5ovU3A9MmBoCX4siGxJqEzOgN0e1i8y+inP2O65CA+mVabBoeBcHHDiyukubrl1
         ISl5ue+gu/lp9DPHj0poSELotmlbW0nWudV5xLDVgmpXeX/gLejeZeOQNkd8s32JXCGm
         0Vtw==
X-Gm-Message-State: AOAM532nK34R4iq90wtVVJh/NpdIe7qPrT3C7x/og5N4u4wFIRHc3hiY
        IKA7KrYXdhOFPf1YD+7+809xFTF/nQ==
X-Google-Smtp-Source: ABdhPJwqNSYlcKifVTlbUjtchFecUy6Q4aQrNa/PEUrrD0k3hO6DUuQgOV83C7vmGSncrytsJpNKAQ==
X-Received: by 2002:a9d:8e9:: with SMTP id 96mr3884360otf.192.1639779908440;
        Fri, 17 Dec 2021 14:25:08 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id w4sm1990300oiv.37.2021.12.17.14.25.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Dec 2021 14:25:07 -0800 (PST)
Received: (nullmailer pid 3686966 invoked by uid 1000);
        Fri, 17 Dec 2021 22:25:06 -0000
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     devicetree@vger.kernel.org,
        Daniel Vetter <daniel.vetter@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Thierry Reding <thierry.reding@gmail.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        dri-devel@lists.freedesktop.org
In-Reply-To: <20211217132502.95880-1-maxime@cerno.tech>
References: <20211217132502.95880-1-maxime@cerno.tech>
Subject: Re: [PATCH v2 1/2] dt-bindings: display: Turn lvds.yaml into a generic schema
Date:   Fri, 17 Dec 2021 16:25:06 -0600
Message-Id: <1639779906.571728.3686965.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 17 Dec 2021 14:25:01 +0100, Maxime Ripard wrote:
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
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> 
> ---
> 
> Changes from v1:
>   - Moved the schema out of panel
> ---
>  .../bindings/display/{panel => }/lvds.yaml    | 31 ++-----------------
>  .../display/panel/advantech,idk-1110wr.yaml   | 19 ++++++++++--
>  .../display/panel/innolux,ee101ia-01d.yaml    | 23 ++++++++++++--
>  .../display/panel/mitsubishi,aa104xd12.yaml   | 19 ++++++++++--
>  .../display/panel/mitsubishi,aa121td01.yaml   | 19 ++++++++++--
>  .../display/panel/sgd,gktw70sdae4se.yaml      | 19 ++++++++++--
>  6 files changed, 91 insertions(+), 39 deletions(-)
>  rename Documentation/devicetree/bindings/display/{panel => }/lvds.yaml (86%)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:


doc reference errors (make refcheckdocs):
Warning: Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml references a file that doesn't exist: Documentation/devicetree/bindings/display/panel/lvds.yaml
Warning: MAINTAINERS references a file that doesn't exist: Documentation/devicetree/bindings/display/panel/lvds.yaml
Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml: Documentation/devicetree/bindings/display/panel/lvds.yaml
MAINTAINERS: Documentation/devicetree/bindings/display/panel/lvds.yaml

See https://patchwork.ozlabs.org/patch/1570028

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

