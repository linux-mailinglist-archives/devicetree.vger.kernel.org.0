Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9BFB73931BF
	for <lists+devicetree@lfdr.de>; Thu, 27 May 2021 17:06:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236849AbhE0PHw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 May 2021 11:07:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57182 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236790AbhE0PHV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 May 2021 11:07:21 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4339BC061574
        for <devicetree@vger.kernel.org>; Thu, 27 May 2021 08:05:45 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id q1so605552lfo.3
        for <devicetree@vger.kernel.org>; Thu, 27 May 2021 08:05:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rahXOe6QHY33QTQOxWdfULKSVMeqoD1SZ9MMzCB7Epk=;
        b=QgemFEUFUuuSklvkxKN/r2wK+fwxRrcB+1NIfYRwdBQcZxI+ThqfRKz3T9kBMN3R84
         XQ+FR2t5sTM3Bo3nw8Mq/B9Bl06bJiX1lmproov3AVCqCpmoa4SUEznu4j82fsW39cK9
         SXS5pvi+uCrSz565Boqa8z4D4+IFkE1Ard90fIVnjkJXWXMGkmzN8yGGQB1ljvscOwOE
         s0b7aZNWFN3Iw+dv47/0gAyF+MH85d80s6T6SnhhY22pdVp+H6FXig7MG3SJNoqep6rG
         ApOLAJevQ+ttOj2YfVZFKgK8IRfVfJmwGx+/mPZ/WTc8uULCQKMzSdbVGXJo01wTJQo/
         MPRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rahXOe6QHY33QTQOxWdfULKSVMeqoD1SZ9MMzCB7Epk=;
        b=Mcg8BOb+r6rMhl1wYCOQ/9utdS7Ir2h6C0xevSaJO0HNU9rOzNbwjQZ6wkTKJ675Uu
         jICq2DSSpsoiF0lrG9oxmAZGxiFNAcJz58HWY2FSQGyLzvjNOBFNU23wSBLFB+lnQjge
         gbtj1PLBqwzBOmzdN1dHrqyDQYfoNqIXM4/xnhtbNtGu1s0ttAwzv3o1eefcGwZLB6NY
         /rQRxcX+lo35Kuz+A5W3zh4/gDjYIuBszvehfWnWxmlkmyM7gFNYSJtVGb0MiBrZWOfV
         whf2ms4n0c/NHshHqgX4jbmh47EsXQ4bYb+mmbLKqMNka1vuh7/JPR/k2l98WOmpFTJx
         AdSA==
X-Gm-Message-State: AOAM530SEEA+a9b7IxUlces0PZNfufFTe3LOLk5nh4tA1lGfmb89VrE2
        s/MV66cLFNZhhf9IyNQc2cLeTMT/wfEK0bptP/fs5A==
X-Google-Smtp-Source: ABdhPJzBYi57GIctgtdTsVpbJbwy9MS4FOpEElMLUm+fWapmXHzjAEojgsu6AlyvT1IQTvqNVOXBcraYmzlssDGr3Xk=
X-Received: by 2002:ac2:47e6:: with SMTP id b6mr2601491lfp.649.1622127943635;
 Thu, 27 May 2021 08:05:43 -0700 (PDT)
MIME-Version: 1.0
References: <20210524193012.592210-1-martin.botka@somainline.org>
In-Reply-To: <20210524193012.592210-1-martin.botka@somainline.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 27 May 2021 17:05:32 +0200
Message-ID: <CACRpkdbPvxN2-VTm+n-j6JiWZnraCviZ2JDFe=A7Z=z93-seVQ@mail.gmail.com>
Subject: Re: [PATCH V3 1/2] dt-bindings: pinctrl: qcom: sm6125: Document
 SM6125 pinctrl driver
To:     Martin Botka <martin.botka@somainline.org>
Cc:     ~postmarketos/upstreaming@lists.sr.ht,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        marijn.suijten@somainline.org, jamipkettunen@somainline.org,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        MSM <linux-arm-msm@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Martin,

overall this looks good but the bot warned because of this:

On Mon, May 24, 2021 at 9:30 PM Martin Botka
<martin.botka@somainline.org> wrote:
>
> Document the newly added SM6125 pinctrl driver
>
> Signed-off-by: Martin Botka <martin.botka@somainline.org>
(...)
> +properties:
> +  compatible:
> +    const: qcom,sm6125-tlmm
(...)
> +        #include <dt-bindings/interrupt-controller/arm-gic.h>
> +        pinctrl@500000 {
> +                compatible = "qcom,sm6125-pinctrl";

So it seems like you didn't run the checks?

Yours,
Linus Walleij
