Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 94CEA6384F4
	for <lists+devicetree@lfdr.de>; Fri, 25 Nov 2022 09:06:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229539AbiKYIGH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Nov 2022 03:06:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229652AbiKYIGH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Nov 2022 03:06:07 -0500
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B5F5321E29
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 00:06:05 -0800 (PST)
Received: by mail-lj1-x22a.google.com with SMTP id j2so1784755ljg.10
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 00:06:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=D49i9+CqzhVncl5C6H/ptIMUdWGDiCQ2jV+wEFz40RA=;
        b=n/PGbygZuJrtVuapZT8bdM1579wHkSd3l9IVakzRsfx7SFDPCr6+z1phHUMbC7MmGe
         l/nsjSlGVD2z4Ql58NgWsJHRrVUzG7RoeQrjMaqM9UONFICqoyR0Tw+00DDFFZvIO7vg
         U28rpMxn0j2YvgpkiiuJk42Vm4yD+JEts2R5QBOzdtuVU/Vp4lKR5MUzEZNqADHAuxOD
         zS0pIKtB9DCjUE87vlRxcwXBWCI1crkRmWZ1MYhAUFyqP+rPp4m+y4/YLGju2vOSYkJU
         UbhqOzmk8husMENiGNoJibHkxoCo8tl3yVs6dAgP54EOQNJgMF3o6IU2j6VLBVx2QXTu
         aNlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=D49i9+CqzhVncl5C6H/ptIMUdWGDiCQ2jV+wEFz40RA=;
        b=ahBXT1YbxamggtIn5ADVpLrTXDs4zhYVis77hVfZgMRS0piRY4v88IyX+qmaZPbRf6
         UQv1Gcp/S8Eudm21X4OqcMlVuHIs54km13mAgM1iZA8tu+5lL9eEQmE+IrdX6ugLCU3Z
         ETd4YE5tbAlxjMM/Tv8yNj5Rz11qASviA40Nh0dIkRt3mupqdWp/TjIwFr0oKFGF0Opo
         bK7YwZlU3XHX13gYTH4dsK4YOnpEI+KTl33CK7qLm1N2bE3urJKqB6M65Amw5vl65WaN
         HL/c4HQKQkOP/H+ozKm3QiIF4KIn2Klwc/q1395YDnuCKAQiZvdxzbkt+acOMRGzJpF5
         OKSg==
X-Gm-Message-State: ANoB5pkm4v/z6bXW31DT1Z3Lw8fcm9yklqvYWzdyA7AsQnPzKgsKK6XI
        6rSvpe19A0XRTHeqdYKOrv99kQ==
X-Google-Smtp-Source: AA0mqf6VxT1aEXu7weoSccK7/ISZvPA73NLRVTO6wuY9yZQZBdzrp0PjPI71T4AeNAn5MJj15hwsPw==
X-Received: by 2002:a2e:aa94:0:b0:277:871:5712 with SMTP id bj20-20020a2eaa94000000b0027708715712mr11000813ljb.129.1669363563955;
        Fri, 25 Nov 2022 00:06:03 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id b24-20020a196458000000b004949a8df775sm433304lfj.33.2022.11.25.00.06.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Nov 2022 00:06:03 -0800 (PST)
Message-ID: <8ad024c8-1284-0f72-91a3-2a8d9b5692fe@linaro.org>
Date:   Fri, 25 Nov 2022 09:06:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v2 1/2] dt-bindings: display/msm: add support for SM6115
Content-Language: en-US
To:     Adam Skladowski <a39.skl@gmail.com>
Cc:     phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kalyan Thota <quic_kalyant@quicinc.com>,
        Jessica Zhang <quic_jesszhan@quicinc.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        Loic Poulain <loic.poulain@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Vinod Polimera <quic_vpolimer@quicinc.com>,
        Jason Wang <wangborong@cdjrlc.com>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221124001708.25720-1-a39.skl@gmail.com>
 <20221124001708.25720-2-a39.skl@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221124001708.25720-2-a39.skl@gmail.com>
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

On 24/11/2022 01:16, Adam Skladowski wrote:
> Add DPU and MDSS schemas to describe MDSS and DPU blocks on the Qualcomm
> SM6115 platform.
> Configuration for DSI/PHY is shared with QCM2290 so compatibles are reused.
> Lack of dsi phy supply in example is intended
> due to fact on qcm2290, sm6115 and sm6125
> this phy is supplied via power domain, not regulator.
> 
> Signed-off-by: Adam Skladowski <a39.skl@gmail.com>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

