Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F31616C037D
	for <lists+devicetree@lfdr.de>; Sun, 19 Mar 2023 18:36:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229448AbjCSRgl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Mar 2023 13:36:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47684 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229488AbjCSRgk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Mar 2023 13:36:40 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 675691B2E0
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 10:36:39 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 70BEE81F10;
        Sun, 19 Mar 2023 18:36:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1679247394;
        bh=UdepYM5oUlCnWvfoYl2fa6mZAY6wNb5kbkQS9WyAhqA=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=Lx5emFqo/eLxKjU+RNW9NrDq/IeqYyRkKwmdt9Vu0//3Y1EdViaw8SDjMkHkJ2TF5
         2/h0py275OJKLsTJnEtaY48x04WM22LoGBKY6ydxw3Z7G8pjXiEkz/RtxCmT5KpF1Q
         Mf9y3lh0jvDRl2pHzPN2S1t0PTOxur21sN+JsUg9LWezoTv6OD9tIELv/l4VDMfev3
         aiG75ed2c4zlrcS1HyCqvqcVFFWEmDPg1UmUUCDo9U0E6xd93erbj8ZUKomJhicRuH
         hcmM+bcTkuRlpamrhiog9ouKgAZya1+kyo3EEOeVSu/stgDX2lYhKUH4ZZjaO+loZN
         DiIMUO7sIUquQ==
Message-ID: <7a281910-0502-d71a-1e76-d392b6ed187b@denx.de>
Date:   Sun, 19 Mar 2023 18:25:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 2/2] dt-bindings: soc: imx-blk-ctrl: Drop leading label in
 blk-ctrl in examples
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        devicetree@vger.kernel.org
Cc:     Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        linux-arm-kernel@lists.infradead.org
References: <20230317095827.49100-1-marex@denx.de>
 <20230317095827.49100-2-marex@denx.de>
 <5e41a328-2937-8616-2fa6-474854dcbdce@linaro.org>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <5e41a328-2937-8616-2fa6-474854dcbdce@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 3/19/23 12:21, Krzysztof Kozlowski wrote:
> On 17/03/2023 10:58, Marek Vasut wrote:
>> Drop the leading label in block controller examples, it is unused.
>>
>> Signed-off-by: Marek Vasut <marex@denx.de>
>> ---
>> Cc: Fabio Estevam <festevam@gmail.com>
>> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
>> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>> Cc: Lucas Stach <l.stach@pengutronix.de>
>> Cc: Marek Vasut <marex@denx.de>
>> Cc: NXP Linux Team <linux-imx@nxp.com>
>> Cc: Paul Elder <paul.elder@ideasonboard.com>
>> Cc: Peng Fan <peng.fan@nxp.com>
>> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
>> Cc: Richard Cochran <richardcochran@gmail.com>
>> Cc: Rob Herring <robh+dt@kernel.org>
>> Cc: Sascha Hauer <s.hauer@pengutronix.de>
>> Cc: Shawn Guo <shawnguo@kernel.org>
>> Cc: devicetree@vger.kernel.org
>> Cc: linux-arm-kernel@lists.infradead.org
>> ---
>> Note: This was suggested by Krzysztof as part of requested changes to commit
>>        0d2c843ce5adb ("dt-bindings: soc: imx8mp-media-blk-ctrl: Align block controller example name")
>>        Expand the change onto all the block controllers.
>> ---
>>   .../devicetree/bindings/soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml   | 2 +-
>>   .../devicetree/bindings/soc/imx/fsl,imx8mm-vpu-blk-ctrl.yaml    | 2 +-
>>   .../devicetree/bindings/soc/imx/fsl,imx8mn-disp-blk-ctrl.yaml   | 2 +-
>>   .../devicetree/bindings/soc/imx/fsl,imx8mp-hsio-blk-ctrl.yaml   | 2 +-
>>   .../devicetree/bindings/soc/imx/fsl,imx8mq-vpu-blk-ctrl.yaml    | 2 +-
>>   .../devicetree/bindings/soc/imx/fsl,imx93-media-blk-ctrl.yaml   | 2 +-
>>   6 files changed, 6 insertions(+), 6 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml
>> index e8da8f413966b..a02a09d574a2c 100644
>> --- a/Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml
>> +++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml
>> @@ -70,7 +70,7 @@ examples:
>>       #include <dt-bindings/clock/imx8mm-clock.h>
>>       #include <dt-bindings/power/imx8mm-power.h>
>>   
>> -    disp_blk_ctl: blk-ctrl@32e28000 {
>> +    blk-ctrl@32e28000 {
> 
> This piece should be squashed with previous. You are changing the same
> line twice with two cleanups. It's still a cleanup.

I hope its OK to keep one type of change (fix node name vs. drop labels) 
per patch . The two patches also modify different files , so I don't 
want to fix them up.
