Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8D2C750254C
	for <lists+devicetree@lfdr.de>; Fri, 15 Apr 2022 08:06:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243642AbiDOGJF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Apr 2022 02:09:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41974 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240302AbiDOGJE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Apr 2022 02:09:04 -0400
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com [IPv6:2607:f8b0:4864:20::d2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A4242AAC80
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 23:06:37 -0700 (PDT)
Received: by mail-io1-xd2a.google.com with SMTP id k25so7557684iok.8
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 23:06:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=EjdPQf7qMEmsnQdH9Lsin89rXivDvbUmZSVyW8V6lRQ=;
        b=erKpGsHFd5Sf9kS9SBDMU6QT8/q3BhnoONJ7PogKQu44iphr3NmgCTbUu+235pDAum
         VEBQFxa9m9zXu1dqSlPlXwJ68Jx2bHdW2ql9b6ieFJ7EWjUsNzEO9RimzV/WWOTTOc/O
         DltZ34da7CLDFx9Vx11twYDGL0VG7ea1pRLckFXvjgI7VZ//rPV5PyPR90uZ8TajWXoP
         EOBLnKU7jpXCxt+j3XklhjfOB+yhUlj5a43BEe0GAzfghknM6GHrSQYLpYJaLmyDtLXZ
         R+f4cWein/LjrsYMSqsAwnjgA1/IMCrkDnArIdnFrUn9xKnfqBW06l8cW8it9Wh50BJ8
         KjOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=EjdPQf7qMEmsnQdH9Lsin89rXivDvbUmZSVyW8V6lRQ=;
        b=D7/u18a2VxzApcEGGkHeJAG66cbTUwAyMxg4vRfeyWIwypruk6JBLrVRMxDUXoTuWs
         WC2BqgqaryT8/NGlpJEbi992L72CrGk1C7V6nVmDf58lu74KPoY9dx4hKMgvTMLwl4mh
         focATEQpSpbA4ATrbNImD4PGcJNSTfzJfdbu4jiDWUxsDxtPZPUYXLgEdbYHCTyv6eGw
         tm1iNBoA90Cv06bmmQAGxCVK7kbqkMfztvi/xUBDnuP/+M4VT0RfjuYf5XEU0bYZLnFR
         zOjOX26zFgn7U19DL/20XxWVzI6SJ+2tGda1Ho+gn3rg9UKht7XrY54fQS+Nm3LOLJKA
         mTpw==
X-Gm-Message-State: AOAM530PTINgBTQifRu/TyY4ll6cT2DTBGsu8pqW+PkldlH/GTm237Rc
        qDwdk0BHl1AbI/cVMONNgteB3cc2dn9qQ45jY/OefA==
X-Google-Smtp-Source: ABdhPJyjRqRUmRRe3KwbqxZCJb6fy3VByM/fYMcpxwZINn7YjR12Uuc+96kV22moycRPWDOAIcATyEFMgg6Uiu0fTSY=
X-Received: by 2002:a05:6638:2402:b0:326:5418:f73a with SMTP id
 z2-20020a056638240200b003265418f73amr3094380jat.170.1650002796757; Thu, 14
 Apr 2022 23:06:36 -0700 (PDT)
MIME-Version: 1.0
References: <20220415055916.28350-1-rex-bc.chen@mediatek.com> <20220415055916.28350-15-rex-bc.chen@mediatek.com>
In-Reply-To: <20220415055916.28350-15-rex-bc.chen@mediatek.com>
From:   Hsin-Yi Wang <hsinyi@google.com>
Date:   Fri, 15 Apr 2022 14:06:10 +0800
Message-ID: <CACb=7PXmA_n-xAb+ZkRJdTXu=Enbf6NbyxVa3VC1zmJwsrgQ1w@mail.gmail.com>
Subject: Re: [PATCH V3 14/15] arm64: dts: mediatek: Add MediaTek CCI node for MT8183
To:     Rex-BC Chen <rex-bc.chen@mediatek.com>
Cc:     rafael@kernel.org, Viresh Kumar <viresh.kumar@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, krzk+dt@kernel.org,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Tim Chang <jia-wei.chang@mediatek.com>, roger.lu@mediatek.com,
        Kevin Hilman <khilman@baylibre.com>,
        angelogioacchino.delregno@collabora.com, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        "Andrew-sh . Cheng" <andrew-sh.cheng@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Apr 15, 2022 at 1:59 PM Rex-BC Chen <rex-bc.chen@mediatek.com> wrote:
>
> Add MediaTek CCI devfreq node for MT8183.
>
> Signed-off-by: Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>
> Signed-off-by: Rex-BC Chen <rex-bc.chen@mediatek.com>
> ---
>  arch/arm64/boot/dts/mediatek/mt8183-evb.dts    | 4 ++++
>  arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi | 4 ++++
>  arch/arm64/boot/dts/mediatek/mt8183.dtsi       | 7 +++++++
>  3 files changed, 15 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
> index 8953dbf84f3e..7ac9864db9de 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
> +++ b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
> @@ -412,6 +412,10 @@
>
>  };
>
> +&cci {
> +       proc-supply = <&mt6358_vproc12_reg>;
> +};
> +
>  &cpu0 {
>         proc-supply = <&mt6358_vproc12_reg>;
>  };
> diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
> index 0f9480f91261..4786a32ee975 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
> @@ -230,6 +230,10 @@
>         status = "okay";
>  };
>
> +&cci {
> +       proc-supply = <&mt6358_vproc12_reg>;
> +};
> +
>  &cpu0 {
>         proc-supply = <&mt6358_vproc12_reg>;
>  };
> diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> index 4ae3305d16d2..334728413582 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> @@ -280,6 +280,13 @@
>                 };
>         };
>
> +       cci: cci {
> +               compatible = "mediatek,mt8183-cci";
> +               clocks = <&apmixedsys CLK_APMIXED_CCIPLL>;
> +               clock-names = "cci_clock";
> +               operating-points-v2 = <&cci_opp>;

hi Rex,

cci_opp is not defined in dts.

> +       };
> +
>         cpus {
>                 #address-cells = <1>;
>                 #size-cells = <0>;
> --
> 2.18.0
>
