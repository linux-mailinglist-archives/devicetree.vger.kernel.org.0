Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 71C40646949
	for <lists+devicetree@lfdr.de>; Thu,  8 Dec 2022 07:32:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229787AbiLHGcr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Dec 2022 01:32:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230035AbiLHGc0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Dec 2022 01:32:26 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0EC19D2F4
        for <devicetree@vger.kernel.org>; Wed,  7 Dec 2022 22:31:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1670481113; x=1702017113;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=1XwlSPJYQoDb5djKNg20xU0ESkaG40RvAlk42JH3DpE=;
  b=KA9bzFuCXkGO06WKa6YBDpCyy+IwDYAyFv+oA4DDJ/GcS5uv8eTqoMWI
   AeCTM7YjLnzeOecnNe/U+l5+p8dRd8oVPByMiSAzYIoWvZUrwYqwUWZuZ
   jAFETRi4Cqq6+3pOJo0h5jXTUZWYy/++QbDqxhYA1Unj/rJPSr/cR3W+H
   GVKp+ctY9jJ5E6qhYCy2LOQXI+7Z4KMQvQpK9w00DOS8OAjVIkgA9sIG7
   RBZvZnqsM4KYD9EaiFQsHK5l5Hh34uT7XURXH3ceTjON3V41fWCGwMiZl
   pz4nFKXDizwN0ocnBBGYgiD2KxoTayLUrelFWxl8R/jAFsehmk5lFEgkW
   Q==;
X-IronPort-AV: E=Sophos;i="5.96,227,1665439200"; 
   d="scan'208";a="27824962"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 08 Dec 2022 07:31:50 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Thu, 08 Dec 2022 07:31:51 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Thu, 08 Dec 2022 07:31:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1670481110; x=1702017110;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=1XwlSPJYQoDb5djKNg20xU0ESkaG40RvAlk42JH3DpE=;
  b=iF17+7VTAT+EuO9vpap3N6vOkLN7230Xskm0pNwRIewqe8Z4rcMb64jK
   ZaeB1t8PwHIZ07lB5qg7IK5b4FGpC5yR95D5GzxThVTmEu1Suq5eYpz7T
   it1nNeEJ6mMn3NjwQq1PKtgHbvNC/gTLKF1eqe1j5vn1fXS7K7e8+Ahq0
   x591RYtKd6QYc3FHbEmWXXkHNYQ2OjQZ5TvZ0DReslmYl0vfrom7g3Nt7
   SSgFd+x1fIp9pSg8jHmQDLt9q6tuDAtrBM1+k7CuCAP3vmuv6DwyKRpUY
   A0Ij5O3yG1nSLPRHqEZDIwBPlOaJ06SByTGNC1Z735kIltJxFeDCnuCGx
   w==;
X-IronPort-AV: E=Sophos;i="5.96,227,1665439200"; 
   d="scan'208";a="27824961"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 08 Dec 2022 07:31:50 +0100
Received: from steina-w.localnet (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id A9EB0280071;
        Thu,  8 Dec 2022 07:31:50 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Marek Vasut <marex@denx.de>
Cc:     David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: lcdif: Fix clock constraints for imx8mp
Date:   Thu, 08 Dec 2022 07:31:46 +0100
Message-ID: <2861512.e9J7NaK4W3@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <e5d8f530-9814-48eb-76b3-e4712300466d@denx.de>
References: <20221207151400.1572582-1-alexander.stein@ew.tq-group.com> <e5d8f530-9814-48eb-76b3-e4712300466d@denx.de>
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

Hello Marek,

Am Mittwoch, 7. Dezember 2022, 16:59:50 CET schrieb Marek Vasut:
> On 12/7/22 16:13, Alexander Stein wrote:
> > i.MX8MP uses 3 clocks, so soften the restrictions for clocks &
> > clock-names.
> > 
> > Fixes: f5419cb0743f ("dt-bindings: lcdif: Add compatible for i.MX8MP")
> > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> > ---
> > 
> >   Documentation/devicetree/bindings/display/fsl,lcdif.yaml | 4 +++-
> >   1 file changed, 3 insertions(+), 1 deletion(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
> > b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml index
> > 876015a44a1e6..793e8eccf8b8b 100644
> > --- a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
> > +++ b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
> > 
> > @@ -70,7 +70,9 @@ allOf:
> >         properties:
> >           compatible:
> >             contains:
> > -            const: fsl,imx6sx-lcdif
> > +            enum:
> > +              - fsl,imx6sx-lcdif
> > +              - fsl,imx8mp-lcdif
> > 
> >       then:
> >         properties:
> >           clocks:
> Reviewed-by: Marek Vasut <marex@denx.de>

Thanks!

> btw you might want to update the clock-names and clock proerty order in
> imx8mp.dtsi to match the clock-names order in these bindings.

The lcdif nodes are not yet in linux-next ;-) So its probably a local commit 
on your side. But yes, the upcoming patches will address this.

Best regards,
Alexander



