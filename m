Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 736BC4EDE13
	for <lists+devicetree@lfdr.de>; Thu, 31 Mar 2022 17:57:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239394AbiCaP6e (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 31 Mar 2022 11:58:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45878 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233678AbiCaP6b (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 31 Mar 2022 11:58:31 -0400
Received: from smtpout1.mo529.mail-out.ovh.net (smtpout1.mo529.mail-out.ovh.net [178.32.125.2])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62B021F083D
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 08:56:42 -0700 (PDT)
Received: from mxplan5.mail.ovh.net (unknown [10.108.4.25])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id BDC1AF1DED3C;
        Thu, 31 Mar 2022 17:56:39 +0200 (CEST)
Received: from kaod.org (37.59.142.107) by DAG4EX1.mxp5.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.24; Thu, 31 Mar
 2022 17:56:38 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-107S0012aa6e524-85ac-47d8-bf7f-916ca4c206a4,
                    FC9088D273F6636B0CAAD4892A2C3D02B7ACC8E0) smtp.auth=clg@kaod.org
X-OVh-ClientIp: 82.64.250.170
Message-ID: <c4bcb633-02d2-1cd5-3485-787ebd4b1e0a@kaod.org>
Date:   Thu, 31 Mar 2022 17:56:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v3 0/7] Fix AST2600 quad mode SPI pinmux settings
Content-Language: en-US
To:     Jae Hyun Yoo <quic_jaehyoo@quicinc.com>,
        Joel Stanley <joel@jms.id.au>
CC:     devicetree <devicetree@vger.kernel.org>,
        linux-aspeed <linux-aspeed@lists.ozlabs.org>,
        Arnd Bergmann <arnd@arndb.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        Jamie Iles <quic_jiles@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Graeme Gregory <quic_ggregory@quicinc.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>
References: <20220329173932.2588289-1-quic_jaehyoo@quicinc.com>
 <CACPK8Xed5Kh_Y2B3NY41bjgoALvz1gC4zbNfmUaHn_8EbHio4g@mail.gmail.com>
 <ea2ecef9-f47f-2a4e-8dda-ffd0c3691389@quicinc.com>
From:   =?UTF-8?Q?C=c3=a9dric_Le_Goater?= <clg@kaod.org>
In-Reply-To: <ea2ecef9-f47f-2a4e-8dda-ffd0c3691389@quicinc.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-Originating-IP: [37.59.142.107]
X-ClientProxiedBy: DAG5EX1.mxp5.local (172.16.2.41) To DAG4EX1.mxp5.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 7fd801bd-a94f-4719-9b66-bfbc424dd197
X-Ovh-Tracer-Id: 14931403090787666933
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvvddrudeigedgleehucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepkfffgggfuffvfhfhjggtgfhisehtkeertddtfeejnecuhfhrohhmpeevrogurhhitggpnfgvpgfiohgrthgvrhcuoegtlhhgsehkrghougdrohhrgheqnecuggftrfgrthhtvghrnhepieegvdffkeegfeetuddttddtveduiefhgeduffekiedtkeekteekhfffleevleelnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrddutdejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpohhuthdphhgvlhhopehmgihplhgrnhehrdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheptghlgheskhgrohgurdhorhhgpdhnsggprhgtphhtthhopedupdhrtghpthhtoheplhhinhhugidqrghrmhdqkhgvrhhnvghlsehlihhsthhsrdhinhhfrhgruggvrggurdhorhhg
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Jae,

On 3/31/22 17:44, Jae Hyun Yoo wrote:
> On 3/30/2022 10:50 PM, Joel Stanley wrote:
>> On Tue, 29 Mar 2022 at 17:40, Jae Hyun Yoo <quic_jaehyoo@quicinc.com> wrote:
>>>
>>> I’m sending this patch series to fix current issues in AST2600 pinmux
>>> settings while enabling quad mode SPI support.
>>>
>>> FWSPI18 pins are basically 1.8v logic pins that are different from the
>>> dedicated FWSPI pins that provide 3.3v logic level, so FWSPI18 pins can’t
>>> be grouped with FWSPIDQ2 and FWSPIDQ3, so this series fix the issue.
>>>
>>> Also, fixes QSPI1 and QSPI2 function settings in AST2600 pinctrl dtsi to
>>> make it able to enable quad mode on SPI1 and SPI2 interfaces.
>>>
>>> With this series, quad mode pinmux can be set like below.
>>>
>>> FW SPI:
>>> &fmc {
>>>          pinctrl-names = "default";
>>>          pinctrl-0 = <&pinctrl_fwqspi_default>;
>>> }
>>>
>>> SPI1:
>>> &spi1 {
>>>          pinctrl-names = "default";
>>>          pinctrl-0 = <&pinctrl_qspi1_default>;
>>> }
>>>
>>> SPI2:
>>> &spi2 {
>>>          pinctrl-names = "default";
>>>          pinctrl-0 = <&pinctrl_qspi2_default>;
>>> }
>>
>> Thanks. I hope to see a board from you that uses this soon :)
>>
>> I'll send the patches as fixes once -rc1 is out.
> 
> Thanks Joel!
> 
> Yes, I would be able to send my BMC board dts soon.
> Thanks in advance for your review on that too.

Out of curiosity, which driver are you using ? the one from SDK ?

I proposed a new one for upstream supporting all AST2400, AST2500, AST2600
controllers. I would be glad to have some feedback if you have time.

Thanks,

C.
