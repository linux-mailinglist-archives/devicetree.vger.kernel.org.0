Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4ACFF70BF84
	for <lists+devicetree@lfdr.de>; Mon, 22 May 2023 15:20:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229486AbjEVNUd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 May 2023 09:20:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43808 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234170AbjEVNUb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 May 2023 09:20:31 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16C6992
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 06:20:30 -0700 (PDT)
Received: from [127.0.0.1] (unknown [62.91.23.180])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 6FEC38445D;
        Mon, 22 May 2023 15:20:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1684761628;
        bh=zv531Q2E0AHjlxQs8jhUbM5Pklyk9GJFYmH5dXjtLJw=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=UOYmiZzphG3StwATKHF/vlS46h/MCDX9h5AuMI+9A45joVwrZqeGFm40oGEubNJs3
         9NLu/fwcMuHiEVqeFzKVsA0S4n/uvJD6wLV7JaBc03snuXhbHdvLv/Gjjhtx+Vg/tC
         PdeXcK95WrH4E1At7ZuNfc5/2IOUVrqZPdnC2HxzQGcVdhrBpOBpFgr4R/sFN5HmY/
         EQzdctIYg2J7JIWbBe0PwqGilJRIPM3FFklNhSYrwfpy6bL08DJSYghZ1isdziiFpm
         VrYjeVxAai+iBXttqgBD+njEd9XaE/ptZ2VT1c4BMkBrwg6ZjYtuPKWYGug8A5M/rt
         25jhbiQ+dubVQ==
Message-ID: <8d15b607-2a0c-91dc-33ce-8a0066ff9b11@denx.de>
Date:   Mon, 22 May 2023 15:20:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v5 2/4] dt-bindings: soc: Add i.MX6SX General Purpose
 Register
Content-Language: en-US
To:     Fabio Estevam <festevam@gmail.com>, shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        conor+dt@kernel.org, Fabio Estevam <festevam@denx.de>
References: <20230522125129.526604-1-festevam@gmail.com>
 <20230522125129.526604-2-festevam@gmail.com>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <20230522125129.526604-2-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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

On 5/22/23 14:51, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> The i.MX6SX General Purpose Registers is a set of register that serves
> various different purposes and in particular, IOMUXC_GPR_GPR6, at
> offset 0x18, can be used to configure the LDB block.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
> Changes since v4:
> - Renamed to syscon@20e4000 (Conor).
> 
>   .../bindings/soc/imx/fsl,imx6sx-gpr.yaml      | 84 +++++++++++++++++++
>   1 file changed, 84 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,imx6sx-gpr.yaml
> 
> diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx6sx-gpr.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx6sx-gpr.yaml
> new file mode 100644
> index 000000000000..22777ecfb56b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx6sx-gpr.yaml
> @@ -0,0 +1,84 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/soc/imx/fsl,imx6sx-gpr.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NXP i.MX6SX General Purpose Register
> +
> +maintainers:
> +  - Fabio Estevam <festevam@denx.de>
> +
> +description:
> +  The i.MX6SX General Purpose Registers is a set of register that serves
> +  for various purposes and in particular, IOMUXC_GPR_GPR6, at offset 0x18,
> +  can be used to configure the LDB block.
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: fsl,imx6sx-iomuxc-gpr
> +      - const: fsl,imx6q-iomuxc-gpr
> +      - const: syscon

Take a look at MX6Q and notice how the iomuxc and GPR register sets 
share the same base address . That's different on MX6SX where they are 
separate. So I think this binding should be specific to MX6SX ONLY and 
for MX6Q the subnode probing should be handled in the IOMUXC driver 
instead , i.e. drop the fsl,imx6q-iomuxc-gpr here and in imx6sx.dtsi .

$ git grep -A 2 @20e0000 arch/arm/boot/dts/imx6qdl.dtsi
arch/arm/boot/dts/imx6qdl.dtsi:                 gpr: iomuxc-gpr@20e0000 {
arch/arm/boot/dts/imx6qdl.dtsi-                         compatible = 
"fsl,imx6q-iomuxc-gpr", "syscon", "simple-mfd";
arch/arm/boot/dts/imx6qdl.dtsi-                         reg = <0x20e0000 
0x38>;
--
arch/arm/boot/dts/imx6qdl.dtsi:                 iomuxc: pinctrl@20e0000 {
arch/arm/boot/dts/imx6qdl.dtsi-                         compatible = 
"fsl,imx6dl-iomuxc", "fsl,imx6q-iomuxc";
arch/arm/boot/dts/imx6qdl.dtsi-                         reg = <0x20e0000 
0x4000>;

