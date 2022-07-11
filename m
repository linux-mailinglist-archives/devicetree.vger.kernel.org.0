Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8005C570E52
	for <lists+devicetree@lfdr.de>; Tue, 12 Jul 2022 01:33:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229477AbiGKXdY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Jul 2022 19:33:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51540 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229515AbiGKXdX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Jul 2022 19:33:23 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 04D2BBEB
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 16:33:23 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id bp15so1146738ejb.6
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 16:33:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=tT3i3PdSWIbZI2/jQXTr2ht9FWXt0v5w3WnrwY7zOxE=;
        b=Ldn5e/XdivqNGq4Wo2DSw9vOq5ICFZFMjEsGK5qXKUBqT+RZBBTBUQUrgowVxl9abf
         IZvV6AFjiDL62G8G5+bfNOR9kg81XWRLWcfzrZg1n3q+TAcpqNtW0Qm6u4XsGNXO02KB
         w0cKuHUwdeLDMcYS59ah5rxS1gcxsji/tG4DA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tT3i3PdSWIbZI2/jQXTr2ht9FWXt0v5w3WnrwY7zOxE=;
        b=r75dhoVjSsSA7iXvgUjW/RTCOWbme7QhajD4ZMfdF7kdwiQNkXMcxYrBbDq7qzzWc1
         E37mIWnGwQfbPsVCGAMF+F/VmrsOSpV1lHwVja+UUizTgDhhQjCianBkNuyGO2DTwB7n
         MZuXsMAD1BrhUshRI+LjOBrolcCwJxnNb4m9MPYUqs7BEtAxr1zjB6Vk1VN1DOeLwgmt
         ONMjEmy+OaKwh1ZfDIjI0fy6lduFEKodWGONHsJYvnOc0XAwTfHLznqVVtwC2OFZtgo8
         3C7GGYxzbIWRuUeu1UPTigj5hq4RA7fKF0y29KMKF3eF6H1q9LP+X/ZyL3FYJYR4Xtgz
         m1Tg==
X-Gm-Message-State: AJIora+Z6fouyymGngjG6Wc2+QS4wvxgAGIxnpTfqFbAjZyojuKzt8/Q
        /CdOrCwedAdgl2vRs+YgmH3aMiNV3weM4gKmadQ=
X-Google-Smtp-Source: AGRyM1vzDQXfc2rhbWXh2y4MPdw7yb/m1S0z3CLNZ9VCTuYCAj8GpbeC5k3C9khV9OB8RhUWrknS2w==
X-Received: by 2002:a17:906:7049:b0:70c:a5fe:d4f8 with SMTP id r9-20020a170906704900b0070ca5fed4f8mr20239129ejj.493.1657582401396;
        Mon, 11 Jul 2022 16:33:21 -0700 (PDT)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com. [209.85.128.45])
        by smtp.gmail.com with ESMTPSA id v13-20020a17090606cd00b0070f7d1c5a18sm3190451ejb.55.2022.07.11.16.33.21
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Jul 2022 16:33:21 -0700 (PDT)
Received: by mail-wm1-f45.google.com with SMTP id z23-20020a7bc7d7000000b003a2e00222acso215934wmk.0
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 16:33:21 -0700 (PDT)
X-Received: by 2002:a05:600c:3d95:b0:3a2:e97b:f3ae with SMTP id
 bi21-20020a05600c3d9500b003a2e97bf3aemr728744wmb.188.1657582077548; Mon, 11
 Jul 2022 16:27:57 -0700 (PDT)
MIME-Version: 1.0
References: <1657346375-1461-1-git-send-email-quic_akhilpo@quicinc.com> <20220709112837.v2.5.I7291c830ace04fce07e6bd95a11de4ba91410f7b@changeid>
In-Reply-To: <20220709112837.v2.5.I7291c830ace04fce07e6bd95a11de4ba91410f7b@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 11 Jul 2022 16:27:45 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XzvcjS51q78BZ=FPCEVUDMD+VKJ70ksCm5V4qwHN_wRg@mail.gmail.com>
Message-ID: <CAD=FV=XzvcjS51q78BZ=FPCEVUDMD+VKJ70ksCm5V4qwHN_wRg@mail.gmail.com>
Subject: Re: [PATCH v2 5/7] arm64: dts: qcom: sc7280: Update gpu register list
To:     Akhil P Oommen <quic_akhilpo@quicinc.com>
Cc:     freedreno <freedreno@lists.freedesktop.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Rob Clark <robdclark@gmail.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Jonathan Marek <jonathan@marek.ca>,
        Jordan Crouse <jordan@cosmicpenguin.net>,
        Matthias Kaehlcke <mka@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Stephen Boyd <swboyd@chromium.org>
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

On Fri, Jul 8, 2022 at 11:00 PM Akhil P Oommen <quic_akhilpo@quicinc.com> wrote:
>
> Update gpu register array with gpucc memory region.
>
> Signed-off-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
> ---
>
> (no changes since v1)
>
>  arch/arm64/boot/dts/qcom/sc7280.dtsi | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> index e66fc67..defdb25 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -2228,10 +2228,12 @@
>                         compatible = "qcom,adreno-635.0", "qcom,adreno";
>                         reg = <0 0x03d00000 0 0x40000>,
>                               <0 0x03d9e000 0 0x1000>,
> -                             <0 0x03d61000 0 0x800>;
> +                             <0 0x03d61000 0 0x800>,
> +                             <0 0x03d90000 0 0x2000>;
>                         reg-names = "kgsl_3d0_reg_memory",
>                                     "cx_mem",
> -                                   "cx_dbgc";
> +                                   "cx_dbgc",
> +                                   "gpucc";

This doesn't seem right. Shouldn't you be coordinating with the
existing gpucc instead of reaching into its registers?

-Doug
