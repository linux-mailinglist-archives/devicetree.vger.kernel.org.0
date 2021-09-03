Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3452B400580
	for <lists+devicetree@lfdr.de>; Fri,  3 Sep 2021 21:06:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350934AbhICTHE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Sep 2021 15:07:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46562 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350945AbhICTHD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Sep 2021 15:07:03 -0400
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com [IPv6:2607:f8b0:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89522C061757
        for <devicetree@vger.kernel.org>; Fri,  3 Sep 2021 12:06:03 -0700 (PDT)
Received: by mail-ot1-x332.google.com with SMTP id g66-20020a9d12c8000000b0051aeba607f1so208965otg.11
        for <devicetree@vger.kernel.org>; Fri, 03 Sep 2021 12:06:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=ImrvsDaK3tlcktPfQxLSHY82KCie1ukA9uocnY0cHlc=;
        b=of0H4bbz0UPM+J7Yty2+Obx8cd87BiF6AWRa9A9BOCdq3nxLM1q1o53EDzbBiSQMeI
         /lUqqEwoif/lzNkxkwbwz29pjuUBhFUnQvx88lWSSsShyU2XZ0w9fvwW16AAfeghZr3I
         /uJOae0njheUZj6PwJTxOLDAE1okxvgK1ewh0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=ImrvsDaK3tlcktPfQxLSHY82KCie1ukA9uocnY0cHlc=;
        b=bC7XNsCPD7m4z0ebndGRtDL5kZVBE+52dpTRbK55FvvO58IdDUWcLIA86FqyPzcv9n
         Pd0ZgzBy9BURd3Pi3LW63DZhfQqaK1KUPVI22iFUyTwxRhsXK4A2KiJv0xowwJ0S3OI3
         wCR9VXeJaqytGVKKTFOdx1fxIip+H9Fzm3ydI8PQyJX+JQbtsZ1nCqZjCMsieO70h+/a
         WelHgeOskSIojj9BL5zETeQCHAjkmD1cr0KqSbpNv3qkorXeVMn8tJI4hI2j6BC2Gflc
         DilTMvEtYVfUK5IEzX9774WdF3d6/NkvdQGOFJHqIxOgx8Gm+Z9DH/ENuUEHF/I5sY4L
         sYiA==
X-Gm-Message-State: AOAM530RPTgcz7JEbx9dNH+drDafImEiVvA0zNcjs7DfbCVkk2uIB1TG
        Umh7lHfS72/liVSnoqKbP1ZXdeXpqYzV7xGVpjqTcA==
X-Google-Smtp-Source: ABdhPJxGGdckNSoDvsqvRS79uRgd5Xd5zQ9rKJI3ZEvRGCbaPI5zIQ62VVKexrWKxXQXCxEjUnmt/kvu99b/TTVVl4o=
X-Received: by 2002:a05:6830:719:: with SMTP id y25mr465943ots.77.1630695962836;
 Fri, 03 Sep 2021 12:06:02 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 3 Sep 2021 15:06:02 -0400
MIME-Version: 1.0
In-Reply-To: <1629458622-4915-4-git-send-email-okukatla@codeaurora.org>
References: <1629458622-4915-1-git-send-email-okukatla@codeaurora.org> <1629458622-4915-4-git-send-email-okukatla@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Fri, 3 Sep 2021 15:06:02 -0400
Message-ID: <CAE-0n51WBdLoJRPs9tWZgdAukJMnkD3V00o7xNYVX77-eToKvw@mail.gmail.com>
Subject: Re: [v7 3/3] arm64: dts: qcom: sc7280: Add EPSS L3 interconnect provider
To:     Andy Gross <agross@kernel.org>,
        Odelu Kukatla <okukatla@codeaurora.org>,
        Rob Herring <robh+dt@kernel.org>, bjorn.andersson@linaro.org,
        devicetree@vger.kernel.org, evgreen@google.com,
        georgi.djakov@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     mdtipton@codeaurora.org, sibis@codeaurora.org,
        saravanak@google.com, seansw@qti.qualcomm.com, elder@linaro.org,
        linux-pm@vger.kernel.org, linux-arm-msm-owner@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Odelu Kukatla (2021-08-20 04:23:41)
> Add Epoch Subsystem (EPSS) L3 interconnect provider node on SC7280
> SoCs.
>
> Signed-off-by: Odelu Kukatla <okukatla@codeaurora.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7280.dtsi | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> index 53a21d0..cf59b47 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -1848,6 +1848,17 @@
>                         };
>                 };
>
> +               epss_l3: interconnect@18590000 {
> +                       compatible = "qcom,sc7280-epss-l3";
> +                       reg = <0 0x18590000 0 1000>,

Is this supposed to be 0x1000?

> +                             <0 0x18591000 0 0x100>,
> +                             <0 0x18592000 0 0x100>,
> +                             <0 0x18593000 0 0x100>;
> +                       clocks = <&rpmhcc RPMH_CXO_CLK>, <&gcc GCC_GPLL0>;
> +                       clock-names = "xo", "alternate";
> +                       #interconnect-cells = <1>;
> +               };
> +
>                 cpufreq_hw: cpufreq@18591000 {
>                         compatible = "qcom,cpufreq-epss";
>                         reg = <0 0x18591100 0 0x900>,
> --
> The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
> a Linux Foundation Collaborative Project
>
