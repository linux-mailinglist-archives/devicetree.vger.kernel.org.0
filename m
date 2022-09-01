Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 334485A9497
	for <lists+devicetree@lfdr.de>; Thu,  1 Sep 2022 12:28:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233749AbiIAK2P (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Sep 2022 06:28:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59240 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233865AbiIAK2N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Sep 2022 06:28:13 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A77F27B16
        for <devicetree@vger.kernel.org>; Thu,  1 Sep 2022 03:28:11 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id bx38so17373709ljb.10
        for <devicetree@vger.kernel.org>; Thu, 01 Sep 2022 03:28:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=DkA60aHXUfXyi0nOhFCnOaprQpFzB9d74uuCfob9M9Y=;
        b=R2ykrLQLnN/v/taRF0q2wdgnD/2x5hNUVxYi7Cew//ZOohEsNfVGeIv+OhOIsWrGu4
         J4ArT5c2Aia1E2y4mziTvEj/j8xUE5sFLBLPv3vVM5fhieut/0Lo2f63FQTZrnuZuDqF
         Uq9jGoa6bceQpKyL0hkULrcvZaBZV+faczRCvlA/DY+SoAkJn05YFTEgTaDNT+rP9ChO
         KWJ/zaGAVVxZd32zPSGfZpJPeZXo5vPc96NzSnr3Z5L8PYiuH/Rmp24LIIMWg9JYOXJw
         rB+em91jo4Gwt5134X9NT7tCoXay0IiutbZbcAdUU6ODSvPv0hxHeisEkIMIdahXHD7g
         lFEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=DkA60aHXUfXyi0nOhFCnOaprQpFzB9d74uuCfob9M9Y=;
        b=17NbGDffnLwyGGKJJwih4osRI5QgzO7HPKqnhkLXhunGj/M8pctMb8hYFotQz+2O13
         atd+BeJ+QAQiismvBS/ZWQf+plK/QU0e5L0DGq8r9jlLVJrinBk5MPLjMVZV3HdcK871
         q+HOr2iVIDui5Qxe0nagyaBpsJf24jLIFgzFL6w6rKjmj/AS0haOvqnr1+6GRUTvUEja
         NAL3QDVFUiBj+Xvpwrr/3tGXSMzR9uLgukbeCZ2p4mTcl3sFsOIhlAi/nQL1BJ36Vq+8
         FbgUZJf/KdaM8LkyiB/l3JzqIely0Mt4sj9TRyRARsX4FcczQ9K7r8sPIepE5h86RkYJ
         J5gA==
X-Gm-Message-State: ACgBeo0g45FCEgMe1Rux/JQAiJPrujNFcYuTTnSS2ykr9WF4eHHYpdh3
        NFUrnsmf6QZY7pNi9KXJMh3ZVg==
X-Google-Smtp-Source: AA6agR6j051ZvEzRZDhENnuXOdSvboBa0B4KfPg8jC3+6DdT1t+/XHiLhrYxcbM+ZLP0NrFzbEHkPA==
X-Received: by 2002:a2e:a594:0:b0:25f:e891:b6a with SMTP id m20-20020a2ea594000000b0025fe8910b6amr10299222ljp.242.1662028089794;
        Thu, 01 Sep 2022 03:28:09 -0700 (PDT)
Received: from [192.168.28.124] (balticom-73-99-134.balticom.lv. [109.73.99.134])
        by smtp.gmail.com with ESMTPSA id g9-20020a19ac09000000b004948868f326sm628998lfc.154.2022.09.01.03.28.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Sep 2022 03:28:09 -0700 (PDT)
Message-ID: <83444851-14ef-b293-6581-1307331fb1c4@linaro.org>
Date:   Thu, 1 Sep 2022 13:28:07 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v2 1/2] dt-bindings: mtd: spi-nor: Add reset-gpios
 property
Content-Language: en-US
To:     "Potthuri, Sai Krishna" <sai.krishna.potthuri@amd.com>,
        Tudor Ambarus <tudor.ambarus@microchip.com>,
        Pratyush Yadav <pratyush@kernel.org>,
        Michael Walle <michael@walle.cc>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "saikrishna12468@gmail.com" <saikrishna12468@gmail.com>,
        "git (AMD-Xilinx)" <git@amd.com>
References: <20220901072914.30205-1-sai.krishna.potthuri@amd.com>
 <20220901072914.30205-2-sai.krishna.potthuri@amd.com>
 <6b06f88e-128d-7ce6-b97b-b5cacfc4834d@linaro.org>
 <BY5PR12MB4258128603AA297DD8FAB168DB7B9@BY5PR12MB4258.namprd12.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <BY5PR12MB4258128603AA297DD8FAB168DB7B9@BY5PR12MB4258.namprd12.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/09/2022 13:18, Potthuri, Sai Krishna wrote:
> Hi Krzysztof,
> 
>> -----Original Message-----
>> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Sent: Thursday, September 1, 2022 1:26 PM
>> To: Potthuri, Sai Krishna <sai.krishna.potthuri@amd.com>; Tudor Ambarus
>> <tudor.ambarus@microchip.com>; Pratyush Yadav <pratyush@kernel.org>;
>> Michael Walle <michael@walle.cc>; Miquel Raynal
>> <miquel.raynal@bootlin.com>; Richard Weinberger <richard@nod.at>;
>> Vignesh Raghavendra <vigneshr@ti.com>; Rob Herring
>> <robh+dt@kernel.org>; Krzysztof Kozlowski
>> <krzysztof.kozlowski+dt@linaro.org>
>> Cc: devicetree@vger.kernel.org; linux-mtd@lists.infradead.org; linux-
>> kernel@vger.kernel.org; saikrishna12468@gmail.com; git (AMD-Xilinx)
>> <git@amd.com>
>> Subject: Re: [PATCH v2 1/2] dt-bindings: mtd: spi-nor: Add reset-gpios
>> property
>>
>> On 01/09/2022 10:29, Sai Krishna Potthuri wrote:
>>> SPI-NOR flashes have RESET pin which can be toggled using GPIO
>>> controller, for those platforms reset-gpios property can be used to
>>> reset the flash device.
>>>
>>> Signed-off-by: Sai Krishna Potthuri <sai.krishna.potthuri@amd.com>
>>> ---
>>
>> You still miss the user (DTS) of this change...
> Do you mean to have this property in example DTS in this yaml?

No, I want to see in-tree DTS using it.

> 
>> The JEDEC spec did not mention
>> a reset pin. Can you provide the user?
> Xilinx Octal SPI (cdns,qspi-nor.yaml) is using this reset pin to reset the
> flash device on Versal platform.> Do you want me to update the example dts in cdns,qspi-nor.yaml file
> to reflect this property in this patch?
> 


Best regards,
Krzysztof
