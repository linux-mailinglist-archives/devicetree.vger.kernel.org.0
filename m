Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 760153DA8E7
	for <lists+devicetree@lfdr.de>; Thu, 29 Jul 2021 18:24:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230406AbhG2QYs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Jul 2021 12:24:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33666 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230228AbhG2QYq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Jul 2021 12:24:46 -0400
Received: from mail-qk1-x732.google.com (mail-qk1-x732.google.com [IPv6:2607:f8b0:4864:20::732])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E44DC061765
        for <devicetree@vger.kernel.org>; Thu, 29 Jul 2021 09:24:41 -0700 (PDT)
Received: by mail-qk1-x732.google.com with SMTP id t66so6586311qkb.0
        for <devicetree@vger.kernel.org>; Thu, 29 Jul 2021 09:24:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=lrbYP93L2tMwFoTHuD2bfzhhJvQFO01pQtZG8WiVqAk=;
        b=Sohrb55AH82uy9S0BXeyNZ+trj8sQwFMFTGrix422Z6JvroYXcGAMVMQf7fIlpvDAs
         eZruADDr/U7SRQI+eFcQ/AqKzwY8WC1A7fGTSbCrnns45gvM6Zp7rbHVWbq2N4Li0+mk
         r879Og8Y8m072gVYEPBs0guffl9ggBZ5X88x4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lrbYP93L2tMwFoTHuD2bfzhhJvQFO01pQtZG8WiVqAk=;
        b=suC0maL3TxoZ1s6+eEXmkwI3Fzq8pXG3Ofbt05XQNrpgNN0msUYR/C4GS43jd3CNTP
         lbv3J3Vkj3Yfj2c5q6fEUxBSAgU9TBOEOlw1Rpu9AwPlenzJieGpApGyR5uYR+sqWGJr
         7LLHbTZlr3fHdABs2T5fTE+Scyl1/Kz+ya1dCkEHX8PteUXxH2yTqw7r8D9wpIN0n8Ku
         cCcG8sMOpn9wJmIUDynAgXmxQqQ/gygDUtTXYC2q0ks3rssgz/AHT7xHwgPl6BSfjHiT
         HyJnT1kwlC6k18oivp72yV3FTu3Zt68r2Q+eK0sC8teQvLY4qbckBm+s88JR68NJIY64
         yq5A==
X-Gm-Message-State: AOAM531Chiw6czQMOmlzWFQCSe/JjEe1wla/MTBJrS39Ys+TJcYd2zF3
        KXVc5ij++B8jrbOripJsj5pIrkJUxpGaYA==
X-Google-Smtp-Source: ABdhPJyc+vOMSSHSjJ5vDKtUxbM/hp50Op1X1sYgesB2rqKpjz2SgBWxbj8TbEoTT+zN22e3GinJlQ==
X-Received: by 2002:a37:cd0:: with SMTP id 199mr6049580qkm.69.1627575880480;
        Thu, 29 Jul 2021 09:24:40 -0700 (PDT)
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com. [209.85.219.176])
        by smtp.gmail.com with ESMTPSA id g26sm1937546qkm.122.2021.07.29.09.24.39
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jul 2021 09:24:39 -0700 (PDT)
Received: by mail-yb1-f176.google.com with SMTP id a201so11071702ybg.12
        for <devicetree@vger.kernel.org>; Thu, 29 Jul 2021 09:24:39 -0700 (PDT)
X-Received: by 2002:a25:2904:: with SMTP id p4mr7625518ybp.276.1627575878937;
 Thu, 29 Jul 2021 09:24:38 -0700 (PDT)
MIME-Version: 1.0
References: <1627560036-1626-1-git-send-email-rnayak@codeaurora.org> <1627560036-1626-4-git-send-email-rnayak@codeaurora.org>
In-Reply-To: <1627560036-1626-4-git-send-email-rnayak@codeaurora.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 29 Jul 2021 09:24:28 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UYsKNgZZUmAM22Mwxz7fJFN_3p0YRx6W3dnZHvd13_Zg@mail.gmail.com>
Message-ID: <CAD=FV=UYsKNgZZUmAM22Mwxz7fJFN_3p0YRx6W3dnZHvd13_Zg@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: sc7280: Add qfprom node
To:     Rajendra Nayak <rnayak@codeaurora.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        "Ravi Kumar Bokka (Temp)" <rbokka@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Jul 29, 2021 at 5:01 AM Rajendra Nayak <rnayak@codeaurora.org> wrote:
>
> Add the qfprom node and its properties for the sc7280 SoC.
>
> Signed-off-by: Rajendra Nayak <rnayak@codeaurora.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7280.dtsi | 13 +++++++++++++
>  1 file changed, 13 insertions(+)

Peachy! I guess a future patch will add things like USB2 trim and GPU
speed bin definitions?

Reviewed-by: Douglas Anderson <dianders@chromium.org>
