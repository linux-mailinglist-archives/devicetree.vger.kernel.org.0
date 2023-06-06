Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 54419724218
	for <lists+devicetree@lfdr.de>; Tue,  6 Jun 2023 14:29:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231883AbjFFM3f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jun 2023 08:29:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60278 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229835AbjFFM3f (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jun 2023 08:29:35 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9529010C7
        for <devicetree@vger.kernel.org>; Tue,  6 Jun 2023 05:29:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1686054572; x=1717590572;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=IoROUOZF8CE9WZ6SE+5jmL2spAKJFIqqLTf0QJmwNlI=;
  b=fyGYTVs96VCoySTRj0PQUNY7cLP/is2kuDryFw+jwOP03S1qKLllGO8I
   BJoQl6gSKp7WUMljAg7YN0HudfU1Puq8yiXWd/iHKgKyousXqUd0wL12S
   26wFCnLdhLyi6q1Sf6XEZ8fsP7oW9lefx/+0bYObsSLzEobFWSD2lTIQR
   ICPDc5mbZ6IBlMam1sPsTWL/A0BBFFkr5f/Sff8SBUEkpAR0/ba4CffCS
   ZUU7AKuJBvcoQR7AU/HnaRzL917acVML7KiOvgwUhoIUck05oh9yUB0vb
   PpuvlqfAYpoomYGy9vL0a6nHbUJwQey88GzvcKTA1RCi+SErsons0a1J3
   Q==;
X-IronPort-AV: E=Sophos;i="6.00,221,1681164000"; 
   d="scan'208";a="31303690"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 06 Jun 2023 14:29:30 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 06 Jun 2023 14:29:30 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 06 Jun 2023 14:29:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1686054570; x=1717590570;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=IoROUOZF8CE9WZ6SE+5jmL2spAKJFIqqLTf0QJmwNlI=;
  b=lrIN4e88aCItbFptWSGElrYUvJ18XKhfXeIicj0pCswiJwN37hUesxBy
   PVKtWxg4PweMs5bOxHklkf4lAacaZTiM5k06YMm/D8dkaMXPdlVgK7ubg
   +Zz/0c/MQAwsmqHZTLRTRzlfeAdwExOvBPWN2Xg4aJX+g6QUP8VgJCCLY
   quWhI7Lk8zsONWw+pPqgFerS0Gec8Wb2auxL+fVtYUdGmHo7c2/th8J4X
   0nEm4GpAXe2jiKeXXBkGQJgCJbWn6cQ5N7gZY0L6hmhYQeI8c6JlyJ/9x
   hXKSpwospqsOXTd01gl0BFge3crfYqZ6MHi1DaV+nriAZTIT0qsuHxTwd
   g==;
X-IronPort-AV: E=Sophos;i="6.00,221,1681164000"; 
   d="scan'208";a="31303688"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 06 Jun 2023 14:29:30 +0200
Received: from steina-w.localnet (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 0B851280090;
        Tue,  6 Jun 2023 14:29:30 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Marco Felsch <m.felsch@pengutronix.de>
Cc:     Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Conor Dooley <conor@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Markus Niebel <Markus.Niebel@tq-group.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "linux@ew.tq-group.com" <linux@ew.tq-group.com>
Subject: Re: [PATCH 1/3] dt-bindings: arm: add TQMa8Xx boards
Date:   Tue, 06 Jun 2023 14:29:30 +0200
Message-ID: <5061585.GXAFRqVoOG@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20230606120730.6exdpylr24qn6hdw@pengutronix.de>
References: <20230606112108.685885-1-alexander.stein@ew.tq-group.com> <20230606112108.685885-2-alexander.stein@ew.tq-group.com> <20230606120730.6exdpylr24qn6hdw@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marco,

thanks for the feedback.

Am Dienstag, 6. Juni 2023, 14:07:56 CEST schrieb Marco Felsch:
> Hi Alexander,
>=20
> On 23-06-06, Alexander Stein wrote:
> > TQMa8Xx is a SOM series featuring NXP i.MX8X SoC.
> > They are called TQMa8XQP and TQMa8XDP respectively.
> > MBa8Xx is an evaluation mainboard for this SOM
> >=20
> > Signed-off-by: Markus Niebel <Markus.Niebel@tq-group.com>
> > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> > ---
> >=20
> >  Documentation/devicetree/bindings/arm/fsl.yaml | 17 +++++++++++++++++
> >  1 file changed, 17 insertions(+)
> >=20
> > diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml
> > b/Documentation/devicetree/bindings/arm/fsl.yaml index
> > 2510eaa8906dd..c4dcdac43bafb 100644
> > --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> > +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> >=20
> > @@ -1195,6 +1195,23 @@ properties:
> >            - const: toradex,colibri-imx8x
> >            - const: fsl,imx8qxp
> >=20
> > +      - description:
> > +          TQMa8Xx is a series of SOM featuring NXP i.MX8X system-on-ch=
ip
> > +          variants. It is designed to be clicked on different carrier
> > boards +          MBa8Xx is the starterkit
> > +        oneOf:
> > +          - items:
> > +              - enum:
> > +                  - tq,imx8dxp-tqma8xdp-mba8xx # TQ-Systems GmbH TQMa8=
XDP
> > SOM on MBa8Xx +              - const: tq,imx8dxp-tqma8xdp     #
> > TQ-Systems GmbH TQMa8XDP SOM (with i.MX8DXP) +              - const:
> > fsl,imx8dxp
> > +              - const: fsl,imx8qxp
>=20
> 				^
> Should be removed? The rest lgtm, so feel free to add my:

As imx8dxp is missing completely, I think it's even better the not add this=
=20
compatible for now.

> Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

Thanks, you meant this for this patch only or the whole series?

> Nit: Please check the dts(i) files for C++ comments '//' and replace
> them with '/**/'. There was at least one C++ comment.

Ah, you are right. Thanks.

Regards,
Alexander

> Regards,
>   Marco
>=20
> > +          - items:
> > +              - enum:
> > +                  - tq,imx8qxp-tqma8xqp-mba8xx # TQ-Systems GmbH TQMa8=
XQP
> > SOM on MBa8Xx +              - const: tq,imx8qxp-tqma8xqp     #
> > TQ-Systems GmbH TQMa8XQP SOM (with i.MX8QXP) +              - const:
> > fsl,imx8qxp
> > +
> >=20
> >        - description: i.MX8ULP based Boards
> >       =20
> >          items:
> >            - enum:


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/


