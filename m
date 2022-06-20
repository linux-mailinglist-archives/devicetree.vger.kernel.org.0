Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 59497550DD1
	for <lists+devicetree@lfdr.de>; Mon, 20 Jun 2022 02:26:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236895AbiFTAZv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Jun 2022 20:25:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235125AbiFTAZt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Jun 2022 20:25:49 -0400
Received: from esa1.hgst.iphmx.com (esa1.hgst.iphmx.com [68.232.141.245])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A713EA1B0
        for <devicetree@vger.kernel.org>; Sun, 19 Jun 2022 17:25:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1655684747; x=1687220747;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=H0ulQrMBtA6pu622Zq7Ff/HeEgzOhbo0ZUSX4iWBZhA=;
  b=rjp/8QvBJyjlqVpv4wzJb47Eens4ShYwMZ3K6vFKmvj5XbVE9LWWUiKv
   R3zYJDNRxVnP+Ow58iDV+RkxZpF48ONxzJBhhEBBByVae7eaM/4QGGEc2
   2X6sLi0mrax4Ihtyax51lby2WnbQyKhyB/7JRMO0BA/CbS8raCCPq28EB
   qOretXW9OhGzvs2eQ07tUWsO9TIhgcxsvLd3QskuYmkgOV5e8IsCjxcE0
   IRBBAsuP7RWlgDoQma72GYCsfWxumw7aTfZx9q/Wym9czw+fUkmf5rYOS
   pPuMhZjIkySZucz4u/49+MK2SAQewAza/4hnIFIDdqt+i2oExs6o3qvxk
   Q==;
X-IronPort-AV: E=Sophos;i="5.92,306,1650902400"; 
   d="scan'208";a="315672132"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 20 Jun 2022 08:25:47 +0800
IronPort-SDR: AEVQOLZJMIJ+VlvMSonh4JwV17JtkIXKtmOk2itDfNqRLZ/lWPRnhHYOqf2Lg7tL/SNVcOFWB1
 6eRUciIwlYQPRpvdaWG7qukdyCiy0P1+QeaNiHUqc+EkqPQ+fBSIgfL3sRLkk8GJRUNpQQi83P
 AaEBHENszujSSBTKi8Zx3Z9/hCnfzNikrykXS5fL56UbJt9P3BmK/jAbChsS1KJ3JSZTHBMiPE
 vB48Ui6rDTrcZmW0VEtVx98MIX5U0z76mabHkEUX84CyCd8N6MQU9zU8OLfcbuwKpOIf6AF+j6
 Vu3nA61URfEHZ9dE1bbm8+pX
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 19 Jun 2022 16:43:55 -0700
IronPort-SDR: 77Va59bZSmcNyeQHslOh0mlql+Zcl6nSzhz5ddjzK0JOWaXvWmMi+oMCQ7vtbZUnpvpCzzIK/D
 /1EEGQ37qci5KnJsfKbQeJTqbIEAvt685SA8SSNRLCu9LXgZKCxesnWv59/RqKNtGBNPSkO5gm
 nbv4fLpa7FHGynuF49lHiB66sdKcOmehPeiSMGzDpT8yd+d9qAnyVynb1AojHkTDuKFADTtD1q
 8U99DT61ZickE0IOIL0kgdlQcHAVfRLeSQfbpvgqxIIdq4NGpzpJXJhMO4uPVfevFPBMv3y+BF
 QDA=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 19 Jun 2022 17:25:47 -0700
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4LR9RG1BHdz1SHwl
        for <devicetree@vger.kernel.org>; Sun, 19 Jun 2022 17:25:45 -0700 (PDT)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
        reason="pass (just generated, assumed good)"
        header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
        opensource.wdc.com; h=content-transfer-encoding:content-type
        :in-reply-to:organization:from:references:to:content-language
        :subject:user-agent:mime-version:date:message-id; s=dkim; t=
        1655684745; x=1658276746; bh=H0ulQrMBtA6pu622Zq7Ff/HeEgzOhbo0ZUS
        X4iWBZhA=; b=jiZLlvSxMCZ6FyKEwxTD9KC+yR9WRhcg+KBamtfquRBI7vS8pGJ
        mBX0zoQMpTkJaMFFdVJnj3t13KHqhbLZ0wxv4yH09WD5zap1Onl7UiZRRPdtTT8q
        lRpIKFHnIHS6ATDMIB1EBmgVvIKlGPRbTBmO5z1aEaR53EnGopmn8GW5MfYpr+wV
        dW8obWKceDCrsqysJgrYGk90jld2x82pjjO7GVot8iccx/JpoOjI3x1vD3Avo5Tq
        8Z0iZwu+SbCnAqDIHlTu4eXzBK/+zo527aefCY9ZzO+FsC511gbTaO4E5/c48io7
        0JzIK6++acSKredsKoDjpGQoBzQrwNc1phQ==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
        by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id 00HKWzQKTX5L for <devicetree@vger.kernel.org>;
        Sun, 19 Jun 2022 17:25:45 -0700 (PDT)
