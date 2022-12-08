Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3BB7C646807
	for <lists+devicetree@lfdr.de>; Thu,  8 Dec 2022 04:54:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229604AbiLHDy1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Dec 2022 22:54:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229576AbiLHDy0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Dec 2022 22:54:26 -0500
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D42B58C45B
        for <devicetree@vger.kernel.org>; Wed,  7 Dec 2022 19:54:25 -0800 (PST)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 750278363D;
        Thu,  8 Dec 2022 04:54:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1670471664;
        bh=28B4LZ7riZ54291BkOYL+44UAPvwNu1oiDTG1vq6Dnw=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=LVLudGUrtZLdQyzd7btWWETncl1VK+1/CIQdXlEAzIgoo+vkx8G/so05iWR9XL0aN
         oJ3rJAVrTY6UI/zOa8f+KC1kXiEtsH/g9lypJ7GvprzQjjFMgTZLeMlNP/NEsPdb+p
         FY4TWuxeLVYuLp8Nqmi97OBRDooyzull8RI4rRxyGAxIX5CEeSHmbuQHJSaiWcG7Fy
         IFXYRC+lRFeBiBp19SAvLvpHGGcR+rk6F+jU+dhXT575UZTNXj7O+BgwVieEoHIpFK
         IJAqk8wd/tItn9JGojbzHs6tqL5sEkSK2YgLAUw54ZI2N7hR8c0ZS0ur0hsxpOUMx8
         hQgGBP8UZLZKw==
Message-ID: <adbdb85e-c6b8-918f-add5-0e569e9b343d@denx.de>
Date:   Thu, 8 Dec 2022 04:54:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH 1/3] ASoC: dt-bindings: fsl-sai: Fix mx6ul and mx7d
 compatible strings
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
        Jaroslav Kysela <perex@perex.cz>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Nicolin Chen <nicoleotsuka@gmail.com>,
        Shengjiu Wang <shengjiu.wang@gmail.com>,
        Takashi Iwai <tiwai@suse.com>, Xiubo Li <Xiubo.Lee@gmail.com>,
        alsa-devel@alsa-project.org
References: <20221104160315.213836-1-marex@denx.de>
 <20221208022151.GA3383136-robh@kernel.org>
Content-Language: en-US
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <20221208022151.GA3383136-robh@kernel.org>
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

On 12/8/22 03:21, Rob Herring wrote:
> On Fri, Nov 04, 2022 at 05:03:13PM +0100, Marek Vasut wrote:
>> Describe existing used combinations of compatible strings on MX6UL
>> and MX7D, which are backward compatible with MX6SX. Add the missing
>> imx7d-sai compatible string which is used on i.MX7 .
>>
>> Signed-off-by: Marek Vasut <marex@denx.de>
>> ---
>> Cc: Fabio Estevam <festevam@gmail.com>
>> Cc: Jaroslav Kysela <perex@perex.cz>
>> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
>> Cc: Liam Girdwood <lgirdwood@gmail.com>
>> Cc: Mark Brown <broonie@kernel.org>
>> Cc: Nicolin Chen <nicoleotsuka@gmail.com>
>> Cc: Rob Herring <robh+dt@kernel.org>
>> Cc: Shengjiu Wang <shengjiu.wang@gmail.com>
>> Cc: Takashi Iwai <tiwai@suse.com>
>> Cc: Xiubo Li <Xiubo.Lee@gmail.com>
>> Cc: alsa-devel@alsa-project.org
>> To: devicetree@vger.kernel.org
>> ---
>>   .../devicetree/bindings/sound/fsl,sai.yaml    | 24 ++++++++++++-------
>>   1 file changed, 15 insertions(+), 9 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/sound/fsl,sai.yaml b/Documentation/devicetree/bindings/sound/fsl,sai.yaml
>> index 11aab891288d2..05bad828cc353 100644
>> --- a/Documentation/devicetree/bindings/sound/fsl,sai.yaml
>> +++ b/Documentation/devicetree/bindings/sound/fsl,sai.yaml
>> @@ -18,15 +18,12 @@ description: |
>>   properties:
>>     compatible:
>>       oneOf:
>> -      - enum:
>> -          - fsl,vf610-sai
>> -          - fsl,imx6sx-sai
>> -          - fsl,imx6ul-sai
>> -          - fsl,imx7ulp-sai
>> -          - fsl,imx8mq-sai
>> -          - fsl,imx8qm-sai
>> -          - fsl,imx8ulp-sai
>> -          - fsl,imx93-sai
> 
> fsl,imx93-sai got lost in this patch.
> 
> (found checking for new undocumented compatibles in next with
> scripts/dtc/dt-extract-compatibles)

Fix sent, thanks.
