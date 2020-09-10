Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 13E6E264833
	for <lists+devicetree@lfdr.de>; Thu, 10 Sep 2020 16:46:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729005AbgIJOpz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Sep 2020 10:45:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57664 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731223AbgIJOkm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Sep 2020 10:40:42 -0400
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com [IPv6:2607:f8b0:4864:20::e42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C797CC06179A
        for <devicetree@vger.kernel.org>; Thu, 10 Sep 2020 07:40:38 -0700 (PDT)
Received: by mail-vs1-xe42.google.com with SMTP id y194so3517126vsc.4
        for <devicetree@vger.kernel.org>; Thu, 10 Sep 2020 07:40:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8wYSv2yNWOcm4swEzcOjcSrWwn0iN5ISZ7p6aiaQtxY=;
        b=kj5yuItS5VW5RD+cgq8g4j3xq/R7MiuNMmVVtmTlNO/uY+xoAwD4LNuNxyQtyIbDec
         C5oWEWUkk1Uv9J97FOOUvy96B/Nnb5QKCBDMqnZyVYULLLSKjCHMDQjTdvDVB2pdvOVk
         igIGtx9irofGK2AiYhVhw1fm0moseGf1NxXyY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8wYSv2yNWOcm4swEzcOjcSrWwn0iN5ISZ7p6aiaQtxY=;
        b=LRq9DzQBp/1o5J1Hmq2DMmba28n8lhgbKaTjz4borrq9TrXRoFVDVfPkBl+QH0u3JX
         BoZae6VeuE4gQMpMir0K4Al7hBZ6cHIFlb54Ytz3fXpJkUg/iTKqKlIUKtqRq+js/UGu
         sNDEQL/5EnqCfEH1+2ecmZ7vPi6ejf01jTVA2Xus9I1fj9baorRaTbBHpm9UymbcjXQV
         1OkIesH1DABocxgR/WKMzCtChEV6LsFk4V4UlQOdzEN7Kt9+54XnixNoSdmiw6Gunwna
         YqaPhrgXPB90fAUxwq9WzIOq3c9aNSXCg4VPw1WcP5XSK9a++V6pDODk1Hi4jDBFcHa3
         R3eg==
X-Gm-Message-State: AOAM531VvbDI/FhX0rAk+3Je4SoMJNUYlgjvNYuD4w6f8FoxlOKw2lm1
        9poNmd+zt1BuUvGt2PXZI0Q8LaXWrO7zpA==
X-Google-Smtp-Source: ABdhPJy9eqstk8tPdHlXX/HachweOqddRyt7Xzooi4H0/gL+Oy2UJDADMPVHZBWqn/KQprdQR90MuQ==
X-Received: by 2002:a67:8c89:: with SMTP id o131mr4193642vsd.41.1599748837552;
        Thu, 10 Sep 2020 07:40:37 -0700 (PDT)
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com. [209.85.217.45])
        by smtp.gmail.com with ESMTPSA id v135sm827321vsv.22.2020.09.10.07.40.36
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Sep 2020 07:40:36 -0700 (PDT)
Received: by mail-vs1-f45.google.com with SMTP id b16so3508597vsl.6
        for <devicetree@vger.kernel.org>; Thu, 10 Sep 2020 07:40:36 -0700 (PDT)
X-Received: by 2002:a05:6102:10c2:: with SMTP id t2mr4114960vsr.10.1599748836032;
 Thu, 10 Sep 2020 07:40:36 -0700 (PDT)
MIME-Version: 1.0
References: <1599742438-16811-1-git-send-email-skakit@codeaurora.org> <1599742438-16811-3-git-send-email-skakit@codeaurora.org>
In-Reply-To: <1599742438-16811-3-git-send-email-skakit@codeaurora.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 10 Sep 2020 07:40:24 -0700
X-Gmail-Original-Message-ID: <CAD=FV=ULJqgHutr524wb-wVq4gejqo1p_zqRXP=h4Co6Gvmzew@mail.gmail.com>
Message-ID: <CAD=FV=ULJqgHutr524wb-wVq4gejqo1p_zqRXP=h4Co6Gvmzew@mail.gmail.com>
Subject: Re: [PATCH V5 2/4] arm64: dts: qcom: sc7180: Add necessary pinctrl
 and interrupt config for BT UART
To:     satya priya <skakit@codeaurora.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Akash Asthana <akashast@codeaurora.org>,
        Roja Rani Yarubandi <rojay@codeaurora.org>,
        msavaliy@qti.qualcomm.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Sep 10, 2020 at 5:55 AM satya priya <skakit@codeaurora.org> wrote:
>
> Add a suitable sleep configuration for uart3 to support Bluetooth wakeup.
>
> If QUP function is selected in sleep state, UART RTS/RFR is pulled high
> during suspend and BT SoC not able to send wakeup bytes. So, configure
> GPIO mode in sleep state to keep it low during suspend.
>
> Signed-off-by: satya priya <skakit@codeaurora.org>
> Reviewed-by: Akash Asthana <akashast@codeaurora.org>
> ---
> Changes in V2:
>  - This patch adds sleep state for BT UART. Newly added in V2.
>
> Changes in V3:
>  - Remove "output-high" for TX from both sleep and default states
>    as it is not required. Configure pull-up for TX in sleep state.
>
> Changes in V4:
>  - As per Matthias's comment, removed drive-strength for sleep state
>    and fixed nit-pick.
>
> Changes in V5:
>  - As per Matthias's comments, moved pinmux change for sleep state,
>    pinctrl and interrupt config to the board specific file.
>
>  arch/arm64/boot/dts/qcom/sc7180-idp.dts | 48 +++++++++++++++++++++++++++++++++
>  1 file changed, 48 insertions(+)

Similar comment to patch #1 in that this applies only to the IDP board
but that's not obvious from ${SUBJECT}


> diff --git a/arch/arm64/boot/dts/qcom/sc7180-idp.dts b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> index 04888df..e529a41 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> +++ b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
> @@ -344,6 +344,10 @@
>  };
>
>  &uart3 {
> +       pinctrl-names = "default", "sleep";
> +       pinctrl-1 = <&qup_uart3_sleep>;
> +       interrupts-extended = <&intc GIC_SPI 604 IRQ_TYPE_LEVEL_HIGH>,
> +                               <&tlmm 41 IRQ_TYPE_EDGE_FALLING>;

You need a:

/delete-property/interrupts;

...or, alternatively, a patch before this one that converts all the
UARTs in sc7180 to just use interrupts-extended.


>         status = "okay";

Slight nit is that usually I see the status line first.  All the other
instances in this file have it that way.  Can you match?




-Doug
