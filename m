Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A74FB676537
	for <lists+devicetree@lfdr.de>; Sat, 21 Jan 2023 09:47:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229763AbjAUIr5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 21 Jan 2023 03:47:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36342 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229788AbjAUIrw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 21 Jan 2023 03:47:52 -0500
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5A26974E
        for <devicetree@vger.kernel.org>; Sat, 21 Jan 2023 00:47:42 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id d30so11237594lfv.8
        for <devicetree@vger.kernel.org>; Sat, 21 Jan 2023 00:47:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rUIakY5manILdEo4pQ4cOFFCkXw/ibly5tWVD00hd1Y=;
        b=W5owJGCIo19xG0s4TWPnTP5L2WRmNRoDLz98R8+5Ee3JtEa++A4mEiwOIdqcu1G+WY
         1hIPpzdDTyQi6YpB047N9YC0Y1e2qZKb3Keh4rY07d6oF2Av3y3pOkc9DnSjLrYPrp6P
         fx5h2mN6RTcwydiP4fBM3KR7PZn6y0DStj0kG91UK9ZOAn2euxr8tXEg+52SmO97QUAt
         J4eWvHbtEXZtWFh0Qv9XJoBRujX59h737j+hkTT5/Ee/d0dyq0TDZZj9H2einZWHBDL9
         jlBMe3MKNYm3N2mWQ9K8SA90x/iXDg4ohZ4fv19TjDYkL3T3y+J7qpT6Q2DP09r5PuYS
         NH0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rUIakY5manILdEo4pQ4cOFFCkXw/ibly5tWVD00hd1Y=;
        b=bA/QyqcM/M1grTOpge6/gKjeBZChJqDhFNcPTBH/i5vFDI4x29IG4IWSBdBd5JOTQ0
         pOYrE6RVfuXW4K8RHUkmKI3pIEGF4nbiZXkH4u4HUqD3/v+C3H04Q8HrjlRxynEUUwQ/
         fNTU9DyNnM5bPHb70sVDvT4p1+9E+nSs63heYFCQoKgDERGuhne4m30DmzQ63jaUwUoW
         /rcisnUfHQ5+4v66Mvp+TeoTo2Jm+Xjo+cKbDuU7CHQVSRzn1x2y+gliZjocAbJjihMu
         yooNyAC4urxHTR8dXl39ROmcrPj4eo8wcza+hibI3sZeJ8iwQbPHGNMsNeb62dEnje1D
         R2Zg==
X-Gm-Message-State: AFqh2kqjD1CZ1KdIps8L1HeColnIehPdytnqdQamurBRSo9hBf7+mPIw
        x0Kmk8+KPhhKQkdZPeRqKfkYIA==
X-Google-Smtp-Source: AMrXdXup3aeZB7gxcaRq1cbDz6dQNOHgNRDof1U3LkTjlihG8wz/4mKtuTiCJJ7YlMFIBXiCMWag6g==
X-Received: by 2002:a05:6512:1046:b0:4b5:2cf4:cc1d with SMTP id c6-20020a056512104600b004b52cf4cc1dmr6256085lfb.68.1674290862243;
        Sat, 21 Jan 2023 00:47:42 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id x2-20020a056512130200b004a8f824466bsm6234855lfu.188.2023.01.21.00.47.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Jan 2023 00:47:41 -0800 (PST)
Message-ID: <f324aa87-8df9-25be-d6b6-6341460993d2@linaro.org>
Date:   Sat, 21 Jan 2023 10:47:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 6/8] arm64: dts: qcom: sm8350: Fix DSI PLL size
Content-Language: en-GB
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org, krzysztof.kozlowski@linaro.org
Cc:     marijn.suijten@somainline.org, Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Douglas Anderson <dianders@chromium.org>,
        Loic Poulain <loic.poulain@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rajeev Nandan <quic_rajeevny@quicinc.com>,
        Stephen Boyd <swboyd@chromium.org>,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Robert Foss <rfoss@kernel.org>, devicetree@vger.kernel.org
References: <20230120210101.2146852-1-konrad.dybcio@linaro.org>
 <20230120210101.2146852-6-konrad.dybcio@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230120210101.2146852-6-konrad.dybcio@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/01/2023 23:00, Konrad Dybcio wrote:
> As downstream indicates, DSI PLL is actually 0x27c and not 0x260-
> wide. Fix that to reserve the correct registers.
> 
> Fixes: d4a4410583ed ("arm64: dts: qcom: sm8350: Add display system nodes")
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sm8350.dtsi | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

