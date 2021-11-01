Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F3AA2441F02
	for <lists+devicetree@lfdr.de>; Mon,  1 Nov 2021 18:10:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232727AbhKARMn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Nov 2021 13:12:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36600 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232626AbhKARMm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Nov 2021 13:12:42 -0400
Received: from mail-il1-x132.google.com (mail-il1-x132.google.com [IPv6:2607:f8b0:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1B54C061764
        for <devicetree@vger.kernel.org>; Mon,  1 Nov 2021 10:10:08 -0700 (PDT)
Received: by mail-il1-x132.google.com with SMTP id x9so11575173ilu.6
        for <devicetree@vger.kernel.org>; Mon, 01 Nov 2021 10:10:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ipBE8NX/wVY+ROYSuRyteYW9jHXTysDyorv6dPtGYZA=;
        b=j80Lqh6xiJcsysn7NipdlN7PT8nZlBuhjJxm9fAPEq/nQRDBmvW7X546Fn3VlkJVDm
         XRzD6pS8QFiuK9VPsH/jGtwjdE3VG9wKT4FQMk2QV4yTmnfMz19cM33ow2Re5WL2hgO3
         mcr0FbkxvPOGeiIEDGdlKj8bEonkho30alFoU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ipBE8NX/wVY+ROYSuRyteYW9jHXTysDyorv6dPtGYZA=;
        b=QvjXO1/DPoLgTZtEeLS3s7dLz+SKB+1u2UkomS3ieqK2NRs4UQ86RpWrfgUPKD4I/R
         ABeHJuFV5emWlObY35Ort3h5R5HRz39YGb74yWvTcXKdPbGFbQ+Ww4SGbGf7isBWCtuI
         c2dAQr17qEp/myImTdVtsxdEXiuBne7jVHk3Z+wuDxtmJzjj6MyQ8TrjTO/5TXS6TDF/
         uxZaH+T+lHhVpZuqJtLkuvP7CwlNmz/OhOD37yTavR8i62Ce96b/iLvKSVrtaTsiCdq3
         jo/9V4H+2GqYlRqjzXaVU3E2t8ecZJ33sj3NAj+0sjkt+4Osm8ojBDJxI9iurffO21SS
         /OSg==
X-Gm-Message-State: AOAM533GkL9AJt/3YHbMfbpu7DgkYExu3feRwWIZM9xpRt26v/sjE28d
        x+zfNdYSFDqYGjJ888BwQ1E90wifABdxDg==
X-Google-Smtp-Source: ABdhPJz5Aza/2kWBYHknXXYM9ml1lDE+giUySGc56rdD5zOZMhVK6/gzOxzzh1Vz1Z4XO3yAG9PZ0A==
X-Received: by 2002:a05:6e02:1c2d:: with SMTP id m13mr6683244ilh.26.1635786608146;
        Mon, 01 Nov 2021 10:10:08 -0700 (PDT)
Received: from mail-il1-f177.google.com (mail-il1-f177.google.com. [209.85.166.177])
        by smtp.gmail.com with ESMTPSA id j16sm673365iow.24.2021.11.01.10.10.07
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Nov 2021 10:10:07 -0700 (PDT)
Received: by mail-il1-f177.google.com with SMTP id w10so19143081ilc.13
        for <devicetree@vger.kernel.org>; Mon, 01 Nov 2021 10:10:07 -0700 (PDT)
X-Received: by 2002:a05:6e02:2189:: with SMTP id j9mr5015590ila.120.1635786607120;
 Mon, 01 Nov 2021 10:10:07 -0700 (PDT)
MIME-Version: 1.0
References: <20211029152647.v3.1.Ie17e51ad3eb91d72826ce651ca2786534a360210@changeid>
 <20211029152647.v3.2.If23c83a786fc4d318a1986f43803f22b4b1d82cd@changeid>
In-Reply-To: <20211029152647.v3.2.If23c83a786fc4d318a1986f43803f22b4b1d82cd@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 1 Nov 2021 10:09:55 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Xic56vn1n5jT9J=RU6qPTR3cpJ-kqGav08SrEu-8RZzg@mail.gmail.com>
Message-ID: <CAD=FV=Xic56vn1n5jT9J=RU6qPTR3cpJ-kqGav08SrEu-8RZzg@mail.gmail.com>
Subject: Re: [PATCH v3 2/4] arm64: dts: sc7180: Specify "data-lanes" for DSI
 host output
To:     Philip Chen <philipchen@chromium.org>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Oct 29, 2021 at 3:27 PM Philip Chen <philipchen@chromium.org> wrote:
>
> MSM DSI host driver actually parses "data-lanes" in DT and compare
> it with the number of DSI lanes the bridge driver sets for
> mipi_dsi_device. So we need to always specify "data-lanes" for the
> DSI host output. As of now, "data-lanes" is added to ti-sn65dsi86 dts
> fragment, but missing in parade-ps8640 dts fragment, which requires
> a fixup.
>
> Since we'll do 4-lane DSI regardless of which bridge chip is used,
> instead of adding "data-lanes" to parade-ps8640 dts fragment, let's
> just move "data-lanes" from the bridge dts to sc7180-trogdor.dtsi.
>
> Signed-off-by: Philip Chen <philipchen@chromium.org>
> ---
>
> (no changes since v1)
>
>  arch/arm64/boot/dts/qcom/sc7180-trogdor-ti-sn65dsi86.dtsi | 1 -
>  arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi              | 4 ++++
>  2 files changed, 4 insertions(+), 1 deletion(-)

I think it's fine to take this change even if we also decide to fix
the driver as well.

Reviewed-by: Douglas Anderson <dianders@chromium.org>
