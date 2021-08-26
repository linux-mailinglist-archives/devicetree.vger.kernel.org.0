Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9B7953F8DA4
	for <lists+devicetree@lfdr.de>; Thu, 26 Aug 2021 20:12:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243285AbhHZSM0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Aug 2021 14:12:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241975AbhHZSMX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Aug 2021 14:12:23 -0400
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com [IPv6:2607:f8b0:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 745B7C0613C1
        for <devicetree@vger.kernel.org>; Thu, 26 Aug 2021 11:11:35 -0700 (PDT)
Received: by mail-ot1-x32c.google.com with SMTP id l7-20020a0568302b0700b0051c0181deebso4628143otv.12
        for <devicetree@vger.kernel.org>; Thu, 26 Aug 2021 11:11:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=nvDp+1N4DDOy+P+9GR23X4HYFYGMVy7rTGtv9w11JS4=;
        b=SO3w8aU+e7cuS2csqcFp3/Zq/q9+72gkeWHJRFI6H1MMqOAKXcT3ERWs5Vk0o+7PRI
         yEoubEfxSSr/sORSgWrbi/P3anHXqh3ablYC8LEDcfvXDnowkctxl0CaUUhd+UZojHTO
         buSKtg6oW4atKNd+fvmvCE2vtf2tJXG//Ni+Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=nvDp+1N4DDOy+P+9GR23X4HYFYGMVy7rTGtv9w11JS4=;
        b=hau0qfgQj+FCSLjEsY80y+fKX9E2dA6C5P50gOzrNP1VivdWjmMDwAyokwQscuSqRB
         GRYeTrAXD62hcCV+SRh4Z0Pnp2qKAsaisiz3Fzbtm+wFzgHi8/vITw43AO/dVMYeXGdY
         Od2DZJBtZUjp02I4wOB4r+HtHrj+FoT28xQ4wWkQPhEJtyWJtHNzaqfX/b6o8PNam8/r
         82r/+Hb+zcneAzBKdDB2rl/fBnYdZUxIKXzUkf71v2GG7CPZUlA9vE7OrnVp0kLrqNxE
         NQhdxnspds3241aGJleJdxHviRAd0qt5HHgWGU/IG2b2p04lej7CZwdq5+pSlo+G4tG/
         VhbQ==
X-Gm-Message-State: AOAM533CzYMOeIECXNk57Ng3KGj9KbE5e6gSpEtYK16Cj6OQP9/VRE7R
        mZzKDBruSMS/AlwRQ8VTPMciY5WWWV4ghz1nJPNb/w==
X-Google-Smtp-Source: ABdhPJwQeid8OtIfq3mNA6A51XZW1jZiSUx3vos1jnf0JVqXaUwsd+hS8JjkK2tpSCWY7I7bNCT4H/g5JbP/vKPjy+I=
X-Received: by 2002:a05:6830:2473:: with SMTP id x51mr4484691otr.34.1630001494848;
 Thu, 26 Aug 2021 11:11:34 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 26 Aug 2021 18:11:34 +0000
MIME-Version: 1.0
In-Reply-To: <1629983731-10595-7-git-send-email-rajpat@codeaurora.org>
References: <1629983731-10595-1-git-send-email-rajpat@codeaurora.org> <1629983731-10595-7-git-send-email-rajpat@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Thu, 26 Aug 2021 18:11:34 +0000
Message-ID: <CAE-0n51YGqp701EzUs1Q1PG89SECVQDdUPsiJ8P95xFj0UFs=A@mail.gmail.com>
Subject: Re: [PATCH V6 6/7] arm64: dts: sc7280: Add QUPv3 wrapper_1 nodes
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rajesh Patil <rajpat@codeaurora.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, rnayak@codeaurora.org,
        saiprakash.ranjan@codeaurora.org, msavaliy@qti.qualcomm.com,
        skakit@codeaurora.org, Roja Rani Yarubandi <rojay@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Rajesh Patil (2021-08-26 06:15:30)
> diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> index 7c106c0..65126a7 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> @@ -225,6 +225,10 @@
>         status = "okay";
>  };
>
> +&qupv3_id_1 {
> +       status = "okay";
> +};
> +

Why enable this here but not any of the i2c/spi/uart devices that are a
child? Can this hunk be split off to a different patch?

>  &sdhc_1 {
>         status = "okay";
>
> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> index a3c11b0..32f411f 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -2040,6 +2469,46 @@
>                                 function = "qup07";
>                         };
>
> +                       qup_i2c8_data_clk:qup-i2c8-data-clk {

Unstick please.

> +                               pins = "gpio32", "gpio33";
> +                               function = "qup10";
> +                       };
> +
> +                       qup_i2c9_data_clk:qup-i2c9-data-clk {
> +                               pins = "gpio36", "gpio37";
> +                               function = "qup11";
> +                       };
> +
> +                       qup_i2c10_data_clk:qup-i2c10-data-clk {
> +                               pins = "gpio40", "gpio41";
> +                               function = "qup12";
> +                       };
> +
> +                       qup_i2c11_data_clk:qup-i2c11-data-clk {
> +                               pins = "gpio44", "gpio45";
> +                               function = "qup13";
> +                       };
> +
> +                       qup_i2c12_data_clk:qup-i2c12-data-clk {
> +                               pins = "gpio48", "gpio49";
> +                               function = "qup14";
> +                       };
> +
> +                       qup_i2c13_data_clk:qup-i2c13-data-clk {
> +                               pins = "gpio52", "gpio53";
> +                               function = "qup15";
> +                       };
> +
> +                       qup_i2c14_data_clk:qup-i2c14-data-clk {
> +                               pins = "gpio56", "gpio57";
> +                               function = "qup16";
> +                       };
> +
> +                       qup_i2c15_data_clk:qup-i2c15-data-clk {
> +                               pins = "gpio60", "gpio61";
> +                               function = "qup17";
> +                       };

All of these.

> +
>                         qup_spi0_data_clk: qup-spi0-data-clk {
>                                 pins = "gpio0", "gpio1", "gpio2";
>                                 function = "qup00";
