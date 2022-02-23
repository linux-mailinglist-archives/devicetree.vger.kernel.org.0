Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2F39F4C1F4E
	for <lists+devicetree@lfdr.de>; Thu, 24 Feb 2022 00:05:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236725AbiBWXGY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Feb 2022 18:06:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46318 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234474AbiBWXGY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Feb 2022 18:06:24 -0500
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35B3057B38
        for <devicetree@vger.kernel.org>; Wed, 23 Feb 2022 15:05:55 -0800 (PST)
Received: by mail-oi1-f177.google.com with SMTP id j24so626184oii.11
        for <devicetree@vger.kernel.org>; Wed, 23 Feb 2022 15:05:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=3r5t1BZ2p1mxeTLa/fA709uGdwqY7SoYynbbr5cNx44=;
        b=rAV1luHZrrXJktRX8iH4UbPsOQqCgaBOLqDN22SLnNAQuegc/t2n+rSVO2+z/GidrU
         /CV5me8Mra1MAIZktO7l7rd6n+TeiqRx/nYRZ6NstHjwovZ2RZb2HFndaU2BN51NUans
         LBsZMwvt6ZykLxFqcuefdR9+nhIY+25ARwFBQG0VLHocXd3jSIBzkzBkO7wgaZJphRrr
         R6k7P0wBihj2IEYAI37SfaY4cqnZ0tCjbe7AxGcTsvLHuBqHH+Q6wY6MGKdi7BiHaAza
         njj+Hh7zVS8SzXiNzzmaHwIgkc/U9x/Tr6vaoVodheSGZhhxFfF5dcd/iHMIytFhgq60
         MJJQ==
X-Gm-Message-State: AOAM5312r62xRPvHMti0jY8LreW2eEM8jJbiDp+LOcHeVnHnmyJAqkOQ
        brqd/SSw48nIeOyG9Ozn8Q==
X-Google-Smtp-Source: ABdhPJxLVpH38lEVzYq6cC0hsmMPQVlqjq0E4ftOeyOe5iVq0usoT4WvFeiBoGd+DUNK9N8O+SYHnQ==
X-Received: by 2002:aca:5fd4:0:b0:2c9:f05e:4f75 with SMTP id t203-20020aca5fd4000000b002c9f05e4f75mr1101747oib.167.1645657554504;
        Wed, 23 Feb 2022 15:05:54 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id bg30sm577252oib.4.2022.02.23.15.05.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Feb 2022 15:05:53 -0800 (PST)
Received: (nullmailer pid 1703966 invoked by uid 1000);
        Wed, 23 Feb 2022 23:05:53 -0000
Date:   Wed, 23 Feb 2022 17:05:53 -0600
From:   Rob Herring <robh@kernel.org>
To:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Cc:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        linux-mtd@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        devicetree@vger.kernel.org, Hauke Mehrtens <hauke@hauke-m.de>
Subject: Re: [PATCH] dt-bindings: mtd: partitions: convert Broadcom's TRX to
 the json-schema
Message-ID: <Yha90XxGrRJZ/ANR@robh.at.kernel.org>
References: <20220216104126.31284-1-zajec5@gmail.com>
 <1645070363.930966.2266015.nullmailer@robh.at.kernel.org>
 <3be13bc2-f8b1-193b-9a36-92d4336d9d28@milecki.pl>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3be13bc2-f8b1-193b-9a36-92d4336d9d28@milecki.pl>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Feb 17, 2022 at 08:43:23AM +0100, Rafał Miłecki wrote:
> Hi Rob,
> 
> On 17.02.2022 04:59, Rob Herring wrote:
> > On Wed, 16 Feb 2022 11:41:26 +0100, Rafał Miłecki wrote:
> > > From: Rafał Miłecki <rafal@milecki.pl>
> > > 
> > > This helps validating DTS files.
> > > 
> > > Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> > > ---
> > >   .../bindings/mtd/partitions/brcm,trx.txt      | 42 ---------------
> > >   .../bindings/mtd/partitions/brcm,trx.yaml     | 51 +++++++++++++++++++
> > >   2 files changed, 51 insertions(+), 42 deletions(-)
> > >   delete mode 100644 Documentation/devicetree/bindings/mtd/partitions/brcm,trx.txt
> > >   create mode 100644 Documentation/devicetree/bindings/mtd/partitions/brcm,trx.yaml
> > > 
> > 
> > My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> > on your patch (DT_CHECKER_FLAGS is new in v5.13):
> > 
> > yamllint warnings/errors:
> > 
> > dtschema/dtc warnings/errors:
> > /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mtd/partitions/linksys,ns-partitions.example.dt.yaml: partition@200000: compatible:0: 'brcm,trx' was expected
> > 	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mtd/partitions/brcm,trx.yaml
> > /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mtd/partitions/linksys,ns-partitions.example.dt.yaml: partition@200000: compatible: ['linksys,ns-firmware', 'brcm,trx'] is too long
> > 	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mtd/partitions/brcm,trx.yaml
> 
> could you advise the best way to solve that?

You should move linksys,ns-firmware from linksys,ns-partitions.yaml to 
this schema. Then linksys,ns-partitions.yaml just has:

  "^partition@[0-9a-f]+$":
    $ref: "partition.yaml#"
    additionalProperties: true

That's not completely ideal because then undocumented properties are 
allowed. To fix that, you'd need:

  "^partition@[0-9a-f]+$":
    oneOf:
      - $ref: "partition.yaml#"
      - $ref: "brcm,trx.yaml#"
    unevaluatedProperties: false

I'm not 100% sure that will work.

Rob
