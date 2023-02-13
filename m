Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C66D5693FA5
	for <lists+devicetree@lfdr.de>; Mon, 13 Feb 2023 09:31:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229875AbjBMIbg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Feb 2023 03:31:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42638 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229784AbjBMIbf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Feb 2023 03:31:35 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 393F69022
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 00:31:34 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id bk16so11224646wrb.11
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 00:31:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Gz6xm7NoqnSOUARx/CNCDCfdeCI4cT5lZ/yhcZmlHMg=;
        b=U5aZIVwzZo8Q4S4+FGo8CVxrW/Nc6LBfif9lyHMNpX0bZmxYinkZwCqhJppeddapMX
         O+OzsuACDo7fqmYAu+ujfyuYvzxTpzWiwpRDYsH2dnwbfHQhFgQgQDYksm12D/iA7q7B
         LPwHBUVFJrWs0lUyDoAxVHMSkHPpL1XdJby8J9jBqwDs6osv6Qm+Htdv1UvMpe6IaoT7
         dHMxT2NpCisvKDRhpjjvb0Po3rTrDFAgsAUH2fkvRKTzk2SmPyX3nvGnjxKEi1oIxMPS
         Ll8B6MRsqpFqz3I4gkpc5SYDyebDBA1Xy4LzHoW/4M/zKKAUlMV2p6mxdxsQdp/ljV/D
         k28w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Gz6xm7NoqnSOUARx/CNCDCfdeCI4cT5lZ/yhcZmlHMg=;
        b=rmUZPwbRLTVt4zGXWjD/UCQc3msi74BP4c9AAG2OOVjSU1Y23aWY/RE9X4Ozplb41h
         49Qljh8x9Klkfjl9mp6w8qG8B1oxB2MTnjGeeUDfCt+I202lfXEDrCUfEwU6ZKsMx7nV
         uVf2ZXD5nZlLLL3NZ45AwizKhVx7iY0OesPet/95Lg5O6sxei2yI/iQ9cGEvqqtWoOHF
         h3uBvN/3TjDZLy8Wqv8M2j55+ucWIYIcbcX7R8eF6ok7js+NikPUJ6/tB1BFGkTH1U6N
         JVDjFaf+EmSdfoFBzMksEVUYCk8hHFzSig6d9W9Fud3L1fHPLaeX3Dq/is0OxtgyVpHD
         CI7A==
X-Gm-Message-State: AO0yUKW7D//oJyIx/x8PrpMlTM4Fjc6c2UXgUoF+MuI9sKfHzloXizM8
        9yXeSldNsNOB5Hmu/cK2ll1j2Q==
X-Google-Smtp-Source: AK7set+N7x2GSsWP/iFk+wfnyxzr8inqcA6iJA/Kh83OJ6pl7nPyZAAMwrqzG83xPneO0KZeX6Egbw==
X-Received: by 2002:adf:ec83:0:b0:2c5:56f6:52ce with SMTP id z3-20020adfec83000000b002c556f652cemr3195215wrn.26.1676277092816;
        Mon, 13 Feb 2023 00:31:32 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id h8-20020a5d5048000000b002c54d97b1ecsm5767203wrt.72.2023.02.13.00.31.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Feb 2023 00:31:32 -0800 (PST)
Message-ID: <ad200b06-368a-1f01-41e1-6b639d128186@linaro.org>
Date:   Mon, 13 Feb 2023 09:31:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 2/4] soc: aspeed: Add UART DMA support
Content-Language: en-US
To:     ChiaWei Wang <chiawei_wang@aspeedtech.com>,
        "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "joel@jms.id.au" <joel@jms.id.au>,
        "andrew@aj.id.au" <andrew@aj.id.au>,
        "jirislaby@kernel.org" <jirislaby@kernel.org>,
        "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "openbmc@lists.ozlabs.org" <openbmc@lists.ozlabs.org>
References: <20230210072643.2772-1-chiawei_wang@aspeedtech.com>
 <20230210072643.2772-3-chiawei_wang@aspeedtech.com>
 <c1e096fa-5941-cdd8-2cdc-ecf04661a389@linaro.org>
 <KL1PR0601MB37818F70A166356FED0FEC9C91DD9@KL1PR0601MB3781.apcprd06.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <KL1PR0601MB37818F70A166356FED0FEC9C91DD9@KL1PR0601MB3781.apcprd06.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/02/2023 02:50, ChiaWei Wang wrote:
>> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Sent: Friday, February 10, 2023 5:14 PM
>>
>> On 10/02/2023 08:26, Chia-Wei Wang wrote:
>>> This driver provides DMA support for AST26xx UART and VUART devices.
>>> It is useful to offload CPU overhead while using UART/VUART for binary
>>> file transfer.
>>>
>>> Signed-off-by: Chia-Wei Wang <chiawei_wang@aspeedtech.com>
>>> ---
>>>  drivers/soc/aspeed/Kconfig             |   9 +
>>>  drivers/soc/aspeed/Makefile            |   1 +
>>>  drivers/soc/aspeed/aspeed-udma.c       | 447
>> +++++++++++++++++++++++++
>>>  include/linux/soc/aspeed/aspeed-udma.h |  34 ++
>>
>> NAK.
>>
>> DMA drivers do not go to soc, but to dma subsystem.
> 
> The UDMA is dedicated only to UART use and is not fully fit to the DMAEngine subsystem.
> For example, the suspend/resume operations of common DMA engine are not supported.
> After observing certain existing DMA implementation in other soc folders, we put UDMA in the soc/aspeed as well.
> If it is not appropriate, should we integrate UDMA into the UART driver or try to make UDMA DMAEngine based?


You did not Cc dma folks, so how would I know... Maybe soc is right
place if the DMA driver is not suitable for other consumers than UART.
Maybe not.

Best regards,
Krzysztof

