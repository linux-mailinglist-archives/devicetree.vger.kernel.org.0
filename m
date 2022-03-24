Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3B5E14E6ACE
	for <lists+devicetree@lfdr.de>; Thu, 24 Mar 2022 23:40:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355470AbiCXWmF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Mar 2022 18:42:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355480AbiCXWmC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Mar 2022 18:42:02 -0400
Received: from alexa-out.qualcomm.com (alexa-out.qualcomm.com [129.46.98.28])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 620F3BA32E
        for <devicetree@vger.kernel.org>; Thu, 24 Mar 2022 15:40:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
  t=1648161629; x=1679697629;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=losDnmYPH+h+n7uGC5CzgQ24IUC1SFXLeQexPxfUi0Q=;
  b=OX4Ql7NXlf2eEsz205ssR8QbKvnvmB81wnNMVxwVdwzuWyHeV8C0ZP1F
   /iF8+Jg5jxqLENkq17ZBq4Yhsd2wO5IcFHgLGbRvbQ+N14Yn8njH6MXWk
   lSFdXy1N6VoJO2wd8HfqHae0OLu0IcHDHGGxA8jwUA+ZAIDLHE+RmfQVU
   I=;
Received: from ironmsg-lv-alpha.qualcomm.com ([10.47.202.13])
  by alexa-out.qualcomm.com with ESMTP; 24 Mar 2022 15:40:29 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
  by ironmsg-lv-alpha.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Mar 2022 15:40:28 -0700
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Thu, 24 Mar 2022 15:40:28 -0700
Received: from [10.110.37.17] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.22; Thu, 24 Mar
 2022 15:40:27 -0700
Message-ID: <a70bde19-3ded-d8ae-51ff-ec37fa803b06@quicinc.com>
Date:   Thu, 24 Mar 2022 15:40:26 -0700
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
 <YjzhT4gOJ9SKy6q+@lunn.ch> <88849423-c4a5-0a68-1900-72196395704e@quicinc.com>
 <Yjzub26okJosPkXC@lunn.ch>
From:   Jae Hyun Yoo <quic_jaehyoo@quicinc.com>
In-Reply-To: <Yjzub26okJosPkXC@lunn.ch>
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

On 3/24/2022 3:19 PM, Andrew Lunn wrote:
> On Thu, Mar 24, 2022 at 02:27:34PM -0700, Jae Hyun Yoo wrote:
>> Hi Andrew,
>>
>> On 3/24/2022 2:23 PM, Andrew Lunn wrote:
>>> On Thu, Mar 24, 2022 at 09:45:51AM -0700, Jae Hyun Yoo wrote:
>>>> From: Graeme Gregory <quic_ggregory@quicinc.com>
>>>>
>>>> +&mac2 {
>>>> +	status = "okay";
>>>> +
>>>> +	phy-mode = "rgmii";
>>>
>>> Are you sure about this? That PHY are you using? It is more normal to
>>> use rgmii-id.
>>
>> Yes, I'm sure. PHY works with rgmii on my board. I picked a different
>> clock delay setting too.
> 
> Do you know who is inserting the delay? It looks like rgmii will be
> passed to the PHY. So there are few possibilities here:
> 
> The MAC is adding the delay. Not recommended, but does work. In that
> case, your DT is correct.
> 
> The bootloader or strapping configures the PHY to insert the
> delay. The PHY driver then ignores 'rgmii' and leaves the
> configuration alone. This will break sometime in the future when
> somebody fixes the PHY driver to actually set the PHY to rgmii as
> requested. In this case, both the PHY driver and your DT is broken.
> 
> The board itself inserts the delays by having long tracks. In this
> case, your DT is correct.
> 
> It would be good to understand this, just in case it is the second
> condition.

Thanks for your kind explanation.

The clock delay I mentioned is added into u-boot bootloader in a
patch I'm currently trying to submit.
https://lore.kernel.org/all/20220324165530.359668-1-quic_jaehyoo@quicinc.com/

I had to pick those value with 'rgmii' to make my board work but the
delay is actually different from what AST2600 EVB DT provides. I think
it's caused by a different PCB routing and board characteristic like
you said.

I want to keep this setting as it's acquired from lots of experiments.
It could be changed in case if it needs to be fixed in the future.

Thanks,
Jae
