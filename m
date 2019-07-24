Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EC89772745
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2019 07:21:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726167AbfGXFVd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Jul 2019 01:21:33 -0400
Received: from mail-ua1-f67.google.com ([209.85.222.67]:42825 "EHLO
        mail-ua1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725919AbfGXFVd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Jul 2019 01:21:33 -0400
Received: by mail-ua1-f67.google.com with SMTP id a97so17947067uaa.9
        for <devicetree@vger.kernel.org>; Tue, 23 Jul 2019 22:21:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=verdurent-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=TUsGf36TR4zlfyZSONaQ2nNxLJ4zkif4e/MgEKViAz4=;
        b=aWLGjXXD+oLlguItxfZRUOIn8T8Nje8/gOnWCoXkXgvqeUP4ezau25tSjmqF9z6RA6
         Vf+yyb1u/mCLrIK7FeGMRbbuDdsgE0KvDf/ZfjnST3PBkVQMKyrfZ1SZ+psxll/JRzJY
         A9HT3f4EkKTesOQ42LqkD+n1eDIFP5tUwdYMX1P4IouWLiijs35a7ryGhRK8xU3n+sjC
         DgH+12qgrB5sx0T+pMsXq7hQHa9ztAPutpGqR/jpvBhm92oSTKUcBI951LFbPWTSF7de
         30SrT8OrluAFwjTpfCCyu28hLVoVZV6ctd6tcN+UuoZuGitE9SLXozoJtTvqIp/SIvMO
         c0mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=TUsGf36TR4zlfyZSONaQ2nNxLJ4zkif4e/MgEKViAz4=;
        b=W+HEKzr5S2tUbQwRr/Ueb95bjWUybs6LGn9tv6fSP/6X/iX8pOA9J39Tbj7TZwCcny
         nD3KRBZ3VcCEU2clTiQWZvo4/DtrRbKMBwBtQzbN962lUmINsmLqHtyBa9hb8mSH8Yxa
         /c5qPI5wRfDG8kh2+S1CRvNUms+nLgqGs0YJ82B1MW5tFnDfG6DkF7zxHd9hVHwesxBm
         glSCq/YdQzYT89gkboTMJP3s2l+3VYFsYK7Fvb3S8h38Q2FhuV41qc1qQzzJDS+y5zDG
         3TfAz/DjjYRE6BMXw3apFr3BsuZS+xGofHfW5vV07FiqAkqR018YReRldSghXpMtEgpx
         fCAg==
X-Gm-Message-State: APjAAAUWLIlJMYyxdVufUf40jv7qJD2MSVS1P8a3NxjmcqaMpwDk2RU6
        ildCkxhB+dS+ksBkWkPo43FBQ98NmYD988f0oXo=
X-Google-Smtp-Source: APXvYqx5YalSorpO7IZK3t1/IsRJ+b1kzXKZLmI/iwekFfex4mBt6J6nQ4dB9P+ncPdqjbX2ksCgGQxh8j1A5K8CMFY=
X-Received: by 2002:ab0:23ce:: with SMTP id c14mr24279200uan.77.1563945692171;
 Tue, 23 Jul 2019 22:21:32 -0700 (PDT)
MIME-Version: 1.0
References: <20190724044906.12007-1-vkoul@kernel.org> <20190724044906.12007-5-vkoul@kernel.org>
In-Reply-To: <20190724044906.12007-5-vkoul@kernel.org>
From:   Amit Kucheria <amit.kucheria@verdurent.com>
Date:   Wed, 24 Jul 2019 10:51:21 +0530
Message-ID: <CAHLCerP-9dNG30enhb779=FGFLUZCR2EdjDQEXjt0jkQPvaJtA@mail.gmail.com>
Subject: Re: [PATCH v2 4/5] arm64: dts: qcom: sdm845: remove macro from unit name
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
> Unit name is supposed to be a number, using a macro with hex value is
> not recommended, so add the value in unit name.
>
> arch/arm64/boot/dts/qcom/pm8998.dtsi:81.18-84.6: Warning (unit_address_format): /soc/spmi@c440000/pmic@0/adc@3100/adc-chan@0x06: unit name should not have leading "0x"
> arch/arm64/boot/dts/qcom/pm8998.dtsi:81.18-84.6: Warning (unit_address_format): /soc/spmi@c440000/pmic@0/adc@3100/adc-chan@0x06: unit name should not have leading 0s
>
> Signed-off-by: Vinod Koul <vkoul@kernel.org>

Reviewed-by: Amit Kucheria <amit.kucheria@linaro.org>


> ---
>  arch/arm64/boot/dts/qcom/pm8998.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/pm8998.dtsi b/arch/arm64/boot/dts/qcom/pm8998.dtsi
> index 051a52df80f9..dc2ce23cde05 100644
> --- a/arch/arm64/boot/dts/qcom/pm8998.dtsi
> +++ b/arch/arm64/boot/dts/qcom/pm8998.dtsi
> @@ -78,7 +78,7 @@
>                         #size-cells = <0>;
>                         #io-channel-cells = <1>;
>
> -                       adc-chan@ADC5_DIE_TEMP {
> +                       adc-chan@6 {
>                                 reg = <ADC5_DIE_TEMP>;
>                                 label = "die_temp";
>                         };
> --
> 2.20.1
>
