Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 840B84E89FA
	for <lists+devicetree@lfdr.de>; Sun, 27 Mar 2022 22:24:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231752AbiC0UZ5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 27 Mar 2022 16:25:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43886 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230075AbiC0UZ4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 27 Mar 2022 16:25:56 -0400
Received: from alexa-out-sd-01.qualcomm.com (alexa-out-sd-01.qualcomm.com [199.106.114.38])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE50433E3A
        for <devicetree@vger.kernel.org>; Sun, 27 Mar 2022 13:24:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
  t=1648412657; x=1679948657;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=uD4rK7huKds1Fh0a6NId3WpMrT0uUrxpB9KCviOUlJA=;
  b=aP3YBJK47OHnNDxHKuWmWC3to5CmEzQ6yd0VDqj4ay0OYOWPjYTusBZd
   8f7D48RaUOrPUMkXB/1xwnAkbsmaHC25QjX7Xe+4vDNNVDqXkX43yC4jv
   S0ztUYj9wMWHSEZs2QwaXhM60wrS04moeH4csG6w8rqdRZ3BJpIqtA/14
   o=;
Received: from unknown (HELO ironmsg02-sd.qualcomm.com) ([10.53.140.142])
  by alexa-out-sd-01.qualcomm.com with ESMTP; 27 Mar 2022 13:24:17 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
  by ironmsg02-sd.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Mar 2022 13:24:16 -0700
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Sun, 27 Mar 2022 13:24:16 -0700
Received: from [10.110.126.12] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.22; Sun, 27 Mar
 2022 13:24:15 -0700
Message-ID: <92b381f7-6a4b-1db1-ea00-7bbc8c4b0f84@quicinc.com>
Date:   Sun, 27 Mar 2022 13:24:14 -0700
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
From:   Jae Hyun Yoo <quic_jaehyoo@quicinc.com>
In-Reply-To: <d0044322-72d8-1348-9898-dc91e3192e94@kernel.org>
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


[...]

>> +	chosen {
>> +		stdout-path = &uart5;
>> +		bootargs = "console=ttyS4,115200n8";
> 
> After adding stdout-path, please remove bootargs.

Can I keep the default bootargs for a case if CONFIG_CMDLINE_FORCE
is enabled?

Best Regards,
Jae

> 
> Best regards,
> Krzysztof
