Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 82FA667C9AD
	for <lists+devicetree@lfdr.de>; Thu, 26 Jan 2023 12:20:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236541AbjAZLUq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Jan 2023 06:20:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38758 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236803AbjAZLUp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Jan 2023 06:20:45 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D2612CFE7
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 03:20:43 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id d4-20020a05600c3ac400b003db1de2aef0so895987wms.2
        for <devicetree@vger.kernel.org>; Thu, 26 Jan 2023 03:20:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1imp2ZTUXsEKy4CR62FOeVw43151JqoY56paLPOoOP0=;
        b=P/73LZDE96musvCuEyN3wTnzDpff26ZT/Xmmo9GR8wJWUBlEeE/7QR4P6EgpvxGaLz
         OyYpjz5fQeHMvN9xE+13H0XuitfMBg4BZtF0Rp/cBTEAitDwSjytcaD5Pw2/D2UAnSTT
         Cx9O+rQIbVvL+zxfPGQ6aX16hjcgJAzceizaOUZ/KNCYiUY65p19O2XtzehjlHxWRuYP
         p9vHhUPt+UrL0u542da95K6Mf4F27H1DO2aAvvHQ9NIUjGhw8yVoc1fFHCO/xvcIB4c3
         nwWjmEnCCyRahcBcXdW3dmy74rj63khpUzQm2WVrDlqTTfMwEelLFNTU6IkY4tvzFSQK
         nljg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1imp2ZTUXsEKy4CR62FOeVw43151JqoY56paLPOoOP0=;
        b=oF+9i60mFVuRTxtMnsKJuAsudEIuUqVRVaw1igRDBWUWqqXtzyapdIztGfsMU/NZHv
         cZO0hfeiFmFWht6JAB0kb288PX8hzx6iHtA/oVksgNqHrP0jpVFo+D5t6Lm3SrHaPVMH
         dUqV8jt5HnxSI+xTC+I4HC2C77fjp19y7qzoLMF6F/3/Tjkn6dDJ32YG+evLuUA2iA8C
         0zuVIzfHp/LgZ/A7ZPwrlKSbrHj9NhZ09EfGqhX5Ba6PTLHxNFftIVBoV8KAUYjYpoKu
         cVqh1UFPMW9pkIEq0KKPDEAZ746qMypjuzOQ7qkHx0RzV/mjz/NU4+ukDs1TvBiRlxJ9
         zIcA==
X-Gm-Message-State: AFqh2kqoqBGZ5AD7rIV1TIvybCetkNiHbnyvFR5dvXoi2EKAG0ne1re6
        4RoL2EWlQBHu+t0w2oyyV8/auQ==
X-Google-Smtp-Source: AMrXdXtZDKxPIm1iALZGFw6++8J7Y/TcWVphWfZJF3I6ajIGvljUzFqkk5XvvW0GpPmDj2bQd6A9Fw==
X-Received: by 2002:a05:600c:4e05:b0:3c6:e61e:ae71 with SMTP id b5-20020a05600c4e0500b003c6e61eae71mr37033876wmq.1.1674732041590;
        Thu, 26 Jan 2023 03:20:41 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id hg6-20020a05600c538600b003dafbd859a6sm4414673wmb.43.2023.01.26.03.20.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Jan 2023 03:20:41 -0800 (PST)
Message-ID: <81ff0fde-4783-ead4-4bca-f53b6fb0261d@linaro.org>
Date:   Thu, 26 Jan 2023 12:20:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH 1/6] dt-bindings: phy: qcom,hdmi-phy-other: use pxo clock
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
References: <20230119132219.2479775-1-dmitry.baryshkov@linaro.org>
 <20230119132219.2479775-2-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230119132219.2479775-2-dmitry.baryshkov@linaro.org>
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

On 19/01/2023 14:22, Dmitry Baryshkov wrote:
> Add pxo clock to the 8960 bindings (used by the HDMI PLL)
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  .../bindings/phy/qcom,hdmi-phy-other.yaml     | 23 ++++++++++++++++---
>  1 file changed, 20 insertions(+), 3 deletions(-)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

