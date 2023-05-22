Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2AF2170C0F5
	for <lists+devicetree@lfdr.de>; Mon, 22 May 2023 16:24:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231718AbjEVOYX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 May 2023 10:24:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50324 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234119AbjEVOYN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 May 2023 10:24:13 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF508A3
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 07:24:12 -0700 (PDT)
Received: from [127.0.0.1] (unknown [62.91.23.180])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 216F483FEE;
        Mon, 22 May 2023 16:24:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1684765451;
        bh=MCJJit2fCUoa46b/cLLT0/CE/YJ4QMuy9p7hNDcD+V4=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=CfzXZba4o24dsxppWwcU945Ea4mXWGV+IAw8rjpYNfO5Rscgb4p/x6tvhX+aLtXw5
         HOvWiKayKDDWO01k6Tokv7BmRHrsA9rOzV0K0tNWMaHMhP3cEAFckndKTLEcVM8Pj0
         vMUwCWY+KQcAU2ZBtxFHfc6alCWgFouEcReWVHMfcMiKdspsDgPTN7OYbjEDAlv4q/
         jQov8JmvQx2JwbQn6WXhV3O2h193byJoTGYKTvRsDCirRCye6yYLH0baSNxy2Zejim
         PUASdEL6NnmbJrVpX4yvtYPrzMZpNRlMaNOvh4kN0MJo73XnZs35z5xpHPFRiZi6HF
         F6g8iWfd+uoTQ==
Message-ID: <3911f77e-71d6-a980-aadf-cc89b38311c4@denx.de>
Date:   Mon, 22 May 2023 16:24:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v5 2/4] dt-bindings: soc: Add i.MX6SX General Purpose
 Register
Content-Language: en-US
To:     Fabio Estevam <festevam@denx.de>
Cc:     Fabio Estevam <festevam@gmail.com>, shawnguo@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        conor+dt@kernel.org
References: <20230522125129.526604-1-festevam@gmail.com>
 <20230522125129.526604-2-festevam@gmail.com>
 <8d15b607-2a0c-91dc-33ce-8a0066ff9b11@denx.de>
 <a357394b7ba6d79d9bb3e85e2f992b85@denx.de>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <a357394b7ba6d79d9bb3e85e2f992b85@denx.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 5/22/23 16:18, Fabio Estevam wrote:
> Hi Marek,
> 
> On 22/05/2023 10:20, Marek Vasut wrote:
> 
>> Take a look at MX6Q and notice how the iomuxc and GPR register sets
>> share the same base address . That's different on MX6SX where they are
>> separate. So I think this binding should be specific to MX6SX ONLY and
>> for MX6Q the subnode probing should be handled in the IOMUXC driver
>> instead , i.e. drop the fsl,imx6q-iomuxc-gpr here and in imx6sx.dtsi .
>>
>> $ git grep -A 2 @20e0000 arch/arm/boot/dts/imx6qdl.dtsi
>> arch/arm/boot/dts/imx6qdl.dtsi:                 gpr: iomuxc-gpr@20e0000 {
>> arch/arm/boot/dts/imx6qdl.dtsi-                         compatible =
>> "fsl,imx6q-iomuxc-gpr", "syscon", "simple-mfd";
>> arch/arm/boot/dts/imx6qdl.dtsi-                         reg = 
>> <0x20e0000 0x38>;
>> -- 
>> arch/arm/boot/dts/imx6qdl.dtsi:                 iomuxc: pinctrl@20e0000 {
>> arch/arm/boot/dts/imx6qdl.dtsi-                         compatible =
>> "fsl,imx6dl-iomuxc", "fsl,imx6q-iomuxc";
>> arch/arm/boot/dts/imx6qdl.dtsi-                         reg =
>> <0x20e0000 0x4000>;
> 
> Removing fsl,imx6q-iomuxc-gpr causes PCI probe issue on imx6sx
> as the driver searches for "fsl,imx6q-iomuxc-gpr":
> 
> static const struct imx6_pcie_drvdata drvdata[] = {
>           ....
>      [IMX6SX] = {
>          .variant = IMX6SX,
>          .flags = IMX6_PCIE_FLAG_IMX6_PHY |
>               IMX6_PCIE_FLAG_IMX6_SPEED_CHANGE |
>               IMX6_PCIE_FLAG_SUPPORTS_SUSPEND,
>          .gpr = "fsl,imx6q-iomuxc-gpr",
> 
> 
> # dmesg | grep pci
> [    0.260212] imx6q-pcie 8ffc000.pcie: unable to find iomuxc registers

I would say, this should use the mx6sx compatible string for the GPR 
look up (or even use phandle ?)
