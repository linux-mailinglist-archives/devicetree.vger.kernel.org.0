Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5C9454E996C
	for <lists+devicetree@lfdr.de>; Mon, 28 Mar 2022 16:26:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243797AbiC1O1p (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Mar 2022 10:27:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243705AbiC1O1o (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Mar 2022 10:27:44 -0400
Received: from alexa-out.qualcomm.com (alexa-out.qualcomm.com [129.46.98.28])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA6A8275DB
        for <devicetree@vger.kernel.org>; Mon, 28 Mar 2022 07:26:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
  t=1648477563; x=1680013563;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=lkf0GPAYUWsCTaSy58VIzkIDARnaffeDCbbKcbKulBE=;
  b=kVqZxfPkMhOfdBFoW9+J4MJlszTzbtgdClNwSYhx1EuzwT1hFWE9rgXa
   G0DhpIExJdIOdMo7vhn2eeYoB3Gr7IBsGWsm5z2i7f1l1mIlK88+26Y1c
   pvlHGwjO+A5gA4cBSOYLGsR3ZtcSgOqnVbdHJgqM+6myWF/fLQCv5983y
   g=;
Received: from ironmsg-lv-alpha.qualcomm.com ([10.47.202.13])
  by alexa-out.qualcomm.com with ESMTP; 28 Mar 2022 07:26:03 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
  by ironmsg-lv-alpha.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Mar 2022 07:26:03 -0700
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Mon, 28 Mar 2022 07:26:02 -0700
Received: from [10.110.126.12] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.22; Mon, 28 Mar
 2022 07:26:01 -0700
Message-ID: <38f0359d-ccc9-d366-4323-de1224788dd3@quicinc.com>
Date:   Mon, 28 Mar 2022 07:26:01 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 1/5] ARM: dts: aspeed-g6: remove FWQSPID group in
 pinctrl dtsi
Content-Language: en-US
To:     Andrew Jeffery <andrew@aj.id.au>, Rob Herring <robh+dt@kernel.org>,
        "Joel Stanley" <joel@jms.id.au>, Andrew Lunn <andrew@lunn.ch>
CC:     Jamie Iles <quic_jiles@quicinc.com>,
        Graeme Gregory <quic_ggregory@quicinc.com>,
        <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-aspeed@lists.ozlabs.org>
References: <20220325154048.467245-1-quic_jaehyoo@quicinc.com>
 <20220325154048.467245-2-quic_jaehyoo@quicinc.com>
 <f55316d5-43cb-49cd-ba4b-6730c2a9b91c@www.fastmail.com>
From:   Jae Hyun Yoo <quic_jaehyoo@quicinc.com>
In-Reply-To: <f55316d5-43cb-49cd-ba4b-6730c2a9b91c@www.fastmail.com>
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



On 3/27/2022 8:09 PM, Andrew Jeffery wrote:
> 
> 
> On Sat, 26 Mar 2022, at 02:10, Jae Hyun Yoo wrote:
>> FWSPIDQ2 and FWSPIDQ3 are not part of FWSPI18 interface so remove
>> FWQSPID group in pinctrl dtsi. These pins must be used with the
>> FWSPI pins that are dedicated for boot SPI interface which provides
>> same 3.3v logic level.
>>
>> Signed-off-by: Jae Hyun Yoo <quic_jaehyoo@quicinc.com>
>> Fixes: 2f6edb6bcb2f ("ARM: dts: aspeed: Fix AST2600 quad spi group")
>> ---
>> Changes in v2:
>>   * Rebased it on the latest.
>>   * Updated 'Fixes' while rebasing it on the latest.
>>
>> Note:
>>   * Removing 'pinctrl_fwqspid_default' doesn't break any existing DT since
>>     it has not been used in any DTs.
> 
> Can you please send a patch to the bindings to drop the broken
> function/group given they never worked and no-one could be using them?

Sure, I'll send a bindings patch too in v3.

Thanks for your review!

-Jae

> Other than that,
> 
> Reviewed-by: Andrew Jeffery <andrew@aj.id.au>
