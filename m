Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1AF674CB54C
	for <lists+devicetree@lfdr.de>; Thu,  3 Mar 2022 04:19:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231953AbiCCDQ5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Mar 2022 22:16:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54632 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231966AbiCCDQ4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Mar 2022 22:16:56 -0500
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6BE5D26AD0
        for <devicetree@vger.kernel.org>; Wed,  2 Mar 2022 19:16:05 -0800 (PST)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 257E483B62;
        Thu,  3 Mar 2022 04:16:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1646277363;
        bh=5mxX4p9hMFO6do4To2FxcxkUSm6PEmxsnEERVHCUsqE=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=G6IkfHzhijCkDekmQs7NwBZMhJnW9upr4buPfMVBuChIiCA7MqvY9F86R/1qh0kAX
         NXAuJQJM++Z94Eh6yB+Ufi1bXzpSfPR+5cOaj/yHtps+vzxt6/yG4FBSi0PBFoU123
         bQZjNT+OTV5fVlgu+08UYWMBKF8XbIJti2D9MPz/TCb1/QCfJe02WKDZBQvBijKYHn
         VyQFKT+eVxP7KX8Cn16S5mIDS3tunXNf3rnudrKp7CMKSxXcnQWhJQHNGEdi2v8AP1
         biWoUFzsA/dOtmlMLN8zH+UBviRUZABQ4eOtF8U12Jh2Y2IhB630aNzwvxKIX4lJDZ
         tagNlmRxCusuA==
Message-ID: <fc32e5b9-9185-e547-ec24-87014140c4ca@denx.de>
Date:   Thu, 3 Mar 2022 04:16:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Subject: Re: [EXT] Re: [PATCH 1/9] dt-bindings: mxsfb: Add compatible for
 i.MX8MP
Content-Language: en-US
To:     Robby Cai <robby.cai@nxp.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Adam Ford <aford173@gmail.com>
Cc:     "Ying Liu (OSS)" <victor.liu@oss.nxp.com>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        devicetree <devicetree@vger.kernel.org>,
        Peng Fan <peng.fan@nxp.com>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Rob Herring <robh+dt@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Sam Ravnborg <sam@ravnborg.org>
References: <20220228004605.367040-1-marex@denx.de>
 <35b981d0d9d763525c427491ca0e25b6e4c03d0f.camel@oss.nxp.com>
 <8eac8a2c-bc6d-0c79-c727-bdaa2cd9abee@denx.de>
 <a3ab4ec2dd0c7b87698bc7902509a4de6950dd25.camel@oss.nxp.com>
 <33207e88-da9b-96d7-0fef-461cb4496c88@denx.de>
 <284d65f53dffb6085bde6ef6ecd398f10d4c6c80.camel@oss.nxp.com>
 <8950434843ff7bbd1a527b0c799d9a74a75ee36d.camel@pengutronix.de>
 <7aeed693-dfb7-950f-fdf0-3c90de285392@denx.de>
 <8bf0b5a1c9ab9faee28077436cdfd49c0cd08792.camel@pengutronix.de>
 <CAHCN7xJ6ypDxZouZV1b1F1EgQFwdTvmY6EEekj+_z-UWbQMD5Q@mail.gmail.com>
 <4253aa4b5dc4a3568e45755678849961468bfd38.camel@pengutronix.de>
 <VI1PR04MB699190CC6CB1D5C37C4BB64CF2029@VI1PR04MB6991.eurprd04.prod.outlook.com>
 <3485f77c-667c-05fa-ff96-93e732247b49@denx.de>
 <VI1PR04MB6991E6759DA88E5A3804DB74F2039@VI1PR04MB6991.eurprd04.prod.outlook.com>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <VI1PR04MB6991E6759DA88E5A3804DB74F2039@VI1PR04MB6991.eurprd04.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.5 at phobos.denx.de
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

On 3/2/22 14:14, Robby Cai wrote:

Hi

[...]

>>> LCDIF on i.MX8MP is a different IP which is borrowed from non-iMX series,
>> although it's also called 'LCDIF'.
>>> We prefer not mix these two series of IPs in one driver for ease of
>> maintenance and extension.
>>
>> Where does the MX8MP LCDIF come from then, SGTL maybe ?
> 
> AFAIK, it's RT1170. You may have a check on RM [1]. Interestingly, this SoC has both eLCDIF and LCDIFv2, two IPs we are talking about.
> 
> [1] https://www.nxp.com/webapp/Download?colCode=IMXRT1170RM

That's interesting, I wasn't aware of this one. So that's MX8MP LCDIF + 
overlays. Did the LCDIF v2 in iMXRT1070 have any predecessor too ?
