Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EABB55A80CB
	for <lists+devicetree@lfdr.de>; Wed, 31 Aug 2022 16:59:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229510AbiHaO7h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Aug 2022 10:59:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229607AbiHaO7g (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Aug 2022 10:59:36 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8B19D5725
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 07:59:29 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 2EAD58458A;
        Wed, 31 Aug 2022 16:59:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1661957966;
        bh=bXBeCMctDKs/WHm+cqbwCey/2FKaPqPEO6zp1Qw4pYI=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=SakM0k+ed9PDRiaPYkbL8nG6yuDpsOjx1lvSjAOGrb8sJ5XKKTauLEintnZ2xrtbg
         hcRVpwMayFhaMHYmSUBn8s6vvdHRW85OnXm/telKAxJ+G+6GO0vULBdJMVl1slojz/
         Je9KcpdGfrA9eYOG5KLnL+GPkFH4ScQVWuROvSBxex9Rv/iVQTrAV4qMqzOa/hj/eP
         OUTJfeAJ8cpdyRKumQWify4JvlQc5opkgeB+aGuoIdKI6ZCpX+NVmmv1v2BqXRqoLv
         XHA6YKd7IWkT0z4UCcAAIHPwcG7rx4OE6z7+XXzczQiNrM7OAu9jkotXewdkOQP53e
         TxVXSgLwNeyIQ==
Message-ID: <cce43275-2b2a-8f4a-9a0c-7a32413b5f55@denx.de>
Date:   Wed, 31 Aug 2022 16:59:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH] arm64: dts: imx8mp: Add SNVS LPGPR
Content-Language: en-US
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org
References: <20220823165602.275931-1-marex@denx.de>
 <11067634.nUPlyArG6x@steina-w> <95506426-6458-16c9-19c9-03f07aab734a@denx.de>
 <7425574.EvYhyI6sBW@steina-w>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <7425574.EvYhyI6sBW@steina-w>
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

On 8/31/22 16:58, Alexander Stein wrote:
> Hi Marek,
> 
> Am Mittwoch, 31. August 2022, 16:45:31 CEST schrieb Marek Vasut:
>> On 8/24/22 07:51, Alexander Stein wrote:
>>> Hello Marek,
>>
>> Hi,
>>
>>> Am Dienstag, 23. August 2022, 18:56:02 CEST schrieb Marek Vasut:
>>>> Add SNVS LPGPR bindings to MX8M Plus, the LPGPR is used to store
>>>> e.g. boot counter.
>>
>> [...]
>>
>>>> diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
>>>> b/arch/arm64/boot/dts/freescale/imx8mp.dtsi index
>>>> f7adcb2c14880..21689e9e68170 100644
>>>> --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
>>>> +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
>>>> @@ -478,6 +478,11 @@ snvs_pwrkey: snvs-powerkey {
>>>>
>>>>    					wakeup-source;
>>>>    					status = "disabled";
>>>>    				
>>>>    				};
>>>>
>>>> +
>>>> +				snvs_lpgpr: snvs-lpgpr {
>>>> +					compatible =
>>>
>>> "fsl,imx8mp-snvs-lpgpr",
>>>
>>>> +
>>>
>>> "fsl,imx7d-snvs-lpgpr";
>>>
>>>> +				};
>>>>
>>>>    			};
>>>>    			
>>>>    			clk: clock-controller@30380000 {
>>>
>>> Do you have any information that the i.MX8M Plus actually has the HPLR
>>> register (at offset 0)? This is used in snvs_lpgpr_write. I can't find it
>>> in the RM, although GPR_SL is referenced in LPGPRx register description.
>> It seems the HPLR is only documented in the Security RM (MX8MMSRM,
>> MX8MPSRM etc), not in the regular RM (MX8MMRM, MX8MPRM etc) . So it
>> seems the register does exist, including the soft lock bit, it is only
>> omitted from the plain RM.
>>
>> (also, sorry for the delayed reply)
> 
> Ah, there it is. Nice!
> 
> Reviewed-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Thank you
