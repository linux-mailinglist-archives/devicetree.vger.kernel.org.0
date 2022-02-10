Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4A8034B0CD3
	for <lists+devicetree@lfdr.de>; Thu, 10 Feb 2022 12:56:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233074AbiBJL4U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Feb 2022 06:56:20 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:50030 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232819AbiBJL4T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Feb 2022 06:56:19 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D822C25CF
        for <devicetree@vger.kernel.org>; Thu, 10 Feb 2022 03:56:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1644494180; x=1676030180;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=fATlLhTKWXs6xTFfN84T/G/7A6dLzbEDLBTtG/3uVi0=;
  b=aeIuKzuHE82MfA3bTfVMCNjjjgbQAce61/fsbMCIUjE6gyUSzlH0+lD3
   21jj7zHkVrLBk14F4aRcQOI/zYWxzLHE5Cx3MMWVgrYT4xKHLpcxxyf3X
   BoretAiOL2UAAb2+Np1m6skYYZ7rVqeY4QYLn8spBEXY3/GdE9J/bYQKf
   frkf34B/PozKnb40qzEgzntH5kA9bAoAIE9mrcMDBZzRxBeOWreDpDKA6
   LDAg+//Y5S4ytGC7b0/Qn1+OdC3NyvLhdhoNaX0arK8CSp9MHA0+uC06n
   c0xHyoSbCsoWgq7CEbT6z9fNcDCaQ4/8gPpDF0S7neUZyj96WRXBiUYij
   w==;
X-IronPort-AV: E=Sophos;i="5.88,358,1635199200"; 
   d="scan'208";a="22014300"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 10 Feb 2022 12:56:18 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Thu, 10 Feb 2022 12:56:18 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Thu, 10 Feb 2022 12:56:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1644494178; x=1676030178;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=fATlLhTKWXs6xTFfN84T/G/7A6dLzbEDLBTtG/3uVi0=;
  b=RE4CqAmNiBp+U4QccVaANh2SjAp0tRAH2XLWi2ErkqDyUiGYLEdnUlzj
   /2eR3Y+/xrWL36Dln6/zjmCz1kI+v5t3cfUYnQb2cKs2OkS7wqFTOyN9m
   YStD/jECotGpR0Az/bcgBGb8yyAvcJVLZUFZA5XiXi4OFToc2r79AE4iJ
   S8Ep1sE1V8th1j7CQRf/AOuswNwQbGu76Xo2+GK1SFrxMnfAAFhWzCm1D
   E/959Y/qPoLZZaD6HxRXOPCykkhVsQRmsjIcqVt6H6PtKnTj/IW73I4xU
   RiRzrYavFmawgFpa6I61xprtDvnW9ljAs326tXSQJLAwMmincA/Ii8Ow0
   Q==;
X-IronPort-AV: E=Sophos;i="5.88,358,1635199200"; 
   d="scan'208";a="22014299"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 10 Feb 2022 12:56:18 +0100
Received: from steina-w.localnet (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id EE66D280065;
        Thu, 10 Feb 2022 12:56:17 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh@kernel.org>
Cc:     Joakim Zhang <qiangqing.zhang@nxp.com>,
        "David S . Miller" <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: (EXT) Re: [PATCH 1/1] dt-bindings: net: fsl, fec: Add nvmem-cells / nvmem-cell-names properties
Date:   Thu, 10 Feb 2022 12:56:15 +0100
Message-ID: <3585792.irdbgypaU6@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <YgM09mGTZv3U5nBT@robh.at.kernel.org>
References: <20220126144748.246073-1-alexander.stein@ew.tq-group.com> <YgM09mGTZv3U5nBT@robh.at.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

Am Mittwoch, 9. Februar 2022, 04:28:54 CET schrieb Rob Herring:
> On Wed, Jan 26, 2022 at 03:47:48PM +0100, Alexander Stein wrote:
> > These properties are inherited from ethernet-controller.yaml.
> > This fixes the dt_binding_check warning:
> > imx8mm-tqma8mqml-mba8mx.dt.yaml: ethernet@30be0000: 'nvmem-cell-names',
> > 'nvmem-cells' do not match any of the regexes: 'pinctrl-[0-9]+'
> > 
> > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> > ---
> > 
> >  Documentation/devicetree/bindings/net/fsl,fec.yaml | 4 ++++
> >  1 file changed, 4 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/net/fsl,fec.yaml
> > b/Documentation/devicetree/bindings/net/fsl,fec.yaml index
> > daa2f79a294f..73616924fa29 100644
> > --- a/Documentation/devicetree/bindings/net/fsl,fec.yaml
> > +++ b/Documentation/devicetree/bindings/net/fsl,fec.yaml
> > 
> > @@ -121,6 +121,10 @@ properties:
> >    mac-address: true
> > 
> > +  nvmem-cells: true
> 
> Need to define how many.
> 
> > +
> > +  nvmem-cell-names: true
> 
> And what the names are.

Thanks for the feedback. Do I really have to copy the following lines from 
Documentation/devicetree/bindings/net/ethernet-controller.yaml to 
fsl,fec.yaml?

>   nvmem-cells:
>     maxItems: 1
>     
>     description:
>       Reference to an nvmem node for the MAC address
>   
>   nvmem-cell-names:
>     const: mac-address

This feels wrong to me. Apparently the settings from ethernet-controller.yaml 
take effect, e.g. adding a 2nd entry raises warnings. In the end I followed 
the example from Documentation/devicetree/bindings/net/engleder,tsnep.yaml, so 
I assumed it's okay going this way.

Best regards,
Alexander




