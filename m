Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2BB786C01AC
	for <lists+devicetree@lfdr.de>; Sun, 19 Mar 2023 13:41:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229889AbjCSMk7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Mar 2023 08:40:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229524AbjCSMk6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Mar 2023 08:40:58 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB30C132FB
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 05:40:52 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id t5so140579edd.7
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 05:40:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679229651;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oolnoui9bwD72saRuWz2eUL7PghL9zZD0Mg8CNmPTv8=;
        b=TU4fToK9xe5RwL9b/rKxUGlthV1NWIQ7hzk1PZnj0tao9+WMFpR0JmIU36YK0ECFK2
         GeR1qwIQI5eWG+OlHulbySE96Q9h3EcUUD5+TYc6NgCMu0G7ZkH3CAh6hwYXDERGtBAq
         Eb/275avjh10RRenfGcJZrR7mq0L2V1ix0oONTR+CliZ1/ZomY0lToOcTsPvzZYP6G9I
         sogM+TaTXZd1ODii5kGR6C/tk5RfHV5dBf8tpmcUNLm1WDTKUOGF5REN8Xk+HVHq1/fH
         dW3A41ot2SpKd0T/W50dYuL+Vhq4Vhl4g0kKImCvxixBgiWEglqWy6+CGHYECic3020U
         iQLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679229651;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oolnoui9bwD72saRuWz2eUL7PghL9zZD0Mg8CNmPTv8=;
        b=BGkeocrjygGJUAWjzIbqn6i7Jao3lwf0cqS56BRLOyBBG5X9iLiyJ2dQb/Iu7Gfyga
         q8kVNleVaEAb/bW1gvSJwzvFtcFCnmlYjY/vOE9u1yaGJpkKUTwU010m4E/W9DLVtsyA
         KsATXjWJrFD98xJYdyogyvAccY9pin8xKsQ6v4lnhUqIAPfhLe+UuHFxRwbCKAe4SJ2r
         ssx3eIiSX97LyhtEuPq4cXWCY/TKBiwO0uUkmN+2Q/rWsxoxxDrHU/wCyCVgkeO5PCAl
         NUf/F+GxjN2xzgKkYtaN1uqSXo9HkxKhluMfv1G+fQmLsHkFifrepbtzfuqgR6N8/YfF
         Cfjg==
X-Gm-Message-State: AO0yUKVgzGzJhLzT7+7L1Ltgpe/wndgNBGhRI94KPNhgRJkmMnfLfUDg
        aQ50diRetX8mUzt5eq1GT/h3Rg==
X-Google-Smtp-Source: AK7set8no1xdwXSt61q0acLXah4PhkPn/qpNih1kHxFoOM8Dm3h51+p3tGWlnneauNyuCVN/2xpqkQ==
X-Received: by 2002:aa7:cac8:0:b0:500:4c0e:cb8d with SMTP id l8-20020aa7cac8000000b005004c0ecb8dmr6412475edt.5.1679229651181;
        Sun, 19 Mar 2023 05:40:51 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:5b5f:f22b:a0b:559d? ([2a02:810d:15c0:828:5b5f:f22b:a0b:559d])
        by smtp.gmail.com with ESMTPSA id u4-20020a17090626c400b00924916f9c21sm3182394ejc.87.2023.03.19.05.40.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Mar 2023 05:40:50 -0700 (PDT)
Message-ID: <708b63c9-d2b6-c65f-0112-8f50173c0bca@linaro.org>
Date:   Sun, 19 Mar 2023 13:40:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH V2 4/8] dt-bindings: iio: st-sensors: Add IIS328DQ
 accelerometer
To:     Jonathan Cameron <jic23@kernel.org>,
        Stefan Wahren <stefan.wahren@chargebyte.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Evgeniy Polyakov <zbr@ioremap.net>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, linux-imx@nxp.com,
        Li Yang <leoyang.li@nxp.com>,
        Denis Ciocca <denis.ciocca@st.com>, soc@kernel.org,
        linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, stefan.wahren@i2se.com
References: <20230317103323.7741-1-stefan.wahren@chargebyte.com>
 <20230317103323.7741-5-stefan.wahren@chargebyte.com>
 <20230318155534.16b47583@jic23-huawei>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230318155534.16b47583@jic23-huawei>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/03/2023 16:55, Jonathan Cameron wrote:
> On Fri, 17 Mar 2023 11:33:19 +0100
> Stefan Wahren <stefan.wahren@chargebyte.com> wrote:
> 
>> The ST IIS328DQ is an accelerometer sensor, which is compatible with
>> the already supported ST H3LIS331DL. So add the new compatible
>> with a fallback to the ST sensor binding.
>>
>> Link: https://lore.kernel.org/linux-iio/2bac9ecf-9d2e-967e-9020-1c950487d781@i2se.com/
>> Suggested-by: Jonathan Cameron <jic23@kernel.org>
>> Signed-off-by: Stefan Wahren <stefan.wahren@chargebyte.com>	
>> ---
>>  Documentation/devicetree/bindings/iio/st,st-sensors.yaml | 3 +++
>>  1 file changed, 3 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/iio/st,st-sensors.yaml b/Documentation/devicetree/bindings/iio/st,st-sensors.yaml
>> index c6201976378f..5eb71b24a7cb 100644
>> --- a/Documentation/devicetree/bindings/iio/st,st-sensors.yaml
>> +++ b/Documentation/devicetree/bindings/iio/st,st-sensors.yaml
>> @@ -48,6 +48,9 @@ properties:
>>            - st,lsm330d-accel
>>            - st,lsm330dl-accel
>>            - st,lsm330dlc-accel
>> +      - items:
>> +          - const: st,iis328dq
>> +          - const: st,h3lis331dl-accel
> 
> Hmm. So this separates the particular 'oneOf' group from the description
> associated with the ST accelerometers.
> 
> DT experts, is there a better way to do this?  Ideally we'd also associate
> other similar groups going forwards so it might become less and less obvious
> how the groupings work. (bit late for the many groups that exist
> already in that list above this point).

If by "grouping" you mean how the oneOf items are organized with
descriptions, I wouldn't put too much attention to it. You can add some
'#' comments to separate the groups, but for me this is still readable.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

