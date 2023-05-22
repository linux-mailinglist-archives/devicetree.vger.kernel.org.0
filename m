Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3DF8D70C0EC
	for <lists+devicetree@lfdr.de>; Mon, 22 May 2023 16:22:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231683AbjEVOWe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 May 2023 10:22:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229586AbjEVOWd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 May 2023 10:22:33 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2C33A9
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 07:22:32 -0700 (PDT)
Received: from [127.0.0.1] (unknown [62.91.23.180])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 3048984667;
        Mon, 22 May 2023 16:22:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1684765351;
        bh=cOz7O0M3lpcBrbgwihb3ClbRpSYnSrV+YjkEcZzdpmY=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=YBvpojqXwRHnez3mbTV7EZD6QllQRGYZvJt6No+UayQvjqM18r+r82llG9CQD4hB3
         UecSt+7aXsFJGj6wdBY1AlgGYITEIulT86GyLFxKEvmX1KUOswM1DCPaJng/hqB5Ff
         C9wGKKEopFNiAIG0jV+HLi+PwhtfkSscP4416DZMn8+CVk/1m1agpj8cOY7SJy/ycl
         0DCD0l0kQ+MqxhG/WN3672SsfSCv3FJ78WHjppyAZZSk9ezE9Top8DeAxhYh+iHS6c
         DSjzon4kf7QshDj9qLpuvb7sT9EaqadVqgf7+4SzhWk16l1PhO4WVjFloC7tNpDB0+
         2DI+g+jSn90Lg==
Message-ID: <38ef2894-13a7-aa5c-b53c-95bf01247385@denx.de>
Date:   Mon, 22 May 2023 16:22:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v5 3/4] ARM: dts: imx6sx: Add LDB support
Content-Language: en-US
To:     Fabio Estevam <festevam@denx.de>
Cc:     Fabio Estevam <festevam@gmail.com>, shawnguo@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        conor+dt@kernel.org
References: <20230522125129.526604-1-festevam@gmail.com>
 <20230522125129.526604-3-festevam@gmail.com>
 <a5edfa01-3471-2cb2-c827-064f4386b076@denx.de>
 <b0a6529587fe0f723126e3d6f74a3379@denx.de>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <b0a6529587fe0f723126e3d6f74a3379@denx.de>
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

On 5/22/23 16:19, Fabio Estevam wrote:
> On 22/05/2023 10:20, Marek Vasut wrote:
> 
>>> diff --git a/arch/arm/boot/dts/imx6sx.dtsi 
>>> b/arch/arm/boot/dts/imx6sx.dtsi
>>> index 4233943a1cca..442106565025 100644
>>> --- a/arch/arm/boot/dts/imx6sx.dtsi
>>> +++ b/arch/arm/boot/dts/imx6sx.dtsi
>>> @@ -844,7 +844,38 @@ iomuxc: pinctrl@20e0000 {
>>>               gpr: iomuxc-gpr@20e4000 {
>>>                   compatible = "fsl,imx6sx-iomuxc-gpr",
>>>                            "fsl,imx6q-iomuxc-gpr", "syscon";
>>
>> Maybe this "fsl,imx6q-iomuxc-gpr" should be dropped here.
> 
> Cannot remove it as it breaks PCI:
> 
> imx6q-pcie 8ffc000.pcie: unable to find iomuxc registers

This might help?

diff --git a/drivers/pci/controller/dwc/pci-imx6.c 
b/drivers/pci/controller/dwc/pci-imx6.c
index 52906f999f2bb..4803e3c9ee37c 100644
--- a/drivers/pci/controller/dwc/pci-imx6.c
+++ b/drivers/pci/controller/dwc/pci-imx6.c
@@ -1460,7 +1460,7 @@ static const struct imx6_pcie_drvdata drvdata[] = {
                 .flags = IMX6_PCIE_FLAG_IMX6_PHY |
                          IMX6_PCIE_FLAG_IMX6_SPEED_CHANGE |
                          IMX6_PCIE_FLAG_SUPPORTS_SUSPEND,
-               .gpr = "fsl,imx6q-iomuxc-gpr",
+               .gpr = "fsl,imx6sx-iomuxc-gpr",
         },
         [IMX6QP] = {
                 .variant = IMX6QP,

