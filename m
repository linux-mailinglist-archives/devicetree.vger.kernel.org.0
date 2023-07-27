Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5E533764804
	for <lists+devicetree@lfdr.de>; Thu, 27 Jul 2023 09:11:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233208AbjG0HLO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Jul 2023 03:11:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233210AbjG0HKo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Jul 2023 03:10:44 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CBBC5241
        for <devicetree@vger.kernel.org>; Thu, 27 Jul 2023 00:05:36 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-5217bb5ae05so732445a12.0
        for <devicetree@vger.kernel.org>; Thu, 27 Jul 2023 00:05:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690441495; x=1691046295;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PgPDKlfSexdNesnVNtt86khitLnmgJUcQgskQCnYJBY=;
        b=d5ZeXs7WB/wifEY20xc4z+Kg+kvKyioK+bYDF1b+c+lm+3YFb1Txk74tV1sF9ijkd+
         YdKJMeSgaBdpTAKgYzRllCuimjiXdHovCLZQdL5qeBKMoVBdouAhxnLVe97wIsm9BdKW
         dlW1A+KqH7C9YRrGQxDGvmuG+WtGQCGCu6m83XQ8WIb/UwLe/PZcftk+QaaUNz5YQ/2x
         uHeZz0e/yquB3sdTuWoDxFWkNsGFspsVq2iKugtl0w+2uoKDQe1MLI7bc5yPym3G31m+
         Bmswyw/WVpfCEJMh4i42fyHxdlHlPNY44uqKYV+cU551VPXAMLhjcxnKXSAAX20mxAHd
         1RCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690441495; x=1691046295;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PgPDKlfSexdNesnVNtt86khitLnmgJUcQgskQCnYJBY=;
        b=c1i5irz8OLbaqOB/j4ztTVJu1th6D+doDTqaajl57eTSUtM9Z10DlGyynI5KM4Wh8m
         WlUT3V+6cUlb4KLehgzanzFpI11ueOTQLa6eAyL/9UFU7GNzVwMxs4RKThRVEXXCbYT7
         PIKQY+C27PO7RXQXmCyH0ckdJLk7OzX2AD9Qn22wANLiPlYMqaWJnoyaYHjbikQOw2b7
         Vxm4x2curR940Yq3lbiAVgR9ix322j5lxdsILEz/yyprmCAPQxFeJwIk5xhdAmgesb9S
         Jwi3JHyPfPB39vd0c4YRComGmn/iqerDxOf+3H3rx65FUhwbG7rcTKKStV1My4HzYwqt
         RKbg==
X-Gm-Message-State: ABy/qLZodNSKPI8vVckj6fQM2gOPsOifrDmv5sEh4kG82yjotTsGEplF
        PlnrZb/3XJTm7W5bnKyCvLF/FA==
X-Google-Smtp-Source: APBJJlEr+/K67ZyY3fj5t+7y1jDkIVhacCyZtNnUqTVvYG+sHDua9X3k+pnfGcvau/PqYQciYWhGGg==
X-Received: by 2002:a05:6402:1847:b0:522:3ebc:84b9 with SMTP id v7-20020a056402184700b005223ebc84b9mr1096686edy.24.1690441494956;
        Thu, 27 Jul 2023 00:04:54 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id h22-20020aa7de16000000b0051debcb1fa2sm295700edv.69.2023.07.27.00.04.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Jul 2023 00:04:54 -0700 (PDT)
Message-ID: <5092f619-d4aa-e108-1c8b-8c9f0913db75@linaro.org>
Date:   Thu, 27 Jul 2023 09:04:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH] dt-bindings: interrupt-controller: fsl,intmux: Add
 power-domains property
Content-Language: en-US
To:     "Peng Fan (OSS)" <peng.fan@oss.nxp.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org,
        maz@kernel.org
Cc:     linux-imx@nxp.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Peng Fan <peng.fan@nxp.com>
References: <20230725102215.109895-1-peng.fan@oss.nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230725102215.109895-1-peng.fan@oss.nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/07/2023 12:22, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> On some i.MX SoCs, intmux may have a power-domain dependency to be on
> before accessing. So add it in dt-binding doc.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

