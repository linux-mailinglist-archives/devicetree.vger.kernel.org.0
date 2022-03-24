Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5C8FB4E6A39
	for <lists+devicetree@lfdr.de>; Thu, 24 Mar 2022 22:27:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351462AbiCXV3K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Mar 2022 17:29:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43280 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351231AbiCXV3J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Mar 2022 17:29:09 -0400
Received: from alexa-out.qualcomm.com (alexa-out.qualcomm.com [129.46.98.28])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 802C37523D
        for <devicetree@vger.kernel.org>; Thu, 24 Mar 2022 14:27:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
  t=1648157258; x=1679693258;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=oRK599eMaLWKOmJExCWFHKgcOlHaMiKGHB0nq0WnEOA=;
  b=RceZvz+TtCnRwnNtSMn3+GxAB87UGG+/yVrSDsDi9n7tszvE2Jf3tssV
   7AIwS5tyenxAeiWq5yX2V3T8RN2dfKdDB5SiNF9W+2kh8vsp8oMk0Waks
   Yd3Nk4OmPd8QjWsex/jdNwuXYSZu5cy+AZLVOZrHk/7F9lGP24hxp5ZaU
   U=;
Received: from ironmsg-lv-alpha.qualcomm.com ([10.47.202.13])
  by alexa-out.qualcomm.com with ESMTP; 24 Mar 2022 14:27:37 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
  by ironmsg-lv-alpha.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Mar 2022 14:27:36 -0700
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Thu, 24 Mar 2022 14:27:36 -0700
Received: from [10.110.37.17] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.22; Thu, 24 Mar
 2022 14:27:35 -0700
Message-ID: <88849423-c4a5-0a68-1900-72196395704e@quicinc.com>
Date:   Thu, 24 Mar 2022 14:27:34 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH] ARM: dts: aspeed: add Nuvia DC-SCM BMC
Content-Language: en-US
To:     Andrew Lunn <andrew@lunn.ch>
CC:     Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
        "Andrew Jeffery" <andrew@aj.id.au>,
        Jamie Iles <quic_jiles@quicinc.com>,
        "Graeme Gregory" <quic_ggregory@quicinc.com>,
        <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-aspeed@lists.ozlabs.org>
References: <20220324164551.359570-1-quic_jaehyoo@quicinc.com>
 <YjzhT4gOJ9SKy6q+@lunn.ch>
From:   Jae Hyun Yoo <quic_jaehyoo@quicinc.com>
In-Reply-To: <YjzhT4gOJ9SKy6q+@lunn.ch>
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

Hi Andrew,

On 3/24/2022 2:23 PM, Andrew Lunn wrote:
> On Thu, Mar 24, 2022 at 09:45:51AM -0700, Jae Hyun Yoo wrote:
>> From: Graeme Gregory <quic_ggregory@quicinc.com>
>>
>> +&mac2 {
>> +	status = "okay";
>> +
>> +	phy-mode = "rgmii";
> 
> Are you sure about this? That PHY are you using? It is more normal to
> use rgmii-id.

Yes, I'm sure. PHY works with rgmii on my board. I picked a different
clock delay setting too.

Thanks,
Jae

