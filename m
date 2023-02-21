Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E3D3169E7EC
	for <lists+devicetree@lfdr.de>; Tue, 21 Feb 2023 19:57:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229487AbjBUS5z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Feb 2023 13:57:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52886 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229651AbjBUS5y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Feb 2023 13:57:54 -0500
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C394E5247
        for <devicetree@vger.kernel.org>; Tue, 21 Feb 2023 10:57:52 -0800 (PST)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 82DE8859A5;
        Tue, 21 Feb 2023 19:57:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1677005870;
        bh=BMKzOFYM/SK2ut3OqkpKgHpHD5EU53dDELf7lY+O8qk=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=at8zxyIoLMLBIZUwJfu0X/WuDRo2oNxw46MSBMBZDvtoyJqEGgyrexfF5setFiF2f
         KyiY2LONJvt9Qw+F5D/Amtk+Wez9zU2ImJsIMzIoRTWeN/1jFtcQvs5/xM3+Z26pq2
         YwC71nVakXueIX00k50jKBx4i04Bsa+p+s6CGvwQU61SiJ9dXxGHNbxww8b5eogZRv
         x+QlYfaL07W9dMeAUoYvBImBg3YW8QUXjBUgmPbf1CMYmVEOdh7n+Ye7T+iFNAFL3K
         a6YPIPTaq5ms35q8Dg4v6g9OpTa/YR+SxTQgFA4w39a87esa6isDHQ0DgZMbW5lkkB
         N4ZILWIm9Z5Zw==
Message-ID: <e2adc02b-5e6a-3b78-cac2-e67ecc820231@denx.de>
Date:   Tue, 21 Feb 2023 19:57:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v3 3/4] soc: imx: imx8m-blk-ctrl: Scan subnodes and bind
 drivers to them
To:     Lucas Stach <l.stach@pengutronix.de>,
        linux-arm-kernel@lists.infradead.org
Cc:     Liu Ying <victor.liu@nxp.com>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
References: <20230221152804.6061-1-marex@denx.de>
 <20230221152804.6061-3-marex@denx.de>
 <6181434024ae29aafe1da2088be0f48c377e303b.camel@pengutronix.de>
Content-Language: en-US
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <6181434024ae29aafe1da2088be0f48c377e303b.camel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2/21/23 18:09, Lucas Stach wrote:

[...]

>> @@ -310,6 +312,13 @@ static int imx8m_blk_ctrl_probe(struct platform_device *pdev)
>>   
>>   	dev_set_drvdata(dev, bc);
>>   
>> +	for_each_child_of_node(dev->of_node, np) {
>> +		child = of_platform_device_create(np, NULL, dev);
>> +		if (child)
>> +			continue;
>> +		dev_warn(dev, "failed to create device for %pOF\n", np);
>> +	}
> 
> Any reason for not using devm_of_platform_populate() instead?

Yes, lack of awareness of that option.

Do I read it right that this gets rid of the whole loop implementation 
here and replaces it with single function call ?
