Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2956E6AD885
	for <lists+devicetree@lfdr.de>; Tue,  7 Mar 2023 08:53:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229670AbjCGHxe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Mar 2023 02:53:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51270 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229953AbjCGHxQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Mar 2023 02:53:16 -0500
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 887DD2B612
        for <devicetree@vger.kernel.org>; Mon,  6 Mar 2023 23:53:08 -0800 (PST)
Received: by mail-ed1-x529.google.com with SMTP id k10so24868407edk.13
        for <devicetree@vger.kernel.org>; Mon, 06 Mar 2023 23:53:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678175587;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2fbNVSLqIHvV0bqpOfDOpCzWFojulNanBN36qBfwsNY=;
        b=rVPWF+vVajj/Wd3RGxj9W095GMsUmEBJ+RFpZsT2scO9I9NRRnLYld/8Q1hJ1G5fwj
         GmzFnNH9zU/khqjqWTOVykHFA2d+oRCJZtisU8Ic+P2sBTV1fpvBUhs9T5gKgVYeJQyo
         g8/XAOXuwpAVabq+UbSdS4NOAHMzwzc31lV5sSjyKqAz6BxhkOvAgE4T4Fqp1a2RtjMJ
         SKeBrvJY83OYH0Oy3vdr73E0NfvlZMbFTNznEuFQH+LPEZWqPAvcBCiiDPh1oE3s1Xes
         ZGURO/lZdyMOQIPo7tjaCnaUzxLwetkd9bqk4R7yFrYEcQF4pIIKUTmiu+2R19RzG3yk
         uqZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678175587;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2fbNVSLqIHvV0bqpOfDOpCzWFojulNanBN36qBfwsNY=;
        b=D0zzYq64l+IehZhFJLFNVE2DgMk8Bk1M+VAFtorODDEqgtExNDwBCYmGsdUAhefbR/
         JNXfvvGYugkh/9EoAeO3O3X2bNgPqRPoR1nC/yUkv3tOYhQg+0ZQRqAFNmVD7BGY/9An
         StPcEf0ZuT6qPRTt+EAihkdFD6aEXqVzORUF+dsrEwQX0bXNCeuI2DM1tMaSzSxydCQN
         QTLPm6uP3dp8YLEwXabydomZChoO8GSoyzK1hOwQPSzj51RQ6Kq1j/kWgfiycT/CC4gS
         JuPEKR0ULZwewskfqpl8ur2PTtaMRp6xbBy61hj/JGJe+I5QsvlEN00B192w4sIO2P6/
         xvXw==
X-Gm-Message-State: AO0yUKV4DUL27kofCT6J54AHRlL0VnmE9GKVM0sB3HlzPOHtcniBkff0
        O9IIa71sfvqI7Sec5JAyD8Fs1A==
X-Google-Smtp-Source: AK7set86p4C3BL6LTMri6M4GNxY1CcyOYdrJhQ/9UfGZbb6pzNqA9GJE7GOxr4oUcC+vU7iKO++hNQ==
X-Received: by 2002:a17:906:b1cc:b0:8b1:7684:dfab with SMTP id bv12-20020a170906b1cc00b008b17684dfabmr14962870ejb.38.1678175587076;
        Mon, 06 Mar 2023 23:53:07 -0800 (PST)
Received: from ?IPV6:2a02:810d:15c0:828:5310:35c7:6f9e:2cd3? ([2a02:810d:15c0:828:5310:35c7:6f9e:2cd3])
        by smtp.gmail.com with ESMTPSA id b2-20020a50b402000000b004be64b284b2sm6252792edh.3.2023.03.06.23.53.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Mar 2023 23:53:06 -0800 (PST)
Message-ID: <6aeaa895-7f99-3598-2490-88eb48735a15@linaro.org>
Date:   Tue, 7 Mar 2023 08:53:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v1 02/11] media: dt-bindings: starfive,jh7110-mipi-csi2:
 add binding docmuent
Content-Language: en-US
To:     Jack Zhu <jack.zhu@starfivetech.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Ripard <mripard@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc:     linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, changhuang.liang@starfivetech.com
References: <20230302091921.43309-1-jack.zhu@starfivetech.com>
 <20230302091921.43309-3-jack.zhu@starfivetech.com>
 <11e7c986-e6cc-ee57-b36e-816af8cc11a7@linaro.org>
 <30000009-cf05-988a-9817-97a7af36db37@starfivetech.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <30000009-cf05-988a-9817-97a7af36db37@starfivetech.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/03/2023 07:41, Jack Zhu wrote:
> 
> 
> On 2023/3/3 16:47, Krzysztof Kozlowski wrote:
>> On 02/03/2023 10:19, jack.zhu wrote:
>>> Add DT binding document for Starfive MIPI CSI2 receiver
>>
>> Ehh... you have entire commit msg to explain what you do here. Yet there
>> is nothing mentioning that you actually have Cadence MIPI CSI here.
>>
>> Since you decided to add new bindings, you receive review matching new
>> bindings. I don't think this is correct approach (duplicated bindings),
>> but could work for me. However how are you going to solve all the points
>> of my review?
> 
> Maybe I don't need to add the CSI yaml file, since it already exists on the Linux mainline.

If you add *only* new compatible, you do not need new binding. If you
add any new properties, then depends, but old binding anyway would need
conversion from TXT.

Best regards,
Krzysztof

