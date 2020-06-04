Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CDF311EE64E
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2020 16:05:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728761AbgFDOF6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Jun 2020 10:05:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728682AbgFDOF6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Jun 2020 10:05:58 -0400
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com [IPv6:2607:f8b0:4864:20::842])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A332C08C5C1
        for <devicetree@vger.kernel.org>; Thu,  4 Jun 2020 07:05:58 -0700 (PDT)
Received: by mail-qt1-x842.google.com with SMTP id j32so5254249qte.10
        for <devicetree@vger.kernel.org>; Thu, 04 Jun 2020 07:05:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=marek-ca.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=8sTKDbykwSlqjkc+QQmVX/X4H1PKxc/T5zBXz+JcQBI=;
        b=0zF8Eb4bzqjSQB/lXrUh6ciNSD06d4VkHxDnGB9I9PRnBTdSdoTaI78MJdidAbYZLN
         90+rt5zRH779ALPQJJCzVb1Ny+rM83PeeuAuZ8IH7J/90XGQtvpOARZ+bI5yeOr1RnKa
         xZFGJDxuAqJ3cxi86mTjWpWU8vwM/r+/nlsEzavKea6eJKLh86N3TRI4+2kCwaXnFbBL
         sf0O3Y+bpgpM94qprDv/uGproOOOzeawK5K/dAu/aR6PV98q/8+XvHX26m/UpIpdxSUs
         j1D1GxHlaUFtDhts3cHotFF0HTNwxRWgg54CuY1tAjKoxIc4MdX+0yfu+6kjhpjJDTbD
         iVJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=8sTKDbykwSlqjkc+QQmVX/X4H1PKxc/T5zBXz+JcQBI=;
        b=LkNSH2YN/f5+nmcPWDLKylpaAi+jOt3UFHq+ojanNYDkVEBmUhK6C/13kqTZCaJIwk
         Mt0sgsHwohE0SRs1NYtS1J3LkObroOS2K9q76EN7d3WAXcS0XU55SyTWaQilnc/We//6
         ILEN1FYikdTo1BUpdO9aB2Z2cFqgOxe3/C8lfBL1roMy3Rd5kXQT3fj9DaVlmIKEiOnR
         gPCtzWR7lrbc93X+h2KIqSBIcaYi33+y/4ZjcLpse5kdxapl4JHmjzP4jFTs9uKs3imt
         UTd1jRkmA1Xqldl2izVf2yLZM7Vmkt2JyB1GG1UuJ8yC7sdLdCBYFzUbeVrxErjKJro7
         isiw==
X-Gm-Message-State: AOAM533w7Qf2PG2ug8BQz8hJyBxi84oMAK3Yq9ouWSbb3tsJRk1Gzc1c
        27Go5tLsl0NtnMX/bMhiDV/e6w==
X-Google-Smtp-Source: ABdhPJzrJDtfNSIRHrOMEPgMIwuC/tuoH7MjyfBdTb+ve5SQxe7mPvfxhLprOToDNg8rbqcLcPQdCw==
X-Received: by 2002:ac8:518c:: with SMTP id c12mr4646131qtn.108.1591279557400;
        Thu, 04 Jun 2020 07:05:57 -0700 (PDT)
Received: from [192.168.0.189] ([147.253.86.153])
        by smtp.gmail.com with ESMTPSA id c16sm4446863qko.100.2020.06.04.07.05.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jun 2020 07:05:56 -0700 (PDT)
Subject: Re: [PATCH 0/6] arm64: dts: qcom: smmu/USB nodes and HDK855/HDK865
 dts
To:     Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        open list <linux-kernel@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>
References: <20200524023815.21789-1-jonathan@marek.ca>
 <20200604135221.GH16719@Mani-XPS-13-9360>
From:   Jonathan Marek <jonathan@marek.ca>
Message-ID: <200d1f60-781b-51c7-1a38-c955f59919de@marek.ca>
Date:   Thu, 4 Jun 2020 10:06:19 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200604135221.GH16719@Mani-XPS-13-9360>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 6/4/20 9:52 AM, Manivannan Sadhasivam wrote:
> Hi,
> 
> On Sat, May 23, 2020 at 10:38:06PM -0400, Jonathan Marek wrote:
>> Add dts nodes for apps_smmu and USB for both sm8150 and sm8250.
>>
> 
> I've tested this series on an SM8250 based board and able to get Type C (USB0)
> working. There are also couple of Type A ports (USB1) on that board behind a
> USB hub. It is probing fine but I don't see any activity while connecting a
> USB device. Will continue to debug and once I get them working, I'll add my
> Tested-by tag.
> 

HDK865 also has a couple Type A ports, I am using them with devices 
already plugged in during boot and I haven't hit a problem like that, 
but I think I've seen the same issue when hotplugging. IIRC the behavior 
was a bit weird, like plugging a device in the Type A port (USB1) 
nothing would happen, but unplugging/replugging the type C port (USB0) 
would cause the Type A port device to start working..

Have you tried with the devices already plugged in before booting?

> Thanks,
> Mani
> 
>> Also add initial dts files for HDK855 and HDK865, based on mtp dts, with a
>> few changes. Notably, the HDK865 dts has regulator config changed a bit based
>> on downstream (I think sm8250-mtp.dts is wrong and copied too much from sm8150).
>>
>> Jonathan Marek (6):
>>    arm64: dts: qcom: sm8150: add apps_smmu node
>>    arm64: dts: qcom: sm8250: add apps_smmu node
>>    arm64: dts: qcom: sm8150: Add secondary USB and PHY nodes
>>    arm64: dts: qcom: sm8250: Add USB and PHY device nodes
>>    arm64: dts: qcom: add sm8150 hdk dts
>>    arm64: dts: qcom: add sm8250 hdk dts
>>
>>   arch/arm64/boot/dts/qcom/Makefile       |   2 +
>>   arch/arm64/boot/dts/qcom/sm8150-hdk.dts | 461 ++++++++++++++++++++++++
>>   arch/arm64/boot/dts/qcom/sm8150.dtsi    | 180 +++++++++
>>   arch/arm64/boot/dts/qcom/sm8250-hdk.dts | 454 +++++++++++++++++++++++
>>   arch/arm64/boot/dts/qcom/sm8250.dtsi    | 287 +++++++++++++++
>>   5 files changed, 1384 insertions(+)
>>   create mode 100644 arch/arm64/boot/dts/qcom/sm8150-hdk.dts
>>   create mode 100644 arch/arm64/boot/dts/qcom/sm8250-hdk.dts
>>
>> -- 
>> 2.26.1
>>
