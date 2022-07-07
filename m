Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BD4B056A578
	for <lists+devicetree@lfdr.de>; Thu,  7 Jul 2022 16:33:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235185AbiGGOdU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jul 2022 10:33:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54354 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235576AbiGGOdT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jul 2022 10:33:19 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B54352F653
        for <devicetree@vger.kernel.org>; Thu,  7 Jul 2022 07:33:17 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id r6so11972345edd.7
        for <devicetree@vger.kernel.org>; Thu, 07 Jul 2022 07:33:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=EoyTQr6cMk+DYKdiMg3NC5XJCceUe1dyjyTAOmKK+S0=;
        b=lroVGXv6SSW4e0FiWRd/MeL568MO0S+YQA+5UXYvLt0cA7bV5CNRO2Vu4OlmIKq1DE
         StvwBV4/hBbWlM69Ll0CA5hEfffF8nojIZ1YTZDOCYGfu8poE/e9HCaQjPz9cb/b1OCA
         H0iQiOnI53icrgv0o5MjZQZTuGu8PZlghwbAM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=EoyTQr6cMk+DYKdiMg3NC5XJCceUe1dyjyTAOmKK+S0=;
        b=uqB9ozhRGd4B9gtuTVs0/v04NujMEqrO+HhnqZyGyJbT1dnqpQgZiIzpRVHdE+2g/M
         TB1ex0+ATbFaBXNXu+MY+cDJYtvus3QVEulGVjxAw9GVf7MWZuwVvf7UOMcp+zGTxNOw
         d5ETdIIYhlipxrHx11uXpRB3Qb7c6M1fQWer3moMWwqeTpkZ1HZGzWc+Ryu7P/hQ8K78
         aHL/g5v/NyaLbTvYhn92N3ZJyx4hIvIqJK+ElKmuEocsRNPPJDqgOxDeHbgJ4A0nS58F
         RX11etHq1TcAa5lsCxVpCsqERo5nguReX9kSZPGLLsmZv768pUEKu9wVlhwiURb7bSjG
         1rTQ==
X-Gm-Message-State: AJIora96AMApOSSbvHzOHOUf4M+VyACFCCcAFQ0TROA8DIYAp9qkKem9
        UhEajRC7sZCCgD7qWIxxy8Zmea7xZ898kuZbdyA=
X-Google-Smtp-Source: AGRyM1ubZTjtzLEXx85bufYtbdYSzn1uTL6duezovAEmpxF8P+DXT9LYa2P82dohmAbGqAEzonn4mA==
X-Received: by 2002:a05:6402:35c3:b0:43a:9d33:4084 with SMTP id z3-20020a05640235c300b0043a9d334084mr3730131edc.80.1657204396063;
        Thu, 07 Jul 2022 07:33:16 -0700 (PDT)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com. [209.85.128.53])
        by smtp.gmail.com with ESMTPSA id cx19-20020a05640222b300b0043a7cdfac46sm5792350edb.23.2022.07.07.07.33.14
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Jul 2022 07:33:15 -0700 (PDT)
Received: by mail-wm1-f53.google.com with SMTP id bi22-20020a05600c3d9600b003a04de22ab6so10838779wmb.1
        for <devicetree@vger.kernel.org>; Thu, 07 Jul 2022 07:33:14 -0700 (PDT)
X-Received: by 2002:a05:600c:3ace:b0:3a0:4ea4:5f77 with SMTP id
 d14-20020a05600c3ace00b003a04ea45f77mr4905076wms.57.1657204394580; Thu, 07
 Jul 2022 07:33:14 -0700 (PDT)
MIME-Version: 1.0
References: <20220707075151.67335-1-krzysztof.kozlowski@linaro.org> <20220707075151.67335-4-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220707075151.67335-4-krzysztof.kozlowski@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 7 Jul 2022 07:33:02 -0700
X-Gmail-Original-Message-ID: <CAD=FV=W8mDtb0Bg4oAFdzn5m+XeXc_aiCrWVMPAz-ZhO1errPw@mail.gmail.com>
Message-ID: <CAD=FV=W8mDtb0Bg4oAFdzn5m+XeXc_aiCrWVMPAz-ZhO1errPw@mail.gmail.com>
Subject: Re: [PATCH 3/5] ARM: dts: qcom: align SDHCI reg-names with DT schema
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        Linux MMC List <linux-mmc@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Jul 7, 2022 at 1:04 AM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> DT schema requires SDHCI reg names to be hc/core without "_mem" suffix,
> just like TXT bindings were expecting before the conversion.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  arch/arm/boot/dts/qcom-apq8084.dtsi | 4 ++--
>  arch/arm/boot/dts/qcom-ipq4019.dtsi | 1 +
>  arch/arm/boot/dts/qcom-msm8226.dtsi | 6 +++---
>  arch/arm/boot/dts/qcom-msm8974.dtsi | 6 +++---
>  arch/arm/boot/dts/qcom-sdx65.dtsi   | 2 +-
>  5 files changed, 10 insertions(+), 9 deletions(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
