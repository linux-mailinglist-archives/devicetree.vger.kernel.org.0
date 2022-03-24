Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 029B04E6ACA
	for <lists+devicetree@lfdr.de>; Thu, 24 Mar 2022 23:40:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355457AbiCXWlt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Mar 2022 18:41:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355453AbiCXWls (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Mar 2022 18:41:48 -0400
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com [IPv6:2607:f8b0:4864:20::b2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1E79B82C2
        for <devicetree@vger.kernel.org>; Thu, 24 Mar 2022 15:40:15 -0700 (PDT)
Received: by mail-yb1-xb2f.google.com with SMTP id e203so2181962ybc.12
        for <devicetree@vger.kernel.org>; Thu, 24 Mar 2022 15:40:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=iiJcqfdkW8tVnyyJIJqmnqBzR0yFbfLpnmQsM64Y+cg=;
        b=wp4pAKae7bpigZHEaVAkKvlRVHXiX1Fm0lyuNqoHxbHRaCZL8vie+chEpU/oQPaVeG
         OVGCDSxIUOk2nuu9vcZ42gP0GdrmBV6hdomBnJPzkfITKq3PwpZxHPdG5jKqLOeyCGD0
         co2v/Fj9Sguys8kZ9AaKpjE3fsUpVpPgMby5/oS5T3QHUwrkf/mdNC+SddPQ1hWWBM7j
         V17N3hl8epFYRupoe4LtbbCwQ+q6XQgQDbLUzSJxtDKabfhjSG/YQGMPgHViJ9Wa0FJv
         P1nJLy+OcK3wa/iimPPZBeVkMGHbqi0K9J64TAM/Y6I3tghci9e/gXrqkHa9yLkfgm0a
         HCwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=iiJcqfdkW8tVnyyJIJqmnqBzR0yFbfLpnmQsM64Y+cg=;
        b=wd3V5HcSi93Kz42b1YbQcxsVoqDlLWt4JzcYS3ehQW6qDHejq0bqjtvPNBoVz4Obop
         170ncrvYXbwECpxb7ZddvdPxoCzOXFCel37iyTxr/iBPEPByfewIh2e09UI2dR4GoFDh
         UXZ+rA+ZVP0qmR6HXAgSyYZvzbeQjha37A9AmxBjYWPeGiurjT5WeMPgiK1rouEvAUbn
         ZJKiYGGQQBIqHlIpL25rzuAMk/1BALeWCliXmJQwe3+g/Joo/mpWQNXM6MsMEBH0PCjR
         CgeZRsfuM0mSDaXkqZhrEXxG9FYBwRre+On+3+qWhypZxd0JMdmMTr5ky9OOGNGrX2gX
         xN/w==
X-Gm-Message-State: AOAM530J9tc+3ORQbK2Z68hVT5iTjgXMklwJgXF4QVDeze9SdEl5AJCm
        fYpJ+Fs+xhyJaYkdnBJlgxi5WjHpQ9L+iaPeP8lN0w==
X-Google-Smtp-Source: ABdhPJxMjNwxF5qivv5pR7igILgcbl1mvt24ax92h0BTQoZhDojKhfGKfvN/ROf52gxAyRswV3poNPDpP42Z6wybnkw=
X-Received: by 2002:a25:d088:0:b0:633:b902:2d29 with SMTP id
 h130-20020a25d088000000b00633b9022d29mr6865519ybg.626.1648161615005; Thu, 24
 Mar 2022 15:40:15 -0700 (PDT)
MIME-Version: 1.0
References: <1647410837-22537-1-git-send-email-quic_rohiagar@quicinc.com> <1647410837-22537-6-git-send-email-quic_rohiagar@quicinc.com>
In-Reply-To: <1647410837-22537-6-git-send-email-quic_rohiagar@quicinc.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 24 Mar 2022 23:40:03 +0100
Message-ID: <CACRpkdaSGHno4pfnhi_rKeHWyOOCGDnku+jhyLHGrSfHr06m7g@mail.gmail.com>
Subject: Re: [PATCH 5/6] dt-bindings: pinctrl: qcom-pmic-gpio: Add pmx65 support
To:     Rohit Agarwal <quic_rohiagar@quicinc.com>
Cc:     agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
        lgirdwood@gmail.com, broonie@kernel.org, rnayak@codeaurora.org,
        collinsd@codeaurora.org, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Mar 16, 2022 at 7:07 AM Rohit Agarwal <quic_rohiagar@quicinc.com> wrote:

> Add support for the PMX65 GPIO support to the Qualcomm PMIC GPIO
> binding.
>
> Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>

After the merge window can you resend this binding and the pinctrl
patch separately so I can merge them to the pinctrl tree?

Yours,
Linus Walleij
