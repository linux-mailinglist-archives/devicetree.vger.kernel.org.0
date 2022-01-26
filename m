Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8F95849D50B
	for <lists+devicetree@lfdr.de>; Wed, 26 Jan 2022 23:11:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232901AbiAZWLB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jan 2022 17:11:01 -0500
Received: from mail-oi1-f175.google.com ([209.85.167.175]:38572 "EHLO
        mail-oi1-f175.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232983AbiAZWLA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jan 2022 17:11:00 -0500
Received: by mail-oi1-f175.google.com with SMTP id g205so2341941oif.5
        for <devicetree@vger.kernel.org>; Wed, 26 Jan 2022 14:11:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=u1H8zRHkM4TlSBs3WPMSl8FmOXRRvPSkQ8QlzX+j8Ug=;
        b=Vnrleed4y6z0jsD6IY4NM/7smCWGk2HnaxOi3oNsSJWQKl45VbbBDpuNKpUykXR5V+
         yV7EqpFEtyfLC54UUc5Vc9S8FNAgL7Lt4qhaCbqUw4P8R0R7bDlfAiSusXsROhaC6QTX
         cbtt60FB05SQ8Ima2xRemy/6Ic7Lu9DRflNyhqssSLEOF30fppH3BsE5IkleT7JoOJ/q
         v3RBKJSNP1QVX3hWXvbw+DMlvJpbgw4+krZB+RazoAisUaF4DoRbp/oxH4X8qfWcFi4+
         uv/Y82AanDB17nBfnh/AUgEBkDB1wPyqIQafCLywX4YI9j13onv7jXXR5z4nxeVD5iDy
         2iwg==
X-Gm-Message-State: AOAM532yZnsB6+8JsjfxgrAMuMQzMw9L+LCzIP3ylZwmJrzF1ZOWBQoB
        iDeH4H35Zxq3aegqcyORaA==
X-Google-Smtp-Source: ABdhPJzRlKVnlXBnp9LIHNhl9lMVOLOxenluy535Ix5S6IlmC8DC2FgmzzOLihP7JVQPOqttxL/Ngg==
X-Received: by 2002:a05:6808:21a4:: with SMTP id be36mr5290595oib.85.1643235059959;
        Wed, 26 Jan 2022 14:10:59 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id i13sm9005588otl.46.2022.01.26.14.10.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jan 2022 14:10:59 -0800 (PST)
Received: (nullmailer pid 1535096 invoked by uid 1000);
        Wed, 26 Jan 2022 22:10:52 -0000
From:   Rob Herring <robh@kernel.org>
To:     Sascha Hauer <s.hauer@pengutronix.de>
Cc:     Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        kernel@pengutronix.de, dri-devel@lists.freedesktop.org,
        Andy Yan <andy.yan@rock-chips.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        linux-rockchip@lists.infradead.org,
        Peter Geis <pgwipeout@gmail.com>
In-Reply-To: <20220126145549.617165-18-s.hauer@pengutronix.de>
References: <20220126145549.617165-1-s.hauer@pengutronix.de> <20220126145549.617165-18-s.hauer@pengutronix.de>
Subject: Re: [PATCH 17/27] dt-bindings: display: rockchip: Add binding for VOP2
Date:   Wed, 26 Jan 2022 16:10:52 -0600
Message-Id: <1643235052.852354.1535095.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 26 Jan 2022 15:55:39 +0100, Sascha Hauer wrote:
> The VOP2 is found on newer Rockchip SoCs like the rk3568 or the rk3566.
> The binding differs slightly from the existing VOP binding, so add a new
> binding file for it.
> 
> Changes since v3:
> - drop redundant _vop suffix from clock names
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  .../display/rockchip/rockchip-vop2.yaml       | 146 ++++++++++++++++++
>  1 file changed, 146 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.example.dt.yaml: vop@fe040000: clock-names:0: 'aclk' was expected
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.example.dt.yaml: vop@fe040000: clock-names:1: 'hclk' was expected
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1584511

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

