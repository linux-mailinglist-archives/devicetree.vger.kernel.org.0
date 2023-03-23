Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C06696C65E4
	for <lists+devicetree@lfdr.de>; Thu, 23 Mar 2023 11:57:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231137AbjCWK5c (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Mar 2023 06:57:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39644 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230399AbjCWK5K (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Mar 2023 06:57:10 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E34C1555A
        for <devicetree@vger.kernel.org>; Thu, 23 Mar 2023 03:56:50 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id x3so84539708edb.10
        for <devicetree@vger.kernel.org>; Thu, 23 Mar 2023 03:56:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679569008;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Y6+PtX2uAhZSqkwPYfEsl+TAxiQ67+WZc+Q3dIOuMcE=;
        b=QF4wyHEiRl6KTQlDrBxHTuc6zD+l1XJy36k0jCRJcisHJMysi95BCcxghDI7ienVF4
         BAEKND3VKq8+GSUllrtcaWuZDNXV0rGoY0IqjiLgRHSkPxsB7u+Xf++DTaBcGAYUQLYz
         kjEIHUjgUpYMM0Q98E50IXWFIWhUwewgcWvrq5wVTxBirQejr7KnBmoZJMLeMjqZ7sfo
         U/WWyzEPvK32ireuXnw37q0HhoPfpqAUQLMBkS6Yxx8LsdrvcLfr3k20plquW3iRFgCu
         b/oVclZ0R16z0dTwU7saEwa0pubJpafm+pyx/GUeq9sy45ScR8Wc4gtYfpLbOrIB1vJb
         WwIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679569008;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Y6+PtX2uAhZSqkwPYfEsl+TAxiQ67+WZc+Q3dIOuMcE=;
        b=tKCtll20HcsORVfI288Sp8x44wet0vk307JrboP5ydriG9CTA754Ls8MvsVBGQioDv
         v3rHV4B3fOl1fnXRmrrD6+2OsQkIQFaujhNRG+95+EPJZeH/Xe4KmjcRWHaMXKgFIndz
         nNlwxen3jID+Y0ZjmqsNkxtLOUMxNEtqrHKdGaAHfUyJBecKYXbtDkNnEoIP1ns/RHQ/
         w+WIUz+3sP3peUmYRov+IpyopK3gnMs6KKE84wWmEBWZPyFbq0oy+48gpitB0D6+8Ace
         BTbMRLA562oN07FjlqaUO9xXjM0m/UAwnh8u0DRUUZ1slwGRavq7A+X8Aze+TsJy+6pf
         XRWQ==
X-Gm-Message-State: AO0yUKUGj9oVC5/fUxINt/mCORvhiMXfhCQW1oKrcGEW5ml7gS7yOdix
        FJWc2iKAUxg+7WNRePavr6pqzA==
X-Google-Smtp-Source: AK7set/mMtMtX2/IfUIgWtPTy/0NZHA5/5OfRAjpSqAKYNcqEPYo/cIqYY26nGF46BVIjlQl/PeqOA==
X-Received: by 2002:a17:906:d057:b0:932:e141:29be with SMTP id bo23-20020a170906d05700b00932e14129bemr10221290ejb.75.1679569008614;
        Thu, 23 Mar 2023 03:56:48 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:a665:ed1e:3966:c991? ([2a02:810d:15c0:828:a665:ed1e:3966:c991])
        by smtp.gmail.com with ESMTPSA id v19-20020a1709067d9300b008cff300cf47sm8473200ejo.72.2023.03.23.03.56.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Mar 2023 03:56:48 -0700 (PDT)
Message-ID: <3b2e7b07-7598-45af-0dce-a60310aa5d60@linaro.org>
Date:   Thu, 23 Mar 2023 11:56:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH V2 2/2] arm64: dts: qcom: ipq5332: add support for the
 RDP468 variant
Content-Language: en-US
To:     Kathiravan T <quic_kathirav@quicinc.com>, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230323093120.20558-1-quic_kathirav@quicinc.com>
 <20230323093120.20558-3-quic_kathirav@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230323093120.20558-3-quic_kathirav@quicinc.com>
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

On 23/03/2023 10:31, Kathiravan T wrote:
> Add the initial device tree support for the Reference Design
> Platform(RDP) 468 based on IPQ5332 family of SoCs. This patch carries the
> support for Console UART, SPI NOR, eMMC.
> 
> Signed-off-by: Kathiravan T <quic_kathirav@quicinc.com>
> ---
> Changes in V2:
> 	- Moved the 'reg' property after 'compatible'
> 
>  arch/arm64/boot/dts/qcom/Makefile           |   1 +
>  arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts | 103 ++++++++++++++++++++
>  2 files changed, 104 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts

Hi,

Your v1 was reported that it does not build. Does this patch build fine?

Best regards,
Krzysztof

