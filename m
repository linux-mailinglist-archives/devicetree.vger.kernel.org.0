Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 497C9785247
	for <lists+devicetree@lfdr.de>; Wed, 23 Aug 2023 10:08:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233654AbjHWIHX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Aug 2023 04:07:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233607AbjHWIHK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Aug 2023 04:07:10 -0400
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com [IPv6:2607:f8b0:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A59FE79
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 01:07:05 -0700 (PDT)
Received: by mail-ot1-x329.google.com with SMTP id 46e09a7af769-6bcde3d8657so888429a34.0
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 01:07:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=quanta-corp-partner-google-com.20221208.gappssmtp.com; s=20221208; t=1692778024; x=1693382824;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=udpAZNqDTSyINb9TBsLNyewxRVEKqyjjLvl2Adk+gII=;
        b=eHWfvgUyaWQHENf7ruUY8h/qV0sTOrPODhu6a+M+gXyqeqX9kpKQk/lqXt9wun6nFQ
         UbSq+dBO/GuC4p5WdKaMA+cLNj/FznRjqplZtlkTqxK2zAdTdn3DLOIXZRr1YiFVOOs3
         ocOPv1YIvUh3PYyo7bSvj4UdNkqXK8dSXC322OvIN73VuUo+CeJPsQWfUL4o8EWLPbxA
         eY1SChu8rcepqJrBeLVqhY708SYQ2Aj0Je3N5wOAu0bbttRw4vJsFMRmvZnW+9QrCCpB
         b7tBVzJ0VbQ0qdjPv/8J5tfCoBzV2RczIF9opnelAUD8uwgwSVi4/JfvyK+49HruTqkY
         wXFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692778024; x=1693382824;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=udpAZNqDTSyINb9TBsLNyewxRVEKqyjjLvl2Adk+gII=;
        b=VE740QfZ+/RGKPNI0hWcCXpGIHZTBoDgO36qnpO2leK2El1tqgoFjXxE4cdJyJ/kV7
         q0mUrJU+egcanZbQi9Bz4omVP7edOnF06t7Xzejb2tf62FAekpvhUo18tyXdOmoGmD87
         t4tEXx040Jt+PF7SFzLolPjZnFjLKr40A/REXhZW1ZchcvqI6LXNFNhffUZarLEkeCkD
         vJCbcTJn3CyHXjBzc0qG1+YB4FQJ4NLTxGfY9r990a4pWU1XMgPcXKpsY6KQTI0wtWFS
         17OoQNBYML3MEweInB8FPAJLzcHC03LRUSm4n0naQPXMGiJKincdFGEEcTlrrmO8cSKn
         OYug==
X-Gm-Message-State: AOJu0YxBgyWPb4oXAt+ENxegzpTZzEw26MA504rxIX7rc9A68ZKvpJDk
        IutCr3C9m4lY1uXg0c+fGsJWwQ==
X-Google-Smtp-Source: AGHT+IF/bCJHe0mFXzvnobOlgC6LNCqnDwzYhq1+EjbZb9/24cpAjR1pxPpt911j4NIdvj+OmGtTtg==
X-Received: by 2002:a05:6871:520b:b0:1c0:d0e8:8ff5 with SMTP id ht11-20020a056871520b00b001c0d0e88ff5mr14398796oac.1.1692778024653;
        Wed, 23 Aug 2023 01:07:04 -0700 (PDT)
Received: from [192.168.0.224] (60-250-232-247.hinet-ip.hinet.net. [60.250.232.247])
        by smtp.gmail.com with ESMTPSA id mv22-20020a17090b199600b00263987a50fcsm10814105pjb.22.2023.08.23.01.07.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Aug 2023 01:07:04 -0700 (PDT)
Message-ID: <d05e2966-8f07-f2b0-0f95-f069a6376635@quanta.corp-partner.google.com>
Date:   Wed, 23 Aug 2023 16:07:00 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v5 2/2] arm64: dts: qcom: sc7180: Add sku_id and board id
 for lazor/limozeen
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        LKML <linux-kernel@vger.kernel.org>
Cc:     dianders@chromium.org, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
References: <20230822100359.124282-1-sheng-liang.pan@quanta.corp-partner.google.com>
 <20230822180054.v5.2.I8f20fdfe34a2e8a38373bbd65587754b324f3dcb@changeid>
 <3021b5bb-a88b-4427-b6ee-3dde216fc6b3@linaro.org>
Content-Language: en-US
From:   Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>
In-Reply-To: <3021b5bb-a88b-4427-b6ee-3dde216fc6b3@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi

> On 22.08.2023 12:03, Sheng-Liang Pan wrote:
>> SKU ID 10: Lazor LTE+Wifi, no-esim (Strapped 0 X 0)
>> SKU ID 15: Limozeen LTE+Wifi, TS, no esim (Strapped 1 X 0)
>> SKU ID 18: Limozeen LTE+Wifi, no TS, no esim (Strapped X 0 0)
>>
>> Even though the "no esim" boards are strapped differently than
>> ones that have an esim, the esim isn't represented in the
>> device tree so the same device tree can be used for LTE w/ esim
>> and LTE w/out esim.
>>
>> add BRD_ID(0, Z, 0) = 10 for new board with ALC5682i-VS
>>
>> Signed-off-by: Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>
>> ---
> Minor style nits since Doug already suggested a v6:
>
> - please add a space between /delete-node/ and the &reference after it
> - keep properties (e.g. pinctrl-) like this:
>      property-n
>      property-names
>
> Konrad
>
Patch v6 [1] fix it.

[1] 
https://lore.kernel.org/all/20230823151005.v6.2.I8f20fdfe34a2e8a38373bbd65587754b324f3dcb@changeid/

