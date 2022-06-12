Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8F18D5479B0
	for <lists+devicetree@lfdr.de>; Sun, 12 Jun 2022 12:12:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230349AbiFLKMt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Jun 2022 06:12:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235937AbiFLKMs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Jun 2022 06:12:48 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00ACF5047F
        for <devicetree@vger.kernel.org>; Sun, 12 Jun 2022 03:12:46 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 899F1842F6;
        Sun, 12 Jun 2022 12:12:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1655028764;
        bh=iL5hnSo6wCRqC1y/dBb0cHXOXmRlTqAtgtWWvZC4RqQ=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=PE0eiEu4oLpWsnWwsk8tkvuX97kxIgEaMhDG3Ds6wNZelIvGvSUBONI1Grn2gZum6
         a1cs6RMEP5FiH+Qtz1qXUrPGUyzLEp9SBk+j78uEMzeRvJ9F8spyMms7Mb0Op4SXQr
         I1NcCYs3LpsxwcWYvRT88INFsRl6G5V0BkKVhAX8SexfLG62ux4doOUSa/tk4IxbPA
         qAUnSOdD9BEZxEqk2axOkmxhYb0TS1jFm54WqacvgsClmg5uRoM2ovkMgccoqrUS2G
         BOjnKECMyErMz7KOHKT4GtgTkix2azn962FpH0Q4kDVHkBYHsUfIjc40Q3oUiadpFU
         e9hapucK6P+fQ==
Message-ID: <d432fd4e-b470-a38c-026e-74b87993caf7@denx.de>
Date:   Sun, 12 Jun 2022 12:12:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH] arm64: dts: imx8mm: Add SNVS LPGPR on MX8Menlo board
Content-Language: en-US
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org
References: <20220521150750.93718-1-marex@denx.de>
 <20220612003041.GK254723@dragon>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <20220612003041.GK254723@dragon>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.5 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-5.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 6/12/22 02:30, Shawn Guo wrote:
> On Sat, May 21, 2022 at 05:07:50PM +0200, Marek Vasut wrote:
>> Add SNVS LPGPR bindings on this system, the LPGPR is used to store
>> boot counter.
>>
>> Signed-off-by: Marek Vasut <marex@denx.de>
>> Cc: Fabio Estevam <festevam@denx.de>
>> Cc: Marcel Ziswiler <marcel.ziswiler@toradex.com>
>> Cc: Peng Fan <peng.fan@nxp.com>
>> Cc: Rob Herring <robh+dt@kernel.org>
>> Cc: Shawn Guo <shawnguo@kernel.org>
>> Cc: NXP Linux Team <linux-imx@nxp.com>
>> Cc: devicetree@vger.kernel.org
>> To: linux-arm-kernel@lists.infradead.org
>> ---
>> NOTE: Depends on
>>        https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git/commit/?h=for-next&id=fee6de80bdd3df976a43f3092a165cb43c072f20
>> ---
>>   arch/arm64/boot/dts/freescale/imx8mm-mx8menlo.dts | 6 ++++++
>>   1 file changed, 6 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-mx8menlo.dts b/arch/arm64/boot/dts/freescale/imx8mm-mx8menlo.dts
>> index 92eaf4ef45638..6956c9bb992be 100644
>> --- a/arch/arm64/boot/dts/freescale/imx8mm-mx8menlo.dts
>> +++ b/arch/arm64/boot/dts/freescale/imx8mm-mx8menlo.dts
>> @@ -303,6 +303,12 @@ &sai2 {
>>   	status = "disabled";
>>   };
>>   
>> +&snvs {
>> +	snvs-lpgpr {
>> +		compatible = "fsl,imx7d-snvs-lpgpr";
> 
> Should we encode imx8mm specific compatible as well, while you added it
> in the bindings?
> 
> Also this is a SoC rather than board device, so we may want to add it in
> soc.dtsi instead?

Right, this patch is already superseded by
[PATCH] arm64: dts: imx8mm: Add SNVS LPGPR
