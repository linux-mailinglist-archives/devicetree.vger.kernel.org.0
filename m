Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 882FC4F6EEC
	for <lists+devicetree@lfdr.de>; Thu,  7 Apr 2022 02:00:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229730AbiDGACP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Apr 2022 20:02:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229944AbiDGACN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Apr 2022 20:02:13 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5DA631C7C3C
        for <devicetree@vger.kernel.org>; Wed,  6 Apr 2022 17:00:14 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id DA4BF83E1E;
        Thu,  7 Apr 2022 02:00:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1649289612;
        bh=yzZFAWlsDijA2rzSPEF8dwBfy3kPOX/o4JtiIJJka/k=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=RzU7cQU+TkTcyVFFd6QCfEZEMOBmWpIUVWBrSWXouDTKrv5BgkwAowQ3ekOIVmLK7
         q0EP79wwK3e1Yxa/8Sx9xyn851uMWuLc7aoixNpjvsAn6QFTaBMdCYiIx77XKIb62r
         nojqzvI1biZNiUo62M+AmIKv/GfBgLszRv/C9YQgzkzD0P/xqaotaR7zQ7g1kjp2RG
         t8d2l+64HEPDnLzazq3RVHfgyGvyAabxC4wJZ0URNAEwlr8vzoqU9NUlOU8SiL64zJ
         XuZTYaAzKhvO5jYmBjaoG7M+g71IKhJMtGRPTRrWcT82XGSEweDxoYwgj9nuiADdrD
         3Dh3R7R9iTRGg==
Message-ID: <d14e4aa1-f70f-decd-a078-9ffc80caa584@denx.de>
Date:   Thu, 7 Apr 2022 01:56:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v4 07/11] soc: imx: add i.MX8MP HDMI blk-ctrl
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
 <20220406153402.1265474-8-l.stach@pengutronix.de>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <20220406153402.1265474-8-l.stach@pengutronix.de>
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

> +static void imx8mp_hdmi_blk_ctrl_power_on(struct imx8mp_blk_ctrl *bc,
> +					  struct imx8mp_blk_ctrl_domain *domain)
> +{
> +	switch (domain->id) {
> +	case IMX8MP_HDMIBLK_PD_IRQSTEER:
> +		regmap_set_bits(bc->regmap, HDMI_RTX_CLK_CTL0, BIT(9));
> +		regmap_set_bits(bc->regmap, HDMI_RTX_RESET_CTL0, BIT(16));
> +		break;
> +	case IMX8MP_HDMIBLK_PD_LCDIF:
> +		regmap_set_bits(bc->regmap, HDMI_RTX_CLK_CTL0,
> +				BIT(7) | BIT(16) | BIT(17) | BIT(18) |
> +				BIT(19) | BIT(20));
> +		regmap_set_bits(bc->regmap, HDMI_RTX_CLK_CTL1, BIT(11));
> +		regmap_set_bits(bc->regmap, HDMI_RTX_RESET_CTL0,
> +				BIT(4) | BIT(5) | BIT(6));

Macros which define all those ad-hoc bits might be nice.

[...]
