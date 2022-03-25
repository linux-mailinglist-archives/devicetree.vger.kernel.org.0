Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 356C74E6B83
	for <lists+devicetree@lfdr.de>; Fri, 25 Mar 2022 01:15:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243325AbiCYARH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Mar 2022 20:17:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240633AbiCYARG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Mar 2022 20:17:06 -0400
Received: from alexa-out-sd-02.qualcomm.com (alexa-out-sd-02.qualcomm.com [199.106.114.39])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68183BBE08
        for <devicetree@vger.kernel.org>; Thu, 24 Mar 2022 17:15:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
  t=1648167334; x=1679703334;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=bEWaoJQcOVP85g1T182Zwzbg7CE38Ki3V1mVgVgM1UI=;
  b=LgqVWaj9mod/5Jw/RERelSLhochZqw/9gqAPME7X7+CvL4b8He5Vs7WC
   8v3WU8VMD1qa5u4+sd5QwVR5sTb6HJLp9Sz2Wun2ESQR9GOdvz3eugQ7p
   pk2F7bvoBL61WTPKDbSOBF6tc/qUkJvXDlYb9sC7gpTvvMR5bf1Df3dXI
   8=;
Received: from unknown (HELO ironmsg02-sd.qualcomm.com) ([10.53.140.142])
  by alexa-out-sd-02.qualcomm.com with ESMTP; 24 Mar 2022 17:15:33 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
  by ironmsg02-sd.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Mar 2022 17:15:33 -0700
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Thu, 24 Mar 2022 17:15:33 -0700
Received: from [10.110.37.17] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.22; Thu, 24 Mar
 2022 17:15:32 -0700
Message-ID: <98f13444-d5cd-0396-ae75-439a372e7ab6@quicinc.com>
Date:   Thu, 24 Mar 2022 17:15:31 -0700
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
 <Yjzub26okJosPkXC@lunn.ch> <a70bde19-3ded-d8ae-51ff-ec37fa803b06@quicinc.com>
 <Yj0IbLsebBvZdaZE@lunn.ch>
From:   Jae Hyun Yoo <quic_jaehyoo@quicinc.com>
In-Reply-To: <Yj0IbLsebBvZdaZE@lunn.ch>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
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

On 3/24/2022 5:10 PM, Andrew Lunn wrote:
>> The clock delay I mentioned is added into u-boot bootloader in a
>> patch I'm currently trying to submit.
>> https://lore.kernel.org/all/20220324165530.359668-1-quic_jaehyoo@quicinc.com/
> 
> Do you mean this:
> 
> +&scu {
> +	mac0-clk-delay = <0x1d 0x1c
> +			  0x10 0x17
> +			  0x10 0x17>;
> +	mac1-clk-delay = <0x1d 0x10
> +			  0x10 0x10
> +			  0x10 0x10>;
> +	mac2-clk-delay = <0x0a 0x04
> +			  0x08 0x04
> +			  0x08 0x04>;
> +	mac3-clk-delay = <0x0a 0x04
> +			  0x08 0x04
> +			  0x08 0x04>;
> 
> So the MAC is adding the delay. In that case, setting phy-mode to
> rgmii is O.K, but it would be nice to add a comment in DT that the
> bootloader is setting up the MAC to insert the delay.

Right. It would be better with the comment. I'll add the comment in v2.

Thanks for your suggestion!

-Jae
