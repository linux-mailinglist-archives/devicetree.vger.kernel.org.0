Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 989967271A
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2019 07:01:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725909AbfGXFBI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Jul 2019 01:01:08 -0400
Received: from mail-vs1-f67.google.com ([209.85.217.67]:32950 "EHLO
        mail-vs1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725883AbfGXFBI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Jul 2019 01:01:08 -0400
Received: by mail-vs1-f67.google.com with SMTP id m8so30578984vsj.0
        for <devicetree@vger.kernel.org>; Tue, 23 Jul 2019 22:01:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=verdurent-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=MwZbVvyxm3PI+MouNfOXYHnz5VFLnB1AMhPNSWYl2+c=;
        b=ct6X0qA08bQF6QWHQzeKtcjUKYrb7O7huAAWPkMX0eTJkPb6b7frcH1oeg0W7R09DB
         w3F5THxqJlS+MU0uE0j6aaVKMWGWB4bJc1gBKZJlA1G4t90eUrVgseu8YQRsevSNNieF
         lTUHbs/2Q/5i/J4Ip5lJgT467azUxXiYYUSiaxUFW+8oF2PSUe1pFktoNiQ7MbBq0M7u
         b+cmxOWvxA/ZgG8Efyd8Xcd/UXF7dJAx/CL5IA8tFTyNkZt4nZnOqTqxs2GyCz7mT2xS
         FMZBJ8t4WufNl47qbxbdbA9TMA51Bs5PYk0GmuHlJ3Ujht7UbGc7MA3Ylqz3uT9mAa4g
         mSWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=MwZbVvyxm3PI+MouNfOXYHnz5VFLnB1AMhPNSWYl2+c=;
        b=JGeQ9L14Ul4N4m6iOfcYhSL5PYRcsl/p6ddWGPOToy21bH+Tib2A1xNmbOwUv9IY6G
         U5aVjUuZi2bGejUgEzj8RnwZmNu2BGn3KVEB5jiZ2N8gJeaRq/BD59U++NMYnODdoElh
         UBZky5izjSEkwyTa/EFlcBZuzDGTmhu1VNO3DpZJCpVIelXJkxCiKbgr9x+7NCdRv58v
         G4utsv2C8qjFEcHoi8L9MCo+7bvC5FmUsB/CMSRtQB83XQROa50BBW81+ud57IYGyp1k
         1bcYyhgT/EuPdoW4unWyLga7SS1INR26nXyTe5T3gXAnTr4TJOsqpQJ7ohtyqRpuTk1e
         EeKw==
X-Gm-Message-State: APjAAAVQhySLykIQYJUl5v0f18J8orzzVKv8crMnhYOlPKxGuZiBflDj
        pLaTjPXRw7ncgUviYus9ZLyR7vKuYtw6CXHGiVo=
X-Google-Smtp-Source: APXvYqzDfgoeYz/99kNuC9UX09QAW/OkLD2aDZBnfw+xJRRF04yHjb4iM3P/YyScPY9DnWqV3/sPpIpefel/c99irMc=
X-Received: by 2002:a67:f5c5:: with SMTP id t5mr21338731vso.27.1563944467386;
 Tue, 23 Jul 2019 22:01:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190724044906.12007-1-vkoul@kernel.org> <20190724044906.12007-2-vkoul@kernel.org>
In-Reply-To: <20190724044906.12007-2-vkoul@kernel.org>
From:   Amit Kucheria <amit.kucheria@verdurent.com>
Date:   Wed, 24 Jul 2019 10:30:56 +0530
Message-ID: <CAHLCerOkm+QM+=PDYwWwzYNT_inMHtnnmcZRGdJy_p6ozvkgTg@mail.gmail.com>
Subject: Re: [PATCH v2 1/5] arm64: dts: qcom: sdm845: Add unit name to soc node
To:     Vinod Koul <vkoul@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Marc Gonzalez <marc.w.gonzalez@free.fr>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 24, 2019 at 10:20 AM Vinod Koul <vkoul@kernel.org> wrote:
>
> We get a warning about missing unit name for soc node, so add it.
>
> arch/arm64/boot/dts/qcom/sdm845.dtsi:623.11-2814.4: Warning (unit_address_vs_reg): /soc: node has a reg or ranges property, but no unit name
>
> Signed-off-by: Vinod Koul <vkoul@kernel.org>
> Reviewed-by: Stephen Boyd <swboyd@chromium.org>


Reviewed-by: Amit Kucheria <amit.kucheria@linaro.org>

> ---
>  arch/arm64/boot/dts/qcom/sdm845.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> index 601cfb078bd5..e81f4a6d08ce 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> @@ -620,7 +620,7 @@
>                 method = "smc";
>         };
>
> -       soc: soc {
> +       soc: soc@0 {
>                 #address-cells = <2>;
>                 #size-cells = <2>;
>                 ranges = <0 0 0 0 0x10 0>;
> --
> 2.20.1
>
