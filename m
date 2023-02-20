Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DFF7169C4F6
	for <lists+devicetree@lfdr.de>; Mon, 20 Feb 2023 06:31:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230032AbjBTFbx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Feb 2023 00:31:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51792 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229736AbjBTFbw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Feb 2023 00:31:52 -0500
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63F52E055
        for <devicetree@vger.kernel.org>; Sun, 19 Feb 2023 21:31:50 -0800 (PST)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id C729384227;
        Mon, 20 Feb 2023 06:31:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1676871107;
        bh=v4Iocd2YkYzi8XSnHNbHvl8q7LRjBti+wi193d4zuyQ=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=IVLVrXlwIfuQAHNNIHdkdhP0fI945C4E+cpeoAnCOHuE/W0TNe54RyY1byUdRecB/
         tgmuewbOTmk4ZwxxqcWNHdasLfe9hKYdmwKa+f/brQivuAOLBwpyvJPw4BV0Lu/RKC
         B6lSlXXuZFqGnqcGUEEvxp7NxeYPlv06P8ngFa8LAkhcAvKpAHg3i1XuGpKLDPYqXP
         2gv7b7o9ZTsztZt//4grYY8LkJQsck5e31ZTYrESnafuWqwjgE9TB7g6BpO8rAaVgC
         Z+hhfgq+k3XwRtGgUB2UU1JXKgcWZvlZFcTCZpI0qeUB+UVE4ah2v4VxDa++f2TPxl
         /oLRjFTd6aK0w==
Message-ID: <3d567ad3-2402-9582-657e-c92b7bddca40@denx.de>
Date:   Mon, 20 Feb 2023 06:31:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v2 3/4] soc: imx: imx8m-blk-ctrl: Scan subnodes and bind
 drivers to them
Content-Language: en-US
To:     Liu Ying <victor.liu@nxp.com>, linux-arm-kernel@lists.infradead.org
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
References: <20230220035051.327847-1-marex@denx.de>
 <20230220035051.327847-3-marex@denx.de>
 <b72b3384384204df3b06ebdb1046157c82d1aee8.camel@nxp.com>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <b72b3384384204df3b06ebdb1046157c82d1aee8.camel@nxp.com>
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

On 2/20/23 05:34, Liu Ying wrote:
[...]
>> @@ -310,6 +312,13 @@ static int imx8m_blk_ctrl_probe(struct platform_device *pdev)
>>   
>>   	dev_set_drvdata(dev, bc);
>>   
>> +	for_each_child_of_node(dev->of_node, np) {
>> +		child = of_platform_device_create(np, NULL, dev);
>> +		if (child)
>> +			continue;
> 
> We usually check and handle abnormal cases. So, better to check
> '!child" and warn in the 'if' clause. Anyway, the logic looks ok. So,
> kinda
> 
> Reviewed-by: Liu Ying <victor.liu@nxp.com>

The current approach reduces indentation, so I'll leave it as is.

Thanks
