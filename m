Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 99EEF7271D
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2019 07:01:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726062AbfGXFB1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Jul 2019 01:01:27 -0400
Received: from mail-vs1-f65.google.com ([209.85.217.65]:45984 "EHLO
        mail-vs1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726067AbfGXFBX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Jul 2019 01:01:23 -0400
Received: by mail-vs1-f65.google.com with SMTP id h28so30504710vsl.12
        for <devicetree@vger.kernel.org>; Tue, 23 Jul 2019 22:01:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=verdurent-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=L6bmVsqhCrWcP44dNz+ryOiefuDJUbPMuZZHROp2h8o=;
        b=yeYLnMe6AHfk4GzU5rqIM1QMbCG15Q7n5ovV0MGRY/5YLxQw+pvxOqLscbpUs64eLn
         qPc1t6Uth7uzIxN5EibV4b60nlofOD+3yha8qaF0nA/QfyPpJZ7QOVlH8QihTRRyed4j
         Wu/ATEA06t7GeqFFZY8peXscvnC3xYUJ97VZR/nyRQRDUVzRFzzcJwqpZ4UobUoOpiiF
         ZasxzIlC751HDXsSH9zBwTLX3u+JTG5oDxER7yeXgu69rNQ8yRqCli1Y2slpHEQdZ++q
         2xG2gZNpiOeM/0aXwCHHrBX/VubD/Pst79FhLlbNoBRdcVkWrrg4bNxfbqb3IfvtbaOK
         b5Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=L6bmVsqhCrWcP44dNz+ryOiefuDJUbPMuZZHROp2h8o=;
        b=sNFnsRvzAa+taCDt/I29VJGdQKoAgK1a271It9NkuIccbbXWUJEj4umWIlPBUdbKlV
         h9EdCPB3uEKGWhhI4sMaPNFxNyIvWmF8VN0qUH379TGND43E+WczJu1lk+2UGdnI46kk
         3qkxsWzG5gKjWB2bArGEL9l07rbXJ/ShUFI4TSBaPJZ1yR5tXKUhtYdPRsjY/jnah/q0
         j8QakMxyY0bVrksZRSBBK3UktMxeEPl66GfWR7bGG132rB1No1XV3PAQYeoDn7FW4mH6
         /T4UfcKDVuhEpIcurKxa1RbrMzH4ISB2mUtMINt1rYBgkzDl3zHBHyBwG4joShXQeeFG
         VzDw==
X-Gm-Message-State: APjAAAVW1Kk+EkI6xvy/v8Bmjc+lcCljLBoMhTJIrTCcPDs28bdS3OY+
        g3yOSDvXF5fB9BnaqbxcdsVwAKO6aP0OQMLWlsQ=
X-Google-Smtp-Source: APXvYqw3yyWPpdCbrOX1pwgsfoztuivUgg/sQFikQTctRLB/C9ty3TU+JpmHdrbtAnjAT5/MlnGoWezxaV8YAJhNPSc=
X-Received: by 2002:a67:d990:: with SMTP id u16mr51197352vsj.95.1563944482317;
 Tue, 23 Jul 2019 22:01:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190724044906.12007-1-vkoul@kernel.org> <20190724044906.12007-3-vkoul@kernel.org>
In-Reply-To: <20190724044906.12007-3-vkoul@kernel.org>
From:   Amit Kucheria <amit.kucheria@verdurent.com>
Date:   Wed, 24 Jul 2019 10:31:11 +0530
Message-ID: <CAHLCerPQXQKrm4njTv3bTTKHFCpQC_TnJ98Jmnr0g+bD_Q3ycw@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] arm64: dts: qcom: sdm845: remove unnecessary
 properties for dsi nodes
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
> We get a warning about unnecessary properties of
>
> arch/arm64/boot/dts/qcom/sdm845.dtsi:2211.22-2257.6: Warning (avoid_unnecessary_addr_size): /soc/mdss@ae00000/dsi@ae94000: unnecessary #address-cells/#size-cells without "ranges" or child "reg" property
> arch/arm64/boot/dts/qcom/sdm845.dtsi:2278.22-2324.6: Warning (avoid_unnecessary_addr_size): /soc/mdss@ae00000/dsi@ae96000: unnecessary #address-cells/#size-cells without "ranges" or child "reg" property
>
> So, remove these properties
>
> Signed-off-by: Vinod Koul <vkoul@kernel.org>
> Reviewed-by: Stephen Boyd <swboyd@chromium.org>

Reviewed-by: Amit Kucheria <amit.kucheria@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sdm845.dtsi | 6 ------
>  1 file changed, 6 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> index e81f4a6d08ce..2985df032179 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> @@ -2234,9 +2234,6 @@
>
>                                 status = "disabled";
>
> -                               #address-cells = <1>;
> -                               #size-cells = <0>;
> -
>                                 ports {
>                                         #address-cells = <1>;
>                                         #size-cells = <0>;
> @@ -2301,9 +2298,6 @@
>
>                                 status = "disabled";
>
> -                               #address-cells = <1>;
> -                               #size-cells = <0>;
> -
>                                 ports {
>                                         #address-cells = <1>;
>                                         #size-cells = <0>;
> --
> 2.20.1
>
