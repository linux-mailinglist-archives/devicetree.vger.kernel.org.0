Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5B8346A1BE9
	for <lists+devicetree@lfdr.de>; Fri, 24 Feb 2023 13:09:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229912AbjBXMJX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Feb 2023 07:09:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229897AbjBXMJW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Feb 2023 07:09:22 -0500
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D003166F4
        for <devicetree@vger.kernel.org>; Fri, 24 Feb 2023 04:08:47 -0800 (PST)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 12D1785777;
        Fri, 24 Feb 2023 13:08:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1677240524;
        bh=Tqv7hJjJOTMH5eRLWXqviJQ747Cp4wMhiFEWOAhcnN4=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=jQZwKivCg03+1nHpUTIOhIVBpygvshov4iqy2afTg7cNkCsQ5PM8Kb2F3uhNQ7s/M
         caAOcYAHxmukRypy+JC+2bHbZaVMGKskTFxOk7noqZuwAjyigsCsS6hqsDZLlnhRhd
         VKIr3yT6zJS6KAns1/e+6XkU7MuXh42QUU53jX+GFGubXsf2/7vm1HQctOUQUQwcUW
         YgNM5If3mQipE1mjAaqwTIEIKkbk1t/lnwhdkvMNZnJL5UyQdZEb2HEdXwxa6jElLJ
         dLt3jE7PX7q4YrLQUuXsDJRfewXBtnV4UhFuNg5uTgF7tBIIW1NZ4kyGd8TcYREkUy
         ZKpMHiagR6dNA==
Message-ID: <8477c32f-28e6-96f2-a4ec-b378b142d234@denx.de>
Date:   Fri, 24 Feb 2023 13:08:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v4 3/4] soc: imx: imx8m-blk-ctrl: Scan subnodes and bind
 drivers to them
To:     Lucas Stach <l.stach@pengutronix.de>,
        linux-arm-kernel@lists.infradead.org
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
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
References: <20230223151043.41548-1-marex@denx.de>
 <20230223151043.41548-3-marex@denx.de>
 <a73850d6e3254d73adec31a723efc9816a633257.camel@pengutronix.de>
Content-Language: en-US
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <a73850d6e3254d73adec31a723efc9816a633257.camel@pengutronix.de>
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

On 2/24/23 10:08, Lucas Stach wrote:

Hi,

>> diff --git a/drivers/soc/imx/imx8m-blk-ctrl.c b/drivers/soc/imx/imx8m-blk-ctrl.c
>> index 399cb85105a18..77e7dc4eb8cff 100644
>> --- a/drivers/soc/imx/imx8m-blk-ctrl.c
>> +++ b/drivers/soc/imx/imx8m-blk-ctrl.c
>> @@ -310,7 +310,7 @@ static int imx8m_blk_ctrl_probe(struct platform_device *pdev)
>>   
>>   	dev_set_drvdata(dev, bc);
>>   
>> -	return 0;
>> +	return devm_of_platform_populate(dev);
> 
> You need to handle the return value, not simply pass it through as the
> return value of the probe function. When devm_of_platform_populate
> fails you miss to clean up the genpd provider and detach from the power
> domains.

Hmmm, but then I cannot use the devm_ variant, can I ?
