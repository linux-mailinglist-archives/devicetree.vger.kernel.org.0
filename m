Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6F0A74C9A8A
	for <lists+devicetree@lfdr.de>; Wed,  2 Mar 2022 02:39:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238924AbiCBBkA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Mar 2022 20:40:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237273AbiCBBkA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Mar 2022 20:40:00 -0500
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com [IPv6:2607:f8b0:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D0F5A0BF2
        for <devicetree@vger.kernel.org>; Tue,  1 Mar 2022 17:39:18 -0800 (PST)
Received: by mail-oi1-x22c.google.com with SMTP id s5so442814oic.10
        for <devicetree@vger.kernel.org>; Tue, 01 Mar 2022 17:39:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=E6diWwTXyeBROW+UGxxDyRa540TTA/bBdes9qrLj4UM=;
        b=jClyHtOzmfwF+u9W6xgJR6B6yp3RH6kTbHE29G8BHKgUzCjDDSxB2nN0yjCN3FJpLp
         KIiE6M+zGmn8Eo2R3XENJVQyVXtU8wnePn/LZyhc0WdkbGAeyhi4RS+uSeaDjnc84n8A
         HihsyMdu+/mY7F3WGgT63ly95lVeSlendbVn0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=E6diWwTXyeBROW+UGxxDyRa540TTA/bBdes9qrLj4UM=;
        b=2mi9WqkIEvaurRjhvhnFPDriIUnwtm+/gNKCBPfIT8srbbsHwbm53LcZagGdy6Q9f0
         4F8hp67r1xnk3jbM9vgOPLOZoyIzeDolk44lQRWso8JFVlhU7LI6f3K9w9l5H5CfSkuw
         JVY5XxwQ1+xZiWX7eXNNUZB6SD7cD2mgyEDwCHjK5NOpiM62LlVGnRPN+nVRK/01JF3m
         QQszhAhLyobrNl+Mqi4d3N2nmzf/Itz/Ejw2R4IkWNVzNA22bTDDan02YECZ+xekQjDI
         vFn/er/W7FVVigTP/8wSl5Q/2XNPRR8izIPNiBlmEOhwJy/fQtdCdA/DmoWFwFOWBnWf
         74oQ==
X-Gm-Message-State: AOAM533Ffl1oDGN2ntuvmdWkwppLylmjrBRaSIrs1EdtUtfb25ESCG86
        sk7r7rohiK264kSAh/Pan3RyJCLjCnsP2OSZ9S5sdw==
X-Google-Smtp-Source: ABdhPJyVc8mt/2E94etQO2CuebnJCzyKdSVFOgRL21bsaQOZk6+CbkyQqoi5RkRSPudHu38uY0wDaLUvCMtoeKLFGLU=
X-Received: by 2002:a05:6808:20a7:b0:2d4:d2f1:9edc with SMTP id
 s39-20020a05680820a700b002d4d2f19edcmr15559750oiw.64.1646185158007; Tue, 01
 Mar 2022 17:39:18 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 1 Mar 2022 17:39:17 -0800
MIME-Version: 1.0
In-Reply-To: <20220302005210.2267725-3-dmitry.baryshkov@linaro.org>
References: <20220302005210.2267725-1-dmitry.baryshkov@linaro.org> <20220302005210.2267725-3-dmitry.baryshkov@linaro.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Tue, 1 Mar 2022 17:39:17 -0800
Message-ID: <CAE-0n533xbLE8WTO4YKb0rxa9BRqqdPN65MfNdrtEjXytWtCGA@mail.gmail.com>
Subject: Re: [PATCH 3/5] arm64: dts: qcom: sdm660: Drop flags for mdss irqs
To:     Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Rob Clark <robdclark@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, Sean Paul <sean@poorly.run>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Dmitry Baryshkov (2022-03-01 16:52:08)
> The number of interrupt cells for the mdss interrupt controller is 1,
> meaning there should only be one cell for the interrupt number, not two.
> Drop the second cell containing (unused) irq flags.
>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
