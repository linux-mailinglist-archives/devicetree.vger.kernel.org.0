Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9803B562798
	for <lists+devicetree@lfdr.de>; Fri,  1 Jul 2022 02:13:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229623AbiGAAKE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Jun 2022 20:10:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229531AbiGAAKC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Jun 2022 20:10:02 -0400
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com [209.85.166.52])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A6B54D4D4
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 17:10:02 -0700 (PDT)
Received: by mail-io1-f52.google.com with SMTP id d3so774637ioi.9
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 17:10:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Rvgw2gV9oI41r7piGxIllnTvFTiZDqgR+p9fNGyz+94=;
        b=i1hx4du+x7rW6Rak3tAjrzIIAj1UlmIC4DRxGPUSICJuX9T7wQORIxNlCNOYFDE28E
         x4wbDeuj0W6k5hyitqKcpHZ/+PlSwTDfSHt4XJC4rQhtDsRH1agRfB2hOL0hV6PNPwlc
         hBTuswYBb7F2u8h7bX3MqIrWpAgY8mEpxWCizV2LhmWX9ibKRsPgAKpsX0hidMz1nSM/
         lvmbHDfQzBUc2cJ9oXx+iZ/8juA1zuqaVOSEELUCP/cVSLMheNBukJYrVpKk6gvnxWEs
         3Gxrbc3Njv9QE6EzgF3ZpnPnBi18/D8HC8oLO4bKkj1oaCC4DZI5ZBZuRzx0/vpfehBJ
         xmQQ==
X-Gm-Message-State: AJIora+vViPrqo6JGRi9+GFG+xEspZr1MuU5aBtcwZslatCmVrThuC6W
        PBMgMYe/HMXnJAA/5gcxTw==
X-Google-Smtp-Source: AGRyM1vvlzCpy9/ye6a/kOwidICU5eNh+knIL9xMEORJHu35USN544S7EiLWpV4+h0d7dzl70LL3Kg==
X-Received: by 2002:a05:6602:154f:b0:675:b957:70a3 with SMTP id h15-20020a056602154f00b00675b95770a3mr1402129iow.109.1656634201371;
        Thu, 30 Jun 2022 17:10:01 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id u13-20020a5d870d000000b00669ceb1d521sm9662724iom.10.2022.06.30.17.10.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jun 2022 17:10:01 -0700 (PDT)
Received: (nullmailer pid 3600592 invoked by uid 1000);
        Fri, 01 Jul 2022 00:09:59 -0000
Date:   Thu, 30 Jun 2022 18:09:59 -0600
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-kernel@lists.infradead.org,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Peng Fan <peng.fan@nxp.com>, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: soc: imx8mp-media-blk-ctrl: Add LDB into DT
 example
Message-ID: <20220701000959.GA3588170-robh@kernel.org>
References: <20220630173922.92296-1-marex@denx.de>
 <f0366170-c1b6-9573-3e9c-9b1ace2dfbad@linaro.org>
 <b6badccf-8910-da26-bbcc-1302d957a2bd@denx.de>
 <27495fa3-b4ae-7502-45f8-5eb4c5e36640@linaro.org>
 <247d48ae-d22f-4adc-07c0-74dbccfc9390@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <247d48ae-d22f-4adc-07c0-74dbccfc9390@denx.de>
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

On Thu, Jun 30, 2022 at 09:50:31PM +0200, Marek Vasut wrote:
> On 6/30/22 21:31, Krzysztof Kozlowski wrote:
> 
> Hi,
> 
> [...]
> 
> > > > > diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
> > > > > index b246d8386ba4a..05a19d3229830 100644
> > > > > --- a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
> > > > > +++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
> > > > > @@ -18,11 +18,18 @@ properties:
> > > > >      compatible:
> > > > >        items:
> > > > >          - const: fsl,imx8mp-media-blk-ctrl
> > > > > +      - const: simple-mfd
> > > > 
> > > > Not really... simple-mfd means devices is really simple and you just use
> > > > it to instantiate children. However this is not simple - it's a power
> > > > domain controller with several clocks and power domains as input.
> > > > 
> > > > It's not a simple MFD, but a regular device.
> > > 
> > > I don't understand this comment. The LDB bridge is literally two
> > > registers with a few bits in this media block controller register area.
> > > Can you expand on why the simple-mfd is unsuitable and what should it be
> > > instead ?
> > 
> > Looking at the bindings you have there 10 power domains, 10 input clocks
> > and a domain provider. The driver is also not that simple which is
> > another argument that this is not simple-mfd. Simply, it is not simple.
> > 
> > What I meant, is that probably you should populate children from the
> > driver instead of adding simple-mfd compatible. Once you add simple-mfd,
> > you cannot remove it and children cannot use anything from the parent.
> 
> No, I don't think so.
> 
> The block controller provides those 10 power domains, those are separate
> things controlled by separate registers within the block control register
> space.
> 
> This LDB bridge are two more completely unrelated registers which have
> nothing to do with those power domains . They are just in the same register
> block because they had to put those registers somewhere. And they are mixed
> literally in the middle of the register block, because there was space it
> seems. Hence the simple-mfd is I think the right thing here.

Was 'simple-mfd' missing or LDB bridge wasn't a child node? I though 
this was a no functional change patch. Seems more than just update the 
example.

'simple-mfd' is saying the child has 0 dependence on the parent. IMO, 
'syscon' contradicts that, but that's an all to common pattern. You are 
saying all the clocks (or any other resources) in the parent can be off 
and the LDB bridge is still functional.

Rob
