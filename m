Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DDC7A3D1BA9
	for <lists+devicetree@lfdr.de>; Thu, 22 Jul 2021 04:10:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230331AbhGVB3g (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 21:29:36 -0400
Received: from mail-il1-f174.google.com ([209.85.166.174]:42667 "EHLO
        mail-il1-f174.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230329AbhGVB3f (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jul 2021 21:29:35 -0400
Received: by mail-il1-f174.google.com with SMTP id m20so4036566ili.9;
        Wed, 21 Jul 2021 19:10:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=acHPyem1yiYi8uyJ/MGZ82USq5Ul/BTfStXv8UkMrFI=;
        b=MAGnCkMrv+hidJsj9d88BMaBTueID9oyojfpcBUTs0RRw3uY/OIf0uD0YUmjAfz+UT
         2f1vG9b8oaxRRDv8xkg9bxyl8EdaWcpE2mAWnORGP0N7LqrQYiSGtIzDYTVn0gNMy8Sn
         1inp4vVJTtB/J8TMRgFyjUOUTc8TxPdR1BHr3BsSsF7ZmoVAz9TsmKxGFF74JgycLiVL
         cTV7JosclWkOf0yR04xfaJ5892yrTN7pmjrxaVj314Y8TWrz+qhDsYTDVOdZYgBWfRDr
         8oBHvE42r62tDBuWW/ESumV9NtPAOdRwgvQXfCDEDLwRb6RfCSOAjhxoKK5FhIXEb0zA
         Fczg==
X-Gm-Message-State: AOAM531Oyrr0KX/YSxEbRRcruhayUHz59h0o5JmYvq92He6vk9XtKW2u
        NlBr+QlE8r9GrZseGhqCtQ==
X-Google-Smtp-Source: ABdhPJyOq4wX0CCYNwhxEo3q6qCqK40jXpzmZ8bRIFAdIzbhHvoGOVqB4fPrARqUmcisiPYwkUvzUA==
X-Received: by 2002:a05:6e02:d93:: with SMTP id i19mr13850876ilj.72.1626919811261;
        Wed, 21 Jul 2021 19:10:11 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id m13sm14097116ila.80.2021.07.21.19.10.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jul 2021 19:10:10 -0700 (PDT)
Received: (nullmailer pid 3145321 invoked by uid 1000);
        Thu, 22 Jul 2021 02:09:56 -0000
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@googlegroups.com,
        Frank Rowand <frowand.list@gmail.com>,
        Mailing List <devicetree-spec@vger.kernel.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Rob Herring <robh+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>
In-Reply-To: <20210721140424.725744-6-maxime@cerno.tech>
References: <20210721140424.725744-1-maxime@cerno.tech> <20210721140424.725744-6-maxime@cerno.tech>
Subject: Re: [PATCH 05/54] dt-bindings: Convert Reserved Memory binding to a schema
Date:   Wed, 21 Jul 2021 20:09:56 -0600
Message-Id: <1626919796.941622.3145320.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 21 Jul 2021 16:03:35 +0200, Maxime Ripard wrote:
> The Reserved Memory mechanism is supported by Linux thanks to its device
> tree binding.
> 
> Now that we have the DT validation in place, let's convert the device
> tree bindings for that driver over to a YAML schema.
> 
> Cc: Mailing List <devicetree-spec@vger.kernel.org>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../reserved-memory/reserved-memory.txt       | 141 ---------------
>  .../reserved-memory/reserved-memory.yaml      | 167 ++++++++++++++++++
>  2 files changed, 167 insertions(+), 141 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt
>  create mode 100644 Documentation/devicetree/bindings/reserved-memory/reserved-memory.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/nvmem/rmem.example.dt.yaml: reserved-memory: nvram@10000000:compatible: 'oneOf' conditional failed, one must be fixed:
	['raspberrypi,bootloader-config', 'nvmem-rmem'] is too long
	Additional items are not allowed ('nvmem-rmem' was unexpected)
	'shared-dma-pool' was expected
	'mediatek,trustzone-bootinfo' was expected
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/reserved-memory/reserved-memory.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra210-emc.example.dt.yaml: reserved-memory: emc-table@83400000:compatible: 'oneOf' conditional failed, one must be fixed:
	'shared-dma-pool' was expected
	'mediatek,trustzone-bootinfo' was expected
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/reserved-memory/reserved-memory.yaml
\ndoc reference errors (make refcheckdocs):
Documentation/devicetree/bindings/display/arm,hdlcd.txt: Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt
Documentation/devicetree/bindings/display/arm,komeda.txt: Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt
Documentation/devicetree/bindings/display/arm,malidp.txt: Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt
Documentation/devicetree/bindings/display/arm,pl11x.txt: Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt
Documentation/devicetree/bindings/firmware/intel,stratix10-svc.txt: Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt
Documentation/devicetree/bindings/gpu/aspeed-gfx.txt: Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt
Documentation/devicetree/bindings/media/aspeed-video.txt: Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt
Documentation/devicetree/bindings/media/mediatek-vpu.txt: Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt
Documentation/devicetree/bindings/remoteproc/ti,davinci-rproc.txt: Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt
Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml: Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt
Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.yaml: Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt
Documentation/devicetree/bindings/remoteproc/ti,keystone-rproc.txt: Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt
Documentation/devicetree/bindings/remoteproc/ti,omap-remoteproc.yaml: Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt
arch/arm/mm/dma-mapping-nommu.c: Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt

See https://patchwork.ozlabs.org/patch/1508249

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

