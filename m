Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 97A1672E1DF
	for <lists+devicetree@lfdr.de>; Tue, 13 Jun 2023 13:44:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239273AbjFMLoE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Jun 2023 07:44:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235301AbjFMLoD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Jun 2023 07:44:03 -0400
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::224])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB547BA
        for <devicetree@vger.kernel.org>; Tue, 13 Jun 2023 04:44:00 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1686656639;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=d+viFyHRWDefnY4D6QJul4yohlKiSyTDIqKgOG5jej0=;
        b=nX47Wvbd8EtfxIm1fg2SxtA1L6bRyebAPZxVBDh+pTniYAMq1CwwskGyPE/fGNPCU9wOlH
        wiWRbuunrR82JlkWGZZ0YmpyAUjX05BG3h1HaiMbtxvWtRw1kMexRKuX0l7xJLb6Zhn2Ss
        MTeZiunmwCfUcOTqvfa70GzkAgJBqZIJxEM+nlup//mushdf/rPeUsxEBdeqS88zlmTDgk
        B2eiPkkWhqxnC/zdvrtBqOyN37uEUk3CBM8YGag6REEr+d++hZ6e1FJWgPgug6kJUV+X/f
        emsTHG3cthJTBe5dEMBxCv5TmbiGQ+kv8VM2Qcmc8R8vaT0fHSXbFXr6TFSlpg==
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
Received: by mail.gandi.net (Postfix) with ESMTPSA id 976A2E0004;
        Tue, 13 Jun 2023 11:43:51 +0000 (UTC)
Date:   Tue, 13 Jun 2023 13:43:50 +0200
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
Message-ID: <20230613134350.3cab6780@xps-13>
In-Reply-To: <e886db25-dd5f-c8d9-83d4-77540fc3826e@kernel.org>
References: <20230606175246.190465-1-miquel.raynal@bootlin.com>
        <e886db25-dd5f-c8d9-83d4-77540fc3826e@kernel.org>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Krzysztof,

krzk@kernel.org wrote on Sat, 10 Jun 2023 11:27:55 +0200:

> On 06/06/2023 19:52, Miquel Raynal wrote:
> > As discussed with Krzysztof and Chris, it seems like each NAND
> > controller binding should actually restrain the properties allowed in
> > the NAND chip node with its own "unevaluatedProperties: false". This
> > only works if we reference a yaml schema which contains all the possible
> > properties *in the NAND chip node*. Indeed, the NAND controller yaml
> > schema contains properties for the NAND chip which are not evaluated
> > with this construction.
> >=20
> > Link: https://lore.kernel.org/all/a23dd485-a3d9-e31f-be3e-0ab293fcfc4a@=
linaro.org/ =20
>=20
> Please rebase on latest kernel. This is some very old tree if you CC
> this address.

Sorry for the trouble, it was a hardcoded address on my side. I've
updated the address to

	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>

The series is based on v6.4-rc1. Against what branch/tag do you want it
to be rebased?

Thanks,
Miqu=C3=A8l
