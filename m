Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D972B33DA5B
	for <lists+devicetree@lfdr.de>; Tue, 16 Mar 2021 18:13:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238486AbhCPRMv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Mar 2021 13:12:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58964 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238560AbhCPRMJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Mar 2021 13:12:09 -0400
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com [IPv6:2607:f8b0:4864:20::733])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81A66C06175F
        for <devicetree@vger.kernel.org>; Tue, 16 Mar 2021 10:12:08 -0700 (PDT)
Received: by mail-qk1-x733.google.com with SMTP id s7so35979559qkg.4
        for <devicetree@vger.kernel.org>; Tue, 16 Mar 2021 10:12:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=l3lfqWe11SmkspT5fw2Bt6LDqCmzocPLSgH05TqfpYc=;
        b=ncvfoAP8zVWkXHI9mIMt+ffMrllgf+W7NytywHwAYq+4n2acXSWmmx5xJYKjgEKPxX
         +z7nSfcJgTUnUG//AOLqqQ+MeNrBAj2lCSxFTC7nCKcpLefJ7u8dtS9kYhqQkT7q74ha
         X3X8UWd09Y6q5bSasrrQOiGIA1V5rfajhjFVs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=l3lfqWe11SmkspT5fw2Bt6LDqCmzocPLSgH05TqfpYc=;
        b=pVWmSfZYSeQOz4EjRQQdGBaLqEEme1chVUnXKlzys/1va1pRX3uhim6JAukub0t+Tp
         7vYdNs1ZE+5bLB3F04wQmzC0XE1+JX7LRGm7hKn2hYhF+elyENgCm8P+j1Uaof/m3x5i
         APxJbqP6CnAAaHNdBguOkbQk+5qQvIYszF0q45YO5yAFp5B3/2QE1y3zJTbs1IYIRkcd
         G1OVBtsC3uVzH+YsL33FtH9sOzZrCfGUTbZTVB7cSAdjI35x8U1iUyZdCPyQrz0engbt
         eUMigyNFqgv101g+25DT48FbY8GvxamEJgmb5TWapPKa+cHAv6arxl0I3zmNFAZwxUwc
         2W2Q==
X-Gm-Message-State: AOAM532X+FXwMpRGiOJ8fwYCr5kxM4R5qjWZmRX5QhcujS6sIU0uiW2j
        P+gJPPtmHjZ20YtnZWaf0ygChi6a1bMnIA==
X-Google-Smtp-Source: ABdhPJxMCs+Y22OYNRTeV+VBe5vUW4V33pvFIawYnBScIPwan7oCeGSyHviOtmejJXChVG7bv/fTFA==
X-Received: by 2002:a37:9f4e:: with SMTP id i75mr1980qke.283.1615914726869;
        Tue, 16 Mar 2021 10:12:06 -0700 (PDT)
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com. [209.85.219.170])
        by smtp.gmail.com with ESMTPSA id e15sm13901717qti.79.2021.03.16.10.12.05
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Mar 2021 10:12:06 -0700 (PDT)
Received: by mail-yb1-f170.google.com with SMTP id c131so37582628ybf.7
        for <devicetree@vger.kernel.org>; Tue, 16 Mar 2021 10:12:05 -0700 (PDT)
X-Received: by 2002:a05:6902:70a:: with SMTP id k10mr7918658ybt.257.1615914725255;
 Tue, 16 Mar 2021 10:12:05 -0700 (PDT)
MIME-Version: 1.0
References: <20210316011516.1314686-1-mka@chromium.org> <20210315181509.v3.3.I95b8a63103b77cab6a7cf9c150f0541db57fda98@changeid>
In-Reply-To: <20210315181509.v3.3.I95b8a63103b77cab6a7cf9c150f0541db57fda98@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 16 Mar 2021 10:11:53 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UbwiQEq_C_y7P9D-L9Gyb9tpjaqJZ8ZgHCaW=xwDp6xQ@mail.gmail.com>
Message-ID: <CAD=FV=UbwiQEq_C_y7P9D-L9Gyb9tpjaqJZ8ZgHCaW=xwDp6xQ@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] arm64: dts: qcom: sc7180: Add CoachZ rev3
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Mar 15, 2021 at 6:15 PM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> CoachZ rev3 uses a 100k NTC thermistor for the charger temperatures,
> instead of the 47k NTC that is stuffed in earlier revisions. Add .dts
> files for rev3.
>
> The 47k NTC currently isn't supported by the PM6150 ADC driver.
> Disable the charger thermal zone for rev1 and rev2 to avoid the use
> of bogus temperature values.
>
> This also gets rid of the explicit DT files for rev2 and handles
> rev2 in the rev1 .dts instead. There was some back and forth
> downstream involving the 'dmic_clk_en' pin, after that was sorted
> out the DT for rev1 and rev2 is the same.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
>
> Changes in v3:
> - get rid of separate .dts for rev2
>
> Changes in v2:
> - added CoachZ rev3
> - updated subject and commit message
>
>  arch/arm64/boot/dts/qcom/Makefile                   |  4 ++--
>  .../boot/dts/qcom/sc7180-trogdor-coachz-r1-lte.dts  |  4 ++--
>  .../boot/dts/qcom/sc7180-trogdor-coachz-r1.dts      | 13 +++++++++++--
>  ...-r2-lte.dts => sc7180-trogdor-coachz-r3-lte.dts} |  6 +++---
>  ...r-coachz-r2.dts => sc7180-trogdor-coachz-r3.dts} |  4 ++--
>  5 files changed, 20 insertions(+), 11 deletions(-)

Looks keen to me now, thanks!

Reviewed-by: Douglas Anderson <dianders@chromium.org>
