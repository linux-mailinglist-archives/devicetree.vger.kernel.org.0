Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 71BC0453E73
	for <lists+devicetree@lfdr.de>; Wed, 17 Nov 2021 03:27:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229938AbhKQCaK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Nov 2021 21:30:10 -0500
Received: from mail-oo1-f47.google.com ([209.85.161.47]:37485 "EHLO
        mail-oo1-f47.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229733AbhKQCaK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Nov 2021 21:30:10 -0500
Received: by mail-oo1-f47.google.com with SMTP id v19-20020a4a2453000000b002bb88bfb594so468631oov.4
        for <devicetree@vger.kernel.org>; Tue, 16 Nov 2021 18:27:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=aFMe5CDtHMpqQ1UplAwNPilzRhCxqblKE6FB0t4Tui4=;
        b=b3CtgkcxS1j+9UTtbCU+/HkrqNPfARwakA3pONMe6YUTHq+FqKQtxkXoCOXoAn6xMu
         3aIl2DYtF/06vCjvlHAmKXacebjsOJ2nD6bKKPiCdRTPf2o8r4SRONJ7SAt++YpA3Du4
         lc4P261Bd8baRYqK7HAMiutXPLG0vmqfWJvSgxB89TJG/GlRCgz0wDjRcpOBmw/pCNGx
         IqIIeNvaZY7S8EEVhc50wIpuB/riOnlHL5JslBFxCEFfrmwW0XgfN7vCki+3pp4xSsZb
         A09W4k8waTm/O78gR0C0fXd8nx5vXj7TUm/f7HBKE65rRz3LIwQOxt5l9aQmtlYFeUaB
         v1qg==
X-Gm-Message-State: AOAM532yJCyC2qiD6ordGfXUH0bnfrYT0ShjAhe1Tb+l77lUvUlZ73tz
        oJRSmfPMIeXzTFMshnuTvw==
X-Google-Smtp-Source: ABdhPJxqEJqUWaA7baWpnIy0tRaEYGM2SlpKvIRmEjplWWwz1mGEkLOOgTv57TaIOtvQtwWFLDF7NA==
X-Received: by 2002:a4a:c304:: with SMTP id c4mr6512294ooq.34.1637116031978;
        Tue, 16 Nov 2021 18:27:11 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id m12sm1146065oiw.23.2021.11.16.18.27.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Nov 2021 18:27:11 -0800 (PST)
Received: (nullmailer pid 1207277 invoked by uid 1000);
        Wed, 17 Nov 2021 02:27:10 -0000
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Daniel Vetter <daniel.vetter@intel.com>,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        Thierry Reding <thierry.reding@gmail.com>,
        David Airlie <airlied@linux.ie>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Frank Rowand <frowand.list@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>
In-Reply-To: <20211116143503.385807-2-maxime@cerno.tech>
References: <20211116143503.385807-1-maxime@cerno.tech> <20211116143503.385807-2-maxime@cerno.tech>
Subject: Re: [PATCH 2/2] dt-bindings: panel: Introduce a panel-lvds binding
Date:   Tue, 16 Nov 2021 20:27:10 -0600
Message-Id: <1637116030.318148.1207276.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 16 Nov 2021 15:35:03 +0100, Maxime Ripard wrote:
> Following the previous patch, let's introduce a generic panel-lvds
> binding that documents the panels that don't have any particular
> constraint documented.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../bindings/display/panel/panel-lvds.yaml    | 56 +++++++++++++++++++
>  1 file changed, 56 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/panel-lvds.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/display/panel/panel-lvds.yaml:28:15: [warning] wrong indentation: expected 12 but found 14 (indentation)

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/panel/advantech,idk-2121wr.example.dt.yaml: panel-lvds: compatible:0: 'advantech,idk-2121wr' is not one of ['auo,b101ew05', 'tbs,a711-panel']
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/panel/panel-lvds.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/panel/advantech,idk-2121wr.example.dt.yaml: panel-lvds: 'port' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/panel/panel-lvds.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1555849

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

