Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 601B34C0FFC
	for <lists+devicetree@lfdr.de>; Wed, 23 Feb 2022 11:15:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239513AbiBWKQN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Feb 2022 05:16:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41738 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238870AbiBWKQM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Feb 2022 05:16:12 -0500
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 457848B6DB
        for <devicetree@vger.kernel.org>; Wed, 23 Feb 2022 02:15:45 -0800 (PST)
Received: by mail-lj1-x234.google.com with SMTP id s25so1647679lji.5
        for <devicetree@vger.kernel.org>; Wed, 23 Feb 2022 02:15:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=x0hhqTD7+70BY56UgVvuj1KjLOHy0vwMSq9Dkm9spfM=;
        b=DPy2VmvLhkyfMACRJLIYku0No2FqHO7MxS8kBZKPz85pBiTzAd9xLJL643CgWMQHnv
         FaU/t+0EjXgiarKAsvykxE69jIi7MOTyHNLpj8bQrxDTxYTS0VtsSns18Hs9dAdGt185
         zi3z0bFPR9KPX4mYhRhH5Ebcm3dHo63LskNE2p8KnXRH3FWBw+P/LYwZ2hArNIM0do0x
         oDMA99CLbSoS+VA6Lv85LSM9gydEO4DRNCgoYjW/HrTX43Ps1pQjcaoWINRtXo+gQLPG
         Tcu/XT3nE2pq9tDOa7jfBbmVmovuRo/cotueEoS4ua6dB0v6rWC94gcjC6JyujOMLiDO
         8PzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=x0hhqTD7+70BY56UgVvuj1KjLOHy0vwMSq9Dkm9spfM=;
        b=F05Rr0cReqn8bEwZBIBYIjF2WRoFWk0/1yhUcOGRGKaPp+vNrccuvGYOk+2D1Ee8cw
         uBZGVEfBaNQ/AtsBiLOwmLVOKyF/66oc43WD2Z8uQHlloh3yeH0O/S/tlY5EJzsrvlwY
         SrSv2/QImcahIxAgzjtX1kTIAg/U9QbyENY7XPh7aXZpTBa85Ajsju0Y1Y7pQQGg17xS
         xSI4J2WFcMGI3a5bwVAZsWQ+sl3qBGubxVN31QHn+AXf/6TxeTVYnTZWEctWA1MnTeId
         FlroN0a1U2l8VlgLT9S69fYP8m/SMYDcrHc5KI1bnGD6sQigEDEWGJsU5FRnoLnevYQi
         KJSA==
X-Gm-Message-State: AOAM532IEQaF+cjiHYF75QsXJYEUePf95jb32+pyxk9m743wJkynm7m1
        dhZSTAdx9ihhfU4nTNzTn/2/BA==
X-Google-Smtp-Source: ABdhPJyBygHlAaG01x0Rytqlew+o7vC1YMULRRZgas+QS2byaE3Kl2J4sxbbDOVziTse83JDVeh7GQ==
X-Received: by 2002:a05:651c:200c:b0:23b:8267:9ed1 with SMTP id s12-20020a05651c200c00b0023b82679ed1mr20856217ljo.368.1645611343630;
        Wed, 23 Feb 2022 02:15:43 -0800 (PST)
Received: from [192.168.43.7] ([94.25.228.217])
        by smtp.gmail.com with ESMTPSA id o10sm145880ljh.43.2022.02.23.02.15.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Feb 2022 02:15:43 -0800 (PST)
Message-ID: <449637fd-322b-35b5-b73b-c72e970a7c59@linaro.org>
Date:   Wed, 23 Feb 2022 13:15:40 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Subject: Re: [PATCH v5 4/5] PCI: qcom: Add interconnect support to 2.7.0/1.9.0
 ops
Content-Language: en-GB
To:     Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Stanimir Varbanov <svarbanov@mm-sol.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Wilczy??ski <kw@linux.com>,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-phy@lists.infradead.org
References: <20211218141024.500952-1-dmitry.baryshkov@linaro.org>
 <20211218141024.500952-5-dmitry.baryshkov@linaro.org>
 <Yfv7gh8YycxH2Wtm@ripper> <527f0365-1544-ad73-cf49-b839ae629340@linaro.org>
 <20220211161208.GB448@lpieralisi> <YhV2EhQvReObX/4J@ripper>
 <20220223093119.GA26626@lpieralisi>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220223093119.GA26626@lpieralisi>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/02/2022 12:31, Lorenzo Pieralisi wrote:
> On Tue, Feb 22, 2022 at 03:47:30PM -0800, Bjorn Andersson wrote:
>> On Fri 11 Feb 08:12 PST 2022, Lorenzo Pieralisi wrote:
>>
>>> On Fri, Feb 04, 2022 at 05:38:33PM +0300, Dmitry Baryshkov wrote:
>>>> On 03/02/2022 18:57, Bjorn Andersson wrote:
>>>>> On Sat 18 Dec 06:10 PST 2021, Dmitry Baryshkov wrote:
>>>>>
>>>>>> Add optional interconnect support for the 2.7.0/1.9.0 hosts. Set the
>>>>>> bandwidth according to the values from the downstream driver.
>>>>>>
>>>>>
>>>>> What memory transactions will travel this path? I would expect there to
>>>>> be two different paths involved, given the rather low bw numbers I
>>>>> presume this is the config path?
>>>>
>>>> I think so. Downstream votes on this path for most of the known SoCs. Two
>>>> spotted omissions are ipq8074 and qcs404.
>>>>
>>>>>
>>>>> Is there no vote for the data path?
>>>>
>>>> CNSS devices can vote additionally on the MASTER_PCI to memory paths:
>>>> For sm845 (45 = MASTER_PCIE):
>>>>                  qcom,msm-bus,vectors-KBps =
>>>>                          <45 512 0 0>,
>>>>                          <45 512 600000 800000>; /* ~4.6Gbps (MCS12) */
>>>>
>>>> On sm8150/sm8250 qca bindings do not contain a vote, but wil6210 does (100 =
>>>> MASTER_PCIE_1):
>>>>                  qcom,msm-bus,vectors-KBps =
>>>>                          <100 512 0 0>,
>>>>                          <100 512 600000 800000>; /* ~4.6Gbps (MCS12) */
>>>>
>>>> For sm8450 there are two paths used by cnss:
>>>> 		<&pcie_noc MASTER_PCIE_0 &pcie_noc SLAVE_ANOC_PCIE_GEM_NOC>,
>>>> 		<&gem_noc MASTER_ANOC_PCIE_GEM_NOC &mc_virt SLAVE_EBI1>;
>>>>
>>>> with multiple entries per each path.
>>>>
>>>> So, I'm not sure about these values.
>>>
>>> This discussion is gating the series, please let me know if you want me
>>> to cherry-pick the other patches or you will resend the series.
>>>
>>
>> Please pick the other patches and I'll work with Dmitry to conclude how
>> this is actually connected to the busses inside the SoC.
> 
> Hi,
> 
> can you resend the series without this patch rebased on top of
> v5.17-rc1 please ?

Done. I've posted v6.

-- 
With best wishes
Dmitry
