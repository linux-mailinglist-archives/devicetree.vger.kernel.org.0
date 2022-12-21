Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E4D3E65330E
	for <lists+devicetree@lfdr.de>; Wed, 21 Dec 2022 16:18:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233782AbiLUPSe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Dec 2022 10:18:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53194 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229491AbiLUPSd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Dec 2022 10:18:33 -0500
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4E482182D
        for <devicetree@vger.kernel.org>; Wed, 21 Dec 2022 07:18:32 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id g13so7272163lfv.7
        for <devicetree@vger.kernel.org>; Wed, 21 Dec 2022 07:18:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UJ4B4pJYlwdPnmMgzAei6VmFRD+WqOl8bCPm4S0FF3E=;
        b=Bf9+YE93iqthCL9U+jef1b+4y66ybTBIVj26MyvsmnLJsdMwy1cXv9oYK4xaT76P5B
         ZZxXXaTbT9xH82SlnU3gRF5uUZlj+aTeEmTRI3Xe8CxHjkYPomwAmT/4vYCsLcMlqERo
         3md1iOpnGjnmJb4nBDJpqH/nUauLJfgivegDnZPzG8dlORIOl++SufVqE3SZx+iQ8gy/
         Od1lfm7arKui/1k+Z2JcUItbtP9bqKCZQ9IajsA56HW/gEHmRN00SxtXQiknRikksoD4
         fhawxEMHiRfr02xIX60etUZwe4Q4lSIUkxYHO7BQGGN6luftYhH0bF40WyjiIbBhANlX
         OhMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UJ4B4pJYlwdPnmMgzAei6VmFRD+WqOl8bCPm4S0FF3E=;
        b=taCVPxVjuv8RG7yVCS7dgTtPDDlGNwukAugLIuwBVZa9EA3iEPgajjT6JzkKSphUOc
         FEbXggjqXE864ypKdZnfAx54Ampni7vPMTyXeYHL7oNF6h/UGL3TvZJmpeW4ltNZfIq0
         dHP6ohhQxVVzavX8hsPt0LP8Am0ivLDRGgAUM2BF+CF1X1BTYOoWvuTh4ONGW6X8QN5A
         aBY63yhRjBP2NU/eRQl5GoXWmZ/0kyXvyTsTO7yZTCQEDwzkrXYDKFHftqXxTdp+1Tfw
         qdPe0PVtvuzml38Q/Mct8OUvKpZXhBg/ezMgd0Vb/GCxudsGiW+BoE6Z+CAzk49NO02d
         Mxgw==
X-Gm-Message-State: AFqh2kr5LDyJYG6hKPv8muZ5adB7SK8DXPLZ7poheL8gbWhNtu51oAYK
        oXb2527a4Opf3ZNj1+GyBCGYaQ==
X-Google-Smtp-Source: AMrXdXtywIpnpCjNc1Ma6/HMgqcZKm4WIYycu+xWewizvd53rG3cJH40JE1SHiKyK9AFbfHDo/B/rg==
X-Received: by 2002:a05:6512:258b:b0:4b5:b85a:5ba6 with SMTP id bf11-20020a056512258b00b004b5b85a5ba6mr770837lfb.20.1671635911256;
        Wed, 21 Dec 2022 07:18:31 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id d4-20020ac244c4000000b004b57277474esm1863046lfm.106.2022.12.21.07.18.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Dec 2022 07:18:30 -0800 (PST)
Message-ID: <8b491003-236f-8f11-08a8-25bde910a2e5@linaro.org>
Date:   Wed, 21 Dec 2022 16:18:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v5 2/2] dt-bindings: arm: rockchip: Add EmbedFire LubanCat
 1
Content-Language: en-US
To:     ty <zonyitoo@gmail.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Peter Geis <pgwipeout@gmail.com>,
        Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, DHDAXCW <lasstp5011@gmail.com>
References: <Y6MQ2b8JyST6fPVE@VM-66-53-centos>
 <0dda49c1-2162-d473-0c4c-591519096008@linaro.org>
 <CAMmci2UC0kG-4us+RO4NQ2-5kd_1m7jK5+PDWVXvR+khofcmGQ@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAMmci2UC0kG-4us+RO4NQ2-5kd_1m7jK5+PDWVXvR+khofcmGQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/12/2022 16:15, ty wrote:
> Got it. So the two SoB lines should be swapped? They should be changed to:
> 
> Signed-off-by: Wenhao Cui <lasstp5011@gmail.com>
> Signed-off-by: Yuteng Zhong <zonyitoo@gmail.com>

Yes.

Best regards,
Krzysztof

