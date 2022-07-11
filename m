Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4D3CF5707D4
	for <lists+devicetree@lfdr.de>; Mon, 11 Jul 2022 18:02:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229707AbiGKQCb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Jul 2022 12:02:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53812 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229699AbiGKQCb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Jul 2022 12:02:31 -0400
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com [IPv6:2607:f8b0:4864:20::d44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F660422F1
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 09:02:30 -0700 (PDT)
Received: by mail-io1-xd44.google.com with SMTP id n7so5327125ioo.7
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 09:02:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QQxLMmAEvX+K2A/q42hfIktD7BaiK+JMPvH65uBEZaA=;
        b=QY1RwoI+28PRf0qShn2T0MkMXofeHvPnOhJ8/2X1gNCd5AQ/yjecfyvqYaW+88dHTt
         BPrvH/k4b+A2tN/qWs77K8wtyqYxXtfbgYcdbfIC+oho3Nkrk9GXm+s0rERVMtGjjEJL
         TC83NdQkXbdvmUcIl5GW1ko060ufJM6cedpS8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QQxLMmAEvX+K2A/q42hfIktD7BaiK+JMPvH65uBEZaA=;
        b=pdIfmMF/PROCTZ6jtTbJgq8Ht0VeoGCY+YqG9g/Fpzq7W1ECHE8uq3Msn+kA4IvioG
         Ekj0Iq6E5ku9K3WlUX6d5Oee4EgyXbAhlxARCdARz+QtxhdFownEUiiceyzozEuaBcVN
         RadGQLScg9u+lHsywNDsiOIOBpHfcOGrrWZt3UfYtdMFn1JAh8UVqcVGhKHEfC1XlQyu
         aCf5igwN0QJugS/SnWURHYM7u9I/Gjqo6jRp7HK/aqDyKmoQ6lb4tK0LH71dx/PwJXqP
         B1TMQ8+73yn9mF7apFD1lXgeZ+I7Yu/mwxQXTkdAkZ2/yccCC8n75bJaYqtwT50ZVLHQ
         sUeQ==
X-Gm-Message-State: AJIora8DvDQSVGVsMEDIVk1ix8iNCz2F7zz3yhNj8AT+HsX08sBQVwB8
        Z10uv2U0/hAQ3tUT43LuH0t/4u8pF1qWCLN1DVw=
X-Google-Smtp-Source: AGRyM1t57glkm1LwttZNBUjRPp5alQhf7GNdLP3V1DAeM8yPKXRJZn2aK4JngtzSzYsLj3jCjEtoqA==
X-Received: by 2002:a6b:7c41:0:b0:67b:74a7:b0e1 with SMTP id b1-20020a6b7c41000000b0067b74a7b0e1mr8734872ioq.148.1657555350074;
        Mon, 11 Jul 2022 09:02:30 -0700 (PDT)
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com. [209.85.166.43])
        by smtp.gmail.com with ESMTPSA id z15-20020a056602080f00b0067b4d6cecc8sm3822749iow.45.2022.07.11.09.02.29
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Jul 2022 09:02:30 -0700 (PDT)
Received: by mail-io1-f43.google.com with SMTP id z81so5384879iof.0
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 09:02:29 -0700 (PDT)
X-Received: by 2002:a05:6602:3988:b0:67b:9a59:d390 with SMTP id
 bw8-20020a056602398800b0067b9a59d390mr1412375iob.56.1657555349351; Mon, 11
 Jul 2022 09:02:29 -0700 (PDT)
MIME-Version: 1.0
References: <1657555122-18605-1-git-send-email-quic_khsieh@quicinc.com>
In-Reply-To: <1657555122-18605-1-git-send-email-quic_khsieh@quicinc.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 11 Jul 2022 09:02:16 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WC0XQqOyONddX37=ad8M4N2NHB5UTmDVZU5SEggLvFEA@mail.gmail.com>
Message-ID: <CAD=FV=WC0XQqOyONddX37=ad8M4N2NHB5UTmDVZU5SEggLvFEA@mail.gmail.com>
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
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Jul 11, 2022 at 8:58 AM Kuogee Hsieh <quic_khsieh@quicinc.com> wrote:
>
> Both vdda-1p2-supply and vdda-0p9-supply regulators are controlled
> by dp combo phy. Therefore remove them from dp controller.
>
> Signed-off-by: Kuogee Hsieh <quic_khsieh@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sc7280-qcard.dtsi | 3 ---
>  1 file changed, 3 deletions(-)

You also need to remove it from
`arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi`.

-Doug
