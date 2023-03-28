Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A1F8F6CC666
	for <lists+devicetree@lfdr.de>; Tue, 28 Mar 2023 17:32:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233613AbjC1PcX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Mar 2023 11:32:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233965AbjC1PcB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Mar 2023 11:32:01 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E08AEFBE
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 08:31:30 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id e11so12969634lji.8
        for <devicetree@vger.kernel.org>; Tue, 28 Mar 2023 08:31:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680017488;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VCfLdVb7TI1yqO2qnnBtIkreowcg0oCZEFmkk9g0KqY=;
        b=OYu298mz0Km6mev/DZ3Z+2oKlFfDgAdV3rz4AY0vddeyWToeqyu8M6tDOS/CpWyQh3
         7RADjOgHYdPgPcz83qBykcvtc3lXOcrXCkh7gG5OEUMwJ8hdYnn/4yEhDdsFloWa5oY1
         a6bGH30PlPfxE1SFUOZ9H3wjFw+NdEYbRBOOvCVBprfwfG30pJIdS+fgGbgNWt19CHHN
         pRuxzNWZVJRREZI5iOaaGWry+gFU5FXekUbIg9UVdDNNZB4gb8qNpsk6dZEg6rf/r+er
         5z3n0ca9kpjXfOMN6pymbC3X5ggfIZBf9yWOwKRtmOAMKjY+S3uQi+/IqKZCpj+rbaYW
         a8Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680017488;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VCfLdVb7TI1yqO2qnnBtIkreowcg0oCZEFmkk9g0KqY=;
        b=FCtZPVAMrEjOwVtISwYPa2WSfeYk27fqxjTdkT7i9Sx33lhl+2l3TLmvLvwjHDvsKE
         Vy20tF47f9OMOOVqx0YmqEhNUCKxSy5raqx0cbiIArePZVdX4uHVfKTNwM1M4bobCqHm
         v6Xw06OBZzPD254jglatwIKI94d565ANHF2zel4ocICfwEO6qNufUUxWgaU32sBsO/5F
         GsAZGaC1HJiOU4Oa+uxTp4ATU+bN8S0eyHDEmrnlrliBcu+Sd8YdWWjcyrHmGRd/8oUb
         BGc1wjNbL7plJG0qDKXIp5l2KKiBBWOEOpIs6Ldp/wkRlWCGijljiFlgMX7iF1wGu/NJ
         ihEw==
X-Gm-Message-State: AAQBX9djZvWHt9V3FxpGoGie+8IuAxZflG40YZfQFl5qyyAseWDyBOu7
        bB9FXVcVU9vbBRCQgjKziIiXEw==
X-Google-Smtp-Source: AKy350YprgK0doz3jlfS4Un0uNGa0u3/hWuIAMuK+uqdb4YwcZi5ITxG4ccIDF6oSsTaUbWZSYsyFA==
X-Received: by 2002:a2e:910e:0:b0:29a:fe9:3b2 with SMTP id m14-20020a2e910e000000b0029a0fe903b2mr4886135ljg.36.1680017488507;
        Tue, 28 Mar 2023 08:31:28 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id w8-20020a2e3008000000b002a4bb086610sm1522966ljw.123.2023.03.28.08.31.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Mar 2023 08:31:28 -0700 (PDT)
Message-ID: <1e300a26-099c-1f00-2c90-b4832199748b@linaro.org>
Date:   Tue, 28 Mar 2023 18:31:27 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v4 13/14] drm/msm/a6xx: Add A619_holi speedbin support
Content-Language: en-GB
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Akhil P Oommen <quic_akhilpo@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Rob Clark <robdclark@chromium.org>,
        Marijn Suijten <marijn.suijten@somainline.org>
References: <20230223-topic-gmuwrapper-v4-0-e987eb79d03f@linaro.org>
 <20230223-topic-gmuwrapper-v4-13-e987eb79d03f@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230223-topic-gmuwrapper-v4-13-e987eb79d03f@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/03/2023 17:28, Konrad Dybcio wrote:
> A619_holi is implemented on at least two SoCs: SM4350 (holi) and SM6375
> (blair). This is what seems to be a first occurrence of this happening,
> but it's easy to overcome by guarding the SoC-specific fuse values with
> of_machine_is_compatible(). Do just that to enable frequency limiting
> on these SoCs.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>   drivers/gpu/drm/msm/adreno/a6xx_gpu.c | 31 +++++++++++++++++++++++++++++++
>   1 file changed, 31 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

