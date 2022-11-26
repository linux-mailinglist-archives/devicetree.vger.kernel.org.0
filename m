Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ACA686397EA
	for <lists+devicetree@lfdr.de>; Sat, 26 Nov 2022 20:01:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229625AbiKZTBs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 26 Nov 2022 14:01:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229612AbiKZTBr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 26 Nov 2022 14:01:47 -0500
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66EFC1837E
        for <devicetree@vger.kernel.org>; Sat, 26 Nov 2022 11:01:46 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id u27so511660lfc.9
        for <devicetree@vger.kernel.org>; Sat, 26 Nov 2022 11:01:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=npduQyctwPNwbrvgK5EV990wakFndbnwODmRKUwPZ0c=;
        b=YYDXJrlDz5fAunQJeW2HJc+UnzJx/7HXQvjdVLpMqfp+JXxPYtLlQFHrlg6y7kRps6
         IuglpHw3CwIRW9cheafiCbS0cQM7tPK9hLvxNxu2dJlFMcRG/ZsOfa+EyMu2An+INn+Y
         nJXA7ftESS/os65D8GZ5hujNTqO1ykODmF1iSvkVtXN3a3ajQdtkK/VU+JOZzinjzcA5
         oDxnog4o9hud04y8TNwvgQkyYAzC7vHiSmiFPcBan94w71ie+yTcgsxY2fNl9K9pC5yw
         UDoIlGN4w17bVxjOLFTRV5T+lTKuzALe8j27brPecExBLVEfBknj9T0vlYTGADAUSCMN
         8Nbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=npduQyctwPNwbrvgK5EV990wakFndbnwODmRKUwPZ0c=;
        b=hXgFZmDb1xihZCKqMYgJvWoga6f2zkfhOKGf71O30UOp1nn6x+7MrZHRmaVBaRSLVL
         sRptUsqa7K5+DoSfGPz5JxsdLdNsKIJ+pI6xBbpQ9DUASrxGEBVRE5WrH4ka8CF1u6ay
         W6He+/VuIDYqQlWA6MSVC7g9swzg+tVNZ6/qXd2NpUUNIWx1ub0K9Ew/SJCrs+T41OQd
         WE2K+Dn4kHQ2qVna0XPDTyD9zR9ABnTKmVrpCo/JMKbCEjnEswLQEfBRZKea5JAbQk4o
         QHNCEcYoBkqy2xOOWD3oMWBOQWgcWc5EruCEhA9uMbqm5Q6Kr/A6Jqb04rtM0yDtgwsU
         7K+g==
X-Gm-Message-State: ANoB5pl9+UwV142Hdxh4ImG5BTqOlkz4hA0UZf3qtzZEdAtPFGDZkOHQ
        KCwZF06G+vrDmfe8kXjbsFw+9A==
X-Google-Smtp-Source: AA0mqf6tuqwwCF6uoWwBZbyez9jbdMM/tWE0H2vrRLPARhOE6xVIfLJNfMh/ndzgO9UGY1vq7OUfaw==
X-Received: by 2002:a05:6512:2a89:b0:4b4:dffc:62a8 with SMTP id dt9-20020a0565122a8900b004b4dffc62a8mr8007174lfb.585.1669489304609;
        Sat, 26 Nov 2022 11:01:44 -0800 (PST)
Received: from [192.168.1.8] ([185.24.52.156])
        by smtp.gmail.com with ESMTPSA id o13-20020a056512052d00b004b48cc444ccsm1001380lfc.100.2022.11.26.11.01.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Nov 2022 11:01:44 -0800 (PST)
Message-ID: <a6a65a81-1f37-74b0-6bd4-df8ffc6d28ab@linaro.org>
Date:   Sat, 26 Nov 2022 21:01:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v4 14/18] arm64: dts: qcom: sc7280: Add compat
 qcom,sc7280-dsi-ctrl
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
 <20221125123638.823261-15-bryan.odonoghue@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221125123638.823261-15-bryan.odonoghue@linaro.org>
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
> Add silicon specific compatible qcom,sc7280-dsi-ctrl to the
> mdss-dsi-ctrl block. This allows us to differentiate the specific bindings
> for sc7280 against the yaml documentation.
> 
> Reviewed-by: Douglas Anderson <dianders@chromium.org>
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sc7280.dtsi | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

