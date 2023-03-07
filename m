Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7050F6AF82B
	for <lists+devicetree@lfdr.de>; Tue,  7 Mar 2023 23:02:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230340AbjCGWCo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Mar 2023 17:02:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229823AbjCGWCn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Mar 2023 17:02:43 -0500
Received: from esa4.hgst.iphmx.com (esa4.hgst.iphmx.com [216.71.154.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58C4E72B4
        for <devicetree@vger.kernel.org>; Tue,  7 Mar 2023 14:02:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1678226562; x=1709762562;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=EviAZJp9Cw5i9H3BBqXkLv53Dp0208QTzjUygOiD26U=;
  b=MqCP8gYqJa5x2ISIKv2JmKFUxMoAAoizyH+O2hahX0spCokoF1WXogLe
   9qPVXlmvYestF4fJ4+TVYcTTfgh2RqhRYUxS+ozcqdQfE8Lo7PshUCjeW
   II2CavRQExUx6R6pWt6xVusfvb+n64xlQhXuEimP5qrQIephdbxbKZMZF
   VrQUPbFjnYrF0rPy/YJ5y42KeKPz+mTDbSY2HMVQPW8NxiQ0xccCPxL6F
   0JqvtBN2+9a7058J7/AoVZKpEi6qKoyaipjtiMb9nFgN6OYZDTHZQp0nz
   aQc+UyRV4+pE1bfT+KFm4xa2xJG5KTmnfY0RhJ6G9ifxByazDXIO/A+If
   Q==;
X-IronPort-AV: E=Sophos;i="5.98,242,1673884800"; 
   d="scan'208";a="223334439"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 08 Mar 2023 06:02:38 +0800
IronPort-SDR: vKNq/+k0JcsVvo8ye0FsujdV5wZTTg15e3Jdq5/JzcuM6x1kUGrB9xClXdtiXJseRSC5XK88/f
 K6k0khk4FERYGl9aLJDCm8Yqm7ZBU8oCnSIxu5V5mWaP+9QkYcUc+c1WgdDZlO5FAzp1ctVctQ
 VvnldfoWCH1a6YUV/yUIy7eo9Ev8FTYdoy+VirUHVOwfv86sErUPABO5tg+hGcUpfi4hqRBA4V
 Ao76We1zIQga0QPTUYnJN0FG+uRIKwPwls+Bhgg07Rdtf6uI2lJEJi4wPeGAtgGzJaS32pD1Xx
 ri4=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 07 Mar 2023 13:13:37 -0800
IronPort-SDR: m9GEAe+IHIpS7Jfz4OWZlg0U0LYqt0D5vRhfCvJ0pS7j5qpYEbOZidk9pai5iVpHflEIsFES8V
 +sWTP8GWmw+WEDAmb4Bey2GndfC9G/NrUPY5Np15y4NbfXuFz3F5GpDPLclAMEmQKjhLFS+l7J
 Zc3pI+bQXhBZOnSqC3oFgC4sPaOmQjTGf0y6QsrEhoUOyY+yQj6q8372wZk/HKnHrurkcLEgnh
 CXFiCNF8Et2B7L15k5pC68Pz2WuW1jirnLNyeZ+CF/o9qMBJZwTuSDBeDMRUtlJE5OKYEQLvK/
 5zI=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 07 Mar 2023 14:02:39 -0800
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4PWTvg0Xfpz1RvTp
        for <devicetree@vger.kernel.org>; Tue,  7 Mar 2023 14:02:39 -0800 (PST)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
        reason="pass (just generated, assumed good)"
        header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
        opensource.wdc.com; h=content-transfer-encoding:content-type
        :in-reply-to:organization:from:references:to:content-language
        :subject:user-agent:mime-version:date:message-id; s=dkim; t=
        1678226555; x=1680818556; bh=EviAZJp9Cw5i9H3BBqXkLv53Dp0208QTzjU
        ygOiD26U=; b=oQh5rvHGuTN+og6m4RdofnNxXfKQ6FOij7HodCau0YROd3W2vMP
        sAdB64d1gilHxx4OvumXJwN0hEtvRWbGH2tou7uVrD+qGj0myjPD5nnyNKNk9E8g
        /xJRkjJvyWytiygFploRUteaR2Fd0g29vaIutBat/ar1VbtUL/P6SvqKHsqUzH7y
        ibccEv58Hr5/VExPhL7hsEcpp4JvRIfY2caZBgJKYNj6C5K8ix6UnHeBYqstn97X
        IhLVkB67rWFF/rIJUuPsCjvc48ZWh1fc9Ojq63Y9s6EJ3rJ4iEOekWXE0YW1tYXO
        BBoaPCCaIRqVm+x9xZ85/fkP0aZHPNLxQRw==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
        by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id ZCSBZyNXiU05 for <devicetree@vger.kernel.org>;
        Tue,  7 Mar 2023 14:02:35 -0800 (PST)
Received: from [10.225.163.63] (unknown [10.225.163.63])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4PWTvZ0Zgkz1RvLy;
        Tue,  7 Mar 2023 14:02:33 -0800 (PST)
Message-ID: <f800c8f5-d6d4-8a93-f8e2-3ea46e6d7d31@opensource.wdc.com>
Date:   Wed, 8 Mar 2023 07:02:32 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v4] dt-bindings: ata: Add UniPhier controller binding
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Hans de Goede <hdegoede@redhat.com>,
        Jens Axboe <axboe@kernel.dk>
Cc:     linux-ide@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230222155906.19403-1-hayashi.kunihiko@socionext.com>
 <9d36818f-3ce3-0fb6-1a3e-85e3879af08c@opensource.wdc.com>
 <a6425bde-5b6d-2fb2-2396-a35677b19e8f@linaro.org>
 <e5ed284a-77ac-df6d-1473-e4d96955f65b@opensource.wdc.com>
 <bf6d6b20-8479-80f7-1899-d58e03e6c6c8@linaro.org>
From:   Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <bf6d6b20-8479-80f7-1899-d58e03e6c6c8@linaro.org>
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

On 3/8/23 00:52, Krzysztof Kozlowski wrote:
> On 07/03/2023 11:42, Damien Le Moal wrote:
>> On 3/7/23 17:13, Krzysztof Kozlowski wrote:
>>> On 06/03/2023 02:22, Damien Le Moal wrote:
>>>> On 2/23/23 00:59, Kunihiko Hayashi wrote:
>>>>> Add UniPhier SATA controller compatible string to the platform binding.
>>>>> This controller needs three reset controls for Pro4 SoC, or two reset
>>>>> controls for PXs2 and PXs3 SoCs.
>>>>>
>>>>> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
>>>>
>>>> Rob,
>>>>
>>>> Are you OK with this patch ? I can take it for 6.4.
>>>>
>>>
>>> You got Review (which includes also "Ack"), what are you missing here?
>>
>> By the way, I am not seeing/have not received any Ack. Hence why I checked with Rob.
> 
> You were on Cc... Did I end up in spam?

I did get your review email, but I do not see any Ack with it. Was it a
different email ? I do check my spam folder from time to time but didn't see
anything in there that would not make me rich :)

> 
> Best regards,
> Krzysztof
> 

-- 
Damien Le Moal
Western Digital Research

