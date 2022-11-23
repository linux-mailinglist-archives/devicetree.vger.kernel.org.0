Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6C31D635A61
	for <lists+devicetree@lfdr.de>; Wed, 23 Nov 2022 11:43:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237587AbiKWKlT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Nov 2022 05:41:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45190 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237539AbiKWKlC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Nov 2022 05:41:02 -0500
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58CD318E0A
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 02:24:55 -0800 (PST)
Received: by mail-lj1-x236.google.com with SMTP id s24so20825833ljs.11
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 02:24:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=z2cZ2aGvz+KFwNkBLj5Eji6CLqnLqwcqLWGZReHxQoo=;
        b=tccV9u0DPOr7WGHaeW7SHV7zoLGrY+IccG2qq+rPFQuqHwLHQPSTKvIQal19aGStQS
         qFuS0TCuUZbKwURtutPUto8/iBsAVhSPMbolATkWfeAE288vQ2/1PjzJzIpouG09dAE5
         egZt69Z7OqqkLA8/BKMIE8YoGoKKb0nAMP5ppVPvVZPtjH3ZoaY/RTgcs3/hg2D+GxkY
         w0Q1PD3Tgaam+isXAgN7hIbbMUV3kDAIQFYtp97WK4jvOvzE8XgtTHHN5YMIf11YkmAS
         nNQ04rpP0i3riYxq7Vqe32Qr4Q6JQClc+92LYISNzEw4ng6mgRNUAhdDXDzMcV5xBi0s
         Rn8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=z2cZ2aGvz+KFwNkBLj5Eji6CLqnLqwcqLWGZReHxQoo=;
        b=rDq9osR0BFIhs3uOzaNnD0EOOX0mANPVDQAdSFgz1xik6HWMaTHjggHx4NFmyHJvMC
         o48Uj85nzv1VW72QH7jQ9dmcv8AQntmkgZFB5++vtxvU9djr8IhWCmRKq/car4yEfmUg
         1b9fVwEXchg2HAQ+1jJ79pf9HRo4BJs+FAveMkWd7bxXnjcs9SLGVux00lJCMGTZhOih
         bUdsvqlx4Z5zJCsy52YIXnlpp+pUbmibo3IhivoXE3F48T+5dy+6LKuLg7K8dBITjnyf
         KxkK8ubwUh/wzePHmpf/s8U6oSBl0D4aHxMzyJ73CHYU+yRKNb0AeJ9ga+XsRzvid+fm
         /jJQ==
X-Gm-Message-State: ANoB5pm1AhZwhBoWbTFaR/6zf/yoyx97cGy7gKsb7qJTzxjEIyHalmyX
        OpEkxYMNnCizI14Vr+4tbKo7pw==
X-Google-Smtp-Source: AA0mqf56iGGSkxj6TllkNQuinXzUirCmomHmNOpMWrybBSVRIH2xAEjCe0t5105VGr4MUVvDU2OuHg==
X-Received: by 2002:a2e:6d02:0:b0:279:4a4a:ca9d with SMTP id i2-20020a2e6d02000000b002794a4aca9dmr4481353ljc.27.1669199093716;
        Wed, 23 Nov 2022 02:24:53 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id u26-20020ac248ba000000b004abc977ad7fsm2843143lfg.294.2022.11.23.02.24.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Nov 2022 02:24:53 -0800 (PST)
Message-ID: <d7629871-1c29-e23d-1741-33714f187bbd@linaro.org>
Date:   Wed, 23 Nov 2022 11:24:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v4 04/11] dt-bindings: display/msm: add sm8350 and sm8450
 DSI PHYs
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
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
References: <20221122231235.3299737-1-dmitry.baryshkov@linaro.org>
 <20221122231235.3299737-5-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221122231235.3299737-5-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/11/2022 00:12, Dmitry Baryshkov wrote:
> SM8350 and SM8450 platforms use the same driver and same bindings as the
> existing 7nm DSI PHYs. Add corresponding compatibility strings.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Didn't you have here tag? What changed?

Best regards,
Krzysztof

