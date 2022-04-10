Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 45F6B4FB0A6
	for <lists+devicetree@lfdr.de>; Mon, 11 Apr 2022 00:11:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233732AbiDJWNU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 10 Apr 2022 18:13:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51558 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230117AbiDJWNT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 10 Apr 2022 18:13:19 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6522CDFDE
        for <devicetree@vger.kernel.org>; Sun, 10 Apr 2022 15:11:06 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id B6E6483B03;
        Mon, 11 Apr 2022 00:11:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1649628664;
        bh=QPfgpSxkZUzuOacgzHJebiI+2fqTiPoqBSm79j9rzrI=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=rP7/01hRWewZIY/ta3CgE3lWJCw5QXTKU9dUKp4VhCnrxjoZh8QdnqC6FNfRs6jr7
         RmOzbFOqzG11q0dp9SwAmvTyTwYjyQR1BRWB2Niuj7TPf1XAuSscImzp+yfz3iTM6o
         tAP9rbWM7AWx5R998P1GI79TVsXdDHoJCTcu942pUKT6XPu3JOb6jMITj+5Bh6yIIJ
         WVcj9vvGTDApfmcat25WAuF/nwvRmRAvL8RZT5wo6X2VzC/3QEHtM6/ht8GKVgw3PO
         bHc/VxCs4D3iIgu3B6vN2Ol+Ei4SZerwDSxDRsBCDaMuiNKY1nbWv/9kreK5rdfAwt
         kIwka8lKWGu+g==
Message-ID: <25744e36-63ee-7669-067a-a671a5f461d6@denx.de>
Date:   Mon, 11 Apr 2022 00:11:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v4 02/11] soc: imx: add i.MX8MP HSIO blk-ctrl
Content-Language: en-US
To:     Lucas Stach <l.stach@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20220406153402.1265474-1-l.stach@pengutronix.de>
 <20220406153402.1265474-3-l.stach@pengutronix.de>
 <e99520af-7b32-f1a4-7ebc-eb66611b850f@denx.de>
 <e60a4bcad472411a8f82546b57d8d375ed8cbda8.camel@pengutronix.de>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <e60a4bcad472411a8f82546b57d8d375ed8cbda8.camel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.5 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-7.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 4/7/22 11:12, Lucas Stach wrote:
> Am Donnerstag, dem 07.04.2022 um 01:43 +0200 schrieb Marek Vasut:
>> On 4/6/22 17:33, Lucas Stach wrote:
>>
>> [...]
>>
>>> +static const struct imx8mp_blk_ctrl_data imx8mp_hsio_blk_ctl_dev_data = {
>>> +	.max_reg = 0x24,
>>
>> Doesn't the HSIO_BLK_CTL go up to 0x10c ?
> 
> Technically yes, but there is already a driver for the USB glue
> (fsl,imx8mp-dwc3) that occupies the USB registers at and above 0x100.

Shouldn't that imx8mp-dwc3 glue code be switched to syscon and access 
the registers through this driver then ?

>>> +	.power_on = imx8mp_hsio_blk_ctrl_power_on,
>>> +	.power_off = imx8mp_hsio_blk_ctrl_power_off,
>>> +	.power_notifier_fn = imx8mp_hsio_power_notifier,
>>> +	.domains = imx8mp_hsio_domain_data,
>>> +	.num_domains = ARRAY_SIZE(imx8mp_hsio_domain_data),
>>> +};
>>> +
>>> +static int imx8mp_blk_ctrl_power_on(struct generic_pm_domain *genpd)
>>> +{
>>> +	struct imx8mp_blk_ctrl_domain *domain = to_imx8mp_blk_ctrl_domain(genpd);
>>> +	const struct imx8mp_blk_ctrl_domain_data *data = domain->data;
>>> +	struct imx8mp_blk_ctrl *bc = domain->bc;
>>> +	int ret;
>>> +
>>> +	/* make sure bus domain is awake */
>>> +	ret = pm_runtime_resume_and_get(bc->bus_power_dev);
>>> +	if (ret < 0) {
>>> +		dev_err(bc->dev, "failed to power up bus domain\n");
>>> +		return ret;
>>> +	}
>>> +
>>> +	/* enable upstream clocks */
>>> +	ret = clk_bulk_prepare_enable(data->num_clks, domain->clks);;
>>> +	if (ret) {
>>> +		dev_err(bc->dev, "failed to enable clocks\n");
>>> +		goto bus_put;
>>> +	}
>>> +
>>> +	/* domain specific blk-ctrl manipulation */
>>> +	bc->power_on(bc, domain);
>>
>> Would it make sense to add error checking ?
>>
> I don't expect those functions to do any more than a bit of blk-ctrl
> MMIO register poking. If that fails you are in much more trouble than
> what you can reasonably fix with some error checking.

All right.
