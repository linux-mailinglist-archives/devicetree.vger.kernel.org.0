Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 468367278DB
	for <lists+devicetree@lfdr.de>; Thu,  8 Jun 2023 09:32:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234843AbjFHHcD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Jun 2023 03:32:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234391AbjFHHcC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Jun 2023 03:32:02 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10CB41AE
        for <devicetree@vger.kernel.org>; Thu,  8 Jun 2023 00:31:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1686209520; x=1717745520;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=WZqPqMZn3ipI5H7SNd0QAYxuQSytRbg89zQtF1DAKws=;
  b=kJCNXM+z4nGDdlIEREsyqSD857PCf1h3qGWlo/97XqNjtVr9us+CfEYi
   s5fSjXShSPEiRK7r36FwzExEKBtEF2VyVMQnDxJbj5iIjQbTuSgfbdzpF
   In1zYGijdkvZl9188+TCk8JdXNiFShRddBE+u3fuLAI92pzF6JSzU9oZ4
   Y8iNNQUvVFIlxMUU5VxnARwpZdc2xGULh5VluBvJwoMnVqj+qoE18Lqv6
   lQQRGutDU0MODtaeFcQ4rX+jAZ6NsqZX1/wT+ZUI8Nr27b0fWQp51c05f
   3A3iMFzE96F5mT8EpWO8cUHv+1LgwfVT7ikoG8ugaSxsxHN6VMKeoxeMe
   w==;
X-IronPort-AV: E=Sophos;i="6.00,226,1681164000"; 
   d="scan'208";a="31342720"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 08 Jun 2023 09:31:58 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Thu, 08 Jun 2023 09:31:58 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Thu, 08 Jun 2023 09:31:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1686209518; x=1717745518;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=WZqPqMZn3ipI5H7SNd0QAYxuQSytRbg89zQtF1DAKws=;
  b=ndMZGDU9ccJIvIapNqmw47pXOyCdb7P1dWyxwgyFW0+cnT/3VoaqbOUb
   YNAXdDBiOM9qb+K/WDMLZ6qYNUkgI08uNJ55dBqjNKCZ0RncyEk7TAtbB
   aPT8EcWujWKw+ybIw7L6Qc400JiuW7luBImSGuvEN9e/5EDvcVhkTndHx
   5+Rf+hUa6hAxP2PSjS3U7Oc+8kp7F8oHhyAX+9JZVt2IZuC3sZbqyntfR
   jRO5XuYenAg6QQJQUe7BCrTZnBKbe+N1ToSwHywJMOaDI8PbnnwtQ1Hz7
   dbX7BVLNdFHWEgMMnVVznCm/2Ol8n7vcnMn/eKWAU3IFsoloQl8ES2Vcj
   Q==;
X-IronPort-AV: E=Sophos;i="6.00,226,1681164000"; 
   d="scan'208";a="31342719"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 08 Jun 2023 09:31:58 +0200
Received: from steina-w.localnet (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id EEC32280087;
        Thu,  8 Jun 2023 09:31:57 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Conor Dooley <conor@kernel.org>
Cc:     Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Liu Ying <victor.liu@nxp.com>, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 1/1] dt-bindings: phy: mixel, mipi-dsi-phy: Remove assigned-clock* properties
Date:   Thu, 08 Jun 2023 09:31:57 +0200
Message-ID: <1855461.tdWV9SEqCh@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20230606-implement-canning-0353ca9afddb@spud>
References: <20230606144447.775942-1-alexander.stein@ew.tq-group.com> <20230606-implement-canning-0353ca9afddb@spud>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Conor,

Am Dienstag, 6. Juni 2023, 20:21:02 CEST schrieb Conor Dooley:
> * PGP Signed by an unknown key
>=20
> On Tue, Jun 06, 2023 at 04:44:46PM +0200, Alexander Stein wrote:
> > These properties are allowed anyway and some SoC (e.g. imx8mq) configure
> > more than just one clock using these properties.
>=20
> What does "allowed anyway" mean?
> And following from that, why not modify the min/maxItems to suit
> reality, rather than remove them. Is there enforcement from elsewhere?

As Liu pointed out, assigned-clock* were considered a generic property adde=
d=20
by default at that time. With that support added there is no need to specif=
y=20
these properties in this bindings again.
Despite that you never know in advance how many items you will have to add =
to=20
assigned-clock* properties, that's totally different to 'clocks', it may ev=
en=20
depend on board specific clock setups.

> > Fixes: f9b0593dd4fc6 ("dt-bindings: phy: Convert mixel,mipi-dsi-phy to
> > json-schema") Signed-off-by: Alexander Stein
> > <alexander.stein@ew.tq-group.com>
> > ---
> > I can't reproduce the mentioned mis-matches in commit f9b0593dd4fc6
> > ("dt-bindings: phy: Convert mixel,mipi-dsi-phy to json-schema").
>=20
> I suspect that meant that the property was in the dt but not in the
> binding at the time of the conversion.

You are right, given the commit [1]. Which, from today's perspective, is al=
so=20
a rationale for this patch.

Best regards,
Alexander

[1] https://github.com/devicetree-org/dt-schema/commit/
c3424745f900e8cf0a0e3acebffeeda83a82f6d4

> Cheers,
> Conor.
>=20
> > Since commit 62270eeb2b639 ("arm64: dts: imx8mq: Add clock parents for
> > mipi dphy") imx8mq.dtsi configures several clocks using assigned-clocks*
> > properties.
> >=20
> >  .../devicetree/bindings/phy/mixel,mipi-dsi-phy.yaml      | 9 ---------
> >  1 file changed, 9 deletions(-)
> >=20
> > diff --git a/Documentation/devicetree/bindings/phy/mixel,mipi-dsi-phy.y=
aml
> > b/Documentation/devicetree/bindings/phy/mixel,mipi-dsi-phy.yaml index
> > 786cfd71cb7eb..3c28ec50f0979 100644
> > --- a/Documentation/devicetree/bindings/phy/mixel,mipi-dsi-phy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/mixel,mipi-dsi-phy.yaml
> >=20
> > @@ -32,15 +32,6 @@ properties:
> >    clock-names:
> >      const: phy_ref
> >=20
> > -  assigned-clocks:
> > -    maxItems: 1
> > -
> > -  assigned-clock-parents:
> > -    maxItems: 1
> > -
> > -  assigned-clock-rates:
> > -    maxItems: 1
> > -
> >=20
> >    "#phy-cells":
> >      const: 0
>=20
> * Unknown Key
> * 0xA08262D2


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/


