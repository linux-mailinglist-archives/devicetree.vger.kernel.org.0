Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C3294641C81
	for <lists+devicetree@lfdr.de>; Sun,  4 Dec 2022 12:02:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230006AbiLDLC2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 4 Dec 2022 06:02:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46118 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230039AbiLDLCV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 4 Dec 2022 06:02:21 -0500
Received: from mail-yb1-xb2b.google.com (mail-yb1-xb2b.google.com [IPv6:2607:f8b0:4864:20::b2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5334F186F2
        for <devicetree@vger.kernel.org>; Sun,  4 Dec 2022 03:02:09 -0800 (PST)
Received: by mail-yb1-xb2b.google.com with SMTP id y135so6636458yby.12
        for <devicetree@vger.kernel.org>; Sun, 04 Dec 2022 03:02:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Jn+nbs+RDzrDXBxlojnttncQWKHcSpNeFAwKRSBXAnE=;
        b=r2FlI3KjtvmuBbQyyEaY9cYIb4moQCz857LYXKTaDhBPpvxL8D36S5hHA/4907gU2S
         25C3pgqrmtkeXmCAgzH+ua+9/gG8xC6vW5ERoRZTRGDfLP+wPjvSnIR1pCYT1h3qJaI0
         Or7pM2vn7ViJfujeUpnva5dKeF7FC/H+JMOuWFRsQemgNT36MwPwfZNVWo6nwRqO+cH4
         eijE+HExz9ft7r5m8Qvi6p20HkDVIVwdR1OGoao4NaGTY6swwsWiZiaB0TasAi/ONx72
         zyZDlIgO8DmAI3c2iaUqoKM7zTgoqgwyxIAlWnQe54ecK3TD3o4LBTaWJ9gMr+3aT/qN
         OGyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Jn+nbs+RDzrDXBxlojnttncQWKHcSpNeFAwKRSBXAnE=;
        b=CwHkHks9mj/Fo/VmWVnwd4gxdfcmQS5bRrgh5l+w3yJimFYbtqDh8dJKEblSeaAJoy
         wmxqz7OBPy9hD1Fg2R2SFKZP+qs+uGWNcvXwBPWZJiuc0s6UwWh+Z4CCyLcY6NzXh5Fm
         UEQ1NLQDEDuPlTY5NWTl3Yi1HZ9QvkE4xaF4vgTXXmQoD4jmR4X2WxzYnC9hEHvTbGwg
         I9sYE12ny0Dl8Lc9PwFK/uHyunl4+vmiT4iJPbBuwbwocpkoJApIA1LKK/QBaz9VDnHm
         X7X1U1pe1wCYJ6RaQ24qFPpDmAKArzE/VqNt+j6tKG0FMAn4PhgQtKPl59GtlNS5+Isn
         XWow==
X-Gm-Message-State: ANoB5pkVLwzwuUd392S+gc3S+sVHC5lMXCFAiNn0LsqPgUevhoXdzKmG
        lK7d/AzaDH/hymlOEJIDTXHswAyQIiZcKr08bSmgbw==
X-Google-Smtp-Source: AA0mqf7bYv2aOUUhxWfhY2Np7NlPUwWF9GQeGNtMkZjSrBoguiBQFtbgLVUFrLUslWKVy6Ia6IvwAOH4SlUZWsl0pgU=
X-Received: by 2002:a25:dbcf:0:b0:6ff:f96f:2fd3 with SMTP id
 g198-20020a25dbcf000000b006fff96f2fd3mr2322289ybf.288.1670151728535; Sun, 04
 Dec 2022 03:02:08 -0800 (PST)
MIME-Version: 1.0
References: <20221204094438.73288-1-krzysztof.kozlowski@linaro.org> <20221204094438.73288-3-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221204094438.73288-3-krzysztof.kozlowski@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Sun, 4 Dec 2022 13:01:57 +0200
Message-ID: <CAA8EJprZFOnbdch5E5yO8CZq+5zEGQ2S_6OVwjmskArAqGHC1w@mail.gmail.com>
Subject: Re: [PATCH 3/6] arm64: dts: qcom: sa8155p-adp: fix no-mmc property
 for SDHCI
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 4 Dec 2022 at 11:44, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> There is no "no-emmc" property, so intention for SD/SDIO only nodes was
> to use "no-mmc":
>
>   qcom/sa8155p-adp.dtb: mmc@8804000: Unevaluated properties are not allowed ('no-emmc' was unexpected)
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sa8155p-adp.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry
