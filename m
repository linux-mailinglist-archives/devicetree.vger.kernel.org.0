Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AA56C441FD8
	for <lists+devicetree@lfdr.de>; Mon,  1 Nov 2021 19:13:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230261AbhKASQ0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Nov 2021 14:16:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231701AbhKASLv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Nov 2021 14:11:51 -0400
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com [IPv6:2607:f8b0:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49D54C0613B9
        for <devicetree@vger.kernel.org>; Mon,  1 Nov 2021 11:09:18 -0700 (PDT)
Received: by mail-oi1-x22b.google.com with SMTP id g125so26105683oif.9
        for <devicetree@vger.kernel.org>; Mon, 01 Nov 2021 11:09:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=mlsLWn4QteWR40recRx3hWCecR9gEXUZdp7/7df9bIo=;
        b=A/4z5fo46vhQ5Hkb/Wy9EPf/5pJZ0U8dAIxClUfuW5GsfGrytQmBIyfHwchVB0ybGZ
         hzXY9J5pFm+I3Mfq2197ZC8Evf4fnlrH+6f6gDnFnk5pjbXA4b0/X8hRqurMFAkqNJQV
         ab8Yn/y7M+3a2L8R5hQSP76Mg3gtwSnzZBVt0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=mlsLWn4QteWR40recRx3hWCecR9gEXUZdp7/7df9bIo=;
        b=CpWiWAnkR+nVF1+QQRUffbtndJDl6cwZ5sjgeYKqCYj3uNkiqgZFqYYgrC30dhJZiL
         /6ukk7F5TA2bsyXKym8lG2P/jTFQpWK1AearUJn/CO/zvU52Mr6xm5eTZ+rcQbltAGAR
         9Ul6rnbPLIBP8aFVhWtnzwW9QPoANANvyTd+FDDGgvfRlzzTqFZV5/w5GMAUENXPiMxw
         qqARKndnZjixpBgYK5qsVRrkHgdqtl5bWD15Fa2Ci3QN61m4Gv+qBHHIxsuyUqXlfohL
         o0XeMUmWAUBhjcS2BiS3pVn9ps0LjMYq1kZvzBbLtsM3ttP6zvFqTzPu0BotdacoLQ1G
         ZWBw==
X-Gm-Message-State: AOAM533Zmlx8VS1IOkIy9ZJ5vZtBMiR5Ke4+8Os59kyBFxMurhgjn/PT
        uW6N/pBuQkQJJ1jDtKoFWtxLLzVjRvG1Xpd4X4QgZg==
X-Google-Smtp-Source: ABdhPJz1nch1C9Dgcj03VOq9v6mht+eM76hhFXho+wpq3189/6eqvs+lbyRe8IftqdsNXVfg8NBjt0SMznulc+2ZVRI=
X-Received: by 2002:a05:6808:4e:: with SMTP id v14mr471586oic.164.1635790157677;
 Mon, 01 Nov 2021 11:09:17 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 1 Nov 2021 11:09:17 -0700
MIME-Version: 1.0
In-Reply-To: <20211029152647.v3.2.If23c83a786fc4d318a1986f43803f22b4b1d82cd@changeid>
References: <20211029152647.v3.1.Ie17e51ad3eb91d72826ce651ca2786534a360210@changeid>
 <20211029152647.v3.2.If23c83a786fc4d318a1986f43803f22b4b1d82cd@changeid>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Mon, 1 Nov 2021 11:09:17 -0700
Message-ID: <CAE-0n50URE_tgBxXx0PRL9AoC7knU+BtiGk9BHOtQRLUxWxUag@mail.gmail.com>
Subject: Re: [PATCH v3 2/4] arm64: dts: sc7180: Specify "data-lanes" for DSI
 host output
To:     LKML <linux-kernel@vger.kernel.org>,
        Philip Chen <philipchen@chromium.org>
Cc:     dianders@chromium.org, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Philip Chen (2021-10-29 15:27:41)
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

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
