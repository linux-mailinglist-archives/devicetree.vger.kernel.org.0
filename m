Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8F1575E8A8F
	for <lists+devicetree@lfdr.de>; Sat, 24 Sep 2022 11:12:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229601AbiIXJMu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 24 Sep 2022 05:12:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233414AbiIXJMt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 24 Sep 2022 05:12:49 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E5C910D650
        for <devicetree@vger.kernel.org>; Sat, 24 Sep 2022 02:12:48 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id a2so3664990lfb.6
        for <devicetree@vger.kernel.org>; Sat, 24 Sep 2022 02:12:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=b9ndRpD3XDG4vRnZyuWL/4sBXK3UFiGwxkvbkbyDif0=;
        b=E5Tw4dhqCPleX0AI7xMfQutiPwlUTALA+vf7iGYc/EiRXNhGDY52+G9TTuIHGwv8ve
         X56TkANpuChHMQpM+U2+pVbzE4PXhPhNh5cw/1LBf5QcsC5qjJG1lP39FIccfpzHG2uI
         vDOZKO4gnN4ugx8h1wTVfdqtEC5QYiNGHpx9/mMo/1rQPb0HiNVKqkHOLU3G2e3XKagX
         ++FA9My2JQ6id3yuiFpTHmj4oJkQM8evrqbgSWc2XwTQ77nxKY2rXbgnanOHXi0yiixm
         lq4CsRsxrGBYJCWEhkcV6NrUH9rvnGMi1VXc1MjGhFllnqx2bb0bKPH3fER2fAmyPEB2
         am8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=b9ndRpD3XDG4vRnZyuWL/4sBXK3UFiGwxkvbkbyDif0=;
        b=oYi5TLsIPKOIWDr52M+l7O1V4aWWzlgAJ6YnwB/6m8U/yn+p8wnXIN/O9R8N36Htqy
         g8BAJZ9z1Yu20bgVhxNc/8tOGYS9eavWIiVRb7WteLHOGF42kPsZIBa6KHCjVF8sDUlO
         KT14DKaJy6CK2BkATv3Nu1dzHgdwNh3fNdB4Mkg+2RMCsphnxAT4VcXMVFEnj8/VH9y8
         +NWNfdWhMJkJGRtILOeWKcuEMmxfj/M/Kr9hzrDqiYoyFJ5M2MhyWq1QsanHQQ3K5Aue
         DOcy7wFEp/LO7N29ea21qBBdUP/uLMFAI906GfaRYMJppDpSGtmNN4RKYKHUVu1j7DTA
         WE6w==
X-Gm-Message-State: ACrzQf0nbHI1fRZZETFfNgj6IWn+YJfsmfKsp7fcbdLspoFxY2S7ERnI
        2h58jhWyyw3TKkruU5/VAl+30w==
X-Google-Smtp-Source: AMsMyM60nrNM5cgta+PU9fHotuGfZLcKRFfwhkNz1i/9aGulPbliCfF/QdeBcfr1ty//mUm9CPaDFA==
X-Received: by 2002:ac2:4e8f:0:b0:49a:db9f:d49e with SMTP id o15-20020ac24e8f000000b0049adb9fd49emr4566270lfr.652.1664010766668;
        Sat, 24 Sep 2022 02:12:46 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id z7-20020a056512376700b00498fbec3f8asm1835259lft.129.2022.09.24.02.12.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 Sep 2022 02:12:46 -0700 (PDT)
Message-ID: <f6ed6e44-ab28-9f13-4193-517eef0edea1@linaro.org>
Date:   Sat, 24 Sep 2022 11:12:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v2 1/2] dt-bindings: display/msm: Add QCM2290 DSI phy
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org,
        Loic Poulain <loic.poulain@linaro.org>
References: <20220924085129.161086-1-dmitry.baryshkov@linaro.org>
 <20220924085129.161086-2-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220924085129.161086-2-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/09/2022 10:51, Dmitry Baryshkov wrote:
> From: Loic Poulain <loic.poulain@linaro.org>
> 
> QCM2290 platform uses the 14nm DSI PHY driver.
> 
> Signed-off-by: Loic Poulain <loic.poulain@linaro.org>
> [DB: changed compat to follow the agreed scheme]

Bjorn asked to keep consistency in other case:
https://lore.kernel.org/all/20220829210408.gxbv6szxfwiiwrbv@builder.lan/

> ---
>  Documentation/devicetree/bindings/display/msm/dsi-phy-14nm.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-14nm.yaml b/Documentation/devicetree/bindings/display/msm/dsi-phy-14nm.yaml
> index bc3d0b4063c7..088a03ed5f80 100644
> --- a/Documentation/devicetree/bindings/display/msm/dsi-phy-14nm.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/dsi-phy-14nm.yaml
> @@ -17,6 +17,7 @@ properties:
>        - qcom,dsi-phy-14nm
>        - qcom,dsi-phy-14nm-660
>        - qcom,dsi-phy-14nm-8953
> +      - qcom,qcm2290-dsi-phy-14nm
Best regards,
Krzysztof

