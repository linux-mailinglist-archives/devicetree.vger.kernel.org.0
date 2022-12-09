Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ADE54647F9A
	for <lists+devicetree@lfdr.de>; Fri,  9 Dec 2022 09:54:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229626AbiLIIyo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Dec 2022 03:54:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56048 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229580AbiLIIyn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Dec 2022 03:54:43 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D457A13DD8
        for <devicetree@vger.kernel.org>; Fri,  9 Dec 2022 00:54:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1670576082; x=1702112082;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=Kx9Teauir4KHO/Hg63QEhYfjjOL2ayLmdRWTNOSGJuY=;
  b=bhG9rFB8GIWL4Q9wxJ39+oKgJF+gTMysSoEvJjBL8Ar4jxq6CYEd9PwE
   /PsA0DgSVxwXds4g6mgTbAW2LX57PLBVYWlaa/ZggBJ7a28OWiEq/C9yx
   ujybPbYkmif6M7kKZ1J/nrFebMVofERVJrEFH4fRJP839enU+zFZDfSA0
   LPUiwZBOI6X47En5Qnc6JY7XHxR0Gv5t1K7CYn98qFWBUAwbtWQ497lNG
   1bsyKEVimgp6dApPiap2Li0QYvF40XYOb9ve9NmTM77yFugkjYNkL/dgv
   QCXspfsOKLJRj3ZLz4X5i2jQBEDTwOlGlMHyHisGW3uTzwlJrSyHN203j
   w==;
X-IronPort-AV: E=Sophos;i="5.96,230,1665439200"; 
   d="scan'208";a="27857976"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 09 Dec 2022 09:54:40 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Fri, 09 Dec 2022 09:54:40 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Fri, 09 Dec 2022 09:54:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1670576080; x=1702112080;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=Kx9Teauir4KHO/Hg63QEhYfjjOL2ayLmdRWTNOSGJuY=;
  b=DSDq/+c9ghgNA5+0wtZICTAjDZHx589Rtm99+Avg5w8oq9M/uLHhaUXz
   BNUVDO3dvd9FSqOiZ3n3FLPGRx7Zb2t3mlGNfjaTkXLNrkwWb3KzTkcm2
   x9cLUKO3/7EWu1Jdp+n3JZ5to8MpYF4QyC2+e2v3LCaw7RIqSMUYt5qY3
   n/csUq0kT254UPQml1e9thlI80dLSx8xtrt9R/L9ODjbWp4B4RUwl+oAz
   ykn5fUBxBCI1kMlueQhV94uPf4qU5NugSvXDbKJ3RyPwC+UNAhtRLFpVa
   hxAxXO2LiiSRQmCW3oJDjwTBfUjWljV3AGK4vufPquWkHFu0ha7wPP1md
   Q==;
X-IronPort-AV: E=Sophos;i="5.96,230,1665439200"; 
   d="scan'208";a="27857975"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 09 Dec 2022 09:54:40 +0100
Received: from steina-w.localnet (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id DE511280071;
        Fri,  9 Dec 2022 09:54:39 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Marek Vasut <marex@denx.de>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: drm/bridge: ti-sn65dsi83: Add enable delay property
Date:   Fri, 09 Dec 2022 09:54:36 +0100
Message-ID: <7463917.EvYhyI6sBW@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <07fbe219-9034-65f6-963a-037de9bb6d79@linaro.org>
References: <20221209083339.3780776-1-alexander.stein@ew.tq-group.com> <20221209083339.3780776-2-alexander.stein@ew.tq-group.com> <07fbe219-9034-65f6-963a-037de9bb6d79@linaro.org>
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

Hello Krzysztof,

thanks for the fast feedback.

Am Freitag, 9. Dezember 2022, 09:39:49 CET schrieb Krzysztof Kozlowski:
> On 09/12/2022 09:33, Alexander Stein wrote:
> > It takes some time until the enable GPIO has settled when turning on.
> > This delay is platform specific and may be caused by e.g. voltage
> > shifts, capacitors etc.
> > 
> > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> > ---
> > 
> >  .../devicetree/bindings/display/bridge/ti,sn65dsi83.yaml      | 4 ++++
> >  1 file changed, 4 insertions(+)
> > 
> > diff --git
> > a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> > b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> > index 48a97bb3e2e0d..3f50d497cf8ac 100644
> > --- a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> > +++ b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> > 
> > @@ -32,6 +32,10 @@ properties:
> >      maxItems: 1
> >      description: GPIO specifier for bridge_en pin (active high).
> > 
> > +  ti,enable-delay-us:
> > +    default: 10000
> > +    description: Enable time delay for enable-gpios
> 
> Aren't you now mixing two separate delays? One for entire block on (I
> would assume mostly fixed delay) and one depending on regulators
> (regulator-ramp-delay, regulator-enable-ramp-delay). Maybe you miss the
> second delays in your power supply? If so, the first one might be fixed
> and hard-coded in the driver?

Apparently there are two different delays: reset time (t_reset) of 10ms as 
specified by datasheet. This is already ensured by a following delay after 
requesting enable_gpio as low and switching the GPIO to low in disable path.

When enabling this GPIO it takes some time until it is valid on the chip, this 
is what this series is about. It's highly platform specific.

Unfortunately this is completely unrelated to the vcc-supply regulator. This 
one has to be enabled before the enable GPIO can be enabled. So there is no 
regulator-ramp-delay.

Best regards,
Alexander



