Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3FE9F4F6EEB
	for <lists+devicetree@lfdr.de>; Thu,  7 Apr 2022 02:00:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229528AbiDGACO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Apr 2022 20:02:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35288 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229730AbiDGACN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Apr 2022 20:02:13 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9AC91C7BB9
        for <devicetree@vger.kernel.org>; Wed,  6 Apr 2022 17:00:13 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 6D7AE83E3B;
        Thu,  7 Apr 2022 02:00:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1649289611;
        bh=VEwyxlDk0iJp3YuZjei5KRGBQ4yxbpqFFAntKpmOcMk=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=0VjMUHma32vVJB7p/CvpDnAtTatnr2xKQeU+0IX94lRAVnH9Hp8YMIAu7N3SD3rj4
         Y6/5BfcjLsy9xyNtmxIE0E5cDV1xxfBhmsskLdewce1rZ90cwUPkOksTRxsX2m3+ak
         V7kJ+WcMF7Mcmdzsqf1M8KIZKHleTne5sftamt67DkY+CcbtR/zKUxj2FpasCahRVy
         GHoTw/SUGTiBZL4dKPJoQBSpDVhlwJjXmbyGQugwKpkOauOTnxvIlAbvQuk+fIONPC
         aLYit+X9vsaPC4/8Qa6xfnT3yvHW6YadrFT7FJ+ghAwaTf697oJ22t2GJ2qNMq78lc
         6l5uDbnR3jfCg==
Message-ID: <e99520af-7b32-f1a4-7ebc-eb66611b850f@denx.de>
Date:   Thu, 7 Apr 2022 01:43:32 +0200
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
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <20220406153402.1265474-3-l.stach@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.5 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-7.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 4/6/22 17:33, Lucas Stach wrote:

[...]

> +static const struct imx8mp_blk_ctrl_data imx8mp_hsio_blk_ctl_dev_data = {
> +	.max_reg = 0x24,

Doesn't the HSIO_BLK_CTL go up to 0x10c ?

> +	.power_on = imx8mp_hsio_blk_ctrl_power_on,
> +	.power_off = imx8mp_hsio_blk_ctrl_power_off,
> +	.power_notifier_fn = imx8mp_hsio_power_notifier,
> +	.domains = imx8mp_hsio_domain_data,
> +	.num_domains = ARRAY_SIZE(imx8mp_hsio_domain_data),
> +};
> +
> +static int imx8mp_blk_ctrl_power_on(struct generic_pm_domain *genpd)
> +{
> +	struct imx8mp_blk_ctrl_domain *domain = to_imx8mp_blk_ctrl_domain(genpd);
> +	const struct imx8mp_blk_ctrl_domain_data *data = domain->data;
> +	struct imx8mp_blk_ctrl *bc = domain->bc;
> +	int ret;
> +
> +	/* make sure bus domain is awake */
> +	ret = pm_runtime_resume_and_get(bc->bus_power_dev);
> +	if (ret < 0) {
> +		dev_err(bc->dev, "failed to power up bus domain\n");
> +		return ret;
> +	}
> +
> +	/* enable upstream clocks */
> +	ret = clk_bulk_prepare_enable(data->num_clks, domain->clks);;
> +	if (ret) {
> +		dev_err(bc->dev, "failed to enable clocks\n");
> +		goto bus_put;
> +	}
> +
> +	/* domain specific blk-ctrl manipulation */
> +	bc->power_on(bc, domain);

Would it make sense to add error checking ?

> +	/* power up upstream GPC domain */
> +	ret = pm_runtime_resume_and_get(domain->power_dev);
> +	if (ret < 0) {
> +		dev_err(bc->dev, "failed to power up peripheral domain\n");
> +		goto clk_disable;
> +	}
> +
> +	clk_bulk_disable_unprepare(data->num_clks, domain->clks);
> +
> +	return 0;
> +
> +clk_disable:
> +	clk_bulk_disable_unprepare(data->num_clks, domain->clks);
> +bus_put:
> +	pm_runtime_put(bc->bus_power_dev);
> +
> +	return ret;
> +}

[...]
