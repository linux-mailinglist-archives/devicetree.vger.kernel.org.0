Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 149C26470C8
	for <lists+devicetree@lfdr.de>; Thu,  8 Dec 2022 14:29:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229728AbiLHN3x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Dec 2022 08:29:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46346 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229651AbiLHN3v (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Dec 2022 08:29:51 -0500
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 788688658F
        for <devicetree@vger.kernel.org>; Thu,  8 Dec 2022 05:29:50 -0800 (PST)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id E5CB984225;
        Thu,  8 Dec 2022 14:29:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1670506188;
        bh=QrRDcmJYHfZ/8CRLaxVVa3DyWhoJmGkp8JDv+shpaK4=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=bumXoatBWUMh3cNIdcgkI6BJDXxm+Q4tXe3DQNljcb5J6K+U+/McPIXX7fshT3L4M
         VP5VKocvJvHEUzKzlvTACAJ3/UqFxpCbXgc7deWuxfhdYwGduB3Sv6PWxar6wErjqh
         GlCh1nc905nt7s4Vwfh0D8dc6R4VGLxXOqg8mSz4tCLIa4coLtacLV/BzxtAFfSYdz
         vzD/HzDbddnfZudFCFLlbLnPjm/dsLUnzkYRtyHPi5m58BxqQXTSoKLDf0H7u3KLBQ
         oE2t5KC6FKn8YcBR+6yXwUQXZqx2szVQrYTis7Wr30W/QIYqFLxqFhDPeBmssmRqBe
         KljkhQawGTFpg==
Message-ID: <44f24d39-d593-0da4-d9d3-2e0cf283b6ca@denx.de>
Date:   Thu, 8 Dec 2022 14:25:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH 1/2] dt-bindings: lcdif: Fix clock constraints for imx8mp
Content-Language: en-US
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
References: <20221207151400.1572582-1-alexander.stein@ew.tq-group.com>
 <e5d8f530-9814-48eb-76b3-e4712300466d@denx.de> <2861512.e9J7NaK4W3@steina-w>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <2861512.e9J7NaK4W3@steina-w>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/8/22 07:31, Alexander Stein wrote:
> Hello Marek,
> 
> Am Mittwoch, 7. Dezember 2022, 16:59:50 CET schrieb Marek Vasut:
>> On 12/7/22 16:13, Alexander Stein wrote:
>>> i.MX8MP uses 3 clocks, so soften the restrictions for clocks &
>>> clock-names.
>>>
>>> Fixes: f5419cb0743f ("dt-bindings: lcdif: Add compatible for i.MX8MP")
>>> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
>>> ---
>>>
>>>    Documentation/devicetree/bindings/display/fsl,lcdif.yaml | 4 +++-
>>>    1 file changed, 3 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
>>> b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml index
>>> 876015a44a1e6..793e8eccf8b8b 100644
>>> --- a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
>>> +++ b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
>>>
>>> @@ -70,7 +70,9 @@ allOf:
>>>          properties:
>>>            compatible:
>>>              contains:
>>> -            const: fsl,imx6sx-lcdif
>>> +            enum:
>>> +              - fsl,imx6sx-lcdif
>>> +              - fsl,imx8mp-lcdif
>>>
>>>        then:
>>>          properties:
>>>            clocks:
>> Reviewed-by: Marek Vasut <marex@denx.de>
> 
> Thanks!
> 
>> btw you might want to update the clock-names and clock proerty order in
>> imx8mp.dtsi to match the clock-names order in these bindings.
> 
> The lcdif nodes are not yet in linux-next ;-) So its probably a local commit
> on your side. But yes, the upcoming patches will address this.

Ah, right, seems they are still pending HDMI and DSIM addition. Sorry 
for the noise.
