Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E5F8657AF98
	for <lists+devicetree@lfdr.de>; Wed, 20 Jul 2022 05:48:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232622AbiGTDsf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Jul 2022 23:48:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45672 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229936AbiGTDse (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Jul 2022 23:48:34 -0400
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com [198.47.23.248])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75F0724BC0
        for <devicetree@vger.kernel.org>; Tue, 19 Jul 2022 20:48:33 -0700 (PDT)
Received: from lelv0265.itg.ti.com ([10.180.67.224])
        by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 26K3mGRW011897;
        Tue, 19 Jul 2022 22:48:16 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1658288896;
        bh=JAsPtIJihoBVjFYSJptM9RbWBZAVavbRi895ayV5Hj8=;
        h=From:To:CC:Subject:Date:References:In-Reply-To;
        b=LWlmQjb++232ICBu2t8QHk0cXg/0oajWtJ2Kldu80lB257KqhD21cwQoH98jn/5LR
         K2mV2EqHcT+uU6Iz/ADq8gEpTgVxawDHQqFuwVpW2LRsZAqn4KbJOEHw0mTd+pv98o
         OzQDRoeAsv8mp5D52ooZg+UvOk6v/uNknIN9v7YU=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
        by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 26K3mG4t017704
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Tue, 19 Jul 2022 22:48:16 -0500
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Tue, 19
 Jul 2022 22:48:16 -0500
Received: from DFLE107.ent.ti.com ([fe80::86f:14f0:164b:4dbe]) by
 DFLE107.ent.ti.com ([fe80::86f:14f0:164b:4dbe%17]) with mapi id
 15.01.2308.014; Tue, 19 Jul 2022 22:48:16 -0500
From:   "Xu, Yang" <raphael-xu@ti.com>
To:     Rob Herring <robh@kernel.org>, Raphael-Xu <13691752556@139.com>
CC:     "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
        "Ding, Shenghao" <shenghao-ding@ti.com>,
        "Navada Kanyana, Mukund" <navada@ti.com>,
        "Syrus, Andy" <asyrus@ti.com>,
        "broonie@kernel.org" <broonie@kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: RE: [EXTERNAL] Re: [PATCH v5] update tas2780.yaml
Thread-Topic: [EXTERNAL] Re: [PATCH v5] update tas2780.yaml
Thread-Index: AQHYlsgLbEuTckvewU2/Fc9LiQomRq2GqCzA
Date:   Wed, 20 Jul 2022 03:48:15 +0000
Message-ID: <e5e2f84c407a4480a5f6c7f56c8e05f4@ti.com>
References: <20220712050857.267-1-13691752556@139.com>
 <20220713145130.GA3909157-robh@kernel.org>
In-Reply-To: <20220713145130.GA3909157-robh@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.85.136.126]
x-exclaimer-md-config: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Spam-Status: No, score=-5.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

Please see my reply.

-----Original Message-----
From: Rob Herring <robh@kernel.org>=20
Sent: Wednesday, July 13, 2022 10:52 PM
To: Raphael-Xu <13691752556@139.com>
Cc: alsa-devel@alsa-project.org; Xu, Yang <raphael-xu@ti.com>; Ding, Shengh=
ao <shenghao-ding@ti.com>; Navada Kanyana, Mukund <navada@ti.com>; Syrus, A=
ndy <asyrus@ti.com>; broonie@kernel.org; devicetree@vger.kernel.org
Subject: [EXTERNAL] Re: [PATCH v5] update tas2780.yaml

On Tue, Jul 12, 2022 at 01:08:57PM +0800, Raphael-Xu wrote:
> 1.remove unused item in DT 2.revise the format

Again, fix your subject. Run 'git log --oneline Documentation/devicetree/bi=
ndings/sound/' for inspiration of the format of the subject.
[RX]:just submit new patch
However, there's a bigger issue here. We already have a binding for this de=
vice. It's in tas27xx.yaml. And you added 2780 to it, so why did you add an=
other schema? (All the same issues in that patch too. wrong subject, broken=
 schema. So you haven't learned.)
[RX]:We will follow tas2780 patch format and submit separate patch if you t=
hink tas2780 patch is acceptable.
And then there is also tas2770.yaml which appears to be about the same as w=
ell.
[RX]:We will follow tas2780 patch format and submit separate patch if you t=
hink tas2780 patch is acceptable.
>=20
> Signed-off-by: Raphael-Xu <13691752556@139.com>
> ---
>  .../devicetree/bindings/sound/tas2780.yaml    | 19 +++++++++++--------
>  1 file changed, 11 insertions(+), 8 deletions(-)
