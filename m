Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4FA276D94A4
	for <lists+devicetree@lfdr.de>; Thu,  6 Apr 2023 13:03:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236118AbjDFLDx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Apr 2023 07:03:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57204 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236684AbjDFLDs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Apr 2023 07:03:48 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B377A7A9D
        for <devicetree@vger.kernel.org>; Thu,  6 Apr 2023 04:03:44 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-4fa3c484814so1167546a12.3
        for <devicetree@vger.kernel.org>; Thu, 06 Apr 2023 04:03:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680779023;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/NO3FWQS8N1l2fxmDI15auHW33rD9sbIu3IDLBnVfTw=;
        b=VDG+eQQFrtGBwGEtdzXnh5TBUo5s1Ndg0HB1t+2jaq83MbZRDXFMe5sk/XPNlxPFjF
         xZQlTvsGTWPEgmIK9NGfuTxh1eRtsIQnNWjZNHfdTu2cqNe26EpsKP7toxU4+sGZuW2a
         tH4g5/G5N1iYICnrp0BfDND23J0WaBPUud8OCttRjAlheZNHrV92xthbkzTR0lgycFxB
         +wlh77I4gOQGuNTiMgCVbGv4pPmt06+WPZ3oWSSxvwATxuofxB3NZ+m/9CeDz+o5NCxu
         7u85Jn2WW6lbwOtOX1ychBtoqm7EqsuT/yHBl7Zo7MYyRmBeqayiZdZgWGAO7Pf2xoFD
         jtmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680779023;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/NO3FWQS8N1l2fxmDI15auHW33rD9sbIu3IDLBnVfTw=;
        b=LQiycDe1dmOfNq/iAi5LRS6dRwom7Ugr9EYwomnQTykYrGLyeJp8YwzWfrga/ciIwi
         jtqBzqETTNnk2UIX+lcxcFG2mk46/0Kc1FWJEgNbtFi3TtOTtJzzhASm6ayK/5tPcC4q
         qrZfkHaTFQRScMLogp2VkoaUouTB6QTyFaibpROyjJ6Hp6Fck3n4l3Hae1hXXjioZxB3
         i/iXrxuVooV01dFUtFzKnNlGUUmkbcUxxnL0HqXs+JnjqRpCrSQrii3chTqRsFb/hhzn
         mcz9h+Yn8KS2YE5DcbdamdZz+/YjKVrnZVxQ7nUMkTq3abAj4d0RN27jYVUVU27lDiUG
         5ybw==
X-Gm-Message-State: AAQBX9fYQlcgx+yAMOjUA15rfbNi3i+UC2QrnmX7c+NuZ13BUTY9MmX+
        7SBNa0TbB4C6x3MdBnjkHWgs4A==
X-Google-Smtp-Source: AKy350YN1i4WHE0/bYTXwdvBY2jGHFdUyTaKTtJyQDzKYEPj8ydS7ZBgrfFxJsRzARhuzBMRsGt30A==
X-Received: by 2002:aa7:d292:0:b0:501:d4f9:3141 with SMTP id w18-20020aa7d292000000b00501d4f93141mr3959367edq.32.1680779023149;
        Thu, 06 Apr 2023 04:03:43 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:49e6:bb8c:a05b:c4ed? ([2a02:810d:15c0:828:49e6:bb8c:a05b:c4ed])
        by smtp.gmail.com with ESMTPSA id e14-20020a50d4ce000000b00502b0b0d75csm606988edj.46.2023.04.06.04.03.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Apr 2023 04:03:42 -0700 (PDT)
Message-ID: <231b72cd-352c-10a9-8695-a04f61e36568@linaro.org>
Date:   Thu, 6 Apr 2023 13:03:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 8/8] regulator: fan53555: Add support for RK860X
Content-Language: en-US
To:     Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Joseph Chen <chenjh@rock-chips.com>,
        Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        kernel@collabora.com
References: <20230405194721.821536-1-cristian.ciocaltea@collabora.com>
 <20230405194721.821536-9-cristian.ciocaltea@collabora.com>
 <4115e47e-b64b-391a-493c-701c8de0565b@linaro.org>
 <53c803ce-2607-6fd1-485e-e19eb961fd08@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <53c803ce-2607-6fd1-485e-e19eb961fd08@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/04/2023 12:08, Cristian Ciocaltea wrote:
>>> +	}, {
>>> +		.name = "rk8602",
>>> +		.driver_data = RK8602_VENDOR_ROCKCHIP
>>> +	}, {
>>> +		.name = "rk8603",
>>> +		.driver_data = RK8602_VENDOR_ROCKCHIP
>>
>> Why do you need this entry match data if it is the same as rk8602?
> 
> This is consistent with the handling of syr827 and syr828:
> 
> 		.name = "syr827",
> 		.driver_data = FAN53555_VENDOR_SILERGY
> 	}, {
> 		.name = "syr828",
> 		.driver_data = FAN53555_VENDOR_SILERGY

Yeah, I understand, but it's not necessarily the pattern we want to
continue. Unless these devices are not really compatible?

Best regards,
Krzysztof

