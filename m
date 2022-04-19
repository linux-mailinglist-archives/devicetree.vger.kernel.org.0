Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BC656507072
	for <lists+devicetree@lfdr.de>; Tue, 19 Apr 2022 16:28:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239201AbiDSOar (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Apr 2022 10:30:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46090 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232482AbiDSOar (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Apr 2022 10:30:47 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81E3021E39
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 07:28:01 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id u15so33265703ejf.11
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 07:28:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Nj2bwCdNC7HwvELjhLY4xYS1yLs5HxcxFqDH74I+UnY=;
        b=B3SiqcstytlQ82E04Waa6/M3nW29rmiBNUkLFmC9WM7jnffgpNy6IjRFV0crd0hF7R
         kcF8m9ktNN+w8ii5kTtxi7D8LCi3jl+5QjVAHw3yc5CQBdM3VTFLDGas2ytvluL/OURr
         GHEZ7O/R/ENukYVhf76eBTjEKHNirDS9hihnk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Nj2bwCdNC7HwvELjhLY4xYS1yLs5HxcxFqDH74I+UnY=;
        b=pBSvRXeLPip7dt1qBaO8tE4edbyS6lZUwejldrtrNpIfxRlDz/oc9zaBQBX/Md0gLJ
         eFAVeFRKqlfSaMuVw/UV7xlNzXmP7d1y3mIblI2AvZZgkdNsxiw7ITVplel1X3IzsNmy
         XKRTIepO8jTGumsrgiRi0RaKoPP/HiCvz/YEO/4JtRA1M+yKNkBz6fcHM6rjbHFut5PU
         nyrXC6nY2KuBAVOQfSQ3ilZoRmyP1AgHbpFMS8ghBwSc80nmjRIUc6kRZYTGwHI/JL1i
         qe0JbAChv5GQ2V4HiXjCU4w9DzDrnWgur+aTQ0ODaILhhy3EWnTM6nyK+GqXWBzQeINS
         SaPg==
X-Gm-Message-State: AOAM533o2cpEd6Eawymo2u0mNK0WXZYMLnGs77KzBFc/m57mzbpYB6H4
        lMPBtFUb9DNG0+Cq8UY9hHvYo4SEiZXcEU51
X-Google-Smtp-Source: ABdhPJxVrmdV6eFyGB5ePCeSZAGonyJcsRg5iyAQ6mkTkPfvepbMm7Gb0LzLbN2Zd6nbLVFFFK4MBg==
X-Received: by 2002:a17:907:2cc4:b0:6df:a036:a025 with SMTP id hg4-20020a1709072cc400b006dfa036a025mr14626376ejc.554.1650378479715;
        Tue, 19 Apr 2022 07:27:59 -0700 (PDT)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com. [209.85.221.53])
        by smtp.gmail.com with ESMTPSA id v20-20020a056402349400b00419651e513asm8632985edc.45.2022.04.19.07.27.58
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Apr 2022 07:27:59 -0700 (PDT)
Received: by mail-wr1-f53.google.com with SMTP id g18so22648910wrb.10
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 07:27:58 -0700 (PDT)
X-Received: by 2002:a05:6000:1105:b0:20a:80b4:bcaf with SMTP id
 z5-20020a056000110500b0020a80b4bcafmr11868665wrw.679.1650378478239; Tue, 19
 Apr 2022 07:27:58 -0700 (PDT)
MIME-Version: 1.0
References: <1650349697-13540-1-git-send-email-quic_vnivarth@quicinc.com> <1650349697-13540-3-git-send-email-quic_vnivarth@quicinc.com>
In-Reply-To: <1650349697-13540-3-git-send-email-quic_vnivarth@quicinc.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 19 Apr 2022 07:27:46 -0700
X-Gmail-Original-Message-ID: <CAD=FV=W6R9iPt1aCDpq4BRBfZ+KFUsOAUKCOhY2KQo_GpMhoiQ@mail.gmail.com>
Message-ID: <CAD=FV=W6R9iPt1aCDpq4BRBfZ+KFUsOAUKCOhY2KQo_GpMhoiQ@mail.gmail.com>
Subject: Re: [V4 2/2] arch: arm64: dts: qcom: sc7280-qcard: Configure cts
 pinctrl to bias-bus-hold
To:     Vijaya Krishna Nivarthi <quic_vnivarth@quicinc.com>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        krzysztof.kozlowski+dt@linaro.org,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        quic_msavaliy@quicinc.com
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

On Mon, Apr 18, 2022 at 11:28 PM Vijaya Krishna Nivarthi
<quic_vnivarth@quicinc.com> wrote:
>
> WLAN rail was leaking power during RBSC/sleep even after turning BT off.
> Change sleep pinctrl configuration to handle same.
>
> Signed-off-by: Vijaya Krishna Nivarthi <quic_vnivarth@quicinc.com>
> ---
> v4: modify subject of patch to indicate file it is applying to
> v3: apply same change to active state and other sc7280*.dts* as well
> v2: used bias-bus-hold as per review comments
> v1: intial patch used bias-disable for sleep pinctrl in sc7280-idp only
> ---
>  arch/arm64/boot/dts/qcom/sc7280-qcard.dtsi | 13 ++++++++-----
>  1 file changed, 8 insertions(+), 5 deletions(-)

You should have carried my tag forward. In any case:

Reviewed-by: Douglas Anderson <dianders@chromium.org>
