Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5026277437F
	for <lists+devicetree@lfdr.de>; Tue,  8 Aug 2023 20:06:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234151AbjHHSGZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Aug 2023 14:06:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43910 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234321AbjHHSFw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Aug 2023 14:05:52 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A2F035D22D
        for <devicetree@vger.kernel.org>; Tue,  8 Aug 2023 10:05:02 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-318015ade49so83200f8f.0
        for <devicetree@vger.kernel.org>; Tue, 08 Aug 2023 10:05:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691514300; x=1692119100;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aScjTZP/j4eF5nEY5ptSyTPcH9eKHlG6UgnJ/+6xLjo=;
        b=IjTu9WpW8A7HTOoI6exM7GY9rnjYJ5ukO3t9WdDCocv4C323Fr+F3ViVSSbs1teC3j
         QDbC0tMqHifu47Xfzac1mMQ2twzzdQYhNMe+iztVr8AAhFUalgkXxbrs0utYK/6uw5Jf
         ht9dLrzoznCE2TCxDxPxVCj4NA1qieYEj3i+1vUZqscwr1zSWXWt3HZyMQSkMIVnrnIG
         vg9jSkgtLhptgnqxxhphDNvaKCD+E7h0rX1yVN52AOWhoFXwaJOPl3j+MZjJzLYICARA
         bvgGUO8E5Hpe8AbhSRsh4ppjtdbvlHNc2BtoDMof3s3OjJ+jrfAtnpcYz1wMrNhZf6tt
         c8Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691514300; x=1692119100;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aScjTZP/j4eF5nEY5ptSyTPcH9eKHlG6UgnJ/+6xLjo=;
        b=isVb/3FTumDY4O/2YNz4Jt3IA9YoGYIQ+YNyHrh0BscEzbbpQQeFTRAnH+xBzQW75u
         hhpKZBy+i/iN4KHtfF+j5DFmhXY5rXaRIvUtIgRL+zzbMOh2rhUqes8AhBozkUYyyY+S
         ppXwxhJkEiBhytcjmGAuyuLoVdP/KNvm7UeKlwrx6/Xz/sTFyipGIUYoDJxpO8BFva5L
         5lKDe0fHgypOTFJRzfXbOtlLFT4ZWi9HWfeQLTuqd+67PzlxwlaQUisgQY0TuhT/AKjz
         GXT9zCcDbcnwHnU1REDqiWVyFh2OVDYRGzJf2/lud9YxomibZT8yq1TpyRb6QIv19uTZ
         7NWw==
X-Gm-Message-State: AOJu0Yz/K3k3ZYpdbnTyjsO5Wkb7t3V4VCYDkQNxcg9CerraeOlFsDq5
        NiOVZCg+S3QkJctUZGc/gNkk0g+cr7RNa5s9YtU=
X-Google-Smtp-Source: AGHT+IFUhtTnBdD3FE71/pNMOY1Y6z9Jbo+5Bg4ogyJrOop4Rz6UyiKZoppLw28xBiaeF1YEdhU0VQ==
X-Received: by 2002:a17:906:3f4f:b0:99b:5a73:4d09 with SMTP id f15-20020a1709063f4f00b0099b5a734d09mr10065794ejj.43.1691474274417;
        Mon, 07 Aug 2023 22:57:54 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.113])
        by smtp.gmail.com with ESMTPSA id gs10-20020a170906f18a00b0097404f4a124sm6146765ejb.2.2023.08.07.22.57.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Aug 2023 22:57:53 -0700 (PDT)
Message-ID: <d28cf9c5-b914-053a-76df-c15e191c042d@linaro.org>
Date:   Tue, 8 Aug 2023 07:57:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add NanoPC T6
Content-Language: en-US
To:     Thomas McKahan <tmckahan@singleboardsolutions.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230802051441.3106-1-tmckahan@singleboardsolutions.com>
 <20230802051441.3106-3-tmckahan@singleboardsolutions.com>
 <f49a803f-9ff4-794e-265b-a98e3711cca8@linaro.org>
 <20230808002751.00001385@singleboardsolutions.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230808002751.00001385@singleboardsolutions.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/08/2023 06:32, Thomas McKahan wrote:
>>> +
>>> +		regulators {
>>> +			vdd_gpu_s0: vdd_gpu_mem_s0: dcdc-reg1 {
>>> +				regulator-boot-on;  
>>
>> Boolean properties are not first, but last. regulator-name is the first
>> one. This odd style...
>>
> 
> I agree, however it seems the norm in Rockchip devices. This will
> become an outlier in Rockchip but fall in line with the general case.
> I'll put it in V2 with the other mentioned fixes unless a conflicting 
> opinion is expressed. 

OK, no need to change then.

Best regards,
Krzysztof

