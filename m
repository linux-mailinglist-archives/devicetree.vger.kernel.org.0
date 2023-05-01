Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 856996F34E3
	for <lists+devicetree@lfdr.de>; Mon,  1 May 2023 19:16:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230129AbjEARPh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 May 2023 13:15:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48796 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232579AbjEARMX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 May 2023 13:12:23 -0400
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C11C46AD
        for <devicetree@vger.kernel.org>; Mon,  1 May 2023 10:10:40 -0700 (PDT)
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-3f192c23fffso15146325e9.3
        for <devicetree@vger.kernel.org>; Mon, 01 May 2023 10:10:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682960646; x=1685552646;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PB3cfe6ooJawuS5MEoPi/KKAq5VfAlwQql9J75LylcA=;
        b=aZ+R99pkMpL/dxaijl6i2jcWWQYIC67mBKKCYn4bgXGgbuig8wwyA/4nYySyXByHHD
         5dU3+oqq5IITtf3WUNnjhHx5yUrTeqgSnzTvJHD12qPtVqBkcYMs+NkG3he/DkJDb4kr
         Lv04YpwT2EKFY8NDRJYI9JyFgQSfCgtZXpCXGfr62blzJRCc7FIcdB7/BETK5RwxUd4C
         yUi14hhDiiotCP82bcqgZK+ePr/QEZj4l61uWrdfkzr+i8eNzcrnsZpUKw32f6zaf/Pf
         NHhdBbcAy+0prJEmjpr+5OjV9N6mYMbiuzdQMW0dUg1eGBqZKjGt5yZkGxaaJwFFAiOA
         IixA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682960646; x=1685552646;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PB3cfe6ooJawuS5MEoPi/KKAq5VfAlwQql9J75LylcA=;
        b=XrbcOWYu3OQx0FyHw5RyNg12icx9+D9Ivm3QeeXrJUGacsJRtmWkTrid1Q2S6E+43f
         HKUSY7/IV/jpK/O7Gb7Ah8xCdvZWX+zIyeQCiPgNSrgtvvRbox7DNXMJzNrTqlW+2+KP
         vL2d2SgkGtHb2L5E/gAtlFRgpu7IwMesu5QRk1OEBzgrqizIg0PATPufBiHBGIk7eOeL
         WiQDptYr1jypUytIPjQTNcgH/hvSD7pdJA4M5SGgEknG7gLRc6/oWW2Q9pBodDu5/amF
         lUsBuAJ3+ASd0nAtHQPQOp5Q3PMkyFCIiBS7lxcFBsFinIr25bWv73AXHyvEfCWH4hhY
         VeLg==
X-Gm-Message-State: AC+VfDy0Vh9Imfs0x10iaCW0VZSGlKM5TIHzEbWTgORoE5UfG5r8prLd
        WkPDK6AknIYfRq0VbReStS4Q2A==
X-Google-Smtp-Source: ACHHUZ4bwQZsh/71xZM1VKxoVXg5jfnN+Or5A2Can6Vm2maOsYPe7qQMZ230w13Pu7L7bWlYK2ottg==
X-Received: by 2002:a7b:ca56:0:b0:3f1:6fea:790a with SMTP id m22-20020a7bca56000000b003f16fea790amr10401171wml.30.1682960646353;
        Mon, 01 May 2023 10:04:06 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id r6-20020a05600c458600b003f195d540d9sm28883833wmo.14.2023.05.01.10.04.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 May 2023 10:04:05 -0700 (PDT)
Message-ID: <a43cadd1-05fe-33de-60cc-09064bd068d1@linaro.org>
Date:   Mon, 1 May 2023 18:04:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v6 13/13] arm64: dts: qcom: qrb5165-rb5: Switch on TCPM
 orientation-switch for usb_1_qmpphy
Content-Language: en-US
To:     Jianhua Lu <lujianhua000@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc:     linux@roeck-us.net, heikki.krogerus@linux.intel.com,
        gregkh@linuxfoundation.org, andersson@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        luca.weiss@fairphone.com, linux-usb@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        caleb.connolly@linaro.org, konrad.dybcio@linaro.org,
        subbaram@quicinc.com, jackp@quicinc.com, robertom@qti.qualcomm.com
References: <20230501121111.1058190-1-bryan.odonoghue@linaro.org>
 <20230501121111.1058190-14-bryan.odonoghue@linaro.org>
 <ZE_cr5X3UNKObsXd@Gentoo>
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <ZE_cr5X3UNKObsXd@Gentoo>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/05/2023 16:37, Jianhua Lu wrote:
>>   &usb_2 {
>> @@ -1375,6 +1383,12 @@ pm8150b_role_switch_out: endpoint {
>>   					remote-endpoint = <&dwc3_role_switch_in>;
>>   				};
>>   			};
> you should add port@0 for usb_1_hsphy because it is required.

So the yaml doesn't require hs but arguably could be made to be more 
flexible to accommodate different hardware realities, like ours here.

> 
>> +			port@1 {
> Same

Hmm, well actually I think the port should be port@0 here and port@1 
should be dropped so, I'll do that.

---
bod
