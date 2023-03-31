Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 985D96D14DB
	for <lists+devicetree@lfdr.de>; Fri, 31 Mar 2023 03:15:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229759AbjCaBP4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Mar 2023 21:15:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35204 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229741AbjCaBPn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Mar 2023 21:15:43 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5595118FB0
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 18:15:20 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id o20so18559473ljp.3
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 18:15:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680225318;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6BmwUHFXtEYfgj+i7XENXy4osQG3AVupjWHWnaVA6Og=;
        b=CQLs4bVuM39FyPTpQXGrV/EeAfJUvDf9eNfn25n75Fh36nMj/TXSEFLdhcVQoPMA/Q
         df6IUoo48UfqE+zwCiwMilAR+5jv2bQ58JLA/pjmGIlZ/2kbfMggG1EsHaifNVOoTeOG
         1lHEgcwv3hk12xjZIJOEPZPcbCOSytDiOhpz7yIiPUV5jCH14VsopSRSKuvHjLOeL5DE
         KIwsqHWiobN3rBDr/jCRigo9BDMf7yxFPZBBxbCHpQ10rzlf1LalfsVegwpDUSXYqyaz
         /32mjmKYCsnpNC78Kj1CDm3puL46Z5R3+0/Dlnoc6h2RewVap7duA4mph3Ctzx6w6e8Q
         hY3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680225318;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6BmwUHFXtEYfgj+i7XENXy4osQG3AVupjWHWnaVA6Og=;
        b=FYoqObNzobbB9lhO8eZ1ahwoegajCKJ4ZNLCKAT0kS/zzbGDyXRZg7kK8UMfgxJh/i
         ja8HT/1OXRPqHrkdGrDFVg5TEQOMmC3pmFork+goBCy1a25E8jA236UvoJhvonrXGGN0
         h6sMr4PhjqqTKFXoQARBxyejlJ/u8KFNO3+/t4ays75GS0XPL3SDNBapLTTAYwVtduj/
         OAPPPw7Uk6XgJIkVaQ7V2/Wxcii+bpkxJ2QK8tjcxvwX7abZt0EKPHo7NM7o4bVuncSL
         6luqgq2r4aMlx6OAvVwF9yYi0INF1YMTLQMIVsSqkGSFSzF+V/yFqKTkjDJk+luTvofJ
         KuWA==
X-Gm-Message-State: AAQBX9f66MAY8qxgHMx0cKBdId8++LQd9GyvKba/L49HVfnFKWBwADHn
        wpKrCqzxLcUg0/6EbTutKI/atQ==
X-Google-Smtp-Source: AKy350bR6P7lEDfTAiZfmi7s3E644OFgiDFMieWSdFEl5Kbd0ffdrPX37s421l8YMkMxScF0XnGiIw==
X-Received: by 2002:a2e:9948:0:b0:298:a8d4:7236 with SMTP id r8-20020a2e9948000000b00298a8d47236mr7316622ljj.6.1680225318164;
        Thu, 30 Mar 2023 18:15:18 -0700 (PDT)
Received: from [192.168.1.101] (abxj225.neoplus.adsl.tpnet.pl. [83.9.3.225])
        by smtp.gmail.com with ESMTPSA id w14-20020a2e9bce000000b00295a5aa9d05sm130739ljj.120.2023.03.30.18.15.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Mar 2023 18:15:17 -0700 (PDT)
Message-ID: <d09a9080-c141-02cd-504e-b34e9e68f56f@linaro.org>
Date:   Fri, 31 Mar 2023 03:15:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v3 0/5] SM8[12]50 GPU speedbin
Content-Language: en-US
To:     Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Akhil P Oommen <quic_akhilpo@quicinc.com>
References: <20230331-topic-konahana_speedbin-v3-0-2dede22dd7f7@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230331-topic-konahana_speedbin-v3-0-2dede22dd7f7@linaro.org>
Content-Type: text/plain; charset=UTF-8
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



On 31.03.2023 03:14, Konrad Dybcio wrote:
> This series brings SM8[12]50 (A6[45]0) speedbin support along with a
> touch-up for 8150, allowing Adreno to cooperate with the display hw.
> 
> Tested on Xperia 5 II (SM8250 Edo PDX206) and Xperia 5 (SM8150 Kumano
> Bahamut).
> 
> v2 -> v3:
> - Don't swap speedbin 2 (with fuse val 3) and speedbin 3 (with fuse val 2)
>   on SM8250 (no functional change, this is all a software construct but
>   let's stick with the official mapping) [2/5], [5/5]
> 
> I kept all of the tags in good faith.
v2: https://lore.kernel.org/linux-arm-msm/20230120172233.1905761-1-konrad.dybcio@linaro.org/

Konrad
> 
> v1 -> v2:
> - Drop bindings patches (Applied by Srini)
> - Remove leftover comment about missing speedbin in 8150 DTSI (Marijn)
> - Collect tags
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
> Konrad Dybcio (5):
>       drm/msm/a6xx: Add support for A640 speed binning
>       drm/msm/a6xx: Add support for A650 speed binning
>       arm64: dts: qcom: sm8150: Don't start Adreno in headless mode
>       arm64: dts: qcom: sm8150: Add GPU speedbin support
>       arm64: dts: qcom: sm8250: Add GPU speedbin support
> 
>  arch/arm64/boot/dts/qcom/sm8150-hdk.dts |  5 +++++
>  arch/arm64/boot/dts/qcom/sm8150-mtp.dts |  5 +++++
>  arch/arm64/boot/dts/qcom/sm8150.dtsi    | 31 +++++++++++++++++++++----------
>  arch/arm64/boot/dts/qcom/sm8250.dtsi    | 23 ++++++++++++++++++++++-
>  drivers/gpu/drm/msm/adreno/a6xx_gpu.c   | 31 +++++++++++++++++++++++++++++++
>  5 files changed, 84 insertions(+), 11 deletions(-)
> ---
> base-commit: a6d9e3034536ba4b68ac34490c02267e6eec9c05
> change-id: 20230331-topic-konahana_speedbin-abe0c725f244
> 
> Best regards,
