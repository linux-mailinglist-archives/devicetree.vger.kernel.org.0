Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4AD976AFA15
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 00:10:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229748AbjCGXKA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Mar 2023 18:10:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43142 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229746AbjCGXJ6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Mar 2023 18:09:58 -0500
Received: from esa5.hgst.iphmx.com (esa5.hgst.iphmx.com [216.71.153.144])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E5539B9BD
        for <devicetree@vger.kernel.org>; Tue,  7 Mar 2023 15:09:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1678230597; x=1709766597;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=3JBuqtbm+k8WUUQLAuD/H5xdXwubIsT2+ne5pBOD+nA=;
  b=HhxQB13nM9KsGHPbrhAnjEYeJHEJ3JuUhUv2iuknAFXCnHrGHwMZ1HC8
   YXEbc94GOLx3rBSc1IHjN/KPGi2V1vvt4y5pbsSQkLSMdPIcFju73o4c6
   7Ssmhvoa6UCDy8dtFu6z+mosRzyQPP09vX/AUB+A4gfBzQJdQrv96HXtw
   08OKrw3u8JSjtVrFjQ6L6MrakLdH9Juz/CyhR/ergoMWf+xL906w63WO+
   fO5WSOrxE+r0u1jeh3aRDRHqouTx5xx7JI1KzkCpO7ZYiwRuR+igH1unB
   mmfhnKeHwBXJReCbg8OFEXobS64GMkQpm2ry7V4Vbp6T8NCAxZkKfmmyK
   g==;
X-IronPort-AV: E=Sophos;i="5.98,242,1673884800"; 
   d="scan'208";a="224834933"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 08 Mar 2023 07:09:55 +0800
IronPort-SDR: w6Ltj7BxmXSGW2tzKmxywg7CCXLS9cm8xAY+lCs3CY3JJdEoNvQpeaR4xexXHLx7J3y5JJWPit
 Spt+EuUMRiffpm/K7KwwhuxePxMebypWaNQykMXhYrY4bui+uW7IlbUhaj/m1wlCuHZpb4GH59
 bJGbeY6N54l/dOMM29QzzZGqsjLlu31zLX16zyN5sBQDjhtG3jMvzSGUBd3cFuMnu2GzaSJfIq
 qYsdQLdb2O2zcnGN1eer1MNCXnqnJo3stWwqLZKJ8WnFuc1BSgHLm7w5xbxEs23R9GxBj0trkv
 +O8=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 07 Mar 2023 14:26:35 -0800
IronPort-SDR: WBi9lU3CHEQJebtKnSbpbHoay1rMP4u6wfyXh9aGozTJKe+gBUdRrQ0GtrX2VgNMaTTR9+MXqo
 1EcjmbuWt/s7SXPc7HtiryboEXe8do96X9U7i8a3qXpyYeWnXebDSmvmO24ozbjSFBzNn0C5DV
 0Qlnfxn3HjDPSi1fGpYa2WgcgCyjlfyVX4ek/6NPS0FVQ7En/TLFEddkr7naOqTNIIx/c9vnIg
 /X5ij2FrADU9mf33t9qRN2Y0Xn2p//ecVdgtWbIF1Mrn9dnnq4BpYDJolmXxxAso/ycQgg+XrE
 KBc=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 07 Mar 2023 15:09:55 -0800
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4PWWPH3rFtz1RvTp
        for <devicetree@vger.kernel.org>; Tue,  7 Mar 2023 15:09:55 -0800 (PST)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
        reason="pass (just generated, assumed good)"
        header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
        opensource.wdc.com; h=content-transfer-encoding:content-type
        :in-reply-to:organization:from:references:to:content-language
        :subject:user-agent:mime-version:date:message-id; s=dkim; t=
        1678230590; x=1680822591; bh=3JBuqtbm+k8WUUQLAuD/H5xdXwubIsT2+ne
        5pBOD+nA=; b=s6YyVLCZvrRj+GqDYs0xaQZefkSZeISklzq+JMxQeWm10869Aav
        3Erh/UQbw/g8iMtCk417ox2J3gzFEca3ZniHAtXiv2jMOjXF1ZVaPvntnwOYSu95
        FUCSc/VGzHePokluR5I+yPJaYKito0a76cPlHerdQLAJ2bynfWUMcchcKFPOZa6o
        3SKgTjOOIK6PaPIG3bveO4AuplL9ToCABS8vOiv2GG69lHMYaWe7hAAkU/OjJ6zH
        s8m6d3V9HsBmRfGTGEJqmfIILUISBsHid5njV46XiDVRY9XZJXBg0tj/2/n2gAcb
        LXu934fE+B+ZaxOPRRSUeEveapbDZtZEFsQ==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
        by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id QQUyqSOn9JTT for <devicetree@vger.kernel.org>;
        Tue,  7 Mar 2023 15:09:50 -0800 (PST)
