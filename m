Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A51D46397D0
	for <lists+devicetree@lfdr.de>; Sat, 26 Nov 2022 19:59:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229615AbiKZS7f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 26 Nov 2022 13:59:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48046 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229624AbiKZS73 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 26 Nov 2022 13:59:29 -0500
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B89E91A3AD
        for <devicetree@vger.kernel.org>; Sat, 26 Nov 2022 10:59:26 -0800 (PST)
Received: by mail-lf1-x130.google.com with SMTP id j16so11492042lfe.12
        for <devicetree@vger.kernel.org>; Sat, 26 Nov 2022 10:59:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VCav5Kob/l5LQp5fu9UAEg7SYlJAze6Knt9alnYD50A=;
        b=CsISpwze/NA+ezDBmtIuI8AE4nY8STh+kX9SeoXBsNtUCAWANQpUNRFeozTQp/WFHr
         yrULdLEVKHI94WPlaeo4M3IwRSstEYV8lSaE81o+paTnD8fqxfPvEE6gnVBMdrOkHNUH
         gsp+WMVrm2FACt0d9B1dE/h5NEd1rzTeqoRMD3Q+zORS45ptzVkAyHpwiGD1afzbosph
         ILhw+2zsKlbj+bgMk+vmTPiv5gckVALieiBHx+dCwbElmmm3/uAJXkdkr6/0MHkgi/MY
         rql6kuk4mWYE2HheoBRXEvTpPTUKaw+PIAKUgO+X7/dhVfu/sLNnLARhAEEyULg0z9/Z
         MA/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VCav5Kob/l5LQp5fu9UAEg7SYlJAze6Knt9alnYD50A=;
        b=JMYu+ql3DllPbHoLGsU0bR69bASS1U424HRbbXgwFW4LSBg4Wh8w0lx98hJheonP+i
         mwemPwannmjAJLwuucBx6sfrR+olpWAi+OC4t4pd7YkkAKIv67tL6zfnuL09Us5vUIN/
         0fHwO0KnrAGn2K9iVHhqo8EgHx0/bRGDECO+Zm8ooFrIiWCpzT8kfB0LDSNfwkj7z0LE
         lQ98bg7vXUZM5twutTcvSKXfPKacTb15AZw3qUak6xaNySwTJcHDqDApasg6witIHX/V
         g3hlr4UD53pIe3RQbcTWKkVVl4odUbXGmKTTBHYsZqHQmm2dE/W3NhL8RNunmm4jzvWg
         kDMg==
X-Gm-Message-State: ANoB5pnGJvQaQe7jVma81dTazCyr6zllaoz/p26ET72dY1qFNIxFPv/8
        Wrg7Jxwu6vHCnJbQ29t5LwXsQy1ooTIqQQ==
X-Google-Smtp-Source: AA0mqf6L8Dp7Yr8aAR8G0BMgMpddYQH/AgN5UUfCJBtzx9TBAFaKSx+2qQmZCkP+yl02tumcsZM/rg==
X-Received: by 2002:a05:6512:3189:b0:4b4:e3bd:6ca0 with SMTP id i9-20020a056512318900b004b4e3bd6ca0mr8236569lfe.278.1669489166313;
        Sat, 26 Nov 2022 10:59:26 -0800 (PST)
Received: from [192.168.1.8] ([185.24.52.156])
        by smtp.gmail.com with ESMTPSA id h19-20020a056512055300b0049fbf5facf4sm992956lfl.75.2022.11.26.10.59.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Nov 2022 10:59:25 -0800 (PST)
Message-ID: <7beb001a-6f29-cb3e-780b-3faaf0669b42@linaro.org>
Date:   Sat, 26 Nov 2022 20:59:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v4 12/18] arm64: dts: qcom: msm8996: Add compat
 qcom,msm8996-dsi-ctrl
Content-Language: en-GB
To:     Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org
Cc:     robdclark@gmail.com, quic_abhinavk@quicinc.com, sean@poorly.run,
        airlied@gmail.com, daniel@ffwll.ch, robh+dt@kernel.org,
        dianders@chromium.org, david@ixit.cz,
        krzysztof.kozlowski+dt@linaro.org, swboyd@chromium.org,
        konrad.dybcio@somainline.org, agross@kernel.org,
        andersson@kernel.org, dri-devel@lists.freedesktop.org,
        linux-kernel@vger.kernel.org
References: <20221125123638.823261-1-bryan.odonoghue@linaro.org>
 <20221125123638.823261-13-bryan.odonoghue@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221125123638.823261-13-bryan.odonoghue@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/11/2022 14:36, Bryan O'Donoghue wrote:
> Add silicon specific compatible qcom,msm8996-dsi-ctrl to the
> mdss-dsi-ctrl block. This allows us to differentiate the specific bindings
> for msm8996 against the yaml documentation.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/msm8996.dtsi | 6 ++++--
>   1 file changed, 4 insertions(+), 2 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

