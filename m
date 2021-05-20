Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6D6EE389A62
	for <lists+devicetree@lfdr.de>; Thu, 20 May 2021 02:18:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229525AbhETATh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 May 2021 20:19:37 -0400
Received: from mail-oi1-f176.google.com ([209.85.167.176]:41488 "EHLO
        mail-oi1-f176.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229598AbhETATg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 May 2021 20:19:36 -0400
Received: by mail-oi1-f176.google.com with SMTP id c3so14770540oic.8
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 17:18:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=PUl1f4Nr+76KwblutPrM8yHeRx7+a2+oq+0sa4fdqeY=;
        b=iU0ZwhUfjdkqd+4WIJl6reuwpAc4qLtQ2Pu4ACF4emIVmtN3oF2EFSubj4A8VUPwwo
         GnePuAUOpmMKoig6nj+fyAXYmYthkWa1GoPss7zEP1MvsaJlJftn8GXQqYD+9zJFOPu8
         C5i2DGf628AGGt77zvexN1fzew0agPuvjqUGQC+ac8bBEaZIviB8M05esCFNHiOnX6Af
         dkhM8VXuKHeqNpNg3g73tmeUeW/EmPm9U4CcrjkgCjg8xBTr8bZArTGNaZDGfF4AawoM
         eM6GPrs5xpnx3uml3iA16L5EoC+vbYjnv3Ag7x9qFt+KN2VHVXPg/FDc+oboWv/vqMAM
         V3kw==
X-Gm-Message-State: AOAM530U/uDHa48a1dixR6F9nnS2LSj2tnELe0dSzp+wIIWFeMxOMi3N
        Awu6Iw3pzoek4Wufd0ERng==
X-Google-Smtp-Source: ABdhPJyJ9mXSNJkPJogWolUElO1VBqD1ZH2eAdz+cSznysld0mz66FY+Q01GxNyC+2k3IKIR1LrGLg==
X-Received: by 2002:aca:428b:: with SMTP id p133mr1402859oia.22.1621469894617;
        Wed, 19 May 2021 17:18:14 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id l141sm260330oib.44.2021.05.19.17.18.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 May 2021 17:18:13 -0700 (PDT)
Received: (nullmailer pid 3946400 invoked by uid 1000);
        Thu, 20 May 2021 00:18:10 -0000
From:   Rob Herring <robh@kernel.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Tudor Ambarus <Tudor.Ambarus@microchip.com>,
        devicetree@vger.kernel.org, Vignesh Raghavendra <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Srinivas Goud <sgoud@xilinx.com>,
        Helmut Grohne <helmut.grohne@intenta.de>,
        Amit Kumar Mahapatra <akumarma@xilinx.com>,
        Naga Sureshkumar Relli <nagasure@xilinx.com>,
        Siva Durga Prasad Paladugu <sivadur@xilinx.com>,
        Richard Weinberger <richard@nod.at>,
        Michal Simek <monstr@monstr.eu>, linux-mtd@lists.infradead.org
In-Reply-To: <20210519182636.1110080-11-miquel.raynal@bootlin.com>
References: <20210519182636.1110080-1-miquel.raynal@bootlin.com> <20210519182636.1110080-11-miquel.raynal@bootlin.com>
Subject: Re: [PATCH v20 10/19] dt-binding: memory: pl353-smc: Convert to yaml
Date:   Wed, 19 May 2021 19:18:10 -0500
Message-Id: <1621469890.781438.3946399.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 19 May 2021 20:26:27 +0200, Miquel Raynal wrote:
> Convert this binding file to yaml schema.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  .../memory-controllers/arm,pl353-smc.yaml     | 124 ++++++++++++++++++
>  .../bindings/memory-controllers/pl353-smc.txt |  46 -------
>  2 files changed, 124 insertions(+), 46 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
>  delete mode 100644 Documentation/devicetree/bindings/memory-controllers/pl353-smc.txt
> 

Look at other primecell bindings. You need a custom 'select'.



My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml:25:9: [warning] wrong indentation: expected 10 but found 8 (indentation)
./Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml:26:11: [warning] wrong indentation: expected 12 but found 10 (indentation)
./Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml:28:11: [warning] wrong indentation: expected 12 but found 10 (indentation)

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/watchdog/arm,sp805.example.dt.yaml: watchdog@66090000: $nodename:0: 'watchdog@66090000' does not match '^memory-controller@[0-9a-f]+$'
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/watchdog/arm,sp805.example.dt.yaml: watchdog@66090000: compatible: 'oneOf' conditional failed, one must be fixed:
	'arm,sp805' is not one of ['arm,pl353-smc-r2p1']
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/watchdog/arm,sp805.example.dt.yaml: watchdog@66090000: reg: [[1711865856, 4096]] is too short
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/watchdog/arm,sp805.example.dt.yaml: watchdog@66090000: clock-names:0: 'memclk' was expected
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/watchdog/arm,sp805.example.dt.yaml: watchdog@66090000: '#address-cells' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/watchdog/arm,sp805.example.dt.yaml: watchdog@66090000: '#size-cells' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/watchdog/arm,sp805.example.dt.yaml: watchdog@66090000: 'ranges' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/spi/spi-pl022.example.dt.yaml: spi@e0100000: $nodename:0: 'spi@e0100000' does not match '^memory-controller@[0-9a-f]+$'
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/spi/spi-pl022.example.dt.yaml: spi@e0100000: compatible: 'oneOf' conditional failed, one must be fixed:
	'arm,pl022' is not one of ['arm,pl353-smc-r2p1']
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/spi/spi-pl022.example.dt.yaml: spi@e0100000: #address-cells:0:0: 2 was expected
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/spi/spi-pl022.example.dt.yaml: spi@e0100000: #size-cells:0:0: 1 was expected
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/spi/spi-pl022.example.dt.yaml: spi@e0100000: reg: [[3759144960, 4096]] is too short
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/spi/spi-pl022.example.dt.yaml: spi@e0100000: 'clock-names' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/spi/spi-pl022.example.dt.yaml: spi@e0100000: 'clocks' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/spi/spi-pl022.example.dt.yaml: spi@e0100000: 'ranges' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/spi/spi-pl022.example.dt.yaml: spi@e0100000: 'dma-names', 'dmas', 'm25p80@1' do not match any of the regexes: '.*@[0-9]+,[0-9]+$', 'pinctrl-[0-9]+'
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/serial/pl011.example.dt.yaml: serial@80120000: $nodename:0: 'serial@80120000' does not match '^memory-controller@[0-9a-f]+$'
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/serial/pl011.example.dt.yaml: serial@80120000: compatible: 'oneOf' conditional failed, one must be fixed:
	'arm,pl011' is not one of ['arm,pl353-smc-r2p1']
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/serial/pl011.example.dt.yaml: serial@80120000: reg: [[2148663296, 4096]] is too short
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/serial/pl011.example.dt.yaml: serial@80120000: clock-names:0: 'memclk' was expected
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/serial/pl011.example.dt.yaml: serial@80120000: '#address-cells' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/serial/pl011.example.dt.yaml: serial@80120000: '#size-cells' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/serial/pl011.example.dt.yaml: serial@80120000: 'ranges' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/serial/pl011.example.dt.yaml: serial@80120000: 'dma-names', 'dmas' do not match any of the regexes: '.*@[0-9]+,[0-9]+$', 'pinctrl-[0-9]+'
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/coresight-cti.example.dt.yaml: cti@20020000: $nodename:0: 'cti@20020000' does not match '^memory-controller@[0-9a-f]+$'
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/coresight-cti.example.dt.yaml: cti@20020000: compatible: 'oneOf' conditional failed, one must be fixed:
	'arm,coresight-cti' is not one of ['arm,pl353-smc-r2p1']
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/coresight-cti.example.dt.yaml: cti@20020000: reg: [[537001984, 4096]] is too short
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/coresight-cti.example.dt.yaml: cti@20020000: clocks: [[4294967295]] is too short
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/coresight-cti.example.dt.yaml: cti@20020000: clock-names:0: 'memclk' was expected
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/coresight-cti.example.dt.yaml: cti@20020000: clock-names: ['apb_pclk'] is too short
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/coresight-cti.example.dt.yaml: cti@20020000: '#address-cells' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/coresight-cti.example.dt.yaml: cti@20020000: '#size-cells' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/coresight-cti.example.dt.yaml: cti@20020000: 'ranges' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/coresight-cti.example.dt.yaml: cti@859000: $nodename:0: 'cti@859000' does not match '^memory-controller@[0-9a-f]+$'
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/coresight-cti.example.dt.yaml: cti@859000: compatible: 'oneOf' conditional failed, one must be fixed:
	['arm,coresight-cti-v8-arch', 'arm,coresight-cti', 'arm,primecell'] is too long
	Additional items are not allowed ('arm,primecell' was unexpected)
	'arm,coresight-cti-v8-arch' is not one of ['arm,pl353-smc-r2p1']
	'arm,coresight-cti' is not one of ['arm,primecell']
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/coresight-cti.example.dt.yaml: cti@859000: reg: [[8753152, 4096]] is too short
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/coresight-cti.example.dt.yaml: cti@859000: clocks: [[4294967295]] is too short
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/coresight-cti.example.dt.yaml: cti@859000: clock-names:0: 'memclk' was expected
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/coresight-cti.example.dt.yaml: cti@859000: clock-names: ['apb_pclk'] is too short
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/coresight-cti.example.dt.yaml: cti@859000: '#address-cells' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/coresight-cti.example.dt.yaml: cti@859000: '#size-cells' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/coresight-cti.example.dt.yaml: cti@859000: 'ranges' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/coresight-cti.example.dt.yaml: cti@859000: 'arm,cs-dev-assoc', 'cpu' do not match any of the regexes: '.*@[0-9]+,[0-9]+$', 'pinctrl-[0-9]+'
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/coresight-cti.example.dt.yaml: cti@858000: $nodename:0: 'cti@858000' does not match '^memory-controller@[0-9a-f]+$'
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/coresight-cti.example.dt.yaml: cti@858000: compatible: 'oneOf' conditional failed, one must be fixed:
	'arm,coresight-cti' is not one of ['arm,pl353-smc-r2p1']
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/coresight-cti.example.dt.yaml: cti@858000: #address-cells:0:0: 2 was expected
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/coresight-cti.example.dt.yaml: cti@858000: #size-cells:0:0: 1 was expected
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/coresight-cti.example.dt.yaml: cti@858000: reg: [[8749056, 4096]] is too short
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/coresight-cti.example.dt.yaml: cti@858000: clocks: [[4294967295]] is too short
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/coresight-cti.example.dt.yaml: cti@858000: clock-names:0: 'memclk' was expected
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/coresight-cti.example.dt.yaml: cti@858000: clock-names: ['apb_pclk'] is too short
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/coresight-cti.example.dt.yaml: cti@858000: 'ranges' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/coresight-cti.example.dt.yaml: cti@858000: 'arm,cti-ctm-id', 'trig-conns@0', 'trig-conns@1' do not match any of the regexes: '.*@[0-9]+,[0-9]+$', 'pinctrl-[0-9]+'
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/coresight-cti.example.dt.yaml: cti@20110000: $nodename:0: 'cti@20110000' does not match '^memory-controller@[0-9a-f]+$'
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/coresight-cti.example.dt.yaml: cti@20110000: compatible: 'oneOf' conditional failed, one must be fixed:
	'arm,coresight-cti' is not one of ['arm,pl353-smc-r2p1']
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/coresight-cti.example.dt.yaml: cti@20110000: #address-cells:0:0: 2 was expected
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/coresight-cti.example.dt.yaml: cti@20110000: #size-cells:0:0: 1 was expected
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/coresight-cti.example.dt.yaml: cti@20110000: reg: [[537985024, 4096]] is too short
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/coresight-cti.example.dt.yaml: cti@20110000: clocks: [[4294967295]] is too short
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/coresight-cti.example.dt.yaml: cti@20110000: clock-names:0: 'memclk' was expected
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/coresight-cti.example.dt.yaml: cti@20110000: clock-names: ['apb_pclk'] is too short
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/coresight-cti.example.dt.yaml: cti@20110000: 'ranges' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/coresight-cti.example.dt.yaml: cti@20110000: 'trig-conns@0', 'trig-conns@1', 'trig-conns@2' do not match any of the regexes: '.*@[0-9]+,[0-9]+$', 'pinctrl-[0-9]+'
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mmc/arm,pl18x.example.dt.yaml: mmc@5000: $nodename:0: 'mmc@5000' does not match '^memory-controller@[0-9a-f]+$'
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mmc/arm,pl18x.example.dt.yaml: mmc@5000: compatible: 'oneOf' conditional failed, one must be fixed:
	'arm,pl180' is not one of ['arm,pl353-smc-r2p1']
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mmc/arm,pl18x.example.dt.yaml: mmc@5000: reg: [[20480, 4096]] is too short
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mmc/arm,pl18x.example.dt.yaml: mmc@5000: clock-names:0: 'memclk' was expected
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mmc/arm,pl18x.example.dt.yaml: mmc@5000: '#address-cells' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mmc/arm,pl18x.example.dt.yaml: mmc@5000: '#size-cells' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mmc/arm,pl18x.example.dt.yaml: mmc@5000: 'ranges' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mmc/arm,pl18x.example.dt.yaml: mmc@80126000: $nodename:0: 'mmc@80126000' does not match '^memory-controller@[0-9a-f]+$'
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mmc/arm,pl18x.example.dt.yaml: mmc@80126000: compatible: 'oneOf' conditional failed, one must be fixed:
	'arm,pl18x' is not one of ['arm,pl353-smc-r2p1']
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mmc/arm,pl18x.example.dt.yaml: mmc@80126000: reg: [[2148687872, 4096]] is too short
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mmc/arm,pl18x.example.dt.yaml: mmc@80126000: clock-names:0: 'memclk' was expected
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mmc/arm,pl18x.example.dt.yaml: mmc@80126000: '#address-cells' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mmc/arm,pl18x.example.dt.yaml: mmc@80126000: '#size-cells' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mmc/arm,pl18x.example.dt.yaml: mmc@80126000: 'ranges' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mmc/arm,pl18x.example.dt.yaml: mmc@80126000: 'bus-width', 'cap-mmc-highspeed', 'cap-sd-highspeed', 'cd-gpios', 'dma-names', 'dmas', 'max-frequency', 'st,sig-dir-cmd', 'st,sig-dir-dat0', 'st,sig-dir-dat2', 'st,sig-pin-fbclk', 'vmmc-supply', 'vqmmc-supply' do not match any of the regexes: '.*@[0-9]+,[0-9]+$', 'pinctrl-[0-9]+'
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mmc/arm,pl18x.example.dt.yaml: mmc@101f6000: $nodename:0: 'mmc@101f6000' does not match '^memory-controller@[0-9a-f]+$'
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mmc/arm,pl18x.example.dt.yaml: mmc@101f6000: compatible: 'oneOf' conditional failed, one must be fixed:
	'arm,pl18x' is not one of ['arm,pl353-smc-r2p1']
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mmc/arm,pl18x.example.dt.yaml: mmc@101f6000: reg: [[270491648, 4096]] is too short
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mmc/arm,pl18x.example.dt.yaml: mmc@101f6000: clock-names:0: 'memclk' was expected
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mmc/arm,pl18x.example.dt.yaml: mmc@101f6000: '#address-cells' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mmc/arm,pl18x.example.dt.yaml: mmc@101f6000: '#size-cells' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mmc/arm,pl18x.example.dt.yaml: mmc@101f6000: 'ranges' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mmc/arm,pl18x.example.dt.yaml: mmc@101f6000: 'bus-width', 'cap-mmc-highspeed', 'cap-sd-highspeed', 'full-pwr-cycle', 'max-frequency', 'st,sig-dir-cmd', 'st,sig-dir-dat0', 'st,sig-dir-dat2', 'st,sig-dir-dat31', 'st,sig-pin-fbclk', 'vmmc-supply' do not match any of the regexes: '.*@[0-9]+,[0-9]+$', 'pinctrl-[0-9]+'
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mmc/arm,pl18x.example.dt.yaml: mmc@52007000: $nodename:0: 'mmc@52007000' does not match '^memory-controller@[0-9a-f]+$'
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mmc/arm,pl18x.example.dt.yaml: mmc@52007000: compatible: 'oneOf' conditional failed, one must be fixed:
	'arm,pl18x' is not one of ['arm,pl353-smc-r2p1']
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mmc/arm,pl18x.example.dt.yaml: mmc@52007000: reg: [[1375760384, 4096]] is too short
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mmc/arm,pl18x.example.dt.yaml: mmc@52007000: clocks: [[4294967295, 0]] is too short
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mmc/arm,pl18x.example.dt.yaml: mmc@52007000: clock-names:0: 'memclk' was expected
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mmc/arm,pl18x.example.dt.yaml: mmc@52007000: clock-names: ['apb_pclk'] is too short
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mmc/arm,pl18x.example.dt.yaml: mmc@52007000: '#address-cells' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mmc/arm,pl18x.example.dt.yaml: mmc@52007000: '#size-cells' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mmc/arm,pl18x.example.dt.yaml: mmc@52007000: 'ranges' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mmc/arm,pl18x.example.dt.yaml: mmc@52007000: 'arm,primecell-periphid', 'cap-mmc-highspeed', 'cap-sd-highspeed', 'interrupt-names', 'max-frequency', 'resets' do not match any of the regexes: '.*@[0-9]+,[0-9]+$', 'pinctrl-[0-9]+'
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/timer/arm,sp804.example.dt.yaml: timer@fc800000: $nodename:0: 'timer@fc800000' does not match '^memory-controller@[0-9a-f]+$'
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/timer/arm,sp804.example.dt.yaml: timer@fc800000: compatible: 'oneOf' conditional failed, one must be fixed:
	'arm,sp804' is not one of ['arm,pl353-smc-r2p1']
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/timer/arm,sp804.example.dt.yaml: timer@fc800000: reg: [[4236247040, 4096]] is too short
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/timer/arm,sp804.example.dt.yaml: timer@fc800000: clocks: [[4294967295], [4294967295], [4294967295]] is too long
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/timer/arm,sp804.example.dt.yaml: timer@fc800000: clocks: Additional items are not allowed ([4294967295] was unexpected)
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/timer/arm,sp804.example.dt.yaml: timer@fc800000: clock-names:0: 'memclk' was expected
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/timer/arm,sp804.example.dt.yaml: timer@fc800000: clock-names:1: 'apb_pclk' was expected
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/timer/arm,sp804.example.dt.yaml: timer@fc800000: clock-names: ['timer1', 'timer2', 'apb_pclk'] is too long
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/timer/arm,sp804.example.dt.yaml: timer@fc800000: clock-names: Additional items are not allowed ('apb_pclk' was unexpected)
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/timer/arm,sp804.example.dt.yaml: timer@fc800000: '#address-cells' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/timer/arm,sp804.example.dt.yaml: timer@fc800000: '#size-cells' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/timer/arm,sp804.example.dt.yaml: timer@fc800000: 'ranges' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mailbox/arm,mhu.example.dt.yaml: mailbox@2b1f0000: $nodename:0: 'mailbox@2b1f0000' does not match '^memory-controller@[0-9a-f]+$'
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mailbox/arm,mhu.example.dt.yaml: mailbox@2b1f0000: compatible: 'oneOf' conditional failed, one must be fixed:
	'arm,mhu' is not one of ['arm,pl353-smc-r2p1']
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mailbox/arm,mhu.example.dt.yaml: mailbox@2b1f0000: reg: [[0, 723451904, 0, 4096]] is too short
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mailbox/arm,mhu.example.dt.yaml: mailbox@2b1f0000: clocks: [[4294967295, 0, 2, 1]] is too short
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mailbox/arm,mhu.example.dt.yaml: mailbox@2b1f0000: clock-names:0: 'memclk' was expected
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mailbox/arm,mhu.example.dt.yaml: mailbox@2b1f0000: clock-names: ['apb_pclk'] is too short
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mailbox/arm,mhu.example.dt.yaml: mailbox@2b1f0000: '#address-cells' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mailbox/arm,mhu.example.dt.yaml: mailbox@2b1f0000: '#size-cells' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mailbox/arm,mhu.example.dt.yaml: mailbox@2b1f0000: 'ranges' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mailbox/arm,mhu.example.dt.yaml: mailbox@2b1f0000: '#mbox-cells' does not match any of the regexes: '.*@[0-9]+,[0-9]+$', 'pinctrl-[0-9]+'
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mailbox/arm,mhu.example.dt.yaml: mailbox@2b2f0000: $nodename:0: 'mailbox@2b2f0000' does not match '^memory-controller@[0-9a-f]+$'
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mailbox/arm,mhu.example.dt.yaml: mailbox@2b2f0000: compatible: 'oneOf' conditional failed, one must be fixed:
	'arm,mhu-doorbell' is not one of ['arm,pl353-smc-r2p1']
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mailbox/arm,mhu.example.dt.yaml: mailbox@2b2f0000: reg: [[0, 724500480, 0, 4096]] is too short
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mailbox/arm,mhu.example.dt.yaml: mailbox@2b2f0000: clocks: [[4294967295, 0, 2, 1]] is too short
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mailbox/arm,mhu.example.dt.yaml: mailbox@2b2f0000: clock-names:0: 'memclk' was expected
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mailbox/arm,mhu.example.dt.yaml: mailbox@2b2f0000: clock-names: ['apb_pclk'] is too short
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mailbox/arm,mhu.example.dt.yaml: mailbox@2b2f0000: '#address-cells' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mailbox/arm,mhu.example.dt.yaml: mailbox@2b2f0000: '#size-cells' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mailbox/arm,mhu.example.dt.yaml: mailbox@2b2f0000: 'ranges' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mailbox/arm,mhu.example.dt.yaml: mailbox@2b2f0000: '#mbox-cells' does not match any of the regexes: '.*@[0-9]+,[0-9]+$', 'pinctrl-[0-9]+'
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mailbox/arm,mhuv2.example.dt.yaml: mailbox@2b1f0000: $nodename:0: 'mailbox@2b1f0000' does not match '^memory-controller@[0-9a-f]+$'
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mailbox/arm,mhuv2.example.dt.yaml: mailbox@2b1f0000: compatible: 'oneOf' conditional failed, one must be fixed:
	'arm,mhuv2-tx' is not one of ['arm,pl353-smc-r2p1']
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mailbox/arm,mhuv2.example.dt.yaml: mailbox@2b1f0000: reg: [[0, 723451904, 0, 4096]] is too short
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mailbox/arm,mhuv2.example.dt.yaml: mailbox@2b1f0000: clocks: [[4294967295, 0]] is too short
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mailbox/arm,mhuv2.example.dt.yaml: mailbox@2b1f0000: clock-names:0: 'memclk' was expected
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mailbox/arm,mhuv2.example.dt.yaml: mailbox@2b1f0000: clock-names: ['apb_pclk'] is too short
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mailbox/arm,mhuv2.example.dt.yaml: mailbox@2b1f0000: '#address-cells' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mailbox/arm,mhuv2.example.dt.yaml: mailbox@2b1f0000: '#size-cells' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mailbox/arm,mhuv2.example.dt.yaml: mailbox@2b1f0000: 'ranges' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mailbox/arm,mhuv2.example.dt.yaml: mailbox@2b1f0000: '#mbox-cells', 'arm,mhuv2-protocols' do not match any of the regexes: '.*@[0-9]+,[0-9]+$', 'pinctrl-[0-9]+'
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mailbox/arm,mhuv2.example.dt.yaml: mailbox@2b1f1000: $nodename:0: 'mailbox@2b1f1000' does not match '^memory-controller@[0-9a-f]+$'
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mailbox/arm,mhuv2.example.dt.yaml: mailbox@2b1f1000: compatible: 'oneOf' conditional failed, one must be fixed:
	'arm,mhuv2-rx' is not one of ['arm,pl353-smc-r2p1']
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mailbox/arm,mhuv2.example.dt.yaml: mailbox@2b1f1000: reg: [[0, 723456000, 0, 4096]] is too short
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mailbox/arm,mhuv2.example.dt.yaml: mailbox@2b1f1000: clocks: [[4294967295, 0]] is too short
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mailbox/arm,mhuv2.example.dt.yaml: mailbox@2b1f1000: clock-names:0: 'memclk' was expected
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mailbox/arm,mhuv2.example.dt.yaml: mailbox@2b1f1000: clock-names: ['apb_pclk'] is too short
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mailbox/arm,mhuv2.example.dt.yaml: mailbox@2b1f1000: '#address-cells' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mailbox/arm,mhuv2.example.dt.yaml: mailbox@2b1f1000: '#size-cells' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mailbox/arm,mhuv2.example.dt.yaml: mailbox@2b1f1000: 'ranges' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mailbox/arm,mhuv2.example.dt.yaml: mailbox@2b1f1000: '#mbox-cells', 'arm,mhuv2-protocols' do not match any of the regexes: '.*@[0-9]+,[0-9]+$', 'pinctrl-[0-9]+'
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/bus/arm,integrator-ap-lm.example.dt.yaml: serial@100000: $nodename:0: 'serial@100000' does not match '^memory-controller@[0-9a-f]+$'
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/bus/arm,integrator-ap-lm.example.dt.yaml: serial@100000: compatible: 'oneOf' conditional failed, one must be fixed:
	'arm,pl011' is not one of ['arm,pl353-smc-r2p1']
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/bus/arm,integrator-ap-lm.example.dt.yaml: serial@100000: reg: [[1048576, 4096]] is too short
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/bus/arm,integrator-ap-lm.example.dt.yaml: serial@100000: 'clock-names' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/bus/arm,integrator-ap-lm.example.dt.yaml: serial@100000: 'clocks' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/bus/arm,integrator-ap-lm.example.dt.yaml: serial@100000: '#address-cells' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/bus/arm,integrator-ap-lm.example.dt.yaml: serial@100000: '#size-cells' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/bus/arm,integrator-ap-lm.example.dt.yaml: serial@100000: 'ranges' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.example.dt.yaml: mmc@80118000: $nodename:0: 'mmc@80118000' does not match '^memory-controller@[0-9a-f]+$'
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.example.dt.yaml: mmc@80118000: compatible: 'oneOf' conditional failed, one must be fixed:
	'arm,pl18x' is not one of ['arm,pl353-smc-r2p1']
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.example.dt.yaml: mmc@80118000: #address-cells:0:0: 2 was expected
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.example.dt.yaml: mmc@80118000: #size-cells:0:0: 1 was expected
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.example.dt.yaml: mmc@80118000: reg: [[2148630528, 4096]] is too short
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.example.dt.yaml: mmc@80118000: clock-names:0: 'memclk' was expected
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.example.dt.yaml: mmc@80118000: 'ranges' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.example.dt.yaml: mmc@80118000: 'bus-width', 'non-removable', 'vmmc-supply', 'wifi@1' do not match any of the regexes: '.*@[0-9]+,[0-9]+$', 'pinctrl-[0-9]+'
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.yaml
Documentation/devicetree/bindings/memory-controllers/arm,pl353-smc.example.dt.yaml:0:0: /example-0/memory-controller@e000e000/nand-controller@0,0: failed to match any schema with compatible: ['arm,pl353-nand-r2p1']

See https://patchwork.ozlabs.org/patch/1481117

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

