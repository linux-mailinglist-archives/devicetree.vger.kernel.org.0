Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7098969479D
	for <lists+devicetree@lfdr.de>; Mon, 13 Feb 2023 15:04:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229728AbjBMOE6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Feb 2023 09:04:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33910 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229581AbjBMOE5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Feb 2023 09:04:57 -0500
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54221DBF4
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 06:04:55 -0800 (PST)
Received: from rico.lan (unknown [159.196.93.152])
        by mail.codeconstruct.com.au (Postfix) with ESMTPSA id DE37120034;
        Mon, 13 Feb 2023 22:04:50 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=codeconstruct.com.au; s=2022a; t=1676297093;
        bh=Rqlv2sqC3TCOsNxDajqKf5TrX0e0ldaMazRHcAdox5Y=;
        h=Subject:From:To:Cc:Date:In-Reply-To:References;
        b=DIRZZdqGngeJpL61e8FmNJDXUh91fn2h6RfyVA7ijmQpB0hxt9dliRXy1EEqMiAIr
         QJkUxMMLbSVSCNX1pJAtXYEfiwPttzlLm9Ln8IZZxRRNFBJp9xDQY00bC4IvjGLdmM
         0xuWehqRc6RE4z3Zfcx/GmqzItE07VMqI2TkOXckldrPjQvKP1Rpv1d4WyTNEoeUOf
         jrwsJ1NJgQpza5gM3+4XaDrzbSY63fsp20aaRtXVdaom4s+N7v0eV3qiu4qXAkbVsa
         NriW9m15mybE2ZMva6kvmuQZJAgQWPg1q+/WzTRdfg/UVuYXYh1kE6zsdIvtM5s0uI
         jHi4M2mUSZQ9g==
Message-ID: <2528217bf1d43b834587cc0e399d7e86695bd390.camel@codeconstruct.com.au>
Subject: Re: [RFC PATCH] dt-bindings: Add AST2600 i3c controller binding
From:   Jeremy Kerr <jk@codeconstruct.com.au>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        devicetree@vger.kernel.org
Cc:     linux-aspeed@lists.ozlabs.org, linux-i3c@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Dylan Hung <dylan_hung@aspeedtech.com>,
        Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>
Date:   Mon, 13 Feb 2023 22:04:50 +0800
In-Reply-To: <71aeb3da-13a1-1c79-9fe6-f5c23d398394@linaro.org>
References: <5c047dd91390b9ee4cd8bca3ff107db37a7be4ac.1676273912.git.jk@codeconstruct.com.au>
         <7c6741e1-ae41-ba20-b859-736214c680e8@linaro.org>
         <91e9e815bed8c2eff19dbe6b3ed36d10c6edcbfd.camel@codeconstruct.com.au>
         <929a30fc-35f3-ab21-3a16-936ed69d5505@linaro.org>
         <80fa21969d9e0e7a123bd525199dbb40e79d47e3.camel@codeconstruct.com.au>
         <71aeb3da-13a1-1c79-9fe6-f5c23d398394@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.3-1 
MIME-Version: 1.0
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Krzysztof,

> > Yes, that's essentially what I'm looking for with this change -
> > particularly with the pullup config, which (as you say) could
> > arguably
> > be a pinctrl config instead.
>=20
> Depends, there was just a short sentence. If this is external
> resistor
> on the board, why this device needs such property (and none of other
> devices need...)? If this is internal pull up of I3C (and there is no
> other pin configuration possible, no other pins), it looks reasonable
> to me to have it here. But I am all guessing it...

It's the second case: there is a configurable pullup resistor in each of
the i3c controllers (or, more accurately: in the ast2600's glue
between the SoC and the I3C IP block).

The pullup configuration is controlled by the SoC "global" i3c
registers; a block shared by all of the SoC's i3c controllers. So, any
driver implementation would need to set up that global register
configuration on i3c controller init.

So, I can see two options for the binding (and consequently the driver
implementation):

 1) the sda-pullup-ohms property on the controller binding, which a
 driver implementation could set directly through the global register
 set

 2) define a pin controller on the global register block, allowing other
 (standard) DT pinctrl definitions to control the pullup calue. This
 would need a new driver implementation for the pin controller, but that
 shouldn't be too complex to implement.

For the binding proposed here, I've chosen (1). We can handle all of the
other (non-pullup-related) global register configuration by treating the
globals as a simple generic syscon device.

I'm happy to try (2) instead, if that's the better approach. However,
that may be over-engineering the binding spec (and consequently, the
necessary driver implementation) for just setting a register value.

From your second point:

> (and there is no other pin configuration possible, no other pins)

This is a fairly small and isolated component of the global ast2600 pin
configuration; the pullup value is set separately from the
already-implemented SoC-wide pinctrl. Merging the pullup values into
that wouldn't really fit the hardware interface mode though; this is a
separate IP block linked to the i3c controllers.

Let me know if you have any preferences on the approach to a biding
structure.

And Andrew: let me know if your experience with the ast2600 SoC's
pinctrl would suggest either option.

Cheers,


Jeremy
