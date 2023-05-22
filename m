Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DD5C070C0D0
	for <lists+devicetree@lfdr.de>; Mon, 22 May 2023 16:19:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232192AbjEVOTF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 May 2023 10:19:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47400 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233485AbjEVOS5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 May 2023 10:18:57 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A2B0DED
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 07:18:44 -0700 (PDT)
Received: from mail.denx.de (unknown [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: festevam@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id C4E6E82790;
        Mon, 22 May 2023 16:18:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1684765117;
        bh=0DKYy6VV+LysXw/64jDOlwJ+iovgxOc9Kz3OwRZg1nI=;
        h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
        b=DGUsjmbXZcYlDgfmI+bNsfyenPgXLe458JDryQxw268/VjNybqCJMCLwrsN4Kysxo
         zY+aWJgzYw2yqHJPfKusra5wwMIPyFhDdHkTH3MLjEdwEH5ehnzWqJ91Kyb8I8vONV
         hesUiPtjrGHxRSabhsbWcDfs2LTMaHWdH1JhHaxyLr54Zo6mGabE6BrKOyteMn4ymp
         ybAtxYIDQuCfEZN03Ip4Y/8JACsTju7hZgM0W3IrFKi3rJlPzymFn48E4lvUS+Mer4
         E7pSivtL26acPIFh8z5w9UY8bOFHjtKdXKCypTHMhNa8fIqvPaqrzRfu+ywaZYW5zc
         7eTFxCFQut6GQ==
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date:   Mon, 22 May 2023 11:18:37 -0300
From:   Fabio Estevam <festevam@denx.de>
To:     Marek Vasut <marex@denx.de>
Cc:     Fabio Estevam <festevam@gmail.com>, shawnguo@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        conor+dt@kernel.org
Subject: Re: [PATCH v5 2/4] dt-bindings: soc: Add i.MX6SX General Purpose
 Register
In-Reply-To: <8d15b607-2a0c-91dc-33ce-8a0066ff9b11@denx.de>
References: <20230522125129.526604-1-festevam@gmail.com>
 <20230522125129.526604-2-festevam@gmail.com>
 <8d15b607-2a0c-91dc-33ce-8a0066ff9b11@denx.de>
Message-ID: <a357394b7ba6d79d9bb3e85e2f992b85@denx.de>
X-Sender: festevam@denx.de
User-Agent: Roundcube Webmail/1.3.6
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        T_SCC_BODY_TEXT_LINE,T_SPF_TEMPERROR autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek,

On 22/05/2023 10:20, Marek Vasut wrote:

> Take a look at MX6Q and notice how the iomuxc and GPR register sets
> share the same base address . That's different on MX6SX where they are
> separate. So I think this binding should be specific to MX6SX ONLY and
> for MX6Q the subnode probing should be handled in the IOMUXC driver
> instead , i.e. drop the fsl,imx6q-iomuxc-gpr here and in imx6sx.dtsi .
> 
> $ git grep -A 2 @20e0000 arch/arm/boot/dts/imx6qdl.dtsi
> arch/arm/boot/dts/imx6qdl.dtsi:                 gpr: iomuxc-gpr@20e0000 
> {
> arch/arm/boot/dts/imx6qdl.dtsi-                         compatible =
> "fsl,imx6q-iomuxc-gpr", "syscon", "simple-mfd";
> arch/arm/boot/dts/imx6qdl.dtsi-                         reg = 
> <0x20e0000 0x38>;
> --
> arch/arm/boot/dts/imx6qdl.dtsi:                 iomuxc: pinctrl@20e0000 
> {
> arch/arm/boot/dts/imx6qdl.dtsi-                         compatible =
> "fsl,imx6dl-iomuxc", "fsl,imx6q-iomuxc";
> arch/arm/boot/dts/imx6qdl.dtsi-                         reg =
> <0x20e0000 0x4000>;

Removing fsl,imx6q-iomuxc-gpr causes PCI probe issue on imx6sx
as the driver searches for "fsl,imx6q-iomuxc-gpr":

static const struct imx6_pcie_drvdata drvdata[] = {
          ....
	[IMX6SX] = {
		.variant = IMX6SX,
		.flags = IMX6_PCIE_FLAG_IMX6_PHY |
			 IMX6_PCIE_FLAG_IMX6_SPEED_CHANGE |
			 IMX6_PCIE_FLAG_SUPPORTS_SUSPEND,
		.gpr = "fsl,imx6q-iomuxc-gpr",


# dmesg | grep pci
[    0.260212] imx6q-pcie 8ffc000.pcie: unable to find iomuxc registers
