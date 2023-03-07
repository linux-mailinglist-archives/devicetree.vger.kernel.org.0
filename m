Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 919186ADAE1
	for <lists+devicetree@lfdr.de>; Tue,  7 Mar 2023 10:48:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230465AbjCGJsM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Mar 2023 04:48:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42878 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230462AbjCGJrt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Mar 2023 04:47:49 -0500
Received: from esa4.hgst.iphmx.com (esa4.hgst.iphmx.com [216.71.154.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CDE2E54C84
        for <devicetree@vger.kernel.org>; Tue,  7 Mar 2023 01:47:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1678182451; x=1709718451;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=XAMMJ4e2XknIezt+JVgJt5gbEedpXSXNtv9cd7WBDBw=;
  b=reUszstGTMC5+0FbXrnVcWT3FvmR0rXeiTs3pWlMcC3bluyRorWQhAmT
   hwEUIHr85BqmABOMebd5glNZMKHagB5V/GH9qzDIl9DvNx1D/39fktT0Z
   3Vl5Sqc+VLTPkF0/dQh9TeTz7bc8U8wqvSY1Qin7pyVyuUWs094AaYq2c
   vWr3QoZVzTr3bQRHpIgknRFr5aiwtkqQAps97uS/Qfy0jZ43UlrTnp7nP
   RM9epbIxlPPKumYLYn9BcX999aQSXh+ij4kt9ls7IWlkPqG4QFU3lUiAA
   QaPz0W1VePi/JP9JR2vwU6whV5fUXkPssNawuK0IlZeOec49roEsk5+U3
   g==;
X-IronPort-AV: E=Sophos;i="5.98,240,1673884800"; 
   d="scan'208";a="223281643"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 07 Mar 2023 17:47:13 +0800
IronPort-SDR: pWuf9cccEaGcUCM2itvGikdesaPX7ms89U9Aa0dfv2SygPfNsie1TsNURbMkuqA7ul1NktBQ/V
 VT9+6irXU4beb6MaZJ1O30oYXNavjHsXUjUiLYjF0YdQbTnp9NTBxesQuVfeBOz/nf8mA5Mi3+
 ZGtf/wA9d+LYMijWtJQI/iYgO5xve/emyGvVJvmV9oWwY4ei5bHqwluI1XWvNSBlT/BLQ/OOXP
 YMO1BZXB7XL33UgZee76pOJQbvI3cCYEKo2fkoWgNVMg4Ikv7KE0LZFoOzcJ0Qlh0oMZxOG1fo
 C/s=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 07 Mar 2023 01:03:53 -0800
IronPort-SDR: v2UhBwC+RjSjLTYokrEQufbp9hvlNkd2wdB30rdy8rTzLnI0uujxhdqsFKaNsw553zkeIpijls
 rYw1iQsOU+NiaNUvJq1rAC87iYa+BYk57RkPeHeq7/PSxQZpGzfrxDEtueTHMCiYBRHB0EbWSh
 1o+sVX9qofXkSgEd830xTU1WylwjWhER4A1u0d7aNhfddx+5vlCguKKEv6Ytm26rJELb1BbWAF
 /EjOwoTEZJodpUFL7HmICgvJyacQQ45pEa1cM4KKAN4+yrLRW6aCpE8unwmjhQ7eBGXlCJXRk2
 KXI=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 07 Mar 2023 01:47:14 -0800
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4PW9b54j7Wz1Rwt8
        for <devicetree@vger.kernel.org>; Tue,  7 Mar 2023 01:47:13 -0800 (PST)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
        reason="pass (just generated, assumed good)"
        header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
        opensource.wdc.com; h=content-transfer-encoding:content-type
        :in-reply-to:organization:from:content-language:references:to
        :subject:user-agent:mime-version:date:message-id; s=dkim; t=
        1678182432; x=1680774433; bh=XAMMJ4e2XknIezt+JVgJt5gbEedpXSXNtv9
        cd7WBDBw=; b=Xe9/lQm/zSq85O2a6WTvXvqJTNvEAfCFQdNv1RDWR4Ny7PKt50l
        qKhUWmF00BpvOvW7QP5RM7espGYErO/tyuuFclV0quf1nuirs4Ioy0B8E/OTm+cD
        QhzW5YqWenPEfzo8GNNDltyTrXjrNTeTcNLzT59inQ0N7IF7Mwmnq5VSYphB6+4W
        67zE2imAYtxXP/Jg3NXo62wwFUFSw0jYtZmdyB1zogSPyQ7Dgp/9F26bXBW9o6OA
        JtZHbOzSu1fQnmXuywzqgmYd+HxZHdzQyUJKSDzQLMwvnuNAcg2H8aOO7ILqqvPs
        cV4tOvjWKObdWPF7tU06W9jKHuDpQOWXBPQ==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
        by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id DTJYYABb-Pd2 for <devicetree@vger.kernel.org>;
        Tue,  7 Mar 2023 01:47:12 -0800 (PST)
Received: from [10.225.163.63] (unknown [10.225.163.63])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4PW9b31JKZz1RvLy;
        Tue,  7 Mar 2023 01:47:10 -0800 (PST)
Message-ID: <9e0c0ae6-0059-36dc-7cab-6b7e588c560c@opensource.wdc.com>
Date:   Tue, 7 Mar 2023 18:47:09 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v4] dt-bindings: ata: Add UniPhier controller binding
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
Content-Language: en-US
From:   Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <a6425bde-5b6d-2fb2-2396-a35677b19e8f@linaro.org>
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

On 3/7/23 17:13, Krzysztof Kozlowski wrote:
> On 06/03/2023 02:22, Damien Le Moal wrote:
>> On 2/23/23 00:59, Kunihiko Hayashi wrote:
>>> Add UniPhier SATA controller compatible string to the platform binding.
>>> This controller needs three reset controls for Pro4 SoC, or two reset
>>> controls for PXs2 and PXs3 SoCs.
>>>
>>> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
>>
>> Rob,
>>
>> Are you OK with this patch ? I can take it for 6.4.
>>
> 
> You got Review (which includes also "Ack"), what are you missing here?

Just checking with Rob as he is the DT maintainer. Out of courtesy.
I will queue that patch then.

-- 
Damien Le Moal
Western Digital Research

