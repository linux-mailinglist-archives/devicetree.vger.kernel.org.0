Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 118A1727199
	for <lists+devicetree@lfdr.de>; Thu,  8 Jun 2023 00:25:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231259AbjFGWZp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Jun 2023 18:25:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40584 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231376AbjFGWZi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Jun 2023 18:25:38 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 29D812694
        for <devicetree@vger.kernel.org>; Wed,  7 Jun 2023 15:25:00 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id B6F0B809A5;
        Thu,  8 Jun 2023 00:23:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1686176629;
        bh=I6alclyLIEhEYIQZU3G+U5WK5aYI/CFmzZozxEUpp84=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=zIsacbbbNwXmSfC6jzDeucnnOf7f0+k5pR/RdnF4cgJrAU4unhOmu5/QKC67L9VbA
         Kwjk+dKa019KO0D/EO6f3NG/pmNeAJ2wU3xQ8Didwf28X38Pb7L0kN7WaHGtFHnuWj
         Q/FrAVJkEOe+QDIbyfbrFN9xBbDWw2jaZfeOMD1nIlFciwwOoG//0zAoJd0o+WfCOy
         CjfCT2K79ZfSD+t9H2wrkNVWFWQzYwztvOZElWwZBeYEipPMOY9+wuVXVT4kU79T8h
         L8DZ5lVXPbdCE1dp7hm6y62kQX6dlDUnQCRRsc8rcx9LYFpU9USV0YKzdqS7Lpjp5q
         o4QdbXxqZrs5g==
Message-ID: <eb608fd4-7b97-8d7b-5855-0f953832bf9a@denx.de>
Date:   Thu, 8 Jun 2023 00:23:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 1/2] dt-bindings: timer: fsl,imxgpt: Add i.MX8MP variant
Content-Language: en-US
To:     =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>
References: <20230327173526.851734-1-u.kleine-koenig@pengutronix.de>
 <20230327173526.851734-2-u.kleine-koenig@pengutronix.de>
 <20230514221729.zk3xvgmkeubooiwd@pengutronix.de>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <20230514221729.zk3xvgmkeubooiwd@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 5/15/23 00:17, Uwe Kleine-König wrote:
> Hello,
> 
> On Mon, Mar 27, 2023 at 07:35:25PM +0200, Uwe Kleine-König wrote:
>> The i.MX8MP has the same register layout as the i.MX6DL, so add it as a
>> variant allowing to add the GPT IP blocks to the i.MX8MP's dtsi file.
>>
>> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
>> ---
>>   Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml b/Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml
>> index 716c6afcca1f..f5f8b297da13 100644
>> --- a/Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml
>> +++ b/Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml
>> @@ -31,6 +31,7 @@ properties:
>>             - enum:
>>                 - fsl,imx6sl-gpt
>>                 - fsl,imx6sx-gpt
>> +              - fsl,imx8mp-gpt
>>                 - fsl,imxrt1050-gpt
>>                 - fsl,imxrt1170-gpt
>>             - const: fsl,imx6dl-gpt
> 
> Patch 2 (which makes use of fsl,imx8mp-gpt in the imx8mp.dtsi) is
> already applied. I wonder who will pick up this one?!

Rob, since you just applied

[PATCH V4 2/2] dt-bindings: imxgpt: add imx6ul compatible

Can you please also pick this one ?
