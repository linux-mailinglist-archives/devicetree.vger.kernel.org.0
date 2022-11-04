Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4382C619592
	for <lists+devicetree@lfdr.de>; Fri,  4 Nov 2022 12:46:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231710AbiKDLqO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Nov 2022 07:46:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59160 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231682AbiKDLqM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Nov 2022 07:46:12 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 242F92CE18
        for <devicetree@vger.kernel.org>; Fri,  4 Nov 2022 04:46:11 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id E0504850FD;
        Fri,  4 Nov 2022 12:46:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1667562369;
        bh=serea9Dd61ADrxdfYjX6D7Pe24xNMWckuTa4T82u48k=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=AhmK5JQy7N5kAS9PZuqi0fhLVd6rm98iwFX1Vpjg6hlSaad5jrc3+HwGyXcthHboP
         9MetQRTD+4XXoJIglw/v8IYJEUVTrPD+nLGmKzTBLn8mLH5VQdbXop9sutt7nYzlYi
         O5T1ox6lwnahnCQHF2p4qARo3oSnTGWuWX6o0Mz6+spL7tRNDu/iU8Ept8W5ZJ/rBO
         gt5qnJilf97ljaBFm7JhHc0pBlA6nZLDMPrx1ER8ASzKmlhEOgtgInEDpwoOsVwjYN
         hFoJPRl4wTOOvdzhlGWY02C6ghpZACaeei9oX6yyag3+tnpnZRdaAJ2fCR27KlXiX+
         qTXvKt5IqKmCQ==
Message-ID: <55c564c9-af7a-bc34-0340-d31bf7ffb0c8@denx.de>
Date:   Fri, 4 Nov 2022 12:22:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH] ASoC: dt-bindings: fsl-sai: Convert to YAML DT schema
Content-Language: en-US
To:     Shengjiu Wang <shengjiu.wang@gmail.com>
Cc:     devicetree@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
        Jaroslav Kysela <perex@perex.cz>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Nicolin Chen <nicoleotsuka@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Takashi Iwai <tiwai@suse.com>, Xiubo Li <Xiubo.Lee@gmail.com>,
        alsa-devel@alsa-project.org
References: <20221103182016.95808-1-marex@denx.de>
 <CAA+D8ANyXq7N+QfupnncTiJjEb8AN7hnb6T-1Cf8xs8yfYUFfg@mail.gmail.com>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <CAA+D8ANyXq7N+QfupnncTiJjEb8AN7hnb6T-1Cf8xs8yfYUFfg@mail.gmail.com>
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

On 11/4/22 09:11, Shengjiu Wang wrote:
> On Fri, Nov 4, 2022 at 2:20 AM Marek Vasut <marex@denx.de> wrote:
> 
>> Convert the SAI bindings to YAML DT schema to permit validation.
>> Add Shengjiu as maintainer, derived from sound/soc/fsl/fsl_sai.c
>> get_maintainer result.
>>
>> Describe existing used combinations of compatible strings, add the
>> missing imx7d-sai compatible string which is used on i.MX7 .
>>
>> Properties lsb-first, fsl,sai-synchronous-rx, fsl,sai-asynchronous,
>> fsl,dataline are no longer listed as required, since those are clearly
>> optional, even the description says so, so does their usage.
>>
>> Fix the undefined edma channel macro per arch/arm/boot/dts/vfxxx.dtsi ,
>> use the value itself just like in the vfxxx.dtsi .
>>
>> Document interrupts property, which was previously undocumented, but
>> it is required property of this IP.
>>
>> Document #sound-sai-cells, which should be zero for this IP.
>>
>> Document fsl,imx6ul-iomuxc-gpr and its dependency on MX6UL and
>> fsl,sai-mclk-direction-output .
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
>>   .../devicetree/bindings/sound/fsl-sai.yaml    | 188 ++++++++++++++++++
>>
> 
> Documentation/devicetree/bindings/sound/fsl,sai.yaml
> I have done conversion. If there is any update/change, please send patch
> base on it.

I noticed that, thanks for that. I'll see if there is anything left to do.
