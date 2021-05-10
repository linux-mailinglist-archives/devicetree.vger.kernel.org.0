Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2BB60378104
	for <lists+devicetree@lfdr.de>; Mon, 10 May 2021 12:16:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230254AbhEJKRL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 May 2021 06:17:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230137AbhEJKRH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 May 2021 06:17:07 -0400
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com [IPv6:2607:f8b0:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 657CEC06175F
        for <devicetree@vger.kernel.org>; Mon, 10 May 2021 03:16:02 -0700 (PDT)
Received: by mail-ot1-x333.google.com with SMTP id g15-20020a9d128f0000b02902a7d7a7bb6eso13932935otg.9
        for <devicetree@vger.kernel.org>; Mon, 10 May 2021 03:16:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=R+Np7LVkFO+k//t+gSpypT1AotQ2jFPBKtuFKkN/dtM=;
        b=NOf6KVcKkXUHmYGNaZrDIRDFjPrVj5hSBSXZvZ6wEKVbPppOn2XyuDHQUuZTnAguC5
         f7LWad8CNQcI+bL+p/MhoxbGj+OaAOMwgO81lXFFAObxwYeu3qzXFS3oU6Brn9L1Z43P
         HpvXBxBFBkT12DCd8P+1sp5V0TSXFCxlP9vnseywG++1JWvExhXsHSDk3e24v33mDoKj
         7RL0vqeD6sI5QDd85aCFRoCRyMcv/L6wS+B30LJ5VNltabcy5Ip7u2CPsQtI9nzagTtA
         hazeRxWpA/BdCmRIuXXxMoFT2X7NQR6BS+nt1jr+C+6AXERjbAMmy2b53nsX3xFpHKpu
         mIXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=R+Np7LVkFO+k//t+gSpypT1AotQ2jFPBKtuFKkN/dtM=;
        b=OWRao8i/J9ep85RG6UjcnkTnXGhuvztLj4FZYRuEyKLeMH19fLvkrYVO6ON8bRvD3K
         g10nPJy73Mm8mKW9Pv6GwMK5vsAtRe6Qr+h09iNct07Q/kInLJ0w2QhvsEWiQG0jN/xm
         TrKnTxw6e4DbREGqXeLcZxMbAN4GtJnF5hHS7NrIy3LjTHKygPiqK/fdJe/Sl3ZQthHm
         U5MrdAa3boS1TxVkfyvSbnHJ3hZe1D2aQDcdWMAcLK7uBLUGXeYLFoV+ivt077lAn0PR
         nwAjtoYpIWf4IyiHvm6hm0yxmfisYfnlLI3C67uX3JyqhVaZCEKjQ2kvEQ1qkwyGujaT
         CzXw==
X-Gm-Message-State: AOAM531jaO8wQWjU97q7Al1KXkop6SKfdqka9y3bcszBkfvcTHneEKSl
        p/Q9EODPWd4thMykjZlIWbPzdaslP2P1PJT4Fx0QFQ==
X-Google-Smtp-Source: ABdhPJwhjiJoeOC7z4YX/ekzR8uqaJsU9pnO8oufk0ZHM5XWmCtb1cqAb1cMFEm6N5tKL9UB7Yqms7hAE7yVzz3HO3s=
X-Received: by 2002:a9d:1d01:: with SMTP id m1mr20879338otm.155.1620641761839;
 Mon, 10 May 2021 03:16:01 -0700 (PDT)
MIME-Version: 1.0
References: <20210510070359.3837925-1-vkoul@kernel.org>
In-Reply-To: <20210510070359.3837925-1-vkoul@kernel.org>
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
Date:   Mon, 10 May 2021 15:45:50 +0530
Message-ID: <CAH=2NtxZ6pvhF1U5gKK06wDqKLexzANJxq98uENZMn098HmYPQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sm8350: use interconnect enums
To:     Vinod Koul <vkoul@kernel.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        linux-arm-msm@vger.kernel.org, Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 10 May 2021 at 12:34, Vinod Koul <vkoul@kernel.org> wrote:
>
> Add interconnect enums instead of numbers now that interconnect is in
> mainline.
>
> Signed-off-by: Vinod Koul <vkoul@kernel.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8350.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
> index ed0b51bc03ea..a8cd224a2f31 100644
> --- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
> @@ -656,7 +656,7 @@ mpss: remoteproc@4080000 {
>                                         <&rpmhpd 12>;
>                         power-domain-names = "load_state", "cx", "mss";
>
> -                       interconnects = <&mc_virt 0 &mc_virt 1>;
> +                       interconnects = <&mc_virt MASTER_LLCC &mc_virt SLAVE_EBI1>;
>
>                         memory-region = <&pil_modem_mem>;
>
> @@ -1063,7 +1063,7 @@ cdsp: remoteproc@98900000 {
>                                         <&rpmhpd 10>;
>                         power-domain-names = "load_state", "cx", "mxc";
>
> -                       interconnects = <&compute_noc 1 &mc_virt 1>;
> +                       interconnects = <&compute_noc MASTER_CDSP_PROC &mc_virt SLAVE_EBI1>;
>
>                         memory-region = <&pil_cdsp_mem>;
>
> --
> 2.26.3

LGTM, so:
Reviewed-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>

Thanks.
