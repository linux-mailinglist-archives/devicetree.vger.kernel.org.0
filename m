Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 340B04F8567
	for <lists+devicetree@lfdr.de>; Thu,  7 Apr 2022 18:59:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345911AbiDGRBl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Apr 2022 13:01:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32858 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238296AbiDGRBj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Apr 2022 13:01:39 -0400
Received: from mail-oo1-f47.google.com (mail-oo1-f47.google.com [209.85.161.47])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E352F1C7F21
        for <devicetree@vger.kernel.org>; Thu,  7 Apr 2022 09:59:37 -0700 (PDT)
Received: by mail-oo1-f47.google.com with SMTP id h3-20020a4ae8c3000000b00324b9ae6ff2so1027498ooe.10
        for <devicetree@vger.kernel.org>; Thu, 07 Apr 2022 09:59:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=aC19x5r9rZubAKpC81guZrRX4y273dQzbgSbAky6Be0=;
        b=Ozl+dTEkjYZP1MUQEjwRUob3OnnPv5v/PC9ouorHRaPR5vABaIGr3EEg5Nf1ZxPhwY
         fiDot3A+5MZ1wyr9XNX3ZjWVw+eX2SDEXat/M//0dR9OM8b2crFIERA8irWTKAyiMXZo
         5NdzdIWoLrFHDx1G2rUKonB3q+4WBEEDdS1p5oCHdhntzK8UTSzkp2W3s5xIYWncv17+
         7qKYPHbn5JRYJGX9CJb8e3rMGuszAwEgBXdH1IKNg5eLSp4gjyoZQVxR0AtkD2Elpk/U
         tQLq8dHc/kJ1Bm8u71q9M/6JyvuaSrosZf4pcqsz3vqfM30HhquMUf13ptnFcg18gtwJ
         N9IQ==
X-Gm-Message-State: AOAM531du6ctahRn48PrDOZRP2cum/WYD3dvRGw4fn4YKzYDRRFX+NeU
        MxWy3gUrPh5PbpnLoZmrGg==
X-Google-Smtp-Source: ABdhPJyX3QvTe0zmiLuNGWZy+chauwpSC9x6rEqLF6MEabvEoOfirFI8gL6EubY0Io0O9Jw5NP94Nw==
X-Received: by 2002:a4a:d1c4:0:b0:329:7ba9:1c43 with SMTP id a4-20020a4ad1c4000000b003297ba91c43mr4805762oos.63.1649350777082;
        Thu, 07 Apr 2022 09:59:37 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id f8-20020a4a8908000000b0032472938f95sm6737942ooi.17.2022.04.07.09.59.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Apr 2022 09:59:36 -0700 (PDT)
Received: (nullmailer pid 1401083 invoked by uid 1000);
        Thu, 07 Apr 2022 16:59:35 -0000
Date:   Thu, 7 Apr 2022 11:59:35 -0500
From:   Rob Herring <robh@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Robert Foss <robert.foss@linaro.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Shawn Guo <shawnguo@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
        patchwork-lst@pengutronix.de
Subject: Re: [PATCH v0 02/10] dt-bindings: display: imx: add binding for
 i.MX8MP HDMI TX
Message-ID: <Yk8Yd1etl7pK3B+a@robh.at.kernel.org>
References: <20220406160123.1272911-1-l.stach@pengutronix.de>
 <20220406160123.1272911-3-l.stach@pengutronix.de>
 <1649275702.749756.2682164.nullmailer@robh.at.kernel.org>
 <6ce2484e9b0482b01c139118cc5b5472e5563314.camel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6ce2484e9b0482b01c139118cc5b5472e5563314.camel@pengutronix.de>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Apr 07, 2022 at 11:15:26AM +0200, Lucas Stach wrote:
> Am Mittwoch, dem 06.04.2022 um 15:08 -0500 schrieb Rob Herring:
> > On Wed, 06 Apr 2022 18:01:15 +0200, Lucas Stach wrote:
> > > The HDMI TX controller on the i.MX8MP SoC is a Synopsys designware IP
> > > core with a little bit of SoC integration around it.
> > > 
> > > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > > ---
> > >  .../bindings/display/imx/fsl,imx8mp-hdmi.yaml | 72 +++++++++++++++++++
> > >  1 file changed, 72 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi.yaml
> > > 
> > 
> > My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> > on your patch (DT_CHECKER_FLAGS is new in v5.13):
> > 
> > yamllint warnings/errors:
> > 
> > dtschema/dtc warnings/errors:
> > Error: Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi.example.dts:36.45-46 syntax error
> > FATAL ERROR: Unable to parse input tree
> > make[1]: *** [scripts/Makefile.lib:364: Documentation/devicetree/bindings/display/imx/fsl,imx8mp-hdmi.example.dtb] Error 1
> > make[1]: *** Waiting for unfinished jobs....
> > make: *** [Makefile:1401: dt_binding_check] Error 2
> > 
> > doc reference errors (make refcheckdocs):
> > 
> > See https://patchwork.ozlabs.org/patch/
> > 
> > This check can fail if there are any dependencies. The base for a patch
> > series is generally the most recent rc1.
> > 
> Those failures are caused by the example referencing the power domain
> defines, that are only added in a dependency of this series. They build
> fine with all the dependencies applied, so please don't let this bot
> failure prevent you from looking at the actual bindings.

I review the failures. It otherwise looks fine.

Rob
