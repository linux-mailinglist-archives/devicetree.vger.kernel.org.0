Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 965B028DA49
	for <lists+devicetree@lfdr.de>; Wed, 14 Oct 2020 09:07:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726342AbgJNHHT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Oct 2020 03:07:19 -0400
Received: from mickerik.phytec.de ([195.145.39.210]:55502 "EHLO
        mickerik.phytec.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726141AbgJNHHT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Oct 2020 03:07:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1602659237; x=1605251237;
        h=From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=Lt54ejs+8exSfr0zyaVuK0+pb/0mA2rLbk3TwEkVa2U=;
        b=bm3lDAsXJDqq3C+OghnLUaBvTYn0puNcKYEI+mi4MarHYmnr7XUQnMjPNXaZ4Gum
        mtA/TgmI7AJwaIgThHQTBd0AmYqLszccvkosKOT5UtZlYavRg8n1Yv2aaOnDrLW/
        eatMno9nWtE7CrWe9JfJ7cxgkbA4DEQpwetYDKJldGI=;
X-AuditID: c39127d2-269ff70000001c25-5a-5f86a3a53382
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 2E.6D.07205.5A3A68F5; Wed, 14 Oct 2020 09:07:17 +0200 (CEST)
Received: from [172.16.23.108] ([172.16.23.108])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2020101409071737-603758 ;
          Wed, 14 Oct 2020 09:07:17 +0200 
Subject: Re: [PATCH 2/2] ARM: dts: imx6: Add support for phyBOARD-Nunki
To:     Marco Felsch <m.felsch@pengutronix.de>, robh+dt@kernel.org,
        shawnguo@kernel.org
Cc:     festevam@gmail.com, linux-imx@nxp.com, m.podolszki@phytec.de,
        devicetree@vger.kernel.org, kernel@pengutronix.de,
        c.hemp@phytec.de, j.remmet@phytec.de
References: <20201007133037.25315-1-m.felsch@pengutronix.de>
 <20201007133037.25315-2-m.felsch@pengutronix.de>
 <20201007133526.oa3ry346tefn7v6q@pengutronix.de>
From:   =?UTF-8?Q?Stefan_Riedm=c3=bcller?= <s.riedmueller@phytec.de>
Message-ID: <3b03e52a-c6ac-c19e-2056-9ba0e773deef@phytec.de>
Date:   Wed, 14 Oct 2020 09:07:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201007133526.oa3ry346tefn7v6q@pengutronix.de>
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 14.10.2020 09:07:17,
        Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 14.10.2020 09:07:17,
        Serialize complete at 14.10.2020 09:07:17
X-TNEFEvaluated: 1
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrLLMWRmVeSWpSXmKPExsWyRoCBS3fp4rZ4g0O9ahbzj5xjtXh41d9i
        1dSdLBZdv1YyW3zYdZXZonXvEXaLF1vEHdg9ds66y+6xaVUnm8fGdzuYPPr/Gnh83iQXwBrF
        ZZOSmpNZllqkb5fAlTHvz0uWggsCFWtuvGdsYPzA08XIySEhYCJxbkIvUxcjF4eQwDZGiSl9
        X1khnDOMEh/adzODVAkLuEv8PrKTEcQWEQiWmH/lGBtIEbPATEaJLw9XMUN0LGKUuHNtGlgV
        m4CTxOLzHUBVHBy8AjYSs+eYg4RZBFQllu39ygISFhWIlNi5wxIkzCsgKHFy5hMWEJtTwFai
        /8Y/sIskBBqZJH7Pu8gKcaqQxOnFZ8EOYhaQl9j+dg6UbSYxb/NDKFtc4taT+UwTGIVmIZk7
        C0nLLCQts5C0LGBkWcUolJuZnJ1alJmtV5BRWZKarJeSuokRGCWHJ6pf2sHYN8fjECMTB+Mh
        RgkOZiUR3lfSbfFCvCmJlVWpRfnxRaU5qcWHGKU5WJTEeTfwloQJCaQnlqRmp6YWpBbBZJk4
        OKUaGB3Y+GId+hVWzT7S8u1oXml5xCw956n8ZX/k5IOU9s+JV12ns+J6s67Fr1jn5R9r1/43
        Tzn99vDtCpuW2Hwn3kZdbbEFPxSr9fZMT+krfyXZpL95tmE54xyF2yeOPY44N3lR35vP/z11
        nJ5s3CvWPt9nzcaVKxd0Jnob2ty/7xevZZG0fMHKP0osxRmJhlrMRcWJAOLGffiAAgAA
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marco,

thanks for the patches.

On 07.10.20 15:35, Marco Felsch wrote:
> Add missing Phytec developers to Cc.
> 
> Regards,
>    Marco
> 
> On 20-10-07 15:30, Marco Felsch wrote:
>> From: Stefan Riedmueller<s.riedmueller@phytec.de>
>>
>> This patch adds support for the PHYTEC phyBOARD-Nunki which is a
>> baseboard for the phyCORE-i.MX 6 especially designed for image
>> processing purposes. At this point it only supports the phyCORE-i.MX
>> 6Quad and 6QuadPlus.
>>
>> Features are:
>>   - phyCORE-i.MX 6Quad/QuadPlus
>>   - LVDS display
>>   - HDMI
>>   - GBit Ethernet
>>   - USB Host
>>   - USB OTG
>>   - SATA
>>   - PCIe
>>
>> Signed-off-by: Stefan Riedmueller<s.riedmueller@phytec.de>
>> Signed-off-by: Christian Hemp<c.hemp@phytec.de>
>> Signed-off-by: Jan Remmet<j.remmet@phytec.de>
>> [m.felsch@pengutronix.de: squashed downstream commits:
>>      ARM: dts: imx6: nunki: Add support for phytec cameras
>>      ARM: dts: imx6qdl: nunki: Fix wrong pin settings
>>      ARM: dts: imx6qdl: nunki: Enable pcie regulator active low
>>      ARM: dts: imx6qdl: nunki: Remove enable-active-low property
>>      ARM: dts: imx6qdl: nunki: Add muxing for camera strobe and trigger
>>      ARM: dts: imx6qdl: nunki: fix rtc compatible
>>      ARM: dts: imx6: nunki: Move optional camera bindings to separate dtsi]
>> [m.felsch@pengutronix.de:
>>      - remove downstream camera and display .dtsi files
>>      - reorder phandles
>>      - adapt commit message to reflect new state
>>      - move stdout-path to nunki.dtsi since it is the only possible debug
>>        uart
>>      - fix pwm-cells for backlight (new default is 3)
>>      - remove not upstream available ti,scan921226h deserializers
>>      - fix a few style issues (compatible first and so on)
>>      - drop unecessary status lines
>>      - keep ldb disabled
>>      - move iomux node to the end]
>> [m.felsch@pengutronix.de:
>>      - add support for phyCORE-i.MX 6QuadPlus]
>> Signed-off-by: Marco Felsch<m.felsch@pengutronix.de>

Reviewed-by: Stefan Riedmueller <s.riedmueller@phytec.de>

Stefan
