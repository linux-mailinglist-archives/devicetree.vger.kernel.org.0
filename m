Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 067FF538CE0
	for <lists+devicetree@lfdr.de>; Tue, 31 May 2022 10:29:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244859AbiEaI3W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 May 2022 04:29:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41606 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244855AbiEaI3V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 May 2022 04:29:21 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6BC87612B0
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 01:29:20 -0700 (PDT)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1nvxFY-0001zF-6i; Tue, 31 May 2022 10:29:12 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1nvxFV-0003F0-IZ; Tue, 31 May 2022 10:29:09 +0200
Date:   Tue, 31 May 2022 10:29:09 +0200
From:   Marco Felsch <m.felsch@pengutronix.de>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     robert.foss@linaro.org, laurent.pinchart@ideasonboard.com,
        jernej.skrabec@gmail.com, jonas@kwiboo.se, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, sam@ravnborg.org,
        maxime@cerno.tech, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, kernel@pengutronix.de
Subject: Re: (EXT) [PATCH 5/6] dt-bindings: drm/bridge: ti-sn65dsi83: Add
 reset controller documentation
Message-ID: <20220531082909.hyr4zjalm3fu5ng6@pengutronix.de>
References: <20220530150548.1236307-1-m.felsch@pengutronix.de>
 <20220530150548.1236307-6-m.felsch@pengutronix.de>
 <5789362.MhkbZ0Pkbq@steina-w>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5789362.MhkbZ0Pkbq@steina-w>
User-Agent: NeoMutt/20180716
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Alexander,

On 22-05-31, Alexander Stein wrote:
> Hi Marco,
> 
> Am Montag, 30. Mai 2022, 17:05:48 CEST schrieb Marco Felsch:
> > The bridge device can now also be enabled/disabled by an external reset
> > controller. So the device now supports either enable/disable by simple
> > GPIO or by an Reset-Controller.
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  .../devicetree/bindings/display/bridge/ti,sn65dsi83.yaml    | 6 ++++++
> >  1 file changed, 6 insertions(+)
> > 
> > diff --git
> > a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> > b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml index
> > 7306b9874dc3..eff8360c184e 100644
> > --- a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> > +++ b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> > @@ -35,6 +35,12 @@ properties:
> >    vcc-supply:
> >      description: A 1.8V power supply (see regulator/regulator.yaml).
> > 
> > +  resets:
> > +    maxItems: 1
> > +    description: |
> > +      Reset specifier for bridge_en pin. This is required only if the
> > brdige_en +      pin is connected to a reset controller.
> > +
> >    ports:
> >      $ref: /schemas/graph.yaml#/properties/ports
> 
> Maybe it should be added here, that 'resets' is an alternative to 'enable-
> gpios' as both are essentially controlling the same pin from the bridge.

I mention the bridge_en pin two times :) But I could also add that this
is an alternative to the enable-gpios. Maybe it even more clear than.

Regards,
  Marco

> 
> Best regards
> Alexander
> 
> 
> 
