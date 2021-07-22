Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B4E393D25E8
	for <lists+devicetree@lfdr.de>; Thu, 22 Jul 2021 16:37:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232438AbhGVN4t (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Jul 2021 09:56:49 -0400
Received: from mail-il1-f169.google.com ([209.85.166.169]:45877 "EHLO
        mail-il1-f169.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232434AbhGVN4s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Jul 2021 09:56:48 -0400
Received: by mail-il1-f169.google.com with SMTP id b6so5514453iln.12
        for <devicetree@vger.kernel.org>; Thu, 22 Jul 2021 07:37:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=Y8GHotfVip9Ehvb2Kldh12w/ZP8HxnWefzrAt6Gb0PU=;
        b=gwijx18OaiYC5tcmY7d3UkyS1OwdX/s9L7qM8XCet/4CC86A9wwzFnoKhUa/k2Oygv
         NveQ7ToeTHlmr2jVCNKPYAhhHA/p4XdTSOJjOQ8IwJkLlmu7hmricrNFD8WefHBSRQyj
         zp3E/XhCjJBXLN3S51ylYHwtOI/n1HXPCn9cDP8kXG3rLBJYGar69m6YThPAyJDHpQPp
         JTC/stJBfuGgF/6B4/vJaZk3AStnOaDTrSPJg/cqAIisKKfkR1FNS9ALNDydl5HjWqql
         Y1jASE4xyPvUp38zfrNGVZGQUSB9yg63upWgPfzYsOJzSFgDw4+Qx/SqcqhAcZ/dtGAU
         0pDA==
X-Gm-Message-State: AOAM531Ncc4mYsh5VVqbT9dzgMDQCtkUmuIP0Kwu6DLHXAZdUHfEYVLG
        ZmfQ2WLf5vH3KW0mMbCv2w==
X-Google-Smtp-Source: ABdhPJzoujfZTpKRMrmi0SnUxZF+yDoAA4QLJHrq4KnmYq4sRLot/LYvdV1eiP6P6q8DZYVxIHzXbw==
X-Received: by 2002:a92:3302:: with SMTP id a2mr142394ilf.62.1626964642466;
        Thu, 22 Jul 2021 07:37:22 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id h1sm10473811ioz.22.2021.07.22.07.37.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jul 2021 07:37:21 -0700 (PDT)
Received: (nullmailer pid 4183867 invoked by uid 1000);
        Thu, 22 Jul 2021 14:37:12 -0000
From:   Rob Herring <robh@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     devicetree@vger.kernel.org, Marek Vasut <marex@denx.de>,
        kernel@pengutronix.de, Shawn Guo <shawnguo@kernel.org>,
        patchwork-lst@pengutronix.de, linux-arm-kernel@lists.infradead.org,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Rob Herring <robh+dt@kernel.org>, Peng Fan <peng.fan@nxp.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Adam Ford <aford173@gmail.com>
In-Reply-To: <20210721204703.1424034-9-l.stach@pengutronix.de>
References: <20210716232916.3572966-1-l.stach@pengutronix.de> <20210721204703.1424034-1-l.stach@pengutronix.de> <20210721204703.1424034-9-l.stach@pengutronix.de>
Subject: Re: [PATCH v2 08/18] dt-bindings: soc: add binding for i.MX8MM VPU blk-ctrl
Date:   Thu, 22 Jul 2021 08:37:12 -0600
Message-Id: <1626964632.934672.4183866.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 21 Jul 2021 22:46:53 +0200, Lucas Stach wrote:
> This adds the DT binding for the i.MX8MM VPU blk-ctrl.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  .../soc/imx/fsl,imx8mm-vpu-blk-ctrl.yaml      | 76 +++++++++++++++++++
>  1 file changed, 76 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-vpu-blk-ctrl.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-vpu-blk-ctrl.example.dt.yaml: blk-ctrl@38330000: '#power-domain-cells' does not match any of the regexes: 'pinctrl-[0-9]+'
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-vpu-blk-ctrl.yaml
\ndoc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1508454

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

