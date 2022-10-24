Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BF87A60AADA
	for <lists+devicetree@lfdr.de>; Mon, 24 Oct 2022 15:42:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235952AbiJXNmL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Oct 2022 09:42:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54718 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236950AbiJXNlp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Oct 2022 09:41:45 -0400
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EDAC3B44AD
        for <devicetree@vger.kernel.org>; Mon, 24 Oct 2022 05:39:09 -0700 (PDT)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
        by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 29OCaRCi113583;
        Mon, 24 Oct 2022 07:36:27 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1666614988;
        bh=6K/i9fi94xWDruVAaZIhi7430TEoNrMb0QsLEkZcbqI=;
        h=Date:From:To:CC:Subject:References:In-Reply-To;
        b=zQE6C9G0qgJtErTTFjS9ldFPklocOexyDbWd4lpL5FW9mBXN0tTRXkci8C8v18jgf
         x/Q6QqIEjzeCoL9Cns7/PxQAb2k+c7CPUtZHVJdtSEqITrF0cUiSp9Z35/CwfOWYp+
         IXRdPHJ7FX+SG8sSCqyVTXDOJ9VddJDBFoRl9msA=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
        by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 29OCaR5W093508
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Mon, 24 Oct 2022 07:36:27 -0500
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Mon, 24
 Oct 2022 07:36:27 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Mon, 24 Oct 2022 07:36:27 -0500
Received: from ubuntu (ileaxei01-snat2.itg.ti.com [10.180.69.6])
        by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 29OCaLTh066685;
        Mon, 24 Oct 2022 07:36:23 -0500
Date:   Mon, 24 Oct 2022 05:36:20 -0700
From:   Matt Ranostay <mranostay@ti.com>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
CC:     <lee@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <devicetree@vger.kernel.org>
Subject: Re: [PATCH] dt-bindings: mfd: ti,am3359-tscadc: change clock-names
 property to enum
Message-ID: <Y1aGxBi/8JvLcOoO@ubuntu>
References: <20221024100706.386286-1-mranostay@ti.com>
 <20221024133420.72c2d8ed@xps-13>
MIME-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221024133420.72c2d8ed@xps-13>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Oct 24, 2022 at 01:34:20PM +0200, Miquel Raynal wrote:
> Hi Matt,
> 
> mranostay@ti.com wrote on Mon, 24 Oct 2022 03:07:06 -0700:
> 
> > Several J7 platforms use adc_tsc_fck instead of fck for clock naming. To
> > avoid warnings from dt-schema on invalid clock naming; create an enum with
> > both fck, and adc_tsc_fck options.
> 
> Looks like I've missed this definition when introducing the bindings.
> But in practice this property looks very k3 specific and is not used
> anywhere else so would it be worth considering renaming the properties
> in the DT instead? There won't be any backward compatibility issue
> apparently.
>

That should work as well, and probably is a better solution.
I'll send a patchset in the near future with those changes.

- Matt


> > Signed-off-by: Matt Ranostay <mranostay@ti.com>
> > ---
> >  Documentation/devicetree/bindings/mfd/ti,am3359-tscadc.yaml | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/mfd/ti,am3359-tscadc.yaml b/Documentation/devicetree/bindings/mfd/ti,am3359-tscadc.yaml
> > index 34bf6a01436f..fbb44531ed88 100644
> > --- a/Documentation/devicetree/bindings/mfd/ti,am3359-tscadc.yaml
> > +++ b/Documentation/devicetree/bindings/mfd/ti,am3359-tscadc.yaml
> > @@ -28,7 +28,9 @@ properties:
> >      maxItems: 1
> >  
> >    clock-names:
> > -    const: fck
> > +    enum:
> > +      - fck
> > +      - adc_tsc_fck
> >  
> >    dmas:
> >      items:
> 
> 
> Thanks,
> Miquèl
