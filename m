Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F10B4679209
	for <lists+devicetree@lfdr.de>; Tue, 24 Jan 2023 08:33:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232593AbjAXHdc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Jan 2023 02:33:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55812 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230088AbjAXHdb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Jan 2023 02:33:31 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E99B3E625
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 23:33:30 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id c4-20020a1c3504000000b003d9e2f72093so12167251wma.1
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 23:33:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VioeWI7fDwNpte8u/og+P3r1iFMquT/ZLdVEZmxjD30=;
        b=kL/8pPRLca9pT8CwPPJX9gVr4pZr4ASBHoE2bO6sxg5BEoVyPI1pVE5Kajk04v2QaZ
         bkhQeP1/+kPC3nMDtg7JUUKow+Z/xDr8gNnSrDhxhXWxqIy3z7v4SWGUFo6Iv/JwnUUv
         8Mbz05bvvaTzUC4UpgRERU6St6nN0Cqaatfko6DKAaIMoUzfKf8qHoBciooWnvTmGJ4Y
         aQJvB/Wx6JaBR2oIG81v3T7o9w6LmdzxZLf0Rdjuy8rlNHXa0TXPjvpvuma2EL/xw4+T
         OpIujKcsGU9rVXRuEWzCJs0Gxbc7cCHU6TMVeYhyzvNWbzj8qHlqm/3LuXkRBVGPyZAQ
         bQRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VioeWI7fDwNpte8u/og+P3r1iFMquT/ZLdVEZmxjD30=;
        b=yI/q0Woei5U/JqFg8tyP2T6pqp4oUBxB+/aVH5NyCw9o2fN4dwiybEnfnzvVS0PbVW
         +jD2DQNaKVJKIGBYH5TsKMD9if3SlQDONc7IWGTMjyxdy8m4pMolCFvaTCp0PjuVBGvu
         guuHUsj+ut3lGSPB56FWMQ153b2APd7u/Tf/t/khMfZd6yipAJ2A5LdPRDsYHzrJw4eL
         D0Hr8qobktxy0z8ancC8ZrcDeNUy3fY4tXSxtD7a/+/CSnhZ34GwZ54AcyXgH/Dmadau
         pW6Wg7A3S3BgB8i2YzDHKiAv9FP9977UsamIMBViUZnswknK6Go+fUb1bsetqsOSLXPY
         p6yQ==
X-Gm-Message-State: AFqh2krkRRl3ssezTjvwcyRV6d/OWYuiqmdbU4Ie73AeSF180HXC+EsW
        4K40VZJVeZyYmscTNvEIlDeYQQ==
X-Google-Smtp-Source: AMrXdXurEEJZySEUTYGGRgrRONt2uhutFxZWT59gOGx520/9HB6lqe8/xs+a5uaCqFPi8yjdcSDWSw==
X-Received: by 2002:a05:600c:6006:b0:3db:21b8:5f58 with SMTP id az6-20020a05600c600600b003db21b85f58mr19271221wmb.2.1674545609039;
        Mon, 23 Jan 2023 23:33:29 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id z18-20020a05600c079200b003d9780466b0sm1148217wmo.31.2023.01.23.23.33.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jan 2023 23:33:28 -0800 (PST)
Message-ID: <b1eb09c4-c94f-8828-c7f8-f01bae2d7b29@linaro.org>
Date:   Tue, 24 Jan 2023 08:33:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH] dt-bindings: arm: qcom,ids: Add Soc IDs for IPQ8064 and
 variants
Content-Language: en-US
To:     Christian Marangi <ansuelsmth@gmail.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230123211727.21542-1-ansuelsmth@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230123211727.21542-1-ansuelsmth@gmail.com>
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

On 23/01/2023 22:17, Christian Marangi wrote:
> Add Soc IDs for Qualcomm IPQ8064 and variants.
> 
> Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> ---
>  include/dt-bindings/arm/qcom,ids.h | 6 ++++++
>  1 file changed, 6 insertions(+)


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

What about qcom/socinfo.c patch?


Best regards,
Krzysztof

