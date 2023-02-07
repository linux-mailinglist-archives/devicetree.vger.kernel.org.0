Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 13C3068D724
	for <lists+devicetree@lfdr.de>; Tue,  7 Feb 2023 13:47:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229992AbjBGMrk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Feb 2023 07:47:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231539AbjBGMri (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Feb 2023 07:47:38 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D77515565
        for <devicetree@vger.kernel.org>; Tue,  7 Feb 2023 04:47:37 -0800 (PST)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <str@pengutronix.de>)
        id 1pPNNj-00047M-Qv; Tue, 07 Feb 2023 13:47:31 +0100
Received: from str by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <str@pengutronix.de>)
        id 1pPNNj-0007tL-JA; Tue, 07 Feb 2023 13:47:31 +0100
Date:   Tue, 7 Feb 2023 13:47:31 +0100
From:   Steffen Trumtrar <s.trumtrar@pengutronix.de>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Dinh Nguyen <dinguyen@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de
Subject: Re: [PATCH 2/2] dt-bindings: altera: Add enclustra mercury PE1
Message-ID: <20230207124731.GB793@pengutronix.de>
References: <20230207094101.522240-1-s.trumtrar@pengutronix.de>
 <20230207094101.522240-2-s.trumtrar@pengutronix.de>
 <6ee3eeef-3443-aa74-16a4-6854c166c378@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6ee3eeef-3443-aa74-16a4-6854c166c378@linaro.org>
X-Sent-From: Pengutronix Hildesheim
X-URL:  http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: str@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Feb 07, 2023 at 11:48:56AM +0100, Krzysztof Kozlowski wrote:
> On 07/02/2023 10:41, Steffen Trumtrar wrote:
> > Add binding for the enclustra PE1 baseboard from enclustra GmbH.
> > 
> > Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> > ---
> >  Documentation/devicetree/bindings/arm/altera.yaml | 1 +
> 
> Bindings are before the usage. Otherwise you have checkpatch error.
> 
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/arm/altera.yaml b/Documentation/devicetree/bindings/arm/altera.yaml
> > index 3eee03aa935c..6f306f9f2f9d 100644
> > --- a/Documentation/devicetree/bindings/arm/altera.yaml
> > +++ b/Documentation/devicetree/bindings/arm/altera.yaml
> > @@ -32,6 +32,7 @@ properties:
> >          items:
> >            - enum:
> >                - google,chameleon-v3
> > +              - enclustra,mercury-pe1
> 
> Messed order, keep alphabetical order.
> 
> >            - const: enclustra,mercury-aa1
> >            - const: altr,socfpga-arria10
> >            - const: altr,socfpga
> 

Ack.

Thanks,
Steffen Trumtrar

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
