Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 04F6C39233B
	for <lists+devicetree@lfdr.de>; Thu, 27 May 2021 01:30:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234876AbhEZXbq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 May 2021 19:31:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234866AbhEZXbp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 May 2021 19:31:45 -0400
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com [IPv6:2607:f8b0:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E903FC061574
        for <devicetree@vger.kernel.org>; Wed, 26 May 2021 16:30:11 -0700 (PDT)
Received: by mail-ot1-x32c.google.com with SMTP id n3-20020a9d74030000b029035e65d0a0b8so2663118otk.9
        for <devicetree@vger.kernel.org>; Wed, 26 May 2021 16:30:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=5JNvthxICYCbwqncAfRO/N/6rcuLYC3MNXQ1kdeQYSc=;
        b=mzwzU4M9p1+BeCUQLUhRnPCqawrMRmPGXOcRz1F+Y1XnNTOtP9LXrGomQMffbfkHz6
         CzwxHElr0IfiHHtxbleHnJOdeXW5GBygnlj1mEHMJ2XjjvoeTB6/VLzISghtSPLUWiFo
         tUYVxzsqWJxDz1FeXwASAU8p5xqtM20ktfCzQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=5JNvthxICYCbwqncAfRO/N/6rcuLYC3MNXQ1kdeQYSc=;
        b=g7r06bk2yNjlCvf2XkXOis1j5GojqAGAuY+3nSLcbIX8yR1C71sWeSgH1XZR2kqzbY
         ewkBZEh+y0XM/POTHG/pvJcIOUyqszfqiu1phYxqVQOQyoTarATr0lw5XgpM66QO3E4W
         wK0WW1wlQOs+0pEuvlaR7V1gv2v3wCKLnqguzgCIdRJYt8ojjbgBbjsEbQ5G3OKL5Qsk
         q2wPgbT9XL6DnjawyiHUaA5m2SYipfC87v7xPiRs3DbtnTD2FOOEEii5td15dJXqF9XU
         lR525+joMQ7BLg6VoYlticiRJLrxOEZNR2wuLVOfEeDT7JjoVzlFwdphQqSVMR82A/Tk
         jruQ==
X-Gm-Message-State: AOAM53007uSvuyuBvZPbc2eiCEVGeq7nPH6EWLkf/ynOFpZLzT1cxnmH
        8Dq4yLJdZqADKLx/OhXp09cgaDi7W6VFbvE2T/ITYA==
X-Google-Smtp-Source: ABdhPJy76CNAamDmxStCLV4d2vUuhc9BocdM3TpxDKQZCJPcKLABY1/C8quYbgWUUAexQB1BQGdzeVo1a3KQt1K18Sk=
X-Received: by 2002:a05:6830:3154:: with SMTP id c20mr550760ots.233.1622071810960;
 Wed, 26 May 2021 16:30:10 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 26 May 2021 19:30:10 -0400
MIME-Version: 1.0
In-Reply-To: <1621596371-26482-4-git-send-email-mkshah@codeaurora.org>
References: <1621596371-26482-1-git-send-email-mkshah@codeaurora.org> <1621596371-26482-4-git-send-email-mkshah@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Wed, 26 May 2021 19:30:10 -0400
Message-ID: <CAE-0n53ySKwDwzRYFYjnQnqVAujVrkik2U-PeCuS61xQU-hbWA@mail.gmail.com>
Subject: Re: [PATCH v8 3/5] arm64: dts: qcom: sc7180: Enable SoC sleep stats
To:     Maulik Shah <mkshah@codeaurora.org>, bjorn.andersson@linaro.org,
        evgreen@chromium.org, mka@chromium.org
Cc:     linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        agross@kernel.org, dianders@chromium.org, linux@roeck-us.net,
        rnayak@codeaurora.org, lsrao@codeaurora.org,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Maulik Shah (2021-05-21 04:26:09)
> Add device node for SoC sleep stats driver which provides various
> low power mode stats.
>
> Also update the reg size of aoss_qmp device to 0x400.
>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Maulik Shah <mkshah@codeaurora.org>
> Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7180.dtsi | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> index 6228ba2..889d04d 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> @@ -3215,7 +3215,7 @@
>
>                 aoss_qmp: power-controller@c300000 {
>                         compatible = "qcom,sc7180-aoss-qmp";
> -                       reg = <0 0x0c300000 0 0x100000>;
> +                       reg = <0 0x0c300000 0 0x400>;
>                         interrupts = <GIC_SPI 389 IRQ_TYPE_EDGE_RISING>;
>                         mboxes = <&apss_shared 0>;
>
> @@ -3223,6 +3223,11 @@
>                         #power-domain-cells = <1>;
>                 };
>
> +               rpmh-sleep-stats@c3f0000 {
> +                       compatible = "qcom,rpmh-sleep-stats";
> +                       reg = <0 0x0c3f0000 0 0x400>;
> +               };
> +

Does this need to be in DT? Can the sc7180-aoss-qmp driver use the
aux-bus and stick the sleep stats device on there?

>                 spmi_bus: spmi@c440000 {
>                         compatible = "qcom,spmi-pmic-arb";
>                         reg = <0 0x0c440000 0 0x1100>,
