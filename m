Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D50EB4BAD71
	for <lists+devicetree@lfdr.de>; Fri, 18 Feb 2022 00:52:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229620AbiBQXuR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Feb 2022 18:50:17 -0500
Received: from gmail-smtp-in.l.google.com ([23.128.96.19]:46044 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229623AbiBQXuQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Feb 2022 18:50:16 -0500
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB1213A738
        for <devicetree@vger.kernel.org>; Thu, 17 Feb 2022 15:49:59 -0800 (PST)
Received: by mail-ed1-x536.google.com with SMTP id h18so12477084edb.7
        for <devicetree@vger.kernel.org>; Thu, 17 Feb 2022 15:49:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=IgGbzOlUTHOWKPpui7MHtfG8jNNY4bniwC/YrreyLuI=;
        b=IhdrQsZx8xawrXEakDHV3a9kOZ8U9S9uUunE5nfMVHp+ZBvfxF1mHvbyZG0jMTuTnG
         +/3fdRSqXEn7uwXzF9F3GkCNY4oC7rJDO48HhEuxRPWaU133PgRgpP39DJ7b6cPyP5cC
         s6paU9KqyRAUfYfpmBrnMSZ3Ip5spynzdF2+Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=IgGbzOlUTHOWKPpui7MHtfG8jNNY4bniwC/YrreyLuI=;
        b=gv6mEd3WjHIYgIFVHqrwscHjRYf0/PfLhVikYPurtsgJuKy09bK0M+Rue1GV5p9kO6
         JGkskw+D75xqtB0fC9XCBZiLMF2URbTXjz169mJ5hQ1QrHwftygE+a7NnDqzv0Uk5TlL
         CPBogPboN9umfwDPlM016p5TsN42ZDbE10icW3Ph94HQiUQuY9U1LKQx7uh9gLYVjx/1
         F+WAx1IJ/82KqFxih0DetIcZMDK/0gZppm5J1DS4JbzZDgxKQXWsXVLyaP1jKIgIKJXj
         sHB5jB6ZxU5joA7aC4ioVoVtCdzL3QiXciD7/GtTKjMX0nGwDbO8QAkwgOgXHbJTt2d9
         6p6A==
X-Gm-Message-State: AOAM533eBMmdLSOOM8ruU6K1+sqxI/WxfhrQynHsZUaE1govE4TqMwha
        b5dqIC7g5H6Evmrxmixdi83ETl+WrImfgh3Z5sA=
X-Google-Smtp-Source: ABdhPJz+bB09DWLwU9p00Qa6XLuB9nxMI2gemiCqQpGTLpEMOl+D8zjqhPVV/7FJJCXabd4v4G1HOw==
X-Received: by 2002:a05:6402:845:b0:412:ad14:863e with SMTP id b5-20020a056402084500b00412ad14863emr4123407edz.380.1645141797993;
        Thu, 17 Feb 2022 15:49:57 -0800 (PST)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com. [209.85.221.45])
        by smtp.gmail.com with ESMTPSA id z5sm1653359eja.20.2022.02.17.15.49.55
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Feb 2022 15:49:56 -0800 (PST)
Received: by mail-wr1-f45.google.com with SMTP id d27so11655920wrb.5
        for <devicetree@vger.kernel.org>; Thu, 17 Feb 2022 15:49:55 -0800 (PST)
X-Received: by 2002:adf:ef07:0:b0:1e3:333f:a101 with SMTP id
 e7-20020adfef07000000b001e3333fa101mr4100610wro.301.1645141795187; Thu, 17
 Feb 2022 15:49:55 -0800 (PST)
MIME-Version: 1.0
References: <1644494255-6632-1-git-send-email-quic_sbillaka@quicinc.com> <1644494255-6632-3-git-send-email-quic_sbillaka@quicinc.com>
In-Reply-To: <1644494255-6632-3-git-send-email-quic_sbillaka@quicinc.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 17 Feb 2022 15:49:36 -0800
X-Gmail-Original-Message-ID: <CAD=FV=U9v40Ld1N5VsEbny7BBtSWuC5rNxWqcuLQocS1bxLcoQ@mail.gmail.com>
Message-ID: <CAD=FV=U9v40Ld1N5VsEbny7BBtSWuC5rNxWqcuLQocS1bxLcoQ@mail.gmail.com>
Subject: Re: [PATCH v4 2/5] arm64: dts: qcom: sc7280: Add support for eDP
 panel on CRD
To:     Sankeerth Billakanti <quic_sbillaka@quicinc.com>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        freedreno <freedreno@lists.freedesktop.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Rob Clark <robdclark@gmail.com>,
        Sean Paul <seanpaul@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, quic_kalyant@quicinc.com,
        quic_abhinavk@quicinc.com, quic_khsieh@quicinc.com,
        quic_mkrishn@quicinc.com, quic_vproddut@quicinc.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Feb 10, 2022 at 3:58 AM Sankeerth Billakanti
<quic_sbillaka@quicinc.com> wrote:
>
> +&pm8350c_gpios {
> +       edp_bl_power: edp-bl-power {
> +               pins = "gpio7";
> +               function = "normal";
> +               qcom,drive-strength = <PMIC_GPIO_STRENGTH_LOW>;

As far as I can tell you're lacking:

#include <dt-bindings/pinctrl/qcom,pmic-gpio.h>

...which is needed to use PMIC_GPIO_STRENGTH_LOW. I'm curious how
you're compiling?
