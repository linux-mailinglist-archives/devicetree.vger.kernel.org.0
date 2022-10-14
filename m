Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CABF15FF32B
	for <lists+devicetree@lfdr.de>; Fri, 14 Oct 2022 19:51:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229956AbiJNRvk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Oct 2022 13:51:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230048AbiJNRvi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Oct 2022 13:51:38 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CABEC1BE92D
        for <devicetree@vger.kernel.org>; Fri, 14 Oct 2022 10:51:36 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id ot12so12135989ejb.1
        for <devicetree@vger.kernel.org>; Fri, 14 Oct 2022 10:51:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=BRzfRKDxaeHVs/GEuc3GGv5B2DGMz09Y1rLFxYGdPvQ=;
        b=I3Yc27ujyXHn3kpemFL/t4UfgZ6B6RErsnMNAgfreS3Cunh0XiPoSf9816h489ap+X
         mvPVmo5Ne8pI0UiM2yQ3NvBnVcye05CPWEbXR9zUG6eysQiFII9iSDIMjRcXDiHOCUSk
         jbsqcRBowfBAGQobB0S3A7J3aY61u0YLMFd/4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BRzfRKDxaeHVs/GEuc3GGv5B2DGMz09Y1rLFxYGdPvQ=;
        b=2puwTBIif0bmWXJxucwJXtNY2F2Znj7428UeQ3XeicLyrWBeLR+Lshl726g0Af+7lX
         S5ItT5IE9lefHvjMBS1PMWJfHWvSHNNT/9bfizGdPtH9d3gK0qMdXAej2Hba4b05V2u/
         jd3BLGBCumQAdIPQl1ojwNmQweX5qyeoTR6IZCgAAUP/DVaP6xTtZhAT7wjLUR7SR/SI
         x3gspBvioNMyjYCFIhaM5JbkfNHVYznDgv7V6TThrHz6J2RWBT6mBNEybKWjvFwpmg7g
         KpnpMczE9b8LmSLtLr67nKQB/B/U7deRv3KlrqvQ9Ud2g3kmqg8pzbb/rxDtFljETDxq
         Dl2g==
X-Gm-Message-State: ACrzQf3MIe1aeUa/D9E3iJzC4RtM/t6zfWqxCLE8jayowLUa7bVPaOSc
        pLoVbkW0hh0OfdCc3vx040kaKKFO/NVhgOCP
X-Google-Smtp-Source: AMsMyM73pdtr371uFZbjzuSRjTTTr3fLN+Om1wYZXfp+mN7pjoV25eOh0tK/+DhMcZYEPAG/pksSfA==
X-Received: by 2002:a17:907:7286:b0:78e:22f9:f169 with SMTP id dt6-20020a170907728600b0078e22f9f169mr3526252ejc.119.1665769894810;
        Fri, 14 Oct 2022 10:51:34 -0700 (PDT)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com. [209.85.221.50])
        by smtp.gmail.com with ESMTPSA id ss5-20020a170907038500b0073c80d008d5sm1804259ejb.122.2022.10.14.10.51.32
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Oct 2022 10:51:33 -0700 (PDT)
Received: by mail-wr1-f50.google.com with SMTP id bu30so8706789wrb.8
        for <devicetree@vger.kernel.org>; Fri, 14 Oct 2022 10:51:32 -0700 (PDT)
X-Received: by 2002:adf:dd0c:0:b0:22e:4bf6:6c08 with SMTP id
 a12-20020adfdd0c000000b0022e4bf66c08mr4224068wrm.617.1665769892087; Fri, 14
 Oct 2022 10:51:32 -0700 (PDT)
MIME-Version: 1.0
References: <20221013184700.87260-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221013184700.87260-1-krzysztof.kozlowski@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 14 Oct 2022 10:51:18 -0700
X-Gmail-Original-Message-ID: <CAD=FV=V9ofaQJSHaLoU=HVyOvezMjFQ7HeqMVcCaEjYBn9U5zg@mail.gmail.com>
Message-ID: <CAD=FV=V9ofaQJSHaLoU=HVyOvezMjFQ7HeqMVcCaEjYBn9U5zg@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] arm64: dts: qcom: sc7180-trogdor-homestar: fully
 configure secondary I2S pins
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
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

On Thu, Oct 13, 2022 at 11:49 AM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> The Trogdor Homestar DTSI adds additional GPIO52 pin to secondary I2S pins
> ("sec_mi2s_active") and configures it to "mi2s_1" function.
>
> The Trogdor DTSI (which is included by Homestar) configures drive
> strength and bias for all "sec_mi2s_active" pins, thus the intention was
> to apply this configuration also to GPIO52 on Homestar.
>
> Reported-by: Doug Anderson <dianders@chromium.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Fixes: be0416a3f917 ("arm64: dts: qcom: Add sc7180-trogdor-homestar")

> ---
>
> Changes since v1:
> 1. New patch
>
> Not tested on hardware.
>
> Cc: Doug Anderson <dianders@chromium.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7180-trogdor-homestar.dtsi | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-homestar.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor-homestar.dtsi
> index 1bd6c7dcd9e9..bfab67f4a7c9 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-homestar.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-homestar.dtsi
> @@ -194,6 +194,12 @@ pinmux {
>                 pins = "gpio49", "gpio50", "gpio51", "gpio52";
>                 function = "mi2s_1";
>         };
> +
> +       pinconf {
> +               pins = "gpio49", "gpio50", "gpio51", "gpio52";
> +               drive-strength = <2>;
> +               bias-pull-down;
> +       };

Personally I wouldn't have replicated the "drive-strength" and
"bias-pull-down" here (nor would I have replicated the "function =
"mi2s_1"" in the node above but I didn't notice it before). ...but it
doesn't really hurt, the resulting dtb (after combining all includes)
isn't changed, and you've about to clean this up in your next patch.

Thus:

Reviewed-by: Douglas Anderson <dianders@chromium.org>
