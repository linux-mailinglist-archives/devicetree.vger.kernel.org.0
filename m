Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EF79270768D
	for <lists+devicetree@lfdr.de>; Thu, 18 May 2023 01:45:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229460AbjEQXpM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 May 2023 19:45:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60822 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229457AbjEQXpL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 May 2023 19:45:11 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8C9149DC
        for <devicetree@vger.kernel.org>; Wed, 17 May 2023 16:45:10 -0700 (PDT)
Received: from mail.denx.de (unknown [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: festevam@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 2074E84768;
        Thu, 18 May 2023 01:45:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1684367109;
        bh=dL0+UeJibxu8mzGrndHBRMbTCz4acRDAzM78ya9TO88=;
        h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
        b=B1IzQh0rG5rT6iXLxuG2LRuF0nH0FMdQrjSNrMKYkRKl13f7GS/mbksan+FvlYNO+
         Pn//XYyKCmgWEHRUmqfXtotfXanK1iiKLipDyfu5n+vfsxxackZ5sCwGGhkSq88uDh
         ExfQ9a0xxMKGT5CnTqg2K7ax7+oibOMzL9GjgRmiOxGKYuZgjY0QG/MyBSMjY67ETi
         mpU65Mpk2AXrcXQeec/0QDKQmmPWEiuiV6QRXVQxhhUaS3HSIlN0a/CXfSGKyCJyfl
         PmPq41C0KEqNG7jZpoar7zS/N/SS7pT/cSLHLr3LFMiM2Nq5b94Q6i+nurLZkJtEFz
         WNF8sRz/cRbJw==
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date:   Wed, 17 May 2023 20:45:09 -0300
From:   Fabio Estevam <festevam@denx.de>
To:     Marek Vasut <marex@denx.de>
Cc:     Fabio Estevam <festevam@gmail.com>, shawnguo@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ARM: dts: imx6sx: Add LDB support
In-Reply-To: <16ecb29a-4d52-9464-ecb0-2e45262af105@denx.de>
References: <20230517210210.12183-1-festevam@gmail.com>
 <16ecb29a-4d52-9464-ecb0-2e45262af105@denx.de>
Message-ID: <509c272d28cf3e6f642115fb424e51bc@denx.de>
X-Sender: festevam@denx.de
User-Agent: Roundcube Webmail/1.3.6
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek,

On 17/05/2023 20:15, Marek Vasut wrote:

>> diff --git a/arch/arm/boot/dts/imx6sx.dtsi 
>> b/arch/arm/boot/dts/imx6sx.dtsi
>> index 4233943a1cca..7a8a00d81666 100644
>> --- a/arch/arm/boot/dts/imx6sx.dtsi
>> +++ b/arch/arm/boot/dts/imx6sx.dtsi
>> @@ -843,8 +843,39 @@ iomuxc: pinctrl@20e0000 {
>>     			gpr: iomuxc-gpr@20e4000 {
>>   				compatible = "fsl,imx6sx-iomuxc-gpr",
>> -					     "fsl,imx6q-iomuxc-gpr", "syscon";
>> +					     "fsl,imx6q-iomuxc-gpr", "simple-bus", "syscon";
> 
> Can we really combine simple-bus and syscon or do we need something 
> like

Thanks for your review.

> 5a51e1f2b0834 ("arm64: dts: imx8mp: Drop simple-bus from
> fsl,imx8mp-media-blk-ctrl")

As is, if simple-bus is dropped, the LDB bus is not probed.

> 9cb6d1b39a8f5 ("soc: imx: imx8m-blk-ctrl: Scan subnodes and bind
> drivers to them")

On the i.MX6SX, I am not sure we can add devm_of_platform_populate() 
like in the
imx8m-blk-ctrl case.

imx8m-blk-ctrl has a probe function, but imx6q-iomuxc-gpr does not.

Thanks
