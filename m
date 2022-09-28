Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9EBB15ED678
	for <lists+devicetree@lfdr.de>; Wed, 28 Sep 2022 09:41:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233804AbiI1HlJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Sep 2022 03:41:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54292 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232142AbiI1HkM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Sep 2022 03:40:12 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 464E1118DF3
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 00:38:26 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id 130-20020a1c0288000000b003b494ffc00bso78470wmc.0
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 00:38:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:from:reply-to
         :references:to:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date;
        bh=xiARuWAg2rwJGD02NJWCXkkHU+x2u7jt6RB3f7mjNI8=;
        b=J4yxgQU/KJA1qfjTsjetbFC3QZHcI3o4O63k+XgDHIf6VbBeJ7fh+ozScm+tK/yHON
         REYmfHeuiL4Hw6MF9bNIrzQLjP35adl9ESiRds6jiQo/mTsgf9NtNwECgizIkAY+Qmz2
         PxB0NNo2TYlowDcyTJtNluVlPF92dvG374qAd4sLf7jvzqtLLcZVTnR9iqrnEyTZRNbx
         nf433GCvlJ8a9+p7LpwDlL/+qf4Ytp9hPnaj/In+97mpNQW8ksFyxmWC8l7radZfvthw
         Gqgbmkw6mC+MlIK0oWqr9bVRJ2QcQgX9VLxAzB5lsGGGvt38DNy3980Tyoc2GuzfFAwG
         czVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:from:reply-to
         :references:to:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date;
        bh=xiARuWAg2rwJGD02NJWCXkkHU+x2u7jt6RB3f7mjNI8=;
        b=czGk6sOpAMM3AZg+xLJgo89opudZkdV7KmUJ+nVNQEetRg76uSs0kQ4RJs/9J4TGjt
         IfyfHBZdsVlsX6FpGGeG+zRkdsJMTroYI64y+3RppqIUcX6Cv2bCRjlmB1n/e5rnK5zA
         bkzwjNKBSKsoftHkC68g6NYfLSsFviEZinKVbhpQ1TE9BytrDzfZVfCsKFrOXDBjw8Nx
         Cn0Mp8Tf0mZKJnA2KhhojIqFXfTXHnlt/1q4yZ/2uf3VE7LgBU+drmn26sUiUWbJT7E4
         TqHNfaXqJUCWek4X/A5qT8QFegvsQ2vzl2WuVqyilRSeHL8geabNf/y+0dGLxQbUWK1Y
         srqw==
X-Gm-Message-State: ACrzQf3SzqeLXvI74mcaO1pqFQhKLD0hElxhPHhfxrMhkdlppBE+CJHx
        mRiCuLGb05FIU2hMa5ZQpovHVqPVI2RnzFnk
X-Google-Smtp-Source: AMsMyM575WLZUTuIyP2HF+Ngz+Pt5QjkqHCYZ1Nq3x9hvPIdPHDdpgjpB2rOOhgwicPDqskh2KaPfg==
X-Received: by 2002:a05:600c:216:b0:3b4:874c:61e6 with SMTP id 22-20020a05600c021600b003b4874c61e6mr5761451wmi.116.1664350704819;
        Wed, 28 Sep 2022 00:38:24 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:11d4:7c71:accf:6521? ([2a01:e0a:982:cbb0:11d4:7c71:accf:6521])
        by smtp.gmail.com with ESMTPSA id j1-20020a5d4481000000b0022ae401e9e0sm3437426wrq.78.2022.09.28.00.38.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Sep 2022 00:38:24 -0700 (PDT)
Message-ID: <21030438-e2ec-2da3-7700-1dea0f78d3f1@linaro.org>
Date:   Wed, 28 Sep 2022 09:38:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 02/12] arm64: dts: qcom: sc7280: align LPASS pin
 configuration with DT schema
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220927153429.55365-1-krzysztof.kozlowski@linaro.org>
 <20220927153429.55365-3-krzysztof.kozlowski@linaro.org>
Reply-To: neil.armstrong@linaro.org
From:   Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20220927153429.55365-3-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/09/2022 17:34, Krzysztof Kozlowski wrote:
> DT schema expects LPASS pin configuration nodes to be named with
> '-state' suffix and their optional children with '-pins' suffix.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sc7280.dtsi | 32 ++++++++++++++--------------
>   1 file changed, 16 insertions(+), 16 deletions(-)
> 

<snip>

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
