Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 89BDA72AAAE
	for <lists+devicetree@lfdr.de>; Sat, 10 Jun 2023 11:28:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234262AbjFJJ2Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 10 Jun 2023 05:28:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234273AbjFJJ2N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 10 Jun 2023 05:28:13 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 203FC2D68
        for <devicetree@vger.kernel.org>; Sat, 10 Jun 2023 02:28:11 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id B0AE060BA6
        for <devicetree@vger.kernel.org>; Sat, 10 Jun 2023 09:28:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B69BDC4339B;
        Sat, 10 Jun 2023 09:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1686389290;
        bh=JeNd9EoPp12+uYLi5ZosgsJF5qp0+CIahTtNm8NnSbI=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=c+1P8pGKlZYt5VR9P8sPEip17CA5XFt0habYs3SBZ7fF+dk+vMsFKegEdRuk0dEJ5
         /eHQNYCB+WwaXl+P4b8Mjx3TABfAQetz3Go8/leP3MzOyC8416UT8UIEUMucT+k58F
         HhkHNHWLdxn5iH0UwU2tFC//kumcWI3BhvYgay2ycfs0B2WRq7lGEUqkGbUsCDFKgK
         TRTSF897bdZChRziI3YJQ9gflGW/I32piEWX5AxRyN9CxOu70hMKbo1vocR9+kVYLo
         fsB/RNU+7+IpsQsNc629MZexpU1dQvZRJJPCL5Vqgo/7T+3PTQyqUr5fz2b3LTCcLC
         YpRwBVdrGa8lA==
Message-ID: <e886db25-dd5f-c8d9-83d4-77540fc3826e@kernel.org>
Date:   Sat, 10 Jun 2023 11:27:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v2 00/17] Prevent NAND chip unevaluated properties
Content-Language: en-US
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <tudor.ambarus@linaro.org>,
        Pratyush Yadav <pratyush@kernel.org>,
        Michael Walle <michael@walle.cc>,
        linux-mtd@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        devicetree@vger.kernel.org
Cc:     Chris Packham <Chris.Packham@alliedtelesis.co.nz>,
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
References: <20230606175246.190465-1-miquel.raynal@bootlin.com>
From:   Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20230606175246.190465-1-miquel.raynal@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-7.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/06/2023 19:52, Miquel Raynal wrote:
> As discussed with Krzysztof and Chris, it seems like each NAND
> controller binding should actually restrain the properties allowed in
> the NAND chip node with its own "unevaluatedProperties: false". This
> only works if we reference a yaml schema which contains all the possible
> properties *in the NAND chip node*. Indeed, the NAND controller yaml
> schema contains properties for the NAND chip which are not evaluated
> with this construction.
> 
> Link: https://lore.kernel.org/all/a23dd485-a3d9-e31f-be3e-0ab293fcfc4a@linaro.org/

Please rebase on latest kernel. This is some very old tree if you CC
this address.

Best regards,
Krzysztof

