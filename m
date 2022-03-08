Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 76B474D0D30
	for <lists+devicetree@lfdr.de>; Tue,  8 Mar 2022 02:04:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241216AbiCHBFs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Mar 2022 20:05:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239094AbiCHBFr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Mar 2022 20:05:47 -0500
Received: from alexa-out-sd-01.qualcomm.com (alexa-out-sd-01.qualcomm.com [199.106.114.38])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7821DAE41
        for <devicetree@vger.kernel.org>; Mon,  7 Mar 2022 17:04:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
  t=1646701492; x=1678237492;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=Jo4Puq3dirXjk+QWemEQMFfxj9JzhyoaneicmY/Nuu0=;
  b=VMkcosCiCvGTkDopME4ym62LKRPSA/ne4dIB3OUBEPV0q74YSfNQrvvL
   GouVsj6R2xny6NsZpGnfrIM4PLXF5/Zw3kIdBAnA6OXHGn5ZOgMqL8YwN
   E44CzSFZO3iP6efG0nGuWSyoXBrloAi4EuyipfYePYIiwJCbtJV6YdCiP
   o=;
Received: from unknown (HELO ironmsg05-sd.qualcomm.com) ([10.53.140.145])
  by alexa-out-sd-01.qualcomm.com with ESMTP; 07 Mar 2022 17:04:52 -0800
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
  by ironmsg05-sd.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Mar 2022 17:04:51 -0800
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.15; Mon, 7 Mar 2022 17:04:51 -0800
Received: from [10.110.30.142] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.15; Mon, 7 Mar 2022
 17:04:50 -0800
Message-ID: <b7aea3d4-6384-23e9-3b6a-71ba18ae161f@quicinc.com>
Date:   Mon, 7 Mar 2022 17:04:49 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Subject: Re: [PATCH] pinctrl: aspeed: Add FWQSPI pinmux
Content-Language: en-US
To:     Andrew Jeffery <andrew@aj.id.au>, Joel Stanley <joel@jms.id.au>,
        "Rob Herring" <robh+dt@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>
CC:     Jamie Iles <quic_jiles@quicinc.com>,
        Graeme Gregory <quic_ggregory@quicinc.com>,
        <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-aspeed@lists.ozlabs.org>,
        Johnny Huang <johnny_huang@aspeedtech.com>
References: <20220308003136.3930466-1-quic_jaehyoo@quicinc.com>
 <d2f125d8-07d1-4bff-8718-7dfba4d8fdb3@www.fastmail.com>
 <73a487ed-312b-72b3-4e64-dc580ba80704@quicinc.com>
 <e541828f-f0bc-419a-a5fc-d8aefe97832d@www.fastmail.com>
From:   Jae Hyun Yoo <quic_jaehyoo@quicinc.com>
In-Reply-To: <e541828f-f0bc-419a-a5fc-d8aefe97832d@www.fastmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 3/7/2022 5:02 PM, Andrew Jeffery wrote:
> 
> 
> On Tue, 8 Mar 2022, at 11:16, Jae Hyun Yoo wrote:
>> Hi Andrew,
>>
>> On 3/7/2022 4:41 PM, Andrew Jeffery wrote:
>>>
>>>
>>> On Tue, 8 Mar 2022, at 11:01, Jae Hyun Yoo wrote:
>>>> From: Johnny Huang <johnny_huang@aspeedtech.com>
>>>>
>>>> AST2600 FW SPI quad mode only need to set AE12 and AF12, no need
>>>> to set Y1~Y4. FW SPI cs, clk, mosi and miso pins are dedicated.
>>>
>>> They're not dedicated according to the datasheet?
>>>
>>> Can you please look at this patch?
>>>
>>> https://lore.kernel.org/all/20220304011010.974863-1-joel@jms.id.au/
>>
>> Sorry. Please ignore this patch.
>> I mistakenly sent this patch while making a patch series.
>>
>> Please check this patch series instead.
>> https://lore.kernel.org/linux-arm-kernel/20220308003745.3930607-1-quic_jaehyoo@quicinc.com/T/#t
> 
> No worries, I'll take a look though it might be a couple of days due to chasing some other issues.

Thanks a lot, Andrew!

-Jae
