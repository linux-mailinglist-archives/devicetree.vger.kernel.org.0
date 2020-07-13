Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8D23A21A895
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2020 22:05:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726289AbgGIUFz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Jul 2020 16:05:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42660 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726220AbgGIUFy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Jul 2020 16:05:54 -0400
Received: from mail-vs1-xe41.google.com (mail-vs1-xe41.google.com [IPv6:2607:f8b0:4864:20::e41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 774EEC08C5CE
        for <devicetree@vger.kernel.org>; Thu,  9 Jul 2020 13:05:54 -0700 (PDT)
Received: by mail-vs1-xe41.google.com with SMTP id a17so1782994vsq.6
        for <devicetree@vger.kernel.org>; Thu, 09 Jul 2020 13:05:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=AinvQ5PJ9tMDmXSnO6ck/b394CwO1KeWDAa17fxTsYg=;
        b=YRWjysvDqa2DekkVgn/4ZOp6k855hwYraXOphC7+nCx7SuZ5nn61o38XK5X/azo5P6
         drSB++in4V2a93h0pcnzC1YcaT7j+hXWsH8/6k6A5t7ABanFshrtH+gezzIZW7I8Hjxc
         FhYBkILnSTuLzBLAunNFHZckck10Glqgq4A5Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=AinvQ5PJ9tMDmXSnO6ck/b394CwO1KeWDAa17fxTsYg=;
        b=nVByvi6geV66Sid0fWRUWO0w/qp2Y5t3IPuAHJ9kCgLiEn0cEiS4EM75G8iy3fI+7p
         q2/EdybgkdkBm/V+O13hQk0JEJs30HhSTl5XcXra/s20V+6yqrWp9jtfFZzuHlNBLPif
         oISazU3h2GZvzxmuA+bjSQ5UshbIKlDTgSw58vBoAhmuvpC4z6trYdyB7qq2ugsx7rvI
         aEOKFQ6+uY+Lpg/YaSVoBqfpshuh0nyMCbX+5FvF1Iu4/+XpJnMAH8AIleq7nyGATwXH
         JeX3aiI0AS+QnHWRBJn7jl/dnzDrvfEiR/mYXhL65FlWWS4c2lczKxmHlK8NvBsW7VNZ
         ufrA==
X-Gm-Message-State: AOAM531ymGarKJ3Pq90v9kVmysJLRv16vYAaV6ifzqW/dDdPdhPS9r9M
        45gxcgr8KM/oHm6kaKA+DQYl39XVDz4=
X-Google-Smtp-Source: ABdhPJyCfu7LeQKMN1YEMvicbtknlECHBo+OnldNyVz/qA0sxv5GozCgHv9eTeRKeOQhqeO2E/XkQg==
X-Received: by 2002:a67:f454:: with SMTP id r20mr44928670vsn.20.1594325153415;
        Thu, 09 Jul 2020 13:05:53 -0700 (PDT)
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com. [209.85.217.53])
        by smtp.gmail.com with ESMTPSA id d123sm540598vke.43.2020.07.09.13.05.52
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jul 2020 13:05:52 -0700 (PDT)
Received: by mail-vs1-f53.google.com with SMTP id x205so1764585vsc.11
        for <devicetree@vger.kernel.org>; Thu, 09 Jul 2020 13:05:52 -0700 (PDT)
X-Received: by 2002:a05:6102:30b5:: with SMTP id y21mr26283797vsd.42.1594325151959;
 Thu, 09 Jul 2020 13:05:51 -0700 (PDT)
MIME-Version: 1.0
References: <1594286253-32244-1-git-send-email-pillair@codeaurora.org>
In-Reply-To: <1594286253-32244-1-git-send-email-pillair@codeaurora.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 9 Jul 2020 13:05:40 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XQy17ZuKdJXPH20uGTrEtPrDacDXAg+rTA96HBm6hVVw@mail.gmail.com>
Message-ID: <CAD=FV=XQy17ZuKdJXPH20uGTrEtPrDacDXAg+rTA96HBm6hVVw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc7180: Add missing properties for Wifi node
To:     Rakesh Pillai <pillair@codeaurora.org>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Evan Green <evgreen@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        Sibi Sankar <sibis@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Jul 9, 2020 at 2:18 AM Rakesh Pillai <pillair@codeaurora.org> wrote:
>
> The wlan firmware memory is statically mapped in
> the Trusted Firmware, hence the wlan driver does
> not need to map/unmap this region dynamically.
>
> Hence add the property to indicate the wlan driver
> to not map/unamp the firmware memory region
> dynamically.
>
> Also add the chain1 voltage supply for wlan.
>
> Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>
> ---
> This patch is created on top of the change by
> Douglas Anderson.
> https://lkml.org/lkml/2020/6/25/817
>
> Also the dt-bindings for the chain1 voltage supply
> is added by the below patch series:
> https://patchwork.kernel.org/project/linux-wireless/list/?series=309137
> ---
>  arch/arm64/boot/dts/qcom/sc7180-idp.dts | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sc7180-idp.dts b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> index 472f7f4..4c64bc1 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> +++ b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> @@ -391,10 +391,12 @@
>
>  &wifi {
>         status = "okay";
> +       qcom,msa-fixed-perm;

At one point in time I thought +Sibi said that this wouldn't be needed
once the firmware was fixed.  ...afterwards you said that it was
needed for SSR (subsystem reset).  Would be good to get confirmation
from Sibi that this matches his understanding.


>         vdd-0.8-cx-mx-supply = <&vreg_l9a_0p6>;
>         vdd-1.8-xo-supply = <&vreg_l1c_1p8>;
>         vdd-1.3-rfa-supply = <&vreg_l2c_1p3>;
>         vdd-3.3-ch0-supply = <&vreg_l10c_3p3>;
> +       vdd-3.3-ch1-supply = <&vreg_l11c_3p3>;
>         wifi-firmware {
>                 iommus = <&apps_smmu 0xc2 0x1>;
>         };

Other than the one question this looks good to me.

-Doug
