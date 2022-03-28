Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9DCCC4E9925
	for <lists+devicetree@lfdr.de>; Mon, 28 Mar 2022 16:15:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241907AbiC1OQv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Mar 2022 10:16:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47116 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238901AbiC1OQu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Mar 2022 10:16:50 -0400
Received: from alexa-out.qualcomm.com (alexa-out.qualcomm.com [129.46.98.28])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F8ADE61
        for <devicetree@vger.kernel.org>; Mon, 28 Mar 2022 07:15:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
  t=1648476910; x=1680012910;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=z1LMEOg7erCdsh8v0ngBHN2QIE+zhoGdv6I1HkS2SyU=;
  b=CiQTN+cr39AhnqtrWmnitOrpBcbkh/6OQglaIrHRndHkWXx0eq/sYrkv
   VdpjkjMSANdlq1sbMzwbg6cXc9OnYUV3wv/KWpF3P2xXwVmWcyTZtqV2x
   DxYtv9dohtiAnb/cliMWjsfNauF3dCoxR0NpUhlezrc6LRmiPzVNu/PL4
   0=;
Received: from ironmsg08-lv.qualcomm.com ([10.47.202.152])
  by alexa-out.qualcomm.com with ESMTP; 28 Mar 2022 07:15:09 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
  by ironmsg08-lv.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Mar 2022 07:15:09 -0700
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Mon, 28 Mar 2022 07:15:08 -0700
Received: from [10.110.126.12] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.22; Mon, 28 Mar
 2022 07:15:07 -0700
Message-ID: <979a5c87-a7ea-a1f0-e42e-29043df6b348@quicinc.com>
Date:   Mon, 28 Mar 2022 07:15:06 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v3] ARM: dts: aspeed: add Nuvia DC-SCM BMC
Content-Language: en-US
To:     Krzysztof Kozlowski <krzk@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>, Andrew Lunn <andrew@lunn.ch>
CC:     Jamie Iles <quic_jiles@quicinc.com>,
        Graeme Gregory <quic_ggregory@quicinc.com>,
        <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-aspeed@lists.ozlabs.org>
References: <20220325190247.468079-1-quic_jaehyoo@quicinc.com>
 <d0044322-72d8-1348-9898-dc91e3192e94@kernel.org>
 <92b381f7-6a4b-1db1-ea00-7bbc8c4b0f84@quicinc.com>
 <94377113-b51d-8fb2-56fe-6f2abcea8ed0@kernel.org>
From:   Jae Hyun Yoo <quic_jaehyoo@quicinc.com>
In-Reply-To: <94377113-b51d-8fb2-56fe-6f2abcea8ed0@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 3/28/2022 12:13 AM, Krzysztof Kozlowski wrote:
> On 27/03/2022 22:24, Jae Hyun Yoo wrote:
>>
>> [...]
>>
>>>> +	chosen {
>>>> +		stdout-path = &uart5;
>>>> +		bootargs = "console=ttyS4,115200n8";
>>>
>>> After adding stdout-path, please remove bootargs.
>>
>> Can I keep the default bootargs for a case if CONFIG_CMDLINE_FORCE
>> is enabled?
> 
> No, because you control the config, so just disable CMDLINE_FORCE if you
> don't want it and such bootargs are not part of hardware description.

Okay, I'll remove bootargs in v4. Thanks!

Best Regards,
Jae
