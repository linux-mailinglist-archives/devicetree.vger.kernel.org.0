Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 77EA44DD1C9
	for <lists+devicetree@lfdr.de>; Fri, 18 Mar 2022 01:14:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230313AbiCRAOP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Mar 2022 20:14:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52026 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230496AbiCRAON (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Mar 2022 20:14:13 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2EAD0972BF
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 17:12:56 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id x34so7312184ede.8
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 17:12:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0JxEaW4VXWR40cLYJjku9wMK0TYnJdxwPBMKsUQN5x4=;
        b=WmrOuRLIO0Ac2yhoWChAS3mMdEymf9q2gT1itHWGIVZGaH+oPlHGJc4Ee3mLhpjJyz
         /KOPyenA4596wt5yxVjvtdxfN8GH4bugNcacafDRuP5vH1xVx88HWnxUWlfstXDyW9iQ
         j77Pr/D/gx7SNRYOy03j2fM7u66ODTiwxMI7w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0JxEaW4VXWR40cLYJjku9wMK0TYnJdxwPBMKsUQN5x4=;
        b=i6plWi/r5FPcOfCAsl7tUd+EJ33MPd3yOCCPUYqEUrQH1MREndsyAus/TJtgZRPeoB
         VKDzGEZXKKiQsDqAgPngJLSJFpKVMUWiFToJd9TGtGU3Bfj3vmD9/zEJZdtJHpW1FCv1
         dHvTdBDT1r4zz+0iGsOZBNQLcAIOC3a0rXGYd+xhy46ZwWhmaXKidr1GQgqYnzcVZpkJ
         ZeU5wTucZ9YBg4pr9aoXtAS4xfn6UIJ0aPvdHIZ8V21fNlrmOcyyddOlRdt5wAVB20kv
         CxzRAvR0gyS+a/h5kqHgen1dpQO8KXqZgy7Ggn+nHLj1HKa60SpMOyjNPyZYCNCyqLn9
         +VSg==
X-Gm-Message-State: AOAM531mByAlE5348u+/XR/NB1U+r580qc0L7tLZGHt0yIlj+gaPRL9s
        SAYJWiwXAh1+Kpx4nrxG5q15CwX+RS5sdDikPbs=
X-Google-Smtp-Source: ABdhPJwqz3GTaeGnkzKgXSLDhtMcOb59BOhAMqhyAlfeSEz/NDmllSpI5pjAS329xTcp8+sojSoVrQ==
X-Received: by 2002:a05:6402:40d1:b0:418:e73c:a1a8 with SMTP id z17-20020a05640240d100b00418e73ca1a8mr6870028edb.321.1647562374304;
        Thu, 17 Mar 2022 17:12:54 -0700 (PDT)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com. [209.85.128.44])
        by smtp.gmail.com with ESMTPSA id c14-20020a170906340e00b006ce98f2581asm3011245ejb.205.2022.03.17.17.12.53
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Mar 2022 17:12:53 -0700 (PDT)
Received: by mail-wm1-f44.google.com with SMTP id 123-20020a1c1981000000b0038b3616a71aso4035581wmz.4
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 17:12:53 -0700 (PDT)
X-Received: by 2002:a1c:7518:0:b0:37c:7eb:f255 with SMTP id
 o24-20020a1c7518000000b0037c07ebf255mr13488223wmc.29.1647562372833; Thu, 17
 Mar 2022 17:12:52 -0700 (PDT)
MIME-Version: 1.0
References: <1647269217-14064-1-git-send-email-quic_vpolimer@quicinc.com> <1647269217-14064-4-git-send-email-quic_vpolimer@quicinc.com>
In-Reply-To: <1647269217-14064-4-git-send-email-quic_vpolimer@quicinc.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 17 Mar 2022 17:12:39 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VXJJYUhDYau1HEG4M7aKA4vVzN7xh_LAJXf_r=Tj0XZA@mail.gmail.com>
Message-ID: <CAD=FV=VXJJYUhDYau1HEG4M7aKA4vVzN7xh_LAJXf_r=Tj0XZA@mail.gmail.com>
Subject: Re: [PATCH v6 3/5] arm64: dts: qcom: sm7180: remove
 assigned-clock-rate property for mdp clk
To:     Vinod Polimera <quic_vpolimer@quicinc.com>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        freedreno <freedreno@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Rob Clark <robdclark@gmail.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        quic_kalyant <quic_kalyant@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Mar 14, 2022 at 7:47 AM Vinod Polimera
<quic_vpolimer@quicinc.com> wrote:
>
> Drop the assigned clock rate property and vote on the mdp clock as per
> calculated value during the usecase.
>
> This patch is dependent on below patch
> https://patchwork.kernel.org/patch/12774067/
>
> Signed-off-by: Vinod Polimera <quic_vpolimer@quicinc.com>
> Reviewed-by: Stephen Boyd <swboyd@chromium.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7180.dtsi | 9 ++-------
>  1 file changed, 2 insertions(+), 7 deletions(-)

Similar comments to patch #2 about the commit message, but otherwise:

Reviewed-by: Douglas Anderson <dianders@chromium.org>
