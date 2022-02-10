Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 634924B0D6F
	for <lists+devicetree@lfdr.de>; Thu, 10 Feb 2022 13:20:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234968AbiBJMUM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Feb 2022 07:20:12 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:36804 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232947AbiBJMUM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Feb 2022 07:20:12 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D9AA12187
        for <devicetree@vger.kernel.org>; Thu, 10 Feb 2022 04:20:12 -0800 (PST)
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com [209.85.218.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 790CC3FE41
        for <devicetree@vger.kernel.org>; Thu, 10 Feb 2022 12:20:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644495604;
        bh=QD05PFFz/Hpw2ogqjv5aDP0jh2xMXLVUSGd2Y5n/k6I=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=grarH7bo2tGykxDy8UDuZKDGoliX7bYIDbiN0x5gqPOVZNSW4DvRJ+dsPIcK6SI1B
         57/ZylyroLa8VwfBd1JdyXxoQhCAoam2tSVgzHQ3J6ddR4KOR0EqsBCd7gDzdO8T6v
         2jccHHS6/tKh6wAtTaaZ//H1QBi4uNH5twZ3eGDuF2DwJJ/K19hZ6ZHNeQpSc05Rc9
         UJM2eH36x4JW2xahOWEN4wbDbacq1B159qmHpqf0bbVztouebXu9tovxTqZvacIHwS
         uyIfEX8eLmtM9mPTwMkjOnmzEANQroTdNpNOPEK8pIIlhsXeQD9uuFydRl3YHQb2wW
         xPcli6sU9AD1w==
Received: by mail-ej1-f69.google.com with SMTP id hr36-20020a1709073fa400b006cd2c703959so2625758ejc.14
        for <devicetree@vger.kernel.org>; Thu, 10 Feb 2022 04:20:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=QD05PFFz/Hpw2ogqjv5aDP0jh2xMXLVUSGd2Y5n/k6I=;
        b=MP4Eiw8jwG16P7Zmj/EBkvDQeU0W1dr8ClTjMKUN2T8vsb2U69GM85YVXh6keLGv1J
         v8EtPMDiL7CdnhOYpTYtL6KDbG3DAHYPCmzoCmCNyie+wxudKqT3nRG/N5RgyTl9OlTv
         smw6hkd0oVsbH6cKSDt0NbY+q7sWQiyUqvnLath8qc7uq3oBYQYRtaOSlHLJgOCrJzJT
         4ZipeqbIUdbBxaFoiyaVOoBd53R+y0TqUSjxEXlkWJ1KmOu4AxYQ3DbAumYTfbU9izuJ
         aEy24TX2ImOA4ilXZ3UQYvBCRdYEfbBhP4C2MKYYEN8b+lzgeSIOVcjACfEfToUJwuF/
         eS2A==
X-Gm-Message-State: AOAM5328g7biw95qjU4OBps4iqBHNYIb4DfjXJJOBIASTvpvS3S653ka
        o/zzMIFAxZruxtu3juh4Aa/y2X3Ycr0Aaez/QBpPL6GhXcs0pARcSE6mfAuJqZ5emIypGquN6oR
        jzPrY4Ko/7ZFf8FH9BSflwZCoKKS7BQcopS3GNOY=
X-Received: by 2002:a17:907:2d8e:: with SMTP id gt14mr6110924ejc.509.1644495603513;
        Thu, 10 Feb 2022 04:20:03 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzSBzccdX3C4ED8UVHgtCGnSu4s8KUvIhbaZHj58VoG0lBIE9hX48tTed2dBIw+4zqUCaFDhA==
X-Received: by 2002:a17:907:2d8e:: with SMTP id gt14mr6110908ejc.509.1644495603316;
        Thu, 10 Feb 2022 04:20:03 -0800 (PST)
Received: from [192.168.0.97] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id v5sm4034555ejr.107.2022.02.10.04.20.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Feb 2022 04:20:02 -0800 (PST)
Message-ID: <d619ef6d-b30c-9977-149e-32220106cddf@canonical.com>
Date:   Thu, 10 Feb 2022 13:20:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: (EXT) Re: [PATCH 5/5] ARM: dts: imx6ull: add TQ-Systems MBa6ULLxL
 device trees
Content-Language: en-US
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20220208134223.908757-1-alexander.stein@ew.tq-group.com>
 <20220208134223.908757-6-alexander.stein@ew.tq-group.com>
 <0c84c2af-045d-54bc-ef46-296390e58c14@canonical.com>
 <4652639.44csPzL39Z@steina-w>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <4652639.44csPzL39Z@steina-w>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/02/2022 13:10, Alexander Stein wrote:
> Hi Krzysztof,
> 
> Am Dienstag, 8. Februar 2022, 17:09:33 CET schrieb Krzysztof Kozlowski:
>> On 08/02/2022 14:42, Alexander Stein wrote:
>>> Add device trees for the MBa6ULx mainboard with TQMa6ULLxL SoMs.
>>>
>>> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
>>> ---
>>>
>>>  arch/arm/boot/dts/Makefile                    |  1 +
>>>  .../boot/dts/imx6ull-tqma6ull2l-mba6ulx.dts   | 15 ++++
>>>  arch/arm/boot/dts/imx6ull-tqma6ull2l.dtsi     | 76 +++++++++++++++++++
>>>  3 files changed, 92 insertions(+)
>>>  create mode 100644 arch/arm/boot/dts/imx6ull-tqma6ull2l-mba6ulx.dts
>>>  create mode 100644 arch/arm/boot/dts/imx6ull-tqma6ull2l.dtsi
>>>
>>> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
>>> index 3a6eccb6371a..9bf89273ae71 100644
>>> --- a/arch/arm/boot/dts/Makefile
>>> +++ b/arch/arm/boot/dts/Makefile
>>> @@ -710,6 +710,7 @@ dtb-$(CONFIG_SOC_IMX6UL) += \
>>>
>>>  	imx6ull-phytec-segin-ff-rdk-emmc.dtb \
>>>  	imx6ull-phytec-segin-lc-rdk-nand.dtb \
>>>  	imx6ull-tqma6ull2-mba6ulx.dtb \
>>>
>>> +	imx6ull-tqma6ull2l-mba6ulx.dtb \
>>>
>>>  	imx6ulz-14x14-evk.dtb \
>>>  	imx6ulz-bsh-smm-m2.dtb
>>>  
>>>  dtb-$(CONFIG_SOC_IMX7D) += \
>>>
>>> diff --git a/arch/arm/boot/dts/imx6ull-tqma6ull2l-mba6ulx.dts
>>> b/arch/arm/boot/dts/imx6ull-tqma6ull2l-mba6ulx.dts new file mode 100644
>>> index 000000000000..33437aae9822
>>> --- /dev/null
>>> +++ b/arch/arm/boot/dts/imx6ull-tqma6ull2l-mba6ulx.dts
>>> @@ -0,0 +1,15 @@
>>> +// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
>>> +/*
>>> + * Copyright 2018-2022 TQ-Systems GmbH
>>> + * Author: Markus Niebel <Markus.Niebel@tq-group.com>
>>> + */
>>> +
>>> +/dts-v1/;
>>> +
>>> +#include "imx6ull-tqma6ull2l.dtsi"
>>> +#include "mba6ulx.dtsi"
>>> +
>>> +/ {
>>> +	model = "TQ Systems TQMa6ULL2L SoM on MBa6ULx board";
>>> +	compatible = "tq,imx6ull-tqma6ull2l-mba6ulx", "tq,imx6ull-
> tqma6ull2l",
>>> "fsl,imx6ull"; +};
>>> diff --git a/arch/arm/boot/dts/imx6ull-tqma6ull2l.dtsi
>>> b/arch/arm/boot/dts/imx6ull-tqma6ull2l.dtsi new file mode 100644
>>> index 000000000000..8e4d5cd18614
>>> --- /dev/null
>>> +++ b/arch/arm/boot/dts/imx6ull-tqma6ull2l.dtsi
>>> @@ -0,0 +1,76 @@
>>> +// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
>>> +/*
>>> + * Copyright 2018-2022 TQ-Systems GmbH
>>> + * Author: Markus Niebel <Markus.Niebel@tq-group.com>
>>> + */
>>> +
>>> +#include "imx6ull.dtsi"
>>> +#include "imx6ul-tqma6ul-common.dtsi"
>>> +#include "imx6ul-tqma6ulxl-common.dtsi"
>>> +
>>> +/ {
>>> +	model = "TQ Systems TQMa6ULL2L SoM";
>>> +	compatible = "tq,imx6ull-tqma6ull2l", "fsl,imx6ull";
>>> +};
>>> +
>>
>> This entire file is exactly the same as tqma6ull2l.dtsi. What's the
>> point of creating additional flavor which is exactly the same? The
>> models look compatible, don't they?
> 
> Thanks for your fast feedback. You mean imx6ull-tqma6ull2.dtsi (wthout 
> trailing 'l')? In this case it's not exactly the same, because the LGA version 
> includes 'imx6ul-tqma6ulxl-common.dtsi' while the non-LGA one includes 
> 'imx6ul-tqma6ulx-common.dtsi'.
> 

Yes, you're right. I missed that include part. Thanks!


Best regards,
Krzysztof
