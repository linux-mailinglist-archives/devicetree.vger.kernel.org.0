Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 262C567C495
	for <lists+devicetree@lfdr.de>; Thu, 26 Jan 2023 07:52:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236001AbjAZGwA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Jan 2023 01:52:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41454 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230288AbjAZGv7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Jan 2023 01:51:59 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07FD3A267
        for <devicetree@vger.kernel.org>; Wed, 25 Jan 2023 22:51:57 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 934A0616FA
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 06:51:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BC8EEC433D2;
        Thu, 26 Jan 2023 06:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1674715917;
        bh=RpmfurGfAnsPvDDalclfBox49FFCIGJvcVVk5kpdCm4=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=K5Clos8G/6nxWHW1/Yj41TqJabiaNc9T5UGqB1aQW4FgyN4s0OKrCumiJE5qER5RF
         vO4JaCEB9LIDtivDS3kb+swN/Ho1omq46kmv273FQ2a0knK/gMVMN1Yiw+cEqcIyuB
         b2/bVa67IWdheY1avw5HrCuZr3BdpDz9GisXRDMmW6kslaYEsCt3fq5x34Q63gVca/
         izFLH+nkAqphwCvhspsC7PlB6CF2M9hLH3xDGZIgnkrXgdMablZtNsYP2uKltd6FUl
         URUOWeVZq/KJhe9skbVGlwPKU/rj+2I6QwbU/CbuRpFvcNsyb+SZvrizJv2KXGPiRd
         uIfub2bFNGwBw==
Date:   Thu, 26 Jan 2023 14:51:49 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Adam Ford <aford173@gmail.com>,
        Fabio Estevam <festevam@denx.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: imx8mp: Reorder clock to match
 fsl,imx6q-pcie.yaml
Message-ID: <20230126065147.GS20713@T480>
References: <20230116101649.46459-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230116101649.46459-1-marex@denx.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jan 16, 2023 at 11:16:49AM +0100, Marek Vasut wrote:
> Reorder the PCIe clock in DT to match YAML DT schema. No functional change.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>

Applied, thanks!
