Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 34EE1413A02
	for <lists+devicetree@lfdr.de>; Tue, 21 Sep 2021 20:21:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233354AbhIUSWk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Sep 2021 14:22:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34076 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233090AbhIUSW1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Sep 2021 14:22:27 -0400
Received: from mail-ot1-x331.google.com (mail-ot1-x331.google.com [IPv6:2607:f8b0:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E4C8FC06178C
        for <devicetree@vger.kernel.org>; Tue, 21 Sep 2021 11:20:19 -0700 (PDT)
Received: by mail-ot1-x331.google.com with SMTP id 67-20020a9d0449000000b00546e5a8062aso17531260otc.9
        for <devicetree@vger.kernel.org>; Tue, 21 Sep 2021 11:20:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=WKyzmgnHJINWtPvZlYfzre1HLxtYPHyz4zYYlK0FW9o=;
        b=GKzRmBJQRm1k1ryPF8jAS67Da1No9r+QlbLv/Mp5fkG/sy+sXYXns7Hvau6T7dTr2m
         ZyAd1O+ceitHZciaNwjT01FjhrkUlS6d7PXh/qSYV8jzbNDI7QNjDqGbo1hsTxT+Tc2O
         bMA/7FAkIWNY9AOJgNKSqwzJZPLIAp/HUNT90=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=WKyzmgnHJINWtPvZlYfzre1HLxtYPHyz4zYYlK0FW9o=;
        b=dNI3fXBF6sEEuQuR8BvCl4P0RPFeGKmq6WRiDF3V2W/k8xd3gVAfs5ezr0GDVbyJao
         F9Q43qYcQujamG8OjlLh4x2njIaF54lrW53btVc6b5EjKLA4irz8SBVnfxfs+N8sLdMg
         mTp1rcfyyD2nOvWPU2Wu8Rndac/KiBi8Ut3MnaW5aQpZsMDUHBOIOA2IILnv7LmMNlPY
         jJhOU5Lada9uMEXOkpY7To6zG7+zBYRcKKI2AMJS92VXJ+UvICF1fxKmYv6MmTg45cKq
         p+GqGmEzppI6kcFp1DjsCflXg6j3O8EH3mQa87HLk4WJb6OpVCrnfRukXGnlHAEUFvwa
         rX7w==
X-Gm-Message-State: AOAM531DkwyVwph+fJT+FjjPeFSVRvEbP0iZJ00U4aVZuIuKkZNCE9qo
        R0VubfETp4uVmivQiG3305HgKZ9XjJLV+VsoxIzE3eorejA=
X-Google-Smtp-Source: ABdhPJwVQGpbXDcYSl+Em67fjmFB/rKdlJft8dje1JqsYl2U4YoBQvz1TLbEhMxpdkTtU8DB4uh691tnAAAHkyLkxz4=
X-Received: by 2002:a05:6830:1212:: with SMTP id r18mr25764077otp.159.1632248419338;
 Tue, 21 Sep 2021 11:20:19 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 21 Sep 2021 11:20:18 -0700
MIME-Version: 1.0
In-Reply-To: <20210921152120.6710-2-stephan@gerhold.net>
References: <20210921152120.6710-1-stephan@gerhold.net> <20210921152120.6710-2-stephan@gerhold.net>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Tue, 21 Sep 2021 11:20:18 -0700
Message-ID: <CAE-0n51Ukr0FMhzHotrGnrJjE3=w2X_u4ukc1KC_HpjjsUdNfg@mail.gmail.com>
Subject: Re: [PATCH 2/3] arm64: dts: qcom: msm8916: Drop underscore in node name
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Stephan Gerhold <stephan@gerhold.net>
Cc:     Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Stephan Gerhold (2021-09-21 08:21:19)
> Using underscores in device tree nodes is not very common.
> Additionally, the _region suffix in "smem_region@..." is not really
> useful since it's obvious that it describes a reserved memory region.
>
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
> ---
>  arch/arm64/boot/dts/qcom/msm8916.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
> index 5551dba2d5fd..95dea20cde75 100644
> --- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
> @@ -41,7 +41,7 @@ tz-apps@86000000 {
>                         no-map;
>                 };
>
> -               smem_mem: smem_region@86300000 {
> +               smem_mem: smem@86300000 {

Shouldn't that be smem_mem: memory@86300000? Node names should be
generic.

>                         reg = <0x0 0x86300000 0x0 0x100000>;
>                         no-map;
>                 };
