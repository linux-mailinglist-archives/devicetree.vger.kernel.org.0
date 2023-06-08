Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1BF81727998
	for <lists+devicetree@lfdr.de>; Thu,  8 Jun 2023 10:07:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233887AbjFHIHv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Jun 2023 04:07:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234282AbjFHIHu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Jun 2023 04:07:50 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5669C2102
        for <devicetree@vger.kernel.org>; Thu,  8 Jun 2023 01:07:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1686211668; x=1717747668;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=GwENpWc1XuQIcQCaUxQ5mjQl7QzpfAXooXHxtrwI7dY=;
  b=NAkhJ7Cy72JmOCVqwtfeAP1CVfRdp/31HzB+0Uz3/DVs7Gq+zoSNv6Jq
   bv9xfnDoVIVMQlcWwJEft7mgfOZxq2QAGiGPIOCf5qTlLzw7YzQuj4Kym
   1FjMLCHEYveA0xm/mjC/lRLDSJ/5hir6CNqfwopYVww5ObbAKlvF48a+P
   plc1nIM4YPcPh5zvZY0ahxxe1dmBpB2AO/jTtV7gM6tnFyjJNH2EsmPu8
   VHqV3ZmlgdXjYxCru+3gSP/oNX4zC/osD/nA/u8pj4xfoXnIE6u8nM5JS
   JYF1PaaSBygsRB2POJT2Kvaz8pQ3bHa8ormHq6y67nE82+O6wBZIDEpSN
   w==;
X-IronPort-AV: E=Sophos;i="6.00,226,1681164000"; 
   d="scan'208";a="31343530"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 08 Jun 2023 10:07:46 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Thu, 08 Jun 2023 10:07:46 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Thu, 08 Jun 2023 10:07:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1686211666; x=1717747666;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=GwENpWc1XuQIcQCaUxQ5mjQl7QzpfAXooXHxtrwI7dY=;
  b=kAaW01tvCovn7lsKoKTI2PvuuHjV7G1OBQhgXwX9MosvhOea5RJ9kyT3
   1doAQfSqSblcYc5IBXkKFOMk3UEj2e+HRpp3bd4ppdMS07lsljhpFxILa
   Vg1fFAR8wdw1rw4CfTTU2s4bi/shc70GZtJpcTGNDq3t4G+b5lkycPaE3
   mlPBnm+uwsfzjoij8dj31JHAwusgIdZa4IaAiA0S/IFRRcabHjFMmruLJ
   NICBCbD8XglHlAYOYKy5YB5Ap5IBBgbvttlMF0XvisKc7QxJSWFTskPIV
   0nv3Ndg/vV0xY88fNqzK8z0uxCU/wJELe2BcxwFhCdBwu2qv8JhD8cwxF
   A==;
X-IronPort-AV: E=Sophos;i="6.00,226,1681164000"; 
   d="scan'208";a="31343529"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 08 Jun 2023 10:07:46 +0200
Received: from steina-w.localnet (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 51E47280087;
        Thu,  8 Jun 2023 10:07:46 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Conor Dooley <conor.dooley@microchip.com>
Cc:     Conor Dooley <conor@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Liu Ying <victor.liu@nxp.com>, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 1/1] dt-bindings: phy: mixel, mipi-dsi-phy: Remove assigned-clock* properties
Date:   Thu, 08 Jun 2023 10:07:46 +0200
Message-ID: <13281775.uLZWGnKmhe@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20230608-oven-coerce-e0c3f16d58a9@wendy>
References: <20230606144447.775942-1-alexander.stein@ew.tq-group.com> <1855461.tdWV9SEqCh@steina-w> <20230608-oven-coerce-e0c3f16d58a9@wendy>
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

Am Donnerstag, 8. Juni 2023, 09:59:10 CEST schrieb Conor Dooley:
> * PGP Signed by an unknown key
>=20
> On Thu, Jun 08, 2023 at 09:31:57AM +0200, Alexander Stein wrote:
> > Hi Conor,
> >=20
> > Am Dienstag, 6. Juni 2023, 20:21:02 CEST schrieb Conor Dooley:
> > > > Old Signed by an unknown key
> > >=20
> > > On Tue, Jun 06, 2023 at 04:44:46PM +0200, Alexander Stein wrote:
> > > > These properties are allowed anyway and some SoC (e.g. imx8mq)
> > > > configure
> > > > more than just one clock using these properties.
> > >=20
> > > What does "allowed anyway" mean?
> > > And following from that, why not modify the min/maxItems to suit
> > > reality, rather than remove them. Is there enforcement from elsewhere?
> >=20
> > As Liu pointed out, assigned-clock* were considered a generic property
> > added by default at that time. With that support added there is no need
> > to specify these properties in this bindings again.
> > Despite that you never know in advance how many items you will have to =
add
> > to assigned-clock* properties, that's totally different to 'clocks', it
> > may even depend on board specific clock setups.
>=20
> Sounds grand to me. I think it'd be good in the future to explain
> *where* the enforcement comes from, rather than saying something like
> "allowed anyway".=20

True, I'll send an updated patch with commit message improved referring to=
=20
updated dt-schema.

> Otherwise,
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Alexander

> Cheers,
> Conor.
>=20
> * Unknown Key
> * 0xA08262D2


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/


