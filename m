Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A49A7454A97
	for <lists+devicetree@lfdr.de>; Wed, 17 Nov 2021 17:10:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231600AbhKQQN1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Nov 2021 11:13:27 -0500
Received: from mail-oi1-f176.google.com ([209.85.167.176]:34812 "EHLO
        mail-oi1-f176.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231623AbhKQQN0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Nov 2021 11:13:26 -0500
Received: by mail-oi1-f176.google.com with SMTP id t19so7489912oij.1
        for <devicetree@vger.kernel.org>; Wed, 17 Nov 2021 08:10:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=yK9vNOeDGETW73QHrV4Z7zFhBBcsvZuPNoOhylQULKY=;
        b=1OTwxtwTL6pHKZa04XUY+SEEDi6Znvfzy7GWU4hr4zDe99AUkOv5nQ6eTKWlyI32S+
         atuDfdiJtrsSz7lSxr2ceEidXMUtjReXbsRvUgYKY+biLPNSmgQYOZFuJvxrQa9MYdar
         /t4igWeHaMu31M4Ajj8ZqBrS9qyNJEUG2mHb5vX/3QFBpIoMZNyN7UQc6BntZiSY9I4y
         Hz6aAAVhDMEPe2BWQika+1AodCrzfyZankSMJygKcr32p7GtR9a5JtKoSug00sinyjFA
         t2gv12k6YFPr8oFf+csY0hgyEwzg/NZhurj4uGcKiUjkONDRPuuH3iUSASDXHgBojjRu
         SU/g==
X-Gm-Message-State: AOAM532GbNyY+SUvN/twX//LneGNcakFxBHbIU8GWzemr8O02Y68jAsl
        CYw98SHnZ4bs6WJi8TyFGA==
X-Google-Smtp-Source: ABdhPJyrvKEPCkhIoZwSBkshVFLBitYyWTpayRf+S+fvZB0vU2SS86Fg8Y3yEhzBvppiypC6OhYajA==
X-Received: by 2002:a05:6808:a08:: with SMTP id n8mr770523oij.148.1637165427341;
        Wed, 17 Nov 2021 08:10:27 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id w4sm47701oiv.37.2021.11.17.08.10.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Nov 2021 08:10:26 -0800 (PST)
Received: (nullmailer pid 2614352 invoked by uid 1000);
        Wed, 17 Nov 2021 16:10:25 -0000
From:   Rob Herring <robh@kernel.org>
To:     Sascha Hauer <s.hauer@pengutronix.de>
Cc:     devicetree@vger.kernel.org,
        =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Peter Geis <pgwipeout@gmail.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org,
        Sandy Huang <hjc@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        kernel@pengutronix.de, dri-devel@lists.freedesktop.org
In-Reply-To: <20211117143347.314294-8-s.hauer@pengutronix.de>
References: <20211117143347.314294-1-s.hauer@pengutronix.de> <20211117143347.314294-8-s.hauer@pengutronix.de>
Subject: Re: [PATCH 07/12] dt-bindings: display: rockchip: Add binding for VOP2
Date:   Wed, 17 Nov 2021 10:10:25 -0600
Message-Id: <1637165425.821111.2614351.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 17 Nov 2021 15:33:42 +0100, Sascha Hauer wrote:
> The VOP2 is found on newer Rockchip SoCs like the rk3568 or the rk3566.
> The binding differs slightly from the existing VOP binding, so add a new
> binding file for it.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  .../display/rockchip/rockchip-vop2.yaml       | 114 ++++++++++++++++++
>  1 file changed, 114 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.example.dt.yaml: example-0: vop@fe040000:reg:0: [0, 4261675008, 0, 12288] is too long
	From schema: /usr/local/lib/python3.8/dist-packages/dtschema/schemas/reg.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.example.dt.yaml: example-0: vop@fe040000:reg:1: [0, 4261691392, 0, 4096] is too long
	From schema: /usr/local/lib/python3.8/dist-packages/dtschema/schemas/reg.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1556199

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

