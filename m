Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8CF6C57080F
	for <lists+devicetree@lfdr.de>; Mon, 11 Jul 2022 18:12:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229913AbiGKQMs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Jul 2022 12:12:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36934 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229724AbiGKQMr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Jul 2022 12:12:47 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1CF097969B
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 09:12:46 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id oy13so4776524ejb.1
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 09:12:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=EpUWA0CCK9VbBCJDoo4DsDsKj3ehCYJDBTp0s+uL7as=;
        b=ixU/xMq7Hv7sYGK7x3fdtMTt6aasWztP+joaQKiF3Qoz8jom4Zbc/6yW2OaMtJkOni
         QRGTqspiIYsKDwbpNgmJ05SE4tIR3oGEcMR0OpCFjW/x/t+QR2pLDk1XL1qU/cZ3VQjn
         R+Rda0PCnymlDaO5mqJNz0TzmHAvame4MLDOw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=EpUWA0CCK9VbBCJDoo4DsDsKj3ehCYJDBTp0s+uL7as=;
        b=oItCtNOepJ0Bfq9iFlF+lftZFfBHAI8FaSZLT4dvXpn7UI4GddwtM01bQsQXfOOb8j
         OrOIVIwkpQcdhd7zAUMuoz+7LtFVk591LFEClNq3dRcWCT9KyboIwfADk6webWMMQq71
         SyYMf5lJQbDD26acnSVKjXnkqFkIvPIF+VmF1c0Htcg134JQ3omeF3/g12Fd+0XXs8QM
         eVbSJ798aER0xib8GR52JSBCiA5usiigQaYqWAyGG/arJezc0r04hwqHraN2qqM+0EBO
         /GEPKjmEKRV4LhSqJTPiODRdZhJ111JqvEaGTaO1zNLsS+kyivIFctS/r3yvV57jfv/I
         FEjA==
X-Gm-Message-State: AJIora+qCIJsKFNioX+671QnHJ92ym2Ty5ZUCg7dx01D5SfR1QiQmquA
        muGiRYmqxIX7r+86cWenrk57tcYNTbTdyvIViKk=
X-Google-Smtp-Source: AGRyM1udd4XB/z/X+Wsx633AW44vSRuVIUq9hncuPhBN1Sx1Kzwkw/GUmpSM5L1pMZUwg1PHmvO62Q==
X-Received: by 2002:a17:907:3e86:b0:6f5:917:10cc with SMTP id hs6-20020a1709073e8600b006f5091710ccmr19627727ejc.53.1657555964507;
        Mon, 11 Jul 2022 09:12:44 -0700 (PDT)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com. [209.85.221.53])
        by smtp.gmail.com with ESMTPSA id g9-20020a50ec09000000b0043a735add09sm4516581edr.21.2022.07.11.09.12.42
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Jul 2022 09:12:43 -0700 (PDT)
Received: by mail-wr1-f53.google.com with SMTP id z12so7658769wrq.7
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 09:12:42 -0700 (PDT)
X-Received: by 2002:adf:f90d:0:b0:20c:de32:4d35 with SMTP id
 b13-20020adff90d000000b0020cde324d35mr17134813wrr.583.1657555961970; Mon, 11
 Jul 2022 09:12:41 -0700 (PDT)
MIME-Version: 1.0
References: <1657555122-18605-1-git-send-email-quic_khsieh@quicinc.com>
 <CAD=FV=WC0XQqOyONddX37=ad8M4N2NHB5UTmDVZU5SEggLvFEA@mail.gmail.com> <9abb6a67-e7a5-a3dc-1bff-30e9d2922b84@quicinc.com>
In-Reply-To: <9abb6a67-e7a5-a3dc-1bff-30e9d2922b84@quicinc.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 11 Jul 2022 09:12:29 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VHC_mTya4ywa50_Af0uwt19rYDs9PyGfOh_AhRAJTEgA@mail.gmail.com>
Message-ID: <CAD=FV=VHC_mTya4ywa50_Af0uwt19rYDs9PyGfOh_AhRAJTEgA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dta: qcom: sc7280: delete vdda-1p2 and vdda-0p9
 from mdss_edp
To:     Kuogee Hsieh <quic_khsieh@quicinc.com>
Cc:     Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Stephen Boyd <swboyd@chromium.org>,
        Vinod Koul <vkoul@kernel.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "Abhinav Kumar (QUIC)" <quic_abhinavk@quicinc.com>,
        "Aravind Venkateswaran (QUIC)" <quic_aravindh@quicinc.com>,
        Sankeerth Billakanti <quic_sbillaka@quicinc.com>,
        quic_mkrishn@quicinc.com, quic_kalyant@quicinc.coml,
        freedreno <freedreno@lists.freedesktop.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Jul 11, 2022 at 9:10 AM Kuogee Hsieh <quic_khsieh@quicinc.com> wrote:
>
>
> On 7/11/2022 9:02 AM, Doug Anderson wrote:
>
> Hi,
>
> On Mon, Jul 11, 2022 at 8:58 AM Kuogee Hsieh <quic_khsieh@quicinc.com> wrote:
>
> Both vdda-1p2-supply and vdda-0p9-supply regulators are controlled
> by dp combo phy. Therefore remove them from dp controller.
>
> Signed-off-by: Kuogee Hsieh <quic_khsieh@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sc7280-qcard.dtsi | 3 ---
>  1 file changed, 3 deletions(-)
>
> You also need to remove it from
> `arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi`.
>
> arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi: vdda-1p2-supply = <&vdd_a_usbssdp_0_1p2>;
>
> I did not see above line at sc7280-herobrine.dtsi at latest msm-next tree.

It's in the qcom tree...

https://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git/tree/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi?h=for-next#n438

-Doug
