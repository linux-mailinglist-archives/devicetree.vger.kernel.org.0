Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B2489663ED7
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 12:02:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232988AbjAJLCd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Jan 2023 06:02:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238583AbjAJLAZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Jan 2023 06:00:25 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2D3D15FD8
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 02:57:49 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id bn26so11323167wrb.0
        for <devicetree@vger.kernel.org>; Tue, 10 Jan 2023 02:57:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QwMmWNLX2y8MpAjf6ry+EobxgkOwiWRfEsk7ygSmgzY=;
        b=DrClkZsArypwr8k+9/kbVOVWQnm9NskkyHpvznfe6qIJW/JR9vZo4Uhb09vtjUx6u5
         qwH4j2NiUpX5MIr08KzR7kV1oq/1cANv7j/qPY5bL5UdwJwNC25VCOhA0nDxusvrIZZY
         kOI7GpeBjK7EDsHqRTv3XI/E+R6AeJLWAoFrovOSmolvy4BPVFk8iCtl/HMJ5xFW/DRo
         jwUtNpB4i4sgx7FOHtGy5J92rFOOFZJPYyGEbz4v+8uT2iiOXoUqAr5bIymsp8VqyrbP
         EyQVIDQiIYB6c3Nw39bjS0sMy5GkkauSs8GXZZu2crx2Y00W8ED+Yx7G+OSVvETXIlaM
         XREg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QwMmWNLX2y8MpAjf6ry+EobxgkOwiWRfEsk7ygSmgzY=;
        b=HHUBeoB2OpfV0JctKpJTHfpZRc1aK/p1W7d20kOO/Y4s2+w+0MlYeCl9xVjJRmJsFV
         N6UwdR4tuUs2kJ+pClICCrx6+Ei6+ndBvGWjWSBWZsyogsyYlWY+w2z6hzHFLg1upO5e
         8q4k16p4Tilafde6e2A/POcp1Vwrd0FMWRw9KZYiWYnzYsz8kzM64UNJC0+S/vm3yJ34
         vyaPe8+s0x13y2Od1U+PsMp/iGbXY3pwGEBg6rJnrFJpJpBq58B6gaD1RBiYrm2ju2mP
         hIV3dkWX2ZUI3NdBvny232ioxOK8O4fJKp7tfGhhCD8Q60cpfOOHZ1FLQ3wUcf5dMNZx
         pB0Q==
X-Gm-Message-State: AFqh2kqqvx7uMqCFlosnQIKPnVRLJCN/4dE3EIBHSkW2IGM/zBCrwF/D
        609HNj5RsVbeNyfMiHUaK1gqsw==
X-Google-Smtp-Source: AMrXdXuvw8YyDv5tdJvBdsr8CbjN1X9oLelluTyUiZn8VGMORPTVVSk4ZPd+K/igi3SS+XivVJM9ZQ==
X-Received: by 2002:a5d:4942:0:b0:2bc:8073:760c with SMTP id r2-20020a5d4942000000b002bc8073760cmr3034801wrs.17.1673348268438;
        Tue, 10 Jan 2023 02:57:48 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id a10-20020adfdd0a000000b002bb6b45ab57sm8962615wrm.85.2023.01.10.02.57.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jan 2023 02:57:47 -0800 (PST)
Message-ID: <6a0b4fff-e012-92df-c2fb-82184eba8aef@linaro.org>
Date:   Tue, 10 Jan 2023 11:57:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v2 1/8] arm64: dts: qcom: sc7280: Extract audio nodes from
 common idp dtsi file
Content-Language: en-US
To:     Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>,
        agross@kernel.org, andersson@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_rohkumar@quicinc.com, srinivas.kandagatla@linaro.org,
        dianders@chromium.org, swboyd@chromium.org, judyhsiao@chromium.org,
        konrad.dybcio@linaro.org, mka@chromium.org
References: <1672925875-2107-1-git-send-email-quic_srivasam@quicinc.com>
 <1672925875-2107-2-git-send-email-quic_srivasam@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1672925875-2107-2-git-send-email-quic_srivasam@quicinc.com>
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

On 05/01/2023 14:37, Srinivasa Rao Mandadapu wrote:
> Split common idp dtsi file into audio specific dtsi and common
> idp dtsi file.
> 
> It is required to isolate idp and crd-rev3 platform device tree nodes
> and convert crd-rev3 platform device tree nodes into audioreach specific
> device tree nodes.
> 
> Signed-off-by: Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
> Tested-by: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
> ---

Please include a changelog - either per patch or in cover letter.

>  arch/arm64/boot/dts/qcom/sc7280-audio-idp.dtsi | 135 +++++++++++++++++++++++++
>  arch/arm64/boot/dts/qcom/sc7280-crd-r3.dts     |   1 +
>  arch/arm64/boot/dts/qcom/sc7280-idp.dtsi       | 126 -----------------------
>  3 files changed, 136 insertions(+), 126 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/qcom/sc7280-audio-idp.dtsi
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7280-audio-idp.dtsi b/arch/arm64/boot/dts/qcom/sc7280-audio-idp.dtsi
> new file mode 100644
> index 0000000..d1aea28
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/sc7280-audio-idp.dtsi
> @@ -0,0 +1,135 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * sc7280 Audio IDP board device tree source (common between SKU1 and SKU2)
> + *
> + * Copyright (c) 2022, The Linux Foundation. All rights reserved.
> + */
> +
> +/{
> +   /* BOARD-SPECIFIC TOP LEVEL NODES */

Still wrong indentation.

> +	sound: sound {
> +		compatible = "google,sc7280-herobrine";
> +		model = "sc7280-wcd938x-max98360a-1mic";
> +




Best regards,
Krzysztof

