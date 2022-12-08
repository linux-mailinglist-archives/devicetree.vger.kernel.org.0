Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BAF7C6468CF
	for <lists+devicetree@lfdr.de>; Thu,  8 Dec 2022 06:59:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229523AbiLHF7U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Dec 2022 00:59:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47226 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229486AbiLHF7T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Dec 2022 00:59:19 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3EA416F0FC
        for <devicetree@vger.kernel.org>; Wed,  7 Dec 2022 21:59:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1670479158; x=1702015158;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=T8GP9HBNN8u4TgS3Cfxnp4Ee0zlrtM1U7+RBzmaiZbc=;
  b=IPDifZI+n92dzNZD078+tPnFnUoeZfz/vTJSqzk4m7QZ+r0A5ZkMcsT4
   /pAh12XZ3vODezfIeSGY2IRAmmJcjVwAgkh/3yLo+9iLKpxL3iJIbut+2
   G6U4JhxDzVE5bdR0e6isyuytUexJPm9S75+yxu6h+mcaUmIDrr5E7ejal
   Mkj91gRKbVF5iOIvM4w/u/EEZy8l5wHFRqD/NLeZFN8ANOKd5WnJV5G2J
   pQWq3opMMZ63GAo0gBCM3+Diyq1lrtcuPM+TMjcYgcyENTMPsxeEJXjNn
   7gIbqekoL8rYsFZGkcm4Q1EhAGd996xnLBj/ZP7PS9R6z0q4vfVT5spCF
   Q==;
X-IronPort-AV: E=Sophos;i="5.96,226,1665439200"; 
   d="scan'208";a="27824370"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 08 Dec 2022 06:59:16 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Thu, 08 Dec 2022 06:59:16 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Thu, 08 Dec 2022 06:59:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1670479156; x=1702015156;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=T8GP9HBNN8u4TgS3Cfxnp4Ee0zlrtM1U7+RBzmaiZbc=;
  b=hDlNmNkAJN0IbccOQvCcy0rK9BRELoYkCQ/DzNwTKp4EC2tejRjZEqAc
   K6O4KiU+xjHRRRiEcDQO5vCtT4Y8ad6PieuzzEBg8w6JrQEXOcLSF+N/8
   ibj/SBLzfPzih3yxJ73ckM7TgWWVnquDBNL4AQxVifZr7etzyAJEg5CWC
   qmaDn7wBV2TwVo0hnQSdYHlUGAeiLO4TsF27O9UY1puYA2X1BRSFnhWkN
   bnhyahwshw+mP6h+0vCokn/gReQw0CxDlQ2QVArBpKDdYrtoF72gtxV0V
   1GFv4njm1rALBIf+C0usJqN8+GE1WGkRtbwPyQ2DSmYdbtr7tHDAcGZnW
   w==;
X-IronPort-AV: E=Sophos;i="5.96,226,1665439200"; 
   d="scan'208";a="27824368"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 08 Dec 2022 06:59:16 +0100
Received: from steina-w.localnet (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 2CD77280071;
        Thu,  8 Dec 2022 06:59:16 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Marek Vasut <marex@denx.de>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/2] dt-bindings: lcdif: Add optional power-domain
Date:   Thu, 08 Dec 2022 06:59:12 +0100
Message-ID: <1839665.tdWV9SEqCh@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <00789ae3-7fd7-e662-6348-8a31a72ee589@denx.de>
References: <20221207151400.1572582-1-alexander.stein@ew.tq-group.com> <20221207151400.1572582-2-alexander.stein@ew.tq-group.com> <00789ae3-7fd7-e662-6348-8a31a72ee589@denx.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Mittwoch, 7. Dezember 2022, 17:00:22 CET schrieb Marek Vasut:
> On 12/7/22 16:14, Alexander Stein wrote:
> > i.MX8MP requires a power-domain for this peripheral to use. Add it as
> > an optional property.
> > 
> > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> > ---
> > 
> >   Documentation/devicetree/bindings/display/fsl,lcdif.yaml | 3 +++
> >   1 file changed, 3 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
> > b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml index
> > 793e8eccf8b8b..9d9fb5ad587c2 100644
> > --- a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
> > +++ b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
> > 
> > @@ -52,6 +52,9 @@ properties:
> >     interrupts:
> >       maxItems: 1
> > 
> > +  power-domains:
> > +    maxItems: 1
> > +
> > 
> >     port:
> >       $ref: /schemas/graph.yaml#/properties/port
> >       description: The LCDIF output port
> 
> Should this be required on mx8mp then ?

I'm hesitating to add a required property later on. But I'm okay with both.
Rob, Krzysztof: Any preference here? Shall power-domains be made required for 
fsl,imx8mp-lcdif only?

Best regards,
Alexander



