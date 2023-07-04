Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D672F7469BD
	for <lists+devicetree@lfdr.de>; Tue,  4 Jul 2023 08:34:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230050AbjGDGek (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Jul 2023 02:34:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229610AbjGDGei (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Jul 2023 02:34:38 -0400
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE1111AA;
        Mon,  3 Jul 2023 23:34:35 -0700 (PDT)
Received: from [192.168.14.220] (unknown [159.196.94.230])
        by mail.codeconstruct.com.au (Postfix) with ESMTPSA id AD3C02005F;
        Tue,  4 Jul 2023 14:34:25 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=codeconstruct.com.au; s=2022a; t=1688452468;
        bh=4a712HWYYivVC3R/cYHgxezT1C9hARmv+s6qvLxS/Wo=;
        h=Subject:From:To:Cc:Date:In-Reply-To:References;
        b=J1do8u2/GXfSj7DcSoQrozQD6M0CI3yGHIbfA1WC5lcRGmhWKuuBPhwiyMktW6vQO
         IDn1b86idQ5uhcxGJQXUaeEeqBxvv64hX6ImhvrKScbNhlkAqzi/pS7JL2Hylob7lH
         k94EtrqbZgjIJ/BOEi+ce+yc5ytjegpBW1LbHBL93qVzzEHzsWOabmmfA4h+tx4mgs
         yNp0G+be44TkE4ZiK9179GoLswF7548kKsDre0FhvsMcZbB4SsCpf0UpJnhMSHgQG8
         UAFkHYR5DKmWDDv+oVua5UNwdR05kKxoBeaKvHJU9O9fPuaOymlbgje8xot6gq53D4
         H/Bj5oinCtIiQ==
Message-ID: <07fed8cf89f64fb3064e4363889cfd1b1512223e.camel@codeconstruct.com.au>
Subject: Re: [PATCH 1/3] dt-bindings: i3c: Add mctp-controller property
From:   Matt Johnston <matt@codeconstruct.com.au>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     linux-i3c@lists.infradead.org, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
        "David S. Miller" <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Jeremy Kerr <jk@codeconstruct.com.au>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Date:   Tue, 04 Jul 2023 14:34:25 +0800
In-Reply-To: <7b8e0f70-a6d2-16e4-5615-004b930298c5@linaro.org>
References: <20230703053048.275709-1-matt@codeconstruct.com.au>
         <20230703053048.275709-2-matt@codeconstruct.com.au>
         <CAGE=qrrqE3Vj1Bs+cC51gKPDmsqMTyHEAJhsrGCyS_jYKf42Gw@mail.gmail.com>
         <d29fc42c04f2e1142b0a196ef7df2d74335cec2e.camel@codeconstruct.com.au>
         <7b8e0f70-a6d2-16e4-5615-004b930298c5@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.1-0ubuntu1 
MIME-Version: 1.0
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 2023-07-03 at 16:16 +0200, Krzysztof Kozlowski wrote:
> On 03/07/2023 10:14, Matt Johnston wrote:
> > On Mon, 2023-07-03 at 09:15 +0200, Krzysztof Kozlowski wrote:
> > > On Mon, 3 Jul 2023 at 07:31, Matt Johnston <matt@codeconstruct.com.au=
> wrote:
> > > >=20
> > > > +  mctp-controller:
> > > > +    description: |
> > > > +      Indicates that this bus hosts MCTP-over-I3C target devices.
> > >=20
> > > I have doubts you actually tested it - there is no type/ref. Also,
> > > your description is a bit different than existing from dtschema. Why?
> > > Aren't these the same things?
> >=20
> > Ah, I'll add=20
> > $ref: /schemas/types.yaml#/definitions/flag
>=20
> Although does not matter, but use the same as in dtschema.
> type: boolean

OK, thanks.

> > For the description, do you mean it differs to the other properties in
> > i3c.yaml, or something else?
>=20
> It differs than existing mctp-controller property. If this was on
> purpose, please share a bit more why. If not, maybe use the same
> description?

The mctp-controller property has the same meaning as for I2C, so I'll use t=
he
existing I2C text for I3C as well. That will also be more suitable if in
future Linux works as an I3C target device (currently it's controller only)=
.

    "indicates that the system is accessible via this bus as an endpoint fo=
r
     MCTP over I3C transport."

Thanks,
Matt