Received: from [10.225.163.87] (unknown [10.225.163.87])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4LR9R75cZsz1Rvlc;
        Sun, 19 Jun 2022 17:25:39 -0700 (PDT)
Message-ID: <891cf74c-ac0a-b380-1d5f-dd7ce5aeda9d@opensource.wdc.com>
Date:   Mon, 20 Jun 2022 09:25:38 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 07/14] riscv: dts: canaan: fix the k210's memory node
Content-Language: en-US
To:     Conor.Dooley@microchip.com, mail@conchuod.ie, airlied@linux.ie,
        daniel@ffwll.ch, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, thierry.reding@gmail.com,
        sam@ravnborg.org, Eugeniy.Paltsev@synopsys.com, vkoul@kernel.org,
        lgirdwood@gmail.com, broonie@kernel.org, fancer.lancer@gmail.com,
        daniel.lezcano@linaro.org, palmer@dabbelt.com, palmer@rivosinc.com
Cc:     tglx@linutronix.de, paul.walmsley@sifive.com,
        aou@eecs.berkeley.edu, masahiroy@kernel.org, geert@linux-m68k.org,
        niklas.cassel@wdc.com, dillon.minfei@gmail.com,
        jee.heng.sia@intel.com, joabreu@synopsys.com,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org,
        alsa-devel@alsa-project.org, linux-spi@vger.kernel.org,
        linux-riscv@lists.infradead.org
References: <20220618123035.563070-1-mail@conchuod.ie>
 <20220618123035.563070-8-mail@conchuod.ie>
 <9cd60b3b-44fe-62ac-9874-80ae2223d078@opensource.wdc.com>
 <e1fbf363-d057-1000-a846-3df524801f15@microchip.com>
From:   Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <e1fbf363-d057-1000-a846-3df524801f15@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 6/20/22 08:54, Conor.Dooley@microchip.com wrote:
> On 20/06/2022 00:38, Damien Le Moal wrote:
>> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
>>
>> On 6/18/22 21:30, Conor Dooley wrote:
>>> From: Conor Dooley <conor.dooley@microchip.com>
>>>
>>> The k210 memory node has a compatible string that does not match with
>>> any driver or dt-binding & has several non standard properties.
>>> Replace the reg names with a comment and delete the rest.
>>>
>>> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
>>> ---
>>> ---
>>>  arch/riscv/boot/dts/canaan/k210.dtsi | 6 ------
>>>  1 file changed, 6 deletions(-)
>>>
>>> diff --git a/arch/riscv/boot/dts/canaan/k210.dtsi b/arch/riscv/boot/dts/canaan/k210.dtsi
>>> index 44d338514761..287ea6eebe47 100644
>>> --- a/arch/riscv/boot/dts/canaan/k210.dtsi
>>> +++ b/arch/riscv/boot/dts/canaan/k210.dtsi
>>> @@ -69,15 +69,9 @@ cpu1_intc: interrupt-controller {
>>>
>>>       sram: memory@80000000 {
>>>               device_type = "memory";
>>> -             compatible = "canaan,k210-sram";
>>>               reg = <0x80000000 0x400000>,
>>>                     <0x80400000 0x200000>,
>>>                     <0x80600000 0x200000>;
>>> -             reg-names = "sram0", "sram1", "aisram";
>>> -             clocks = <&sysclk K210_CLK_SRAM0>,
>>> -                      <&sysclk K210_CLK_SRAM1>,
>>> -                      <&sysclk K210_CLK_AI>;
>>> -             clock-names = "sram0", "sram1", "aisram";
>>>       };
>>
>> These are used by u-boot to setup the memory clocks and initialize the
>> aisram. Sure the kernel actually does not use this, but to be in sync with
>> u-boot DT, I would prefer keeping this as is. Right now, u-boot *and* the
>> kernel work fine with both u-boot internal DT and the kernel DT.
> 
> Right, but unfortunately that desire alone doesn't do anything about
> the dtbs_check complaints.
> 
> I guess the alternative approach of actually documenting the compatible
> would be more palatable?

Yes, I think so. That would allow keeping the fields without the DTB build
warnings.

> 
> Thanks,
> Conor.
> 
> 
> 


-- 
Damien Le Moal
Western Digital Research
