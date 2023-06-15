Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 119BD73121C
	for <lists+devicetree@lfdr.de>; Thu, 15 Jun 2023 10:26:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239107AbjFOI0T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Jun 2023 04:26:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231288AbjFOI0S (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Jun 2023 04:26:18 -0400
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net [217.70.183.196])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A72931A3
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 01:26:16 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1686817575;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=369VxYvjbyWVGycDQfqUtVNy7bfv3AtTk5Fu4/mlMp4=;
        b=TkjfIhXulIm0GjR2EXKACTtjO2pCq0em6cXj4inMyC9xo8p12JFVN+zYloCKFhYw/Ea2L4
        Y+/FTb2wkvswsJVBrbj0s/yabCaVZO+wFhusPOUSON4JGiQg7GKkT8zzArNa1fCceGc7PK
        FIWuCoBGVxq2ExpEURgKSHsbnHqhDz376NEqrJ/tNze0waAQhYc4BjweRS6dfzMUTKTylk
        cTLQBGRjQmDfYc9VVqPz15cXTuREjcS6bxxlW5Sm1IyZE8oxuETrwQcWBYYBrhWhyLLvUK
        DuD9XYUPsqkHrMFLaSdcESSr00FmVi8WfuCO8zPO49rioezXrFSM2fI3VSI4Kw==
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 8CBA8E0008;
        Thu, 15 Jun 2023 08:26:10 +0000 (UTC)
Date:   Thu, 15 Jun 2023 10:26:09 +0200
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Krzysztof Kozlowski <krzk@kernel.org>
Cc:     Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <tudor.ambarus@linaro.org>,
        Pratyush Yadav <pratyush@kernel.org>,
        Michael Walle <michael@walle.cc>,
        linux-mtd@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        devicetree@vger.kernel.org,
        Chris Packham <Chris.Packham@alliedtelesis.co.nz>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Brian Norris <computersforpeace@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Christophe Kerello <christophe.kerello@foss.st.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Kamal Dasu <kdasu.kdev@gmail.com>,
        Liang Yang <liang.yang@amlogic.com>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Masahiro Yamada <yamada.masahiro@socionext.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Maxime Ripard <mripard@kernel.org>,
        Paul Cercueil <paul@crapouillou.net>,
        Samuel Holland <samuel@sholland.org>,
        Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>,
        Xiangsheng Hou <xiangsheng.hou@mediatek.com>
Subject: Re: [PATCH v2 00/17] Prevent NAND chip unevaluated properties
Message-ID: <20230615102609.0aeea6ab@xps-13>
In-Reply-To: <20230613134350.3cab6780@xps-13>
References: <20230606175246.190465-1-miquel.raynal@bootlin.com>
        <e886db25-dd5f-c8d9-83d4-77540fc3826e@kernel.org>
        <20230613134350.3cab6780@xps-13>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Krzysztof,

miquel.raynal@bootlin.com wrote on Tue, 13 Jun 2023 13:43:50 +0200:

> Hi Krzysztof,
>=20
> krzk@kernel.org wrote on Sat, 10 Jun 2023 11:27:55 +0200:
>=20
> > On 06/06/2023 19:52, Miquel Raynal wrote: =20
> > > As discussed with Krzysztof and Chris, it seems like each NAND
> > > controller binding should actually restrain the properties allowed in
> > > the NAND chip node with its own "unevaluatedProperties: false". This
> > > only works if we reference a yaml schema which contains all the possi=
ble
> > > properties *in the NAND chip node*. Indeed, the NAND controller yaml
> > > schema contains properties for the NAND chip which are not evaluated
> > > with this construction.
> > >=20
> > > Link: https://lore.kernel.org/all/a23dd485-a3d9-e31f-be3e-0ab293fcfc4=
a@linaro.org/   =20
> >=20
> > Please rebase on latest kernel. This is some very old tree if you CC
> > this address. =20
>=20
> Sorry for the trouble, it was a hardcoded address on my side. I've
> updated the address to
>=20
> 	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
>=20
> The series is based on v6.4-rc1. Against what branch/tag do you want it
> to be rebased?

When I asked this question I forgot I usually apply mtd bindings in my
own tree :) I usually do it after receiving at least one R-by on the
whole series, but here as I'm the author I would just like to get
confirmation from you Krzysztof that I can go ahead (or if you prefer
to take it, or maybe want to give this another look later).

Thanks,
Miqu=C3=A8l