Received: from [10.225.163.63] (unknown [10.225.163.63])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4PWWP86TQ3z1RvLy;
        Tue,  7 Mar 2023 15:09:48 -0800 (PST)
Message-ID: <662d2bf8-0094-cb05-04c8-cc43780e3bb0@opensource.wdc.com>
Date:   Wed, 8 Mar 2023 08:09:47 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v4] dt-bindings: ata: Add UniPhier controller binding
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Hans de Goede <hdegoede@redhat.com>,
        Jens Axboe <axboe@kernel.dk>, linux-ide@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230222155906.19403-1-hayashi.kunihiko@socionext.com>
 <9d36818f-3ce3-0fb6-1a3e-85e3879af08c@opensource.wdc.com>
 <a6425bde-5b6d-2fb2-2396-a35677b19e8f@linaro.org>
 <e5ed284a-77ac-df6d-1473-e4d96955f65b@opensource.wdc.com>
 <bf6d6b20-8479-80f7-1899-d58e03e6c6c8@linaro.org>
 <f800c8f5-d6d4-8a93-f8e2-3ea46e6d7d31@opensource.wdc.com>
 <20230307224013.GA276357-robh@kernel.org>
From:   Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <20230307224013.GA276357-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 3/8/23 07:40, Rob Herring wrote:
> On Wed, Mar 08, 2023 at 07:02:32AM +0900, Damien Le Moal wrote:
>> On 3/8/23 00:52, Krzysztof Kozlowski wrote:
>>> On 07/03/2023 11:42, Damien Le Moal wrote:
>>>> On 3/7/23 17:13, Krzysztof Kozlowski wrote:
>>>>> On 06/03/2023 02:22, Damien Le Moal wrote:
>>>>>> On 2/23/23 00:59, Kunihiko Hayashi wrote:
>>>>>>> Add UniPhier SATA controller compatible string to the platform binding.
>>>>>>> This controller needs three reset controls for Pro4 SoC, or two reset
>>>>>>> controls for PXs2 and PXs3 SoCs.
>>>>>>>
>>>>>>> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
>>>>>>
>>>>>> Rob,
>>>>>>
>>>>>> Are you OK with this patch ? I can take it for 6.4.
>>>>>>
>>>>>
>>>>> You got Review (which includes also "Ack"), what are you missing here?
>>>>
>>>> By the way, I am not seeing/have not received any Ack. Hence why I checked with Rob.
>>>
>>> You were on Cc... Did I end up in spam?
>>
>> I did get your review email, but I do not see any Ack with it. Was it a
>> different email ? I do check my spam folder from time to time but didn't see
>> anything in there that would not make me rich :)
> 
> Reviewed-by is more than an Acked-by, so if you have either one you can 
> take it. And Krzysztof is also a DT maintainer, so no need to wait for 
> me.

Thanks for the clarification.

> 
> Rob

-- 
Damien Le Moal
Western Digital Research

