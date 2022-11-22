Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 989A9633E9A
	for <lists+devicetree@lfdr.de>; Tue, 22 Nov 2022 15:13:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231318AbiKVON0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Nov 2022 09:13:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36226 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233194AbiKVONW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Nov 2022 09:13:22 -0500
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 446252BB0F
        for <devicetree@vger.kernel.org>; Tue, 22 Nov 2022 06:13:21 -0800 (PST)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 2AMEDCjT009946;
        Tue, 22 Nov 2022 08:13:12 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1669126392;
        bh=V8LkFZIM3tGLhnTmS1ipkc+xFqua74H2fHbU7YYtILA=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=N+Q/20DwesScmiGcoDN/AsLpjHH1iEY75mbL0+/Dh/S18VWE5+hcf9cLYUrlYNcWQ
         NqXot91yTCNqAI8iMxYqJroEQw+7e/a8EXCqZWD6gf3FoRkU+Cy0oA2bduWEzmbBaJ
         OJKZOI01FkFZChXXSeO33IG4EE8oQZpO7t8/2/R0=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 2AMEDCBI029736
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 22 Nov 2022 08:13:12 -0600
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16; Tue, 22
 Nov 2022 08:13:12 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16 via
 Frontend Transport; Tue, 22 Nov 2022 08:13:12 -0600
Received: from ubuntu (ileaxei01-snat.itg.ti.com [10.180.69.5])
        by lelv0326.itg.ti.com (8.15.2/8.15.2) with SMTP id 2AMED3Z5031729;
        Tue, 22 Nov 2022 08:13:05 -0600
Date:   Tue, 22 Nov 2022 06:13:01 -0800
From:   Matt Ranostay <mranostay@ti.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
CC:     <r-gunasekaran@ti.com>, <rogerq@kernel.org>, <vkoul@kernel.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <vigneshr@ti.com>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH 1/2] dt-bindings: phy-j721e-wiz: add j721s2 compatible
 string
Message-ID: <Y3zY7QIpj+7gPvO0@ubuntu>
References: <20221122092203.762308-1-mranostay@ti.com>
 <20221122092203.762308-2-mranostay@ti.com>
 <3160a4dd-f8c0-5cce-8c15-c9a4c173ef1e@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <3160a4dd-f8c0-5cce-8c15-c9a4c173ef1e@linaro.org>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Nov 22, 2022 at 11:19:09AM +0100, Krzysztof Kozlowski wrote:
> On 22/11/2022 10:22, Matt Ranostay wrote:
> > Add ti,j721s2-wiz-10g compatible string to binding documentation.
> > 
> > Signed-off-by: Matt Ranostay <mranostay@ti.com>
> > ---
> >  Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml b/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
> > index a9e38739c010..b837748f33d1 100644
> > --- a/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
> > +++ b/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
> > @@ -18,6 +18,7 @@ properties:
> >        - ti,am64-wiz-10g
> >        - ti,j7200-wiz-10g
> >        - ti,j784s4-wiz-10g
> > +      - ti,j721s2-wiz-10g
> >  
> Keep items sorted.
>

Noted. Will correct in v2

- Matt

> Best regards,
> Krzysztof
> 
