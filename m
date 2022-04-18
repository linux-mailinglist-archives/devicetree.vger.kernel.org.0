Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 495EC505AA5
	for <lists+devicetree@lfdr.de>; Mon, 18 Apr 2022 17:09:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242135AbiDRPMa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Apr 2022 11:12:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48716 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345216AbiDRPMM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Apr 2022 11:12:12 -0400
Received: from alexa-out-sd-01.qualcomm.com (alexa-out-sd-01.qualcomm.com [199.106.114.38])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB38236163
        for <devicetree@vger.kernel.org>; Mon, 18 Apr 2022 07:07:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
  t=1650290864; x=1681826864;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=cdeeIaTUkflc7ywKWKQ2FVLqMbw9WyQuhVvIi8noo7s=;
  b=K0Pi0ZmBwfx19WU9mtrbHJiEgXtdV1IlzZIlLaL9hpRKcdCW20LiKxAD
   Cx09ryYW06083pYsaMrh7HT2YvtW+7UHzbetKUZUL20eZ8D9eB9pdGTOW
   /aZ4DRJLymKtOqdo43uEI+lOBMrk9UHne02Dy9mWpQsm0CFohL2vmP1EP
   w=;
Received: from unknown (HELO ironmsg03-sd.qualcomm.com) ([10.53.140.143])
  by alexa-out-sd-01.qualcomm.com with ESMTP; 18 Apr 2022 07:07:44 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
  by ironmsg03-sd.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Apr 2022 07:07:43 -0700
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Mon, 18 Apr 2022 07:07:43 -0700
Received: from [10.110.52.91] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.22; Mon, 18 Apr
 2022 07:07:42 -0700
Message-ID: <697daba9-c07d-5a41-305e-95b1dcfa1c50@quicinc.com>
Date:   Mon, 18 Apr 2022 07:07:36 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [PATCH v3 0/7] Fix AST2600 quad mode SPI pinmux settings
Content-Language: en-US
To:     Linus Walleij <linus.walleij@linaro.org>,
        Joel Stanley <joel@jms.id.au>
CC:     Andrew Jeffery <andrew@aj.id.au>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>,
        Jamie Iles <quic_jiles@quicinc.com>,
        Graeme Gregory <quic_ggregory@quicinc.com>,
        <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-aspeed@lists.ozlabs.org>
References: <20220329173932.2588289-1-quic_jaehyoo@quicinc.com>
 <CACRpkdZff-TbnNHO6Q590ubyH51+yqN68DOghazVKvYoHMBekw@mail.gmail.com>
From:   Jae Hyun Yoo <quic_jaehyoo@quicinc.com>
In-Reply-To: <CACRpkdZff-TbnNHO6Q590ubyH51+yqN68DOghazVKvYoHMBekw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-Spam-Status: No, score=-7.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Linus,

On 4/17/2022 4:28 PM, Linus Walleij wrote:
> Hi Jae,
> 
> On Tue, Mar 29, 2022 at 7:40 PM Jae Hyun Yoo <quic_jaehyoo@quicinc.com> wrote:
> 
>> Jae Hyun Yoo (5):
>>    pinctrl: pinctrl-aspeed-g6: remove FWQSPID group in pinctrl
>>    dt-bindings: pinctrl: aspeed-g6: remove FWQSPID group
>>    dt-bindings: pinctrl: aspeed-g6: add FWQSPI function/group
>>    pinctrl: pinctrl-aspeed-g6: add FWQSPI function-group
> 
> These four patches applied to the pinctrl tree.
> 
> Please funnel patches 1, 6, 7 through the SoC tree.

Thanks a lot!

Hi Joel,
Can you please include 1, 6 and 7 in the next pull request of Aspeed
SoC tree?

Thanks,
Jae
