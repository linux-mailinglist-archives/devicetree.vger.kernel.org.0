Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 71EB86F8063
	for <lists+devicetree@lfdr.de>; Fri,  5 May 2023 11:50:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231897AbjEEJuh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 May 2023 05:50:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231840AbjEEJu1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 May 2023 05:50:27 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B016D19D71
        for <devicetree@vger.kernel.org>; Fri,  5 May 2023 02:50:23 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-4f004943558so1757433e87.3
        for <devicetree@vger.kernel.org>; Fri, 05 May 2023 02:50:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683280222; x=1685872222;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vjV8g4bNqzsKiHhjvJHnS22a79GyPl/muTufLSUiNIE=;
        b=aDvIpY09gVXTK75VSGWJQAsYVDGiXP6kWqgTcoCgn3Jtk4ZQPXPTMNxUCalmRrnPZA
         WWbxDRQcwGzFySN1mr/sGYaDISFePEKjyvNE+Ng5Ey3obgBLaUmvfG9k+jN/vibq0YdB
         44RnQX7V6rRVxBrzDjkvXQ1IpNMZ0SMdxosixzE/ncStoe3VRrh+vwmuQqjvWPLB5i1o
         ENUUj3aOAqZNQ/T7Ls5sPo06z4aVy0cyAIOHp3QkjQlCb8NyU8YpPOsDaaos8OwIdNBH
         4jAKNH5qZtmny3RWMruVWFHIGStfuiEHnk64XjywTlGgiN7S+8hJOcF8QMkrrAzeI5Wy
         kxog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683280222; x=1685872222;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vjV8g4bNqzsKiHhjvJHnS22a79GyPl/muTufLSUiNIE=;
        b=LBy5D8q2X/hCJizaaIYB8OJXA4po1T/lMgR1cRF9IA2hOWRcxOM4fLwPbh1XXhBfCZ
         fKM0+aRxshyw5QSYbQsfWH+2D7HGcg1ep4szygzSrHgs/O4+OaQcxu7VHfyT3Wdbs7uA
         vBq+VA8nMfwaRgWW9c4oyT0PHwUqaoOJ6un6tBOdaBolw4KcbCdbXKRem+foMuKi/YTZ
         liEaXN/Qd23RC653370AVOFjRvIyZbrbJmcxa9tNj2qe6LCqx7f7NVPGpINxbtyrWAmg
         lbu8ACsblUeJg2vEd7NvQqUFwfiOPgrpn1e6Td5mzynAiS0HBimB9nG4+5eyqlqAdW09
         D0uQ==
X-Gm-Message-State: AC+VfDy6gNUhHR5+7ki52l4HhskMHVoCZWN5JTT/wObEQJiMsp8+Et+2
        yQl+ElenTYt+plEIYhYD9A7Y3g==
X-Google-Smtp-Source: ACHHUZ7Vu0mXfGsKFvSg6OAyOzURgoVWc6fv9pXkYH6Vy6KfEfRhfQNfmx0u27QtywqGmROhxedtKQ==
X-Received: by 2002:ac2:5ec4:0:b0:4f0:441:71a4 with SMTP id d4-20020ac25ec4000000b004f0044171a4mr376354lfq.35.1683280221912;
        Fri, 05 May 2023 02:50:21 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a0db:1f00::8a5? (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id t25-20020ac243b9000000b004edc512515fsm225733lfl.47.2023.05.05.02.50.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 May 2023 02:50:21 -0700 (PDT)
Message-ID: <440ac548-cc71-cc27-6f20-6bc553ff98d6@linaro.org>
Date:   Fri, 5 May 2023 12:50:20 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v3 2/3] arm64: dts: qcom: qrb4210-rb2: Fix CD gpio for
 SDHC2
To:     Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        linux-arm-msm@vger.kernel.org
Cc:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        linux-kernel@vger.kernel.org, bhupesh.linux@gmail.com,
        robh+dt@kernel.org, krzysztof.kozlowski@linaro.org,
        devicetree@vger.kernel.org
References: <20230505075354.1634547-1-bhupesh.sharma@linaro.org>
 <20230505075354.1634547-3-bhupesh.sharma@linaro.org>
Content-Language: en-GB
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230505075354.1634547-3-bhupesh.sharma@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/05/2023 10:53, Bhupesh Sharma wrote:
> Card-Detect (CD) gpio for SDHC2 is an active GPIO line. Fix the same.
> This allows the uSD card to be properly detected on the board.
> 
> Fixes: 8d58a8c0d930 ("arm64: dts: qcom: Add base qrb4210-rb2 board dts")
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

