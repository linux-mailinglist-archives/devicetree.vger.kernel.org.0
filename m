Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 523C24DD1C2
	for <lists+devicetree@lfdr.de>; Fri, 18 Mar 2022 01:14:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230499AbiCRAOX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Mar 2022 20:14:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230508AbiCRAOW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Mar 2022 20:14:22 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8F1515DABB
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 17:13:02 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id pv16so14103872ejb.0
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 17:13:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ivABL/zW17W3xsGsFU4NNFD2vIhj9kJM89ziwsXeP4A=;
        b=I6jh5qUUAfPbuFRo6X1vzR4jyxk+Jwj+tM+hcWGcNJ80NKQdHD3dt4WyBUnPLaQ43u
         fY4hRGaRDpfdxsttq4ka6QQ3hsN/FLOiF/BWyTy1eAv5/n1k20hVkDNHY/wy2ucHyIUT
         LyPuzoXHOq8/3MYayGZMQIPpAv4JbHhGQwbek=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ivABL/zW17W3xsGsFU4NNFD2vIhj9kJM89ziwsXeP4A=;
        b=etVeGeHIoD0Kikl9o0z1/L0tyahc8VIk1RnFsKl2TCJ15fTILKwR+0Ubl6z41cmRru
         9h+T+7BiN51/UDBDn9BgEt0GQCPF0RfZS+XIJRxfpZZ7kyASnCNLdMgG9SOZ3u5sYX6x
         V3X8nzPoSnJQ3EmDCGv1eBLmpcdPRc5PpTz+dPv3WvKDicmJj9MxepZnT534suR609u2
         AoRQHey2/oj8XU/1ac5d5gNreQzp7GUknXVKNOp2HokvK7QPltjvm2+IswxRcmH4Jkps
         +hOh74Pj9/prCWv8tE6DEdhmriC+UIWOEYh1z3HmkESA2oRIvjZaCe05RuUZ1qF62Gz/
         bJtA==
X-Gm-Message-State: AOAM531OkYs0m5Aj5O5XH72MrQrU44/o+njjxSNmu0A24762ZVniQWGQ
        DiIB5TIOdH7fWhhpoZ6ubEvH5O3ZSHGMJ7ZBOHI=
X-Google-Smtp-Source: ABdhPJx+uhuaG90ohH7CZY6j8E5p8I1TJ4F0Rk8eZtdFwyCUtOz8dYWzglZdYkU5a6h5sTLYWHISJw==
X-Received: by 2002:a17:906:3583:b0:6d1:c07:fac0 with SMTP id o3-20020a170906358300b006d10c07fac0mr6606426ejb.749.1647562381065;
        Thu, 17 Mar 2022 17:13:01 -0700 (PDT)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com. [209.85.128.44])
        by smtp.gmail.com with ESMTPSA id di6-20020a170906730600b006df8831ec5asm2203310ejc.114.2022.03.17.17.12.59
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Mar 2022 17:13:00 -0700 (PDT)
Received: by mail-wm1-f44.google.com with SMTP id r190-20020a1c2bc7000000b0038a1013241dso4051380wmr.1
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 17:12:59 -0700 (PDT)
X-Received: by 2002:a05:600c:3c8a:b0:389:cf43:eaf6 with SMTP id
 bg10-20020a05600c3c8a00b00389cf43eaf6mr5932331wmb.199.1647562379575; Thu, 17
 Mar 2022 17:12:59 -0700 (PDT)
MIME-Version: 1.0
References: <1647269217-14064-1-git-send-email-quic_vpolimer@quicinc.com> <1647269217-14064-5-git-send-email-quic_vpolimer@quicinc.com>
In-Reply-To: <1647269217-14064-5-git-send-email-quic_vpolimer@quicinc.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 17 Mar 2022 17:12:46 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VQV-2LTmVEPuJJYUhTpBT15A1fKAsRbZgpni8rGNNFsw@mail.gmail.com>
Message-ID: <CAD=FV=VQV-2LTmVEPuJJYUhTpBT15A1fKAsRbZgpni8rGNNFsw@mail.gmail.com>
Subject: Re: [PATCH v6 4/5] arm64: dts: qcom: sdm845: remove
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
>  arch/arm64/boot/dts/qcom/sdm845.dtsi | 9 ++-------
>  1 file changed, 2 insertions(+), 7 deletions(-)

Similar comments to patch #2 about the commit message, but otherwise:

Reviewed-by: Douglas Anderson <dianders@chromium.org>
