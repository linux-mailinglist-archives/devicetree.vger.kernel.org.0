Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 11EED3CD60B
	for <lists+devicetree@lfdr.de>; Mon, 19 Jul 2021 15:49:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240556AbhGSNHJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jul 2021 09:07:09 -0400
Received: from mail-io1-f54.google.com ([209.85.166.54]:37702 "EHLO
        mail-io1-f54.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240575AbhGSNHC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jul 2021 09:07:02 -0400
Received: by mail-io1-f54.google.com with SMTP id r18so8866610iot.4
        for <devicetree@vger.kernel.org>; Mon, 19 Jul 2021 06:47:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=mwZJ51kvoahmhHajsozg1/bCh/fa3VUH5vZFB7730Cc=;
        b=NZiHSB+Nroj8DrGFr6Pd5U/ytHi/+qBqGzGmZcxvQuIaVapNThXUYvMxK5P0SzE8nf
         Y1nJksq1Fc2t4x9CfqxfhzbY814wf7C1le7bqpEtXVQc5FFYeDxMY7VUIFIe+aZoX1H5
         flK6vrTKTRN6su9u0uAoW9A+A7XtSbykq4a3BpyBzWKALrrNcwEh6Y52Gr4q/+GdVzkm
         N1zivlrFgkw9xGWGmAP4PR6GfgqyofyeTbaW63JLNs6fkeATIl1302Fu15OqzY/iYOvs
         7bpCuhtOsvOhcMrDd6TyCsvsWOzxm6HXYtnHS6otztbRdrUaiQo/HLqaNROZ9g+kSGvy
         qqCw==
X-Gm-Message-State: AOAM530MauEkKEbGeCARcpink7eo+O6t/Kaw5oTzZETblMnCQm7sqQ1C
        AZAORwbf90I4GSCVP6ar7A==
X-Google-Smtp-Source: ABdhPJw10xzk5aqgM4JOl9ivG4Cf2xwpi0J/xIuCOBHib/harSRZSRR68y1XByYXGZn6PVSndroQyg==
X-Received: by 2002:a5e:8619:: with SMTP id z25mr6424819ioj.13.1626702461836;
        Mon, 19 Jul 2021 06:47:41 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id d9sm2196833ilv.62.2021.07.19.06.47.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jul 2021 06:47:41 -0700 (PDT)
Received: (nullmailer pid 1811200 invoked by uid 1000);
        Mon, 19 Jul 2021 13:47:28 -0000
From:   Rob Herring <robh@kernel.org>
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     Imre Kaloz <kaloz@openwrt.org>, devicetree@vger.kernel.org,
        Marc Zyngier <maz@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Krzysztof Halasa <khalasa@piap.pl>
In-Reply-To: <20210717001638.1292554-1-linus.walleij@linaro.org>
References: <20210717001638.1292554-1-linus.walleij@linaro.org>
Subject: Re: [PATCH 1/2] bus: ixp4xx: Add DT bindings for the IXP4xx expansion bus
Date:   Mon, 19 Jul 2021 07:47:28 -0600
Message-Id: <1626702448.416596.1811199.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 17 Jul 2021 02:16:37 +0200, Linus Walleij wrote:
> This adds device tree bindings for the IXP4xx expansion bus controller.
> 
> Cc: Marc Zyngier <maz@kernel.org>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
>  ...intel,ixp4xx-expansion-bus-controller.yaml | 151 ++++++++++++++++++
>  1 file changed, 151 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/bus/intel,ixp4xx-expansion-bus-controller.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/bus/intel,ixp4xx-expansion-bus-controller.example.dt.yaml: serial@1,0: compatible: 'oneOf' conditional failed, one must be fixed:
	['exar,xr16l2551', 'ns8250'] is too long
	Additional items are not allowed ('ns8250' was unexpected)
	['exar,xr16l2551', 'ns8250'] is too short
	'ns8250' was expected
	'ns16450' was expected
	'ns16550' was expected
	'ns16550a' was expected
	'ns16850' was expected
	'aspeed,ast2400-vuart' was expected
	'aspeed,ast2500-vuart' was expected
	'intel,xscale-uart' was expected
	'mrvl,pxa-uart' was expected
	'nuvoton,wpcm450-uart' was expected
	'nuvoton,npcm750-uart' was expected
	'nvidia,tegra20-uart' was expected
	'nxp,lpc3220-uart' was expected
	'exar,xr16l2551' is not one of ['altr,16550-FIFO32', 'altr,16550-FIFO64', 'altr,16550-FIFO128', 'fsl,16550-FIFO64', 'fsl,ns16550', 'andestech,uart16550', 'nxp,lpc1850-uart', 'opencores,uart16550-rtlsvn105', 'ti,da830-uart']
	'exar,xr16l2551' is not one of ['ns16750', 'cavium,octeon-3860-uart', 'xlnx,xps-uart16550-2.00.b', 'ralink,rt2880-uart']
	'exar,xr16l2551' is not one of ['ralink,mt7620a-uart', 'ralink,rt3052-uart', 'ralink,rt3883-uart']
	'exar,xr16l2551' is not one of ['mediatek,mt7622-btif', 'mediatek,mt7623-btif']
	'mrvl,mmp-uart' was expected
	'exar,xr16l2551' is not one of ['nvidia,tegra30-uart', 'nvidia,tegra114-uart', 'nvidia,tegra124-uart', 'nvidia,tegra186-uart', 'nvidia,tegra194-uart', 'nvidia,tegra210-uart']
	'ns8250' is not one of ['ns16550', 'ns16550a']
	'ralink,rt2880-uart' was expected
	'mediatek,mtk-btif' was expected
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/serial/8250.yaml
Documentation/devicetree/bindings/bus/intel,ixp4xx-expansion-bus-controller.example.dt.yaml:0:0: /example-0/bus@50000000/serial@1,0: failed to match any schema with compatible: ['exar,xr16l2551', 'ns8250']
\ndoc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1506323

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

