Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0D829676532
	for <lists+devicetree@lfdr.de>; Sat, 21 Jan 2023 09:47:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229706AbjAUIrd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 21 Jan 2023 03:47:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35292 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229686AbjAUIrc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 21 Jan 2023 03:47:32 -0500
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 187106E0E7
        for <devicetree@vger.kernel.org>; Sat, 21 Jan 2023 00:47:28 -0800 (PST)
Received: by mail-lf1-x136.google.com with SMTP id w11so7574872lfu.11
        for <devicetree@vger.kernel.org>; Sat, 21 Jan 2023 00:47:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2YTLThmpv4cn2/MrHGWOqrwv4z8fZYWsyGoTrJwWTZ4=;
        b=pBZRz9QbNDbN6j3B8e7fgWAqnKS7AS3L1aWds0Je3Y0DC9zNHT3o3bOqZJI7ybIOlm
         gUipeAlS4bXUqmX6s3s2dXwXum7IW/4uD+B6+Fw1sbDcRhNpT43ZXWmBuKMewK15JetP
         POZ9U4vTSN91TVAkGc0SWqHKsmvLneFFJ4MMHnVPsYwtlTg3GYwODXNV10AIhA8plvXQ
         Rmp1JO3Tq5gB8NySMp4ScD+h8DGmkPPzgwMfWZXP1mcYlrjyFGp2sAvP/x9RYFRcJHmb
         X8I5TGPF1Za5WZhxwE8yvzapXYia9rxyCyD5GS+jf2FGyKq7KRZ2uk5VaYQ/cu4oZBAV
         ZLrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2YTLThmpv4cn2/MrHGWOqrwv4z8fZYWsyGoTrJwWTZ4=;
        b=GLALXuSUnpwSowmMpvnR5Y9diB+w+omRRkmqAtoXifxQizmNSX9zkgh3fg0h9R4VHL
         9pwBKaBs9zafbXWKihvwGT6cnapX1HjNr04R8oWKtQneMacLUeXRJ/P959waojc/o2iJ
         oDIvg2xy0oWumWehdrJitO1zOCx004q1WGrz3vJnCwUoOgt8G1N6SOSs2pT5w8yeJgx6
         urZD6jl1fedA3IJLs8PI3paC2moUOVSnTQ5Q8nVszFBhlcYkzgalp4J/LJWoJgQTXp3q
         4gSI843c3SsesSjqi4E61tLDK52Qs3mOyN5ETNZ4UAPxC6piisODrkrHKiVSPr3jIc52
         dD0A==
X-Gm-Message-State: AFqh2krJNYBXM6UX+fCTMx2cG5v50Y2WHw9lY1DwTmjZ0vEvf5F3x186
        H0XNUulVz5VnilqW11W8SLlohA==
X-Google-Smtp-Source: AMrXdXuz4HheEdSEFU8haYbpupq3Tp4b+KV5QwfsX6By2llk+vFNZAkPAruXsOzpBen+K3Nga94zRw==
X-Received: by 2002:a05:6512:b84:b0:4cd:f060:d657 with SMTP id b4-20020a0565120b8400b004cdf060d657mr6659259lfv.51.1674290847647;
        Sat, 21 Jan 2023 00:47:27 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id q16-20020a2eb4b0000000b002862cc92061sm4158704ljm.76.2023.01.21.00.47.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Jan 2023 00:47:27 -0800 (PST)
Message-ID: <78f53b83-25a8-748b-de78-c6931555f8b7@linaro.org>
Date:   Sat, 21 Jan 2023 10:47:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 5/8] arm64: dts: qcom: sm8350: Fix DSI PHY compatibles
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
 <20230120210101.2146852-5-konrad.dybcio@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230120210101.2146852-5-konrad.dybcio@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/01/2023 23:00, Konrad Dybcio wrote:
> The compatibles were wrong, resulting in the driver not probing. Fix
> that.
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

