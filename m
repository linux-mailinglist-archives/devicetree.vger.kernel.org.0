Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 09E753D1BA5
	for <lists+devicetree@lfdr.de>; Thu, 22 Jul 2021 04:10:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230280AbhGVB33 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 21:29:29 -0400
Received: from mail-io1-f45.google.com ([209.85.166.45]:44853 "EHLO
        mail-io1-f45.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229932AbhGVB32 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jul 2021 21:29:28 -0400
Received: by mail-io1-f45.google.com with SMTP id v26so4606295iom.11
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 19:10:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=5kLJLZUyCa/nNnxOlQCQXuz6xdsojTMgp+d4EQ2QbHQ=;
        b=ubWfX9UH5KiUQMtEHVUkUVQLwAcK/KMZb0lip+6+LWwhHVG5YVEX55I9P1dqWIJ/AK
         X/Tmf9XTg30lpogQINFA0a2RdIrm2TQGIW6sNBDAM1dHHr0mmtoKcwwtB5UJGCMY/oyE
         xP9UlYW+zb9LO4azSKewaaTVzPUs3W7F/vzreIe6U67O9MIIDHcz8yCXLF1yZ7bFUL77
         l9q6XSUO4UBkkPItV7acmgZjaucArc2TydGmKCtaqegUn/xTCJEkHo0XBGv/JEsHmhWO
         OLTRKLKidrq6sM4q/uhP26xef0D6tmJb+o6pTP1epCvV9qYB5AAk7AwLc9CG1bqJqNo2
         lZbg==
X-Gm-Message-State: AOAM533Qyy+AZ5Xs8trDcbHmv9XjgMkBwwZsPTtaRH5B5uUtq8NR7xIh
        E5MsY/B6V++mamXMRnmI3MYXp3jY9A==
X-Google-Smtp-Source: ABdhPJwMLhd39uWwXBVgjOGL9sUVJPTwWC0SeOtzYs4b6QhOiDuOk/Cireqqm0B02NJINYM/XBe2uw==
X-Received: by 2002:a6b:b5ce:: with SMTP id e197mr28813122iof.123.1626919804208;
        Wed, 21 Jul 2021 19:10:04 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id u10sm10518117iop.15.2021.07.21.19.10.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jul 2021 19:10:03 -0700 (PDT)
Received: (nullmailer pid 3145325 invoked by uid 1000);
        Thu, 22 Jul 2021 02:09:56 -0000
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     linux-arm-kernel@lists.infradead.org,
        Thierry Reding <thierry.reding@gmail.com>,
        linux-sunxi@googlegroups.com, dri-devel@lists.freedesktop.org,
        Rob Herring <robh+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        devicetree@vger.kernel.org,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Frank Rowand <frowand.list@gmail.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Sam Ravnborg <sam@ravnborg.org>
In-Reply-To: <20210721140424.725744-11-maxime@cerno.tech>
References: <20210721140424.725744-1-maxime@cerno.tech> <20210721140424.725744-11-maxime@cerno.tech>
Subject: Re: [PATCH 10/54] dt-bindings: display: panel-lvds: Document panel compatibles
Date:   Wed, 21 Jul 2021 20:09:56 -0600
Message-Id: <1626919796.956620.3145324.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 21 Jul 2021 16:03:40 +0200, Maxime Ripard wrote:
> The binding mentions that all the drivers using that driver must use a
> vendor-specific compatible but never enforces it, nor documents the
> vendor-specific compatibles.
> 
> Let's make we document all of them, and that the binding will create an
> error if we add one that isn't.
> 
> Cc: dri-devel@lists.freedesktop.org
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../bindings/display/panel/lvds.yaml           | 18 ++++++++++++------
>  1 file changed, 12 insertions(+), 6 deletions(-)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/panel/sharp,lq150x1lg11.example.dt.yaml: panel: compatible: ['sharp,lq150x1lg11'] is too short
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/panel/lvds.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/panel/sharp,lq150x1lg11.example.dt.yaml: panel: 'data-mapping' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/panel/lvds.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/panel/sharp,lq150x1lg11.example.dt.yaml: panel: 'width-mm' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/panel/lvds.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/panel/sharp,lq150x1lg11.example.dt.yaml: panel: 'height-mm' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/panel/lvds.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/panel/sharp,lq150x1lg11.example.dt.yaml: panel: 'panel-timing' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/panel/lvds.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/panel/sharp,lq150x1lg11.example.dt.yaml: panel: 'oneOf' conditional failed, one must be fixed:
	'port' is a required property
	'ports' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/panel/lvds.yaml
\ndoc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1508254

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

