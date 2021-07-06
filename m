Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E4FEE3BDFC7
	for <lists+devicetree@lfdr.de>; Wed,  7 Jul 2021 01:26:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229811AbhGFX3C (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jul 2021 19:29:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38454 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229753AbhGFX3A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jul 2021 19:29:00 -0400
Received: from mail-qt1-x829.google.com (mail-qt1-x829.google.com [IPv6:2607:f8b0:4864:20::829])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B67EC06175F
        for <devicetree@vger.kernel.org>; Tue,  6 Jul 2021 16:26:19 -0700 (PDT)
Received: by mail-qt1-x829.google.com with SMTP id d1so732459qto.4
        for <devicetree@vger.kernel.org>; Tue, 06 Jul 2021 16:26:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=b9NAwsJ8xPNo6tBHGAy9B/tfdHedu+gEEwjXYjTIV5A=;
        b=fx9iG8nNUE/oGeq2ZZ0JrijeZdj7Bq5xLgfN0id4IHt3JEenbFhNscalBbWugnKqL2
         OedqLjinMRrzHfMbgSeec0aewcR2OCA25zc0dgVatB5BVnlmCDZSjWBKjhOVG7WGA6PE
         MNVIaPfBhsguodyetnF79nlPWMpKdizqKyPyV5AFAzz+TbUeJO6UZYwA8s/4PEIW+01c
         2jPNz2rnlaaVHouWF3fNRjh7+33350FpyhxBzwWdfjBmh6bn2HjHVGCtbaKH4LOB58du
         mf8BraZGzj8GtGxX4ARnxzTGysgrr/Ntykd5hf8+VchEdRo6Sv5WMVwk3a3VZIxSItB+
         3byg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=b9NAwsJ8xPNo6tBHGAy9B/tfdHedu+gEEwjXYjTIV5A=;
        b=C11nKDJVC8hoCtmKS/vSuGGmNtpKOaIw7nZ45CwcOg+RrpJX9PUE/eWoCZY1ebQVh1
         SWAZNLIJkCP+rk27QzDvG5c3bHKk6a1+A7hdKV9qiNKog1NVHyvuIST4KIoweqFVsehp
         xPpYzYWWJZ8Rdv9JBPovAYd9XK1YW/7kFHyuj6j1H51x/avZpO0lXD5mSwaEcKIjxJh/
         4vKPCZ+VmjaaK+wmPq2U7rPL3TERUplJrTiTjY5RJB6bJakvHCMMJpoCKBMWnVjM7L57
         OE7Qwex3cXCv6pQGRCB1ArGsAepUuDBUs88oSwyZqBFp7VZFgUxuQaVS3NkNFEl2pcZb
         LPCA==
X-Gm-Message-State: AOAM533L406M84gPEglzcxnRBl8HXQZriSTEAyY1YXXunUZeTgTqQP1w
        jccYYFds/jx9cgR7jGnV3skg7jxMGXA7ayLZLFbX7Q==
X-Google-Smtp-Source: ABdhPJx5Dmnxv/z5BA2XO1srzzahRumLPcJvkaT4DmcM/8mfzGx0KXUC+7xiDGhICgbxmmjcXDyJsc5M1y5ERg9uuts=
X-Received: by 2002:ac8:5b0d:: with SMTP id m13mr19600145qtw.364.1625613978231;
 Tue, 06 Jul 2021 16:26:18 -0700 (PDT)
MIME-Version: 1.0
References: <20210706230702.299047-1-bryan.odonoghue@linaro.org> <20210706230702.299047-2-bryan.odonoghue@linaro.org>
In-Reply-To: <20210706230702.299047-2-bryan.odonoghue@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Wed, 7 Jul 2021 02:26:07 +0300
Message-ID: <CAA8EJpooqgScxnitvBjgofBk3cqEqOsO-sWU8VP07KpB10XT6A@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sm8250: fix usb2 qmp phy node
To:     "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>
Cc:     Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        "open list:DRM DRIVER FOR MSM ADRENO GPU" 
        <linux-arm-msm@vger.kernel.org>, linux-phy@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Jonathan Marek <jonathan@marek.ca>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Him

On Wed, 7 Jul 2021 at 02:05, Bryan O'Donoghue
<bryan.odonoghue@linaro.org> wrote:
>
> From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>
> Use 'lanes' as SuperSpeed lanes device node instead of just 'lane' to
> fix issues with TypeC support.

I think this should not be required anymore, it is a leftover from the
previous series which used strcmp("lanes") to create phys.

>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Fixes: be0624b99042 ("arm64: dts: qcom: sm8250: Add USB and PHY device nodes")
> Cc: robh+dt@kernel.org
> Cc: devicetree@vger.kernel.org
> Tested-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8250.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> index 4c0de12aaba6..270d7ff59ec1 100644
> --- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> @@ -2123,7 +2123,7 @@ usb_2_qmpphy: phy@88eb000 {
>                                  <&gcc GCC_USB3_PHY_SEC_BCR>;
>                         reset-names = "phy", "common";
>
> -                       usb_2_ssphy: lane@88eb200 {
> +                       usb_2_ssphy: lanes@88eb200 {
>                                 reg = <0 0x088eb200 0 0x200>,
>                                       <0 0x088eb400 0 0x200>,
>                                       <0 0x088eb800 0 0x800>;
> --
> 2.30.1
>


--
With best wishes
Dmitry
