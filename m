Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 79BB663FD46
	for <lists+devicetree@lfdr.de>; Fri,  2 Dec 2022 01:50:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230238AbiLBAuG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Dec 2022 19:50:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41244 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230193AbiLBAuF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Dec 2022 19:50:05 -0500
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8DC93BBBFD
        for <devicetree@vger.kernel.org>; Thu,  1 Dec 2022 16:50:04 -0800 (PST)
Received: by mail-ed1-x529.google.com with SMTP id r26so4525704edc.10
        for <devicetree@vger.kernel.org>; Thu, 01 Dec 2022 16:50:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7vv0AAcoPBw8lAAEAG1SUbk7k5AR+sWuTiUY/+9wW8E=;
        b=XABptQ1cyK5zAoublcuBrzvzHSNPn16lIrlJcEqRnP+m+ysoIAUyPru77RsPjf2UMF
         fMG6NQ7eKRkcs5zlYDFv8UuNGmFf3xUC3ZHwbjhmB+5u0AB61KEdHEoQQY+fVp0A+bS4
         tV71XbSKazWh5SOHR471oGaqbuS9Izn97lnwc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7vv0AAcoPBw8lAAEAG1SUbk7k5AR+sWuTiUY/+9wW8E=;
        b=GPdu/fJ2YfZ0PomqVIQNck8oXvrN75Tlw28drMkOtoukqCnkW9rskpGawQwU0v472C
         ma5T0T8Zj+YpSKFjy6FSjYK/35OKX9OQArPtVxZv9S9yYqaEU/ScvoliWkd8uPlqibkG
         O/JpmabveFcjRiVcrGP4h4f5ezurmltJswl1+PWQLaTL5Xy0yIowDyG6ZS7r77GRVq9x
         OjSZniBoZwANgiaPz0Gcwry9/K0GMcz7uW8pYuw2AlsPohJoSYMGJMg/GzmRjXp7/EdY
         Gk/BfyUcUiSwIzTS4O1Lek3q3BeolIKA9I52TERG6yy5ydO2kqjPABJdDKhbQver+9Bk
         n+aA==
X-Gm-Message-State: ANoB5pnHwfr18XNIN3KihIYPd1DP1XyHbJOT34mYV4D/UbT1nXVTjIry
        OO3pazP3srSq3RF+ppYoJb2Lw5IpT9bc7Bni
X-Google-Smtp-Source: AA0mqf7OPxqamXIb0yNS/77GVvnSRRHrY235Y9hRSHB2f1rNWFGSurV3n6k6Abi9SJVbAcxswpOqww==
X-Received: by 2002:a05:6402:444c:b0:462:2e27:3bf2 with SMTP id o12-20020a056402444c00b004622e273bf2mr62266497edb.13.1669942202799;
        Thu, 01 Dec 2022 16:50:02 -0800 (PST)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com. [209.85.221.49])
        by smtp.gmail.com with ESMTPSA id e23-20020aa7d7d7000000b0045b910b0542sm2274909eds.15.2022.12.01.16.50.02
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Dec 2022 16:50:02 -0800 (PST)
Received: by mail-wr1-f49.google.com with SMTP id y16so5580709wrm.2
        for <devicetree@vger.kernel.org>; Thu, 01 Dec 2022 16:50:02 -0800 (PST)
X-Received: by 2002:adf:fb4c:0:b0:236:5270:735e with SMTP id
 c12-20020adffb4c000000b002365270735emr31203152wrs.659.1669942201820; Thu, 01
 Dec 2022 16:50:01 -0800 (PST)
MIME-Version: 1.0
References: <20221118164201.321147-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221118164201.321147-1-krzysztof.kozlowski@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 1 Dec 2022 16:49:49 -0800
X-Gmail-Original-Message-ID: <CAD=FV=Vo9zbsjgYEn0eBkC8eKRceg6v4u1g=w6nSYHNctFQWxg@mail.gmail.com>
Message-ID: <CAD=FV=Vo9zbsjgYEn0eBkC8eKRceg6v4u1g=w6nSYHNctFQWxg@mail.gmail.com>
Subject: Re: [RFT PATCH v2 1/2] arm64: dts: qcom: sdm845-db845c: drop unneeded qup_spi0_default
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Nov 18, 2022 at 8:42 AM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> The qup_spi0_default pin override is exactly the same as one already in
> sdm845.dtsi.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>
> ---
>
> Cc: Doug Anderson <dianders@chromium.org>
>
> Changes since v1:
> 1. New patch.
> ---
>  arch/arm64/boot/dts/qcom/sdm845-db845c.dts | 8 --------
>  1 file changed, 8 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
> index 02dcf75c0745..56a7afb697ed 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
> +++ b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
> @@ -1274,11 +1274,3 @@ ov7251_ep: endpoint {
>                 };
>         };
>  };
> -
> -/* PINCTRL - additions to nodes defined in sdm845.dtsi */
> -&qup_spi0_default {
> -       config {
> -               drive-strength = <6>;
> -               bias-disable;
> -       };
> -};

I guess it's more of a question for what Bjorn thinks, but I view the
fact that the drive-strength / bias are in the dtsi file to begin with
as more as a bug in commit 8f6e20adaaf3 ("arm64: dts: qcom: sdm845:
enable dma for spi"), which is where these properties were introduced
to sdm845.dtsi.

The historical guidance from Bjorn was that things like
"drive-strength" and "bias" didn't belong in the SoC dtsi file. Later
we came to an agreement that it could be OK to put drive-strength in
the SoC dtsi file but that bias was still problematic because it meant
ugly "/delete-property/" stuff in the board dtsi files [1].

[1] https://lore.kernel.org/r/YnSQvyAN3v69an8k@ripper
