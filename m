Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 280296AD893
	for <lists+devicetree@lfdr.de>; Tue,  7 Mar 2023 08:59:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229702AbjCGH7C (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Mar 2023 02:59:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229699AbjCGH7A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Mar 2023 02:59:00 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4DACC170
        for <devicetree@vger.kernel.org>; Mon,  6 Mar 2023 23:58:55 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id g3so11202701wri.6
        for <devicetree@vger.kernel.org>; Mon, 06 Mar 2023 23:58:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678175934;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=JdQshwHadK10TmyUGi+IO4oTSOyXtNeO1NzLyvLX7/o=;
        b=HkwxPNf+tiVkKPFF0uH1B7W5Ln/8j+HEsd8iKXyC4RD/377WMWxe56M0Pcm80EltvD
         BEOfv3OsizBjRzVfzGbs21+j+q6d2E9X/del/0572CNBjMSe7arpF9++/PJpm3KxN/21
         T0+tgr/U2lKTfQpODmlmyuwCm6lE5eZ+TLmWgn6mSR9RekC02tur80JD1q9CPrs7wywB
         aINIK/ZJyOUtM+igtlVZ3JOBqmxSICbG+xtwYulVIQxXOdZLeldiczydfL1kBt4mibUM
         35y8/kjmyjSQaI+v8rGD/P7b3IW0vRSGSsTBqglcIw796nBQJbEsaihq7YcwF+rDKmBK
         1SYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678175934;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JdQshwHadK10TmyUGi+IO4oTSOyXtNeO1NzLyvLX7/o=;
        b=CPeKwyqmFoqxTtBv0z+1oqOUw+76YSL+rq9KCLHsWxqO1vmtvbPMME4VTqUSPjp+Fe
         QFr6oXc/mnsmJHY5WIF3DalNGJs2J4ukdFI1OClw2BrbBUwcu/eHZAuzzRj55ZiuElNQ
         IIpCZGxrVHk/X3ywf9tMSj83D0u0//74bLK5Acgqhz8UUUcaGv8JDzeLbvE2VvEgg8d+
         3SHhUooJRzxySDbz5KqgWh0Yj3TxhA83/JCoS/uhxvNl4aQB+ADoSK3wMYcaYIYIljnS
         yG366gU8khb9f4JUVflfV3dM/e8lohLkB3FEPlN+9eMEyg81mX7H1S5hMfd+o8Qh4aWr
         jiZA==
X-Gm-Message-State: AO0yUKXQ69pXkDIMuEc8jRw7xm0ZedEP2Y5ROkp4+PVb0XgjL8yN9Ach
        097GjlTLLjV4uDlJga+Ww1dfxg==
X-Google-Smtp-Source: AK7set+vkYi1NjFrFf/LVhqK8+JRWiJ85O5XnmwZEXRqNBqZ8jCna39sM0MO1QyYct729rWgCSzp8Q==
X-Received: by 2002:adf:ec09:0:b0:2c7:e48:8c87 with SMTP id x9-20020adfec09000000b002c70e488c87mr10613238wrn.25.1678175934284;
        Mon, 06 Mar 2023 23:58:54 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:6faa:6d13:586e:871d? ([2a01:e0a:982:cbb0:6faa:6d13:586e:871d])
        by smtp.gmail.com with ESMTPSA id z9-20020adfec89000000b002425be3c9e2sm11913168wrn.60.2023.03.06.23.58.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Mar 2023 23:58:53 -0800 (PST)
Message-ID: <ef4ef0da-f6e3-7235-5178-3ef579f17a21@linaro.org>
Date:   Tue, 7 Mar 2023 08:58:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v2 2/2] arm64: dts: amlogic: Add initial support for
 BPI-CM4 module with BPI-CM4IO baseboard
Content-Language: en-US
To:     Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org,
        Christian Hewitt <christianshewitt@gmail.com>
References: <20230303-topic-amlogic-upstream-bpi-cm4-v2-0-2ecfde76fc4d@linaro.org>
 <20230303-topic-amlogic-upstream-bpi-cm4-v2-2-2ecfde76fc4d@linaro.org>
 <CAFBinCDSWHg1uc8+c_QwoQy2j8K5Ny6xfMfXm-zp67eYH_Zxdg@mail.gmail.com>
Organization: Linaro Developer Services
In-Reply-To: <CAFBinCDSWHg1uc8+c_QwoQy2j8K5Ny6xfMfXm-zp67eYH_Zxdg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/03/2023 23:11, Martin Blumenstingl wrote:
> Hi Neil,
> 
> On Mon, Mar 6, 2023 at 9:31 AM Neil Armstrong <neil.armstrong@linaro.org> wrote:
>>
>> Add support for both the BananaPi BPI-CM4 module and the BananaPi
>> baseboard which is comnpatible with the RaspberryPi CM4IO baseboard.
> s/comnpatible/compatible/
> 
>>
>> The BananaPi BPI-CM4 module follows the CM4 specifications at [1],
>> but with a single HDMI port and a since DSI output.
> s/since/single/
> 
>>
>> The current CM4IO baseboard DT should work fine on the Raspberry CM4
>> baseboard and other derivatives baseboards, but proper DT should
>> be written for other baseboards.
>>
>> The split is done so it's easy to describe a new CM4 baseboard, enabling
>> only the necessary HW used on the baseboard.
>>
>> [1] https://datasheets.raspberrypi.com/cm4io/cm4io-datasheet.pdf
>>
>> Tested-by: Christian Hewitt <christianshewitt@gmail.com>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> With the typos above fixed:

I'll fix those while applying


> Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> 
> [...]
>> +&ext_mdio {
>> +       external_phy: ethernet-phy@0 {
>> +               /* Realtek RTL8211F (0x001cc916) */
>> +               reg = <0>;
>> +               max-speed = <1000>;
>> +
>> +               interrupt-parent = <&gpio_intc>;
>> +               /* MAC_INTR on GPIOZ_14 */
>> +               interrupts = <26 IRQ_TYPE_LEVEL_LOW>;
> It would be great to have the reset GPIO (GPIOZ_15) described as well.
> But this can be done in a follow-up patch.

I'll send a follow-up

> 
> 
> Best regards,
> Martin

Thanks !
Neil
