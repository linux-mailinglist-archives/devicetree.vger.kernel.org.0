Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BF68E5622EF
	for <lists+devicetree@lfdr.de>; Thu, 30 Jun 2022 21:17:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236254AbiF3TQ6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Jun 2022 15:16:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232971AbiF3TQ6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Jun 2022 15:16:58 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D099842A16
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 12:16:56 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id AD3B3843D5;
        Thu, 30 Jun 2022 21:16:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1656616614;
        bh=L2u0dfBn1vdA2DNFIR8pjjt6S9P+38lA1cZF0XNaV7A=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=N6HQs8tsNClLbzYC2fXXYE13YWPRD02bMJXnwnvusW70bjowAHT3bOVfx1wzHaksN
         lqXrXP0mlT+OONfUI9H2QUUmrVEjZprSzkxtQNOpjqwruoWiFsHXha2/bbgmqPkRJB
         /RP6qxTuLdglR64E5LP/9r5P7XzqDWt4852an+9+5q+q/vtIAY1FgP3c+SskLLtu/l
         7pLA02ZsLTBrfAEMeBc04H2dHq6aotRaDGL799D+2pFKorbCN247ZnaVyTQkAHnGnh
         RVLQMPcDPSmpIPDdtn/Ax5WcHG9nvfF9mc3L2MgBrcIRvyhQq8rT6Y8oOnzAi2XF7x
         36DQ+Te8+JnkQ==
Message-ID: <b6badccf-8910-da26-bbcc-1302d957a2bd@denx.de>
Date:   Thu, 30 Jun 2022 21:16:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH] dt-bindings: soc: imx8mp-media-blk-ctrl: Add LDB into DT
 example
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-kernel@lists.infradead.org
Cc:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org
References: <20220630173922.92296-1-marex@denx.de>
 <f0366170-c1b6-9573-3e9c-9b1ace2dfbad@linaro.org>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <f0366170-c1b6-9573-3e9c-9b1ace2dfbad@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 6/30/22 21:11, Krzysztof Kozlowski wrote:
> On 30/06/2022 19:39, Marek Vasut wrote:
>> Document the LDB bridge subnode and add the subnode into the example.
>> For the subnode to work, the block control must be compatible with
>> simple-mfd in addition to the existing compatibles.
>>
>> Signed-off-by: Marek Vasut <marex@denx.de>
>> Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>> Cc: Lucas Stach <l.stach@pengutronix.de>
>> Cc: NXP Linux Team <linux-imx@nxp.com>
>> Cc: Paul Elder <paul.elder@ideasonboard.com>
>> Cc: Peng Fan <peng.fan@nxp.com>
>> Cc: Rob Herring <robh+dt@kernel.org>
>> Cc: devicetree@vger.kernel.org
>> ---
>>   .../soc/imx/fsl,imx8mp-media-blk-ctrl.yaml    | 54 ++++++++++++++++++-
>>   1 file changed, 53 insertions(+), 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
>> index b246d8386ba4a..05a19d3229830 100644
>> --- a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
>> +++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-media-blk-ctrl.yaml
>> @@ -18,11 +18,18 @@ properties:
>>     compatible:
>>       items:
>>         - const: fsl,imx8mp-media-blk-ctrl
>> +      - const: simple-mfd
> 
> Not really... simple-mfd means devices is really simple and you just use
> it to instantiate children. However this is not simple - it's a power
> domain controller with several clocks and power domains as input.
> 
> It's not a simple MFD, but a regular device.

I don't understand this comment. The LDB bridge is literally two 
registers with a few bits in this media block controller register area. 
Can you expand on why the simple-mfd is unsuitable and what should it be 
instead ?
