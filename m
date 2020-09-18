Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D8CB526FF5B
	for <lists+devicetree@lfdr.de>; Fri, 18 Sep 2020 15:59:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726415AbgIRN7K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Sep 2020 09:59:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51270 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726253AbgIRN7J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Sep 2020 09:59:09 -0400
Received: from mail-vk1-xa43.google.com (mail-vk1-xa43.google.com [IPv6:2607:f8b0:4864:20::a43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B282C0613CE
        for <devicetree@vger.kernel.org>; Fri, 18 Sep 2020 06:59:09 -0700 (PDT)
Received: by mail-vk1-xa43.google.com with SMTP id t189so1435455vka.10
        for <devicetree@vger.kernel.org>; Fri, 18 Sep 2020 06:59:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=yZx4kJcNFEjGr4SDJUskmqm2bu+XUaenHe1fGMPrn78=;
        b=lYx6gFCUgc1VTSHP5PLNZP54DR80Q6CK2e/EdfEDUk7E69mE+ebuqQm1OJW4ypV1cE
         TMIbDp9vCVl0fSbB/Aoaq0Hgm2akeSa+Zbv+NBsd9lcl+T5zSJSbdajbhcUAfqBYNdhm
         WvLwJ2X4e+ScmVFy4f2N+n6AmyCTkLe7jvwk0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=yZx4kJcNFEjGr4SDJUskmqm2bu+XUaenHe1fGMPrn78=;
        b=I9uNpqf15pZDxaTG85SVh53YVAu4Yyc64HGIxxa8ssB7+E3xL7OSvuAfdoAdQ24eDW
         0mYaLWOoBKT7v27JAmtLpBqd2R7L6L8GtJpa0+DlAt4nQqBU4+m1IDWlguHKWOsWsjJ8
         OqZgpbqUgcAeoFEaVg4ezfHCwcSzBx+8HxOe1VVC8mbMo4ZMSPk5PY3btG1y/0LP2Ane
         pGmaruiMF8HG6u+ErjZBxk2iLB0AW9Arpj18z20BvQBj44GQrPjJUJ1Ft1vPY7vaC/lx
         v/S7QiX1iavvezhkdKJSR5sqeVc9vwj+ZK/BWGtfCLz+YEJdpTlDsY7pZYmwBha2Img2
         Rsjw==
X-Gm-Message-State: AOAM530JBG2mDkiYPbQXfHl/UQ4x6S4slDXzHH/6ChSMS7RGfpWbgt08
        kNka9v+6xyrwUUJnewXO/SM78ZJqytFjAQ==
X-Google-Smtp-Source: ABdhPJzgf55rrgDZ4wvCnpBkNtl2K5MNk7BFtB/vKdP3KFYfY7rr5xuotYIboLDP8n2ev+S/83eBwQ==
X-Received: by 2002:a1f:bf53:: with SMTP id p80mr20322116vkf.5.1600437548361;
        Fri, 18 Sep 2020 06:59:08 -0700 (PDT)
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com. [209.85.217.50])
        by smtp.gmail.com with ESMTPSA id s8sm473039vke.48.2020.09.18.06.59.07
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 06:59:07 -0700 (PDT)
Received: by mail-vs1-f50.google.com with SMTP id b123so3616514vsd.10
        for <devicetree@vger.kernel.org>; Fri, 18 Sep 2020 06:59:07 -0700 (PDT)
X-Received: by 2002:a67:8bc2:: with SMTP id n185mr12030703vsd.49.1600437546889;
 Fri, 18 Sep 2020 06:59:06 -0700 (PDT)
MIME-Version: 1.0
References: <1600435026-1876-1-git-send-email-srivasam@codeaurora.org>
In-Reply-To: <1600435026-1876-1-git-send-email-srivasam@codeaurora.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 18 Sep 2020 06:58:55 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WtSEB6-M8x564t=RuSEKHwH3YvcmuZ9VGpxY+5kcL7rA@mail.gmail.com>
Message-ID: <CAD=FV=WtSEB6-M8x564t=RuSEKHwH3YvcmuZ9VGpxY+5kcL7rA@mail.gmail.com>
Subject: Re: [PATCH v3] arm64: dts: qcom: sc7180: Add lpass cpu node for I2S driver
To:     Srinivasa Rao Mandadapu <srivasam@codeaurora.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Rohit kumar <rohitkr@codeaurora.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Ajit Pandey <ajitp@codeaurora.org>,
        Cheng-Yi Chiang <cychiang@chromium.org>,
        V Sujith Kumar Reddy <vsujithk@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Sep 18, 2020 at 6:18 AM Srinivasa Rao Mandadapu
<srivasam@codeaurora.org> wrote:
>
> --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> @@ -1742,6 +1742,45 @@
>                                 };
>                         };
>
> +                       sec_mi2s_active: sec-mi2s-active {
> +                               pinmux {
> +                                       pins = "gpio49", "gpio50", "gpio51";
> +                                       function = "mi2s_1";
> +                               };
> +
> +                               pinconf {
> +                                       pins = "gpio49", "gpio50", "gpio51";;

There are still two ";" on the above line.
