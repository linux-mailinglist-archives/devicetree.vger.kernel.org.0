Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6777B64EACC
	for <lists+devicetree@lfdr.de>; Fri, 16 Dec 2022 12:43:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230287AbiLPLnl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Dec 2022 06:43:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45496 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230140AbiLPLnk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Dec 2022 06:43:40 -0500
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 365AF14D1C
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 03:43:39 -0800 (PST)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 5336080241;
        Fri, 16 Dec 2022 12:43:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1671191017;
        bh=os9cbkuKm22h5TAVF4/HTcEhqBCX5ScioFjm3BiVeRA=;
        h=Date:From:Subject:To:Cc:References:In-Reply-To:From;
        b=qp/dHRnlCit+e8zB4kYKMYuMGuTxHyl7wQJtWr7mIwDwUMXcVEtkCA9okqUiEepxR
         XsWP9u8+IixJpSUSsa2CrMGnqr+DL/wEtP/rF2VL3hJVad1RDTbtG8V5G3xEtg+JME
         YgptQ8e4V+3IAc8byZgkInfm3f7HxIKFeboyTQDQaOupXzxXPl6iPoy8hFOce5O3Gj
         PNe2xgUCuIO2zPWSlNI8oZq+PNh3SK2rw3WdG1QUjJB6lD2Jmqo4PWs81y8Wj5MPVv
         bTTydg+zoz4f7DAAeXMWN0MI3RBNPlwAiyX+ujSlrDTnc3ISyKHFLM8k8z8s4J3yYP
         EnDQaN7ilS6ZQ==
Message-ID: <3145f5ee-5e25-c105-5aa9-6c76dc531173@denx.de>
Date:   Fri, 16 Dec 2022 12:43:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
From:   Marek Vasut <marex@denx.de>
Subject: Re: [PATCH 1/4] dt-bindings: arm: Split i.MX8M Mini Toradex Verdin
 based boards
To:     Francesco Dolcini <francesco@dolcini.it>
Cc:     linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>,
        Francesco Dolcini <francesco.dolcini@toradex.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org
References: <20221215232137.144256-1-marex@denx.de>
 <Y5wbwsKJj/H0wjSH@francesco-nb.int.toradex.com>
Content-Language: en-US
In-Reply-To: <Y5wbwsKJj/H0wjSH@francesco-nb.int.toradex.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/16/22 08:18, Francesco Dolcini wrote:
> Hello Marek

Hi,

> On Fri, Dec 16, 2022 at 12:21:34AM +0100, Marek Vasut wrote:
>> The Toradex Verdin based boards have compatible string in the form:
>> "vendor,custom-board", "toradex,som", "fsl,soc"
>> Split the binding entry so this triplet can be matched on.
>>
>> Signed-off-by: Marek Vasut <marex@denx.de>
>> ---
>> Cc: Fabio Estevam <festevam@denx.de>
>> Cc: Francesco Dolcini <francesco.dolcini@toradex.com>
>> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
>> Cc: Marcel Ziswiler <marcel.ziswiler@toradex.com>
>> Cc: Peng Fan <peng.fan@nxp.com>
>> Cc: Rob Herring <robh+dt@kernel.org>
>> Cc: Shawn Guo <shawnguo@kernel.org>
>> Cc: NXP Linux Team <linux-imx@nxp.com>
>> Cc: devicetree@vger.kernel.org
>> To: linux-arm-kernel@lists.infradead.org
>> ---
>>   Documentation/devicetree/bindings/arm/fsl.yaml | 7 ++++++-
>>   1 file changed, 6 insertions(+), 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
>> index 05b5276a0e14c..8dda0e25b99e4 100644
>> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
>> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
>> @@ -830,7 +830,6 @@ properties:
>>                 - innocomm,wb15-evk         # i.MX8MM Innocomm EVK board with WB15 SoM
>>                 - kontron,imx8mm-sl         # i.MX8MM Kontron SL (N801X) SOM
>>                 - kontron,imx8mm-osm-s      # i.MX8MM Kontron OSM-S (N802X) SOM
>> -              - menlo,mx8menlo            # i.MX8MM Menlo board with Verdin SoM
>>                 - toradex,verdin-imx8mm     # Verdin iMX8M Mini Modules
>>                 - toradex,verdin-imx8mm-nonwifi  # Verdin iMX8M Mini Modules without Wi-Fi / BT
>>                 - toradex,verdin-imx8mm-wifi  # Verdin iMX8M Mini Wi-Fi / BT Modules
>> @@ -838,6 +837,12 @@ properties:
>>                 - prt,prt8mm                # i.MX8MM Protonic PRT8MM Board
>>             - const: fsl,imx8mm
>>   
>> +      - description: Verdin iMX8M Mini Module based Boards
> I would expect here something like "i.MX8MM Menlo board with Verdin SoM", am I wrong?

Partly wrong, look at 4/4 patch in this series for how this would grow 
once more boards based on the Verdin SoM would be added. The first 
-const: would turn into enum, the remaining two -const: would remain 
(different carrier board, same SoM, same SoC).
