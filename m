Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 14DAF703D90
	for <lists+devicetree@lfdr.de>; Mon, 15 May 2023 21:17:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244828AbjEOTRR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 May 2023 15:17:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33250 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244969AbjEOTRK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 May 2023 15:17:10 -0400
Received: from mail-yb1-xb30.google.com (mail-yb1-xb30.google.com [IPv6:2607:f8b0:4864:20::b30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5681A8A79
        for <devicetree@vger.kernel.org>; Mon, 15 May 2023 12:16:46 -0700 (PDT)
Received: by mail-yb1-xb30.google.com with SMTP id 3f1490d57ef6-ba6e90e9199so6233983276.0
        for <devicetree@vger.kernel.org>; Mon, 15 May 2023 12:16:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684178150; x=1686770150;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Rwj7HmALS+MhqKxDqaSbTilkC+1p80hDVSkNZedKxh0=;
        b=Z/v1dXdzOUiFmtfgUxmFRHGpqgKpSey28/NQ+BQBTgppLJQpbjRr8jX1muP48+dGdL
         QtuygUq2CfxdzmGf4jLLmeRIXZWgUU0hEihyJO3jPdFRBgJAFCn0BwHMN5hmL2siAxwS
         AwafwhW/YG2R9lZuURR63FG+VEhRz9A5gUpPtkOeNkwcJ6/2EMOMl+ECKW+dCrCGJih2
         XsRxHfaiUTrwPytPVY2v7qD97CUf1Fxt9BGaYLUo3ohEDuJ5zOey4K5KADtCK522elu2
         bkvNbUpnRFJ2tZgsJnBvUNY7arARsGbPFn6d6QSfsJFXrP+S5Hp0ubpZC5TSH1Wd7aln
         H9yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684178150; x=1686770150;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Rwj7HmALS+MhqKxDqaSbTilkC+1p80hDVSkNZedKxh0=;
        b=I6yMdL4xzax+KPwzxqcOOHHTIrJWJ723FiZhTay3FyZGOvp9orpiH9zRWzsEa4W2XI
         Cwfy/JlXLgX+3YxyK3+mN42HbqSVQCjwZnq9+MbP7Ri7PGpLqcvgbZXbwRDVg+IG7tGx
         6kHZ9zS8AJxHkHEntfqYIIunBuHyp/VlvX5Jz/8948/Jaa5J2b8nB8eEm5xbpqJuAdPE
         Z+L6V8+PpotRPrH555jkQKZXFwfmO3U2wUvTUFskPCQn95wXTqQF8XKYZmR5ePQoCllW
         1Nw69olUkRZ3h+koBs1x3e64uz5bAb6gSV8qpSf1up7VssqYC9/eTDxQuimefNoCZgEA
         tPNw==
X-Gm-Message-State: AC+VfDy087vyAGExTZ0LqpBb08XZ8COmtmC1vGBBRxQebV71UB4PIkLo
        OG9kzWovwpqwuuPBUXQni84f0XgDP69aEV0/mV7ekA==
X-Google-Smtp-Source: ACHHUZ5kUvl26OD9xqqPxASutqEUaQgc5O/02s/H6sttBXO1cFJw5y1PoVEbuPQlnpRfUnr0JFXQJ7ReuItD7KdrQvo=
X-Received: by 2002:a25:6ac6:0:b0:b9d:67a5:a725 with SMTP id
 f189-20020a256ac6000000b00b9d67a5a725mr31463639ybc.15.1684178149828; Mon, 15
 May 2023 12:15:49 -0700 (PDT)
MIME-Version: 1.0
References: <20230515-topic-rb2-bits-v1-0-a52d154a639d@linaro.org> <20230515-topic-rb2-bits-v1-2-a52d154a639d@linaro.org>
In-Reply-To: <20230515-topic-rb2-bits-v1-2-a52d154a639d@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Mon, 15 May 2023 22:15:39 +0300
Message-ID: <CAA8EJpq-TBeFLBDWya4Tesx9MQm02i+LEJohTXUyH+NrwHZT+g@mail.gmail.com>
Subject: Re: [PATCH 2/5] arm64: dts: qcom: qrb4210-rb2: Enable display out
To:     Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 15 May 2023 at 16:04, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> The RB2 has a HDMI output via an LT9611UXC bridge. Set it up.
>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Tested-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>  arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 88 +++++++++++++++++++++++++++++++-
>  1 file changed, 87 insertions(+), 1 deletion(-)

-- 
With best wishes
Dmitry
