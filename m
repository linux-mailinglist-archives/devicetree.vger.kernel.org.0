Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9D551661F93
	for <lists+devicetree@lfdr.de>; Mon,  9 Jan 2023 09:02:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233436AbjAIIB7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Jan 2023 03:01:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233297AbjAIIB6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Jan 2023 03:01:58 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC353FAC0
        for <devicetree@vger.kernel.org>; Mon,  9 Jan 2023 00:01:57 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 874E360EEE
        for <devicetree@vger.kernel.org>; Mon,  9 Jan 2023 08:01:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E891EC433D2;
        Mon,  9 Jan 2023 08:01:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1673251316;
        bh=K2FNureFX7jCe81b4LQYycdB2eHxI6Z+zpQ6uvkRY90=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=VXQj7eUvAlSqRWsr3AOpnSvnjl7pnnwN3guMzCzmlqJgbYXOPDpDrfrkWfBEsx3K2
         gN1OWh9Vx/2EMWNX7QiFTryDUmOUX3d+U3fPqT6aqgIls0iUwlyu9wPgVQmdnkfjQe
         wpNmW16hpASOuVltnIVAU2Fp5esO1Ng3tXgWnWeNo3/4zQoCIhS8hRz7Nj/ymkSTRm
         9JBY5FtdkGOBpJXFQKTdBHbVVWGwqbwHsL2z4F+Aoy2c5tkCbF6f2uHcFw79MFwbpO
         qIa51e34/PvMsRO5LCwxt4jV0viXADpYnlXaVLgGEzjgDyO28jSCZ7X8mJp56cq8mK
         oCV2lDvV4YGdQ==
Date:   Mon, 9 Jan 2023 16:01:49 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 0/3] ARM: dts: imx: Add support for SK-iMX53 board
Message-ID: <20230109080148.GE18301@T480>
References: <20230102004425.887092-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230102004425.887092-1-dmitry.baryshkov@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jan 02, 2023 at 02:44:22AM +0200, Dmitry Baryshkov wrote:
> Add support for the StartKit sk-imx53 board, a simple development board
> with the i.MX536A SoC.
> 
> Changes since v2:
> - Dropped vpu redundant node
> - Dropped device_type from Ethernet PHY DT node
> - Fixed an error in vendor-prefix patch
> 
> Changes since v1:
> - Added bindings changes
> - Moved phy-reset-gpios to the mdio->phy node
> - Replaced default pinconf with specific values 
> 
> Dmitry Baryshkov (3):
>   dt-bindings: vendor-prefixes: add Startkit
>   dt-bindings: arm: fsl: Add the Starterkit SK-iMX53 board
>   ARM: dts: imx: Add support for SK-iMX53 board

Applied all, thanks!
