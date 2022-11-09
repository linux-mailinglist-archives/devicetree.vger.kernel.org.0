Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 00B4B6231A4
	for <lists+devicetree@lfdr.de>; Wed,  9 Nov 2022 18:41:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231740AbiKIRlH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Nov 2022 12:41:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231737AbiKIRlF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Nov 2022 12:41:05 -0500
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64A0B13D72
        for <devicetree@vger.kernel.org>; Wed,  9 Nov 2022 09:41:03 -0800 (PST)
Received: by mail-ej1-x62a.google.com with SMTP id ft34so12421109ejc.12
        for <devicetree@vger.kernel.org>; Wed, 09 Nov 2022 09:41:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=te8A29WYMbVhDB59m6Z/SwQUKjQn/YZP/J3QgC3V384=;
        b=bGAxNdswHtq6pnZVdLLvKKBG2rRu2c+Ccr10Zhdkps/EU0jxoMMjvjuaLlsb/civrq
         PtMvZePt1JdxkKNVwlScM4fQmS+Ai7BOYvC82fMtdWWDepeLOhl/93tAXywD3/xoxhJe
         42XJwbgUGyrfEdFZnIzqMyQe/6BvTlicoD6nY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=te8A29WYMbVhDB59m6Z/SwQUKjQn/YZP/J3QgC3V384=;
        b=Fjy5aEkCCqQWbWCu6WnX7p8VhK2+nu+Ydj+pDxdm0/5beUJImmPgZnSgJBrwwNAl2+
         y2DqaC5PoB51LL+PhRJwf38MNq5J7KFU48Wl/mlIMPJGBXGV6pxXu/F1FbUO1Ow03c4/
         xnzqGg1b7wrwn/SVpRizw8JgRwumBLyzS1RGHqUzR6Ft9XbE3jMh06Odl5CYDMOR5bu1
         ThqOcBhKFJWyArjxjPTdUA6Wc06BA/L6PI3TkYcvN2Q9mLVmqc49r7fU5aZTgr4crSAb
         cpVwXt+VEt09dtsslZaFJdS1kOi3WIANtr5ni0Pm3lfYKrl5G7qbbwbcaC1z7YAvhvaP
         4wZg==
X-Gm-Message-State: ACrzQf2rgK9DVof89BAf4utRD6HLHu1fEk2HF61l4bEVa+AWkqgM/pqR
        ht59p5I8/QKpl0XFcEgpY/FWKkLj+/thelQ1
X-Google-Smtp-Source: AMsMyM7P0ynzMJHOA+Au84Ax5EmG/jTOMODIOAPgnPOLUz35cLyU1HB9MRgAFX3+emtSPa91Tgw+nA==
X-Received: by 2002:a17:906:a4a:b0:782:686d:a1b6 with SMTP id x10-20020a1709060a4a00b00782686da1b6mr57785655ejf.232.1668015661752;
        Wed, 09 Nov 2022 09:41:01 -0800 (PST)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com. [209.85.221.50])
        by smtp.gmail.com with ESMTPSA id bc18-20020a056402205200b00461cf924029sm7200401edb.42.2022.11.09.09.40.59
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Nov 2022 09:41:00 -0800 (PST)
Received: by mail-wr1-f50.google.com with SMTP id y16so26795911wrt.12
        for <devicetree@vger.kernel.org>; Wed, 09 Nov 2022 09:40:59 -0800 (PST)
X-Received: by 2002:a5d:6488:0:b0:22b:3b0b:5e72 with SMTP id
 o8-20020a5d6488000000b0022b3b0b5e72mr39666063wri.138.1668015659395; Wed, 09
 Nov 2022 09:40:59 -0800 (PST)
MIME-Version: 1.0
References: <20221109055132.609-1-quic_sibis@quicinc.com>
In-Reply-To: <20221109055132.609-1-quic_sibis@quicinc.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 9 Nov 2022 09:40:47 -0800
X-Gmail-Original-Message-ID: <CAD=FV=Wdrb27XCmj+VoNXtvFOYHGPkWXJujzZogzLK2ZMWgxTw@mail.gmail.com>
Message-ID: <CAD=FV=Wdrb27XCmj+VoNXtvFOYHGPkWXJujzZogzLK2ZMWgxTw@mail.gmail.com>
Subject: Re: [PATCH V3 1/2] arm64: dts: qcom: sc7280: Mark all Qualcomm
 reference boards as LTE
To:     Sibi Sankar <quic_sibis@quicinc.com>
Cc:     bjorn.andersson@linaro.org, jinghung.chen3@hotmail.com,
        agross@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        konrad.dybcio@somainline.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Nov 8, 2022 at 9:51 PM Sibi Sankar <quic_sibis@quicinc.com> wrote:
>
> When the modem node was re-located to a separate LTE source file
> "sc7280-herobrine-lte-sku.dtsi", some of the previous LTE users
> weren't marked appropriately. Fix this by marking all Qualcomm
> reference devices as LTE.
>
> Suggested-by: Douglas Anderson <dianders@chromium.org>
> Fixes: d42fae738f3a ("arm64: dts: qcom: Add LTE SKUs for sc7280-villager family")
> Signed-off-by: Sibi Sankar <quic_sibis@quicinc.com>
> ---
>
> v3:
>  * Fix incorrect tag usage [Krzysztof]
>
>  arch/arm64/boot/dts/qcom/sc7280-idp.dtsi | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> index 4884647a8a95..ca09367abb6c 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> @@ -13,6 +13,7 @@
>  #include "pmk8350.dtsi"
>
>  #include "sc7280-chrome-common.dtsi"
> +#include "sc7280-herobrine-lte-sku.dtsi"

I think you need to _remove_ the include from the "idp.dts" file now,
right? Otherwise it gets included twice.
