Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 76C76635A40
	for <lists+devicetree@lfdr.de>; Wed, 23 Nov 2022 11:39:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237432AbiKWKga (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Nov 2022 05:36:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237429AbiKWKfJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Nov 2022 05:35:09 -0500
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8F26125207
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 02:19:59 -0800 (PST)
Received: by mail-lf1-x12d.google.com with SMTP id a29so27436610lfj.9
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 02:19:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wcEhC14eey3OipJGC9PHGuhf2ZSRAQeKcc070wSp9zY=;
        b=OhLsJ14k8BHQ1JtpAx3RrRI1Q2lSGUnYsZmc8eVrkbyY78/BKyhu17VAPG88/7B5dw
         pYwzWBH0VXGnTGKhdxCm/PNaOrL6QqXndiR1Q7FIDWRduIFzdWF5NW66V0mKBUt3qXVX
         CBaypwxJedKzhtJamJQSziV3Ihx2i2BbVS8bMPrf5OTbC05CzsjXRzbn9pmGqlyd6ySJ
         +LhteW5RTbkyttah/UkLfnn+2btK/AQye/S9rYdKlUMS9yETgC586giPa9cdw0iUy+Ex
         4x/IyroFjpQ4rvn7lz7iMBmkQnz/3TuBTH6UJoD35YuryKavg+7GiUR3JVwkO4MF+C41
         cjEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wcEhC14eey3OipJGC9PHGuhf2ZSRAQeKcc070wSp9zY=;
        b=1Z1eROfTBsLMsq5EVUCfQ+2T7Cmn9LWOWvu8yxM50bHlLA8joS8qhqtK+26zv1ST+t
         qPbnHzzHH8uBQ2MhkvHXNxLM33+toJTYbcVNL+1GOJuuB1Iiw8hdb0QWkwxJAsrI4Jr3
         c4GCOPZl8YStubP8ftpe0Fd65j+gWlmWoMnZX/mxcneugtu1RHkBvXvTtw2VPVSQskbx
         dgLMWWbX6OsM8F3c31/cmBv7BKiKhxat3jkb7VXyR7niqNN09u/BTNCGReAkrqrdUw8D
         FXHE7kile0MQS2vs4Q47Nzy939TPjCHU3zM/JAAcixtJdhaDW2a+6eduJvpxvQJhFwF4
         Up2Q==
X-Gm-Message-State: ANoB5pnJ5ewEBqt/R/vUm2fJXeK0v1KfU6xrjuU9Tw/IYEHhsaVXurCE
        gy6ra3YVb+6OwoHJEvY0REaBYw==
X-Google-Smtp-Source: AA0mqf7Fnoiose8tFgDHJPcjMa7kbY6JJPrliBCN6rODrYiAtw1SYLXAF1GyscHc7BCxjfjeCaiXrw==
X-Received: by 2002:a19:ca4e:0:b0:4aa:bad8:9b5d with SMTP id h14-20020a19ca4e000000b004aabad89b5dmr9027202lfj.540.1669198798258;
        Wed, 23 Nov 2022 02:19:58 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id k24-20020a05651c10b800b002770473d813sm2083037ljn.140.2022.11.23.02.19.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Nov 2022 02:19:57 -0800 (PST)
Message-ID: <40d5c7f3-148a-a5fa-fdf7-6fd301ec3a2d@linaro.org>
Date:   Wed, 23 Nov 2022 11:19:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v4 03/11] dt-bindings: display/msm: mdss-common: make
 clock-names required
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
 <20221122231235.3299737-4-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221122231235.3299737-4-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
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

On 23/11/2022 00:12, Dmitry Baryshkov wrote:
> Mark clock-names property as required to be used on all MDSS devices.

This we see from the diff. Please tell why you are doing it. In some
other recent bindings we dropped clock-names from required, so this is
confusing.

> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  Documentation/devicetree/bindings/display/msm/mdss-common.yaml | 1 +


Best regards,
Krzysztof

