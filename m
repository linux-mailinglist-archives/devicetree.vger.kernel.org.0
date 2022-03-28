Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 47C864E99F3
	for <lists+devicetree@lfdr.de>; Mon, 28 Mar 2022 16:42:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240205AbiC1OoS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Mar 2022 10:44:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38942 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235440AbiC1OoS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Mar 2022 10:44:18 -0400
Received: from alexa-out.qualcomm.com (alexa-out.qualcomm.com [129.46.98.28])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E3493FBFD
        for <devicetree@vger.kernel.org>; Mon, 28 Mar 2022 07:42:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
  t=1648478557; x=1680014557;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=DWla+++ZEMsuZw+cSin1iVx3cXWKGoCzaHtISsrEYY8=;
  b=zDnrNKGdhuWEdbhcY8Md59QTiSue+WNLG3CsK2SGXkchhkG7XqXICTLL
   N3uBHgu+Bnko5Qfcot7TDrpKUasyGMQmFieyzBQNbKCGSWW9I0CK4KRWI
   dfN/qCKgaT+0fj7gEv/VcJMF52SxhLCtgGbrQmh1XJpiNFzs4703BGRgd
   M=;
Received: from ironmsg07-lv.qualcomm.com ([10.47.202.151])
  by alexa-out.qualcomm.com with ESMTP; 28 Mar 2022 07:42:37 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
  by ironmsg07-lv.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Mar 2022 07:42:37 -0700
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Mon, 28 Mar 2022 07:42:36 -0700
Received: from [10.110.126.12] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.22; Mon, 28 Mar
 2022 07:42:35 -0700
Message-ID: <e7c4a366-6954-def2-03a3-f50232c4404d@quicinc.com>
Date:   Mon, 28 Mar 2022 07:42:34 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 4/5] ARM: dts: aspeed-g6: add FWQSPI group in pinctrl
 dtsi
Content-Language: en-US
To:     Andrew Jeffery <andrew@aj.id.au>, Rob Herring <robh+dt@kernel.org>,
        "Joel Stanley" <joel@jms.id.au>, Andrew Lunn <andrew@lunn.ch>
CC:     Jamie Iles <quic_jiles@quicinc.com>,
        Graeme Gregory <quic_ggregory@quicinc.com>,
        <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-aspeed@lists.ozlabs.org>,
        Johnny Huang <johnny_huang@aspeedtech.com>
References: <20220325154048.467245-1-quic_jaehyoo@quicinc.com>
 <20220325154048.467245-5-quic_jaehyoo@quicinc.com>
 <c681079b-5bc7-4c96-b68b-77214f64a165@www.fastmail.com>
From:   Jae Hyun Yoo <quic_jaehyoo@quicinc.com>
In-Reply-To: <c681079b-5bc7-4c96-b68b-77214f64a165@www.fastmail.com>
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



On 3/27/2022 8:17 PM, Andrew Jeffery wrote:
> 
> 
> On Sat, 26 Mar 2022, at 02:10, Jae Hyun Yoo wrote:
>> From: Johnny Huang <johnny_huang@aspeedtech.com>
>>
>> Add FWSPIDQ2 and FWSPIDQ3 group to support AST2600 FW SPI quad mode.
>> These pins can be used with dedicated FW SPI pins - FWSPICS0#,
>> FWSPICK, FWSPIMOSI and FWSPIMISO.
>>
>> Signed-off-by: Johnny Huang <johnny_huang@aspeedtech.com>
>> Signed-off-by: Jae Hyun Yoo <quic_jaehyoo@quicinc.com>
>> ---
>> Changes in v2:
>>   * None.
>>
>>   arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi | 5 +++++
>>   1 file changed, 5 insertions(+)
>>
>> diff --git a/arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi
>> b/arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi
>> index 06d60a8540e9..47c3fb137cbc 100644
>> --- a/arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi
>> +++ b/arch/arm/boot/dts/aspeed-g6-pinctrl.dtsi
>> @@ -117,6 +117,11 @@ pinctrl_fwspid_default: fwspid_default {
>>   		groups = "FWSPID";
>>   	};
>>
>> +	pinctrl_fwqspi_default: fwqspi_default {
>> +		function = "FWQSPI";
>> +		groups = "FWQSPI";
>> +	};
>> +
> 
> This is okay once you update the binding documentation.

Will add a bindings patch in v3.

Thanks,
Jae

> Andrew
