Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 150A25F9FB8
	for <lists+devicetree@lfdr.de>; Mon, 10 Oct 2022 15:57:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229570AbiJJN5m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Oct 2022 09:57:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39482 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229628AbiJJN5l (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Oct 2022 09:57:41 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD73E659E2
        for <devicetree@vger.kernel.org>; Mon, 10 Oct 2022 06:57:40 -0700 (PDT)
Received: from [192.168.0.43] (cpc141996-chfd3-2-0-cust928.12-3.cable.virginm.net [86.13.91.161])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id C6E1FE3A;
        Mon, 10 Oct 2022 15:57:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1665410259;
        bh=0XnugPWQh8HgApGZ66BaniiiDeG8Q+hNdXkIZcsRzhA=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=AfLrEsj8HIWmrOGVpzbqf1xc+BXh6rucdcjtwVfLXAZ9vW7NMkqlxcTiV/2zsOpap
         LPDLx2IGKM9UTJ3KxvKGiWoo477GAFOy9r/9qM43Yzdm/vVifNO4bR8ns1R+WQxviH
         hsTkPJib0KMAhtMcbN6GRPtqTDptEpLLrYHkH3bM=
Message-ID: <7a7699fd-d8aa-3657-eefc-16bac57ff444@ideasonboard.com>
Date:   Mon, 10 Oct 2022 14:57:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH v2 2/3] dt-bindings: arm: fsl: Enumerate Debix Model A
 Board
Content-Language: en-US
To:     Kieran Bingham <kieran.bingham@ideasonboard.com>,
        devicetree@vger.kernel.org, krzysztof.kozlowski@linaro.org,
        leoyang.li@nxp.com, linux-arm-kernel@lists.infradead.org,
        marcel.ziswiler@toradex.com, robh@kernel.org, shawnguo@kernel.org
Cc:     s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
        linux-imx@nxp.com, laurent.pinchart@ideasonboard.com,
        debix-tech@polyhex.net
References: <20221010133146.1430768-1-dan.scally@ideasonboard.com>
 <20221010133146.1430768-3-dan.scally@ideasonboard.com>
 <166541021982.3760285.2314715216039776873@Monstersaurus>
From:   Dan Scally <dan.scally@ideasonboard.com>
In-Reply-To: <166541021982.3760285.2314715216039776873@Monstersaurus>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,SPF_HELO_PASS,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Kieran

On 10/10/2022 14:56, Kieran Bingham wrote:
> Quoting Daniel Scally (2022-10-10 14:31:45)
>> Add an entry to the list of imx8mp boards denoting the Debix Model A
>> board from Polyhex Technology Co.
>>
>> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Reviewed-by: Kieran Bingham <kieran.bingham@ideasonboard.com>
>> Signed-off-by: Daniel Scally <dan.scally@ideasonboard.com>
>> ---
>> Changes in v2:
>>
>>      - Dropped 2gb suffix, added hyphens for readability (Laurent)
>>
>>   Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
>> index 7431579ab0e8..fc0c8eb15114 100644
>> --- a/Documentation/devicetree/bindings/arm/fsl.yaml
>> +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
>> @@ -931,6 +931,7 @@ properties:
>>                 - dh,imx8mp-dhcom-pdk2      # i.MX8MP DHCOM SoM on PDK2 board
>>                 - fsl,imx8mp-evk            # i.MX8MP EVK Board
>>                 - gateworks,imx8mp-gw74xx   # i.MX8MP Gateworks Board
>> +              - polyhex,imx8mp-debix-model-a # Polyhex Debix Model A (2GB) Board
> If we've dropped the 2gb suffix from the compatible string, does that
> mean we should drop it from the description too? I presume the
> implication is that we can support different sizes from the same compat
> string.
Argh! Yes, my bad - I'll fix that.
>
>>                 - toradex,verdin-imx8mp     # Verdin iMX8M Plus Modules
>>                 - toradex,verdin-imx8mp-nonwifi  # Verdin iMX8M Plus Modules without Wi-Fi / BT
>>                 - toradex,verdin-imx8mp-wifi  # Verdin iMX8M Plus Wi-Fi / BT Modules
>> -- 
>> 2.34.1
>>
