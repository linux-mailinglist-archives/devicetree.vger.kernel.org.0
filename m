Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DAC5932229F
	for <lists+devicetree@lfdr.de>; Tue, 23 Feb 2021 00:27:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231149AbhBVX0J (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Feb 2021 18:26:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33324 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230062AbhBVX0H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Feb 2021 18:26:07 -0500
Received: from mail-qt1-x836.google.com (mail-qt1-x836.google.com [IPv6:2607:f8b0:4864:20::836])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5FC84C061574
        for <devicetree@vger.kernel.org>; Mon, 22 Feb 2021 15:25:27 -0800 (PST)
Received: by mail-qt1-x836.google.com with SMTP id r24so1742207qtt.8
        for <devicetree@vger.kernel.org>; Mon, 22 Feb 2021 15:25:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/oxheRV/zYlSYJgiTUORu/R/sZ9O15RX0FoUHQXYP0A=;
        b=L1VU0bgJMRWAPIlu7JlvZYs4sMFK0Rfgee/BaMVitzOXQEwyOFVTGmvIIrHp87Zs7C
         fTS9WDZmca6Q5MhVf143lkSoEVlBN3I/MrosQ/zRKY6Sb5suIx5R6V7ne6HhGZ2Mtge8
         WkDfz0uMBGptMDbjLSvoscg5PrfoGfwwNffrs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/oxheRV/zYlSYJgiTUORu/R/sZ9O15RX0FoUHQXYP0A=;
        b=aq5kpONduH0xjEkqk0KlwCu8rX9m9jx8ZUHZ5fN6ZXcOhEMsp4uFyCuhQyG/LYG2a8
         9a/qn7mxeOqWHrzA4gXTRrnxIQP6KSdzmHOw2E6THW/s9VJyvFotUArmE3c6wPhrCLkR
         YCeMADZL+bJeEDhwtGjeTBo3TSlgxTnLDihIbIBM8pDmjIMU3px9t8BZI47jNZDp/WEN
         TUQa3bssKkJLybvnVaJFQlYQY/rw5y85DttFlfFIvlQrJQiS+qKGw1DY4x2lrrQAjdMU
         lhhY+ZY5AKpsXhmZp/yNEyFbc7MXI1Cuu8FwGo6hB8FSzi9KzQT5nlEvs6qOfcWF1Ze+
         sHnw==
X-Gm-Message-State: AOAM530Z35k1WFjPU0ANswk40PemT2rFXc0wYrVHW7+ofi7vQ3nGBC4A
        P6OSiY5ETaYXtrVeQklpz/E98mxtI8nZ6Q==
X-Google-Smtp-Source: ABdhPJzwLFytgbuvSCaKXtrbl44/lHxOlIdnM9Ar9ngNHKnsePQ4GRz/Hzxqkj9oUEcWuUDLdcFpGw==
X-Received: by 2002:a05:622a:488:: with SMTP id p8mr21903302qtx.137.1614036326537;
        Mon, 22 Feb 2021 15:25:26 -0800 (PST)
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com. [209.85.219.172])
        by smtp.gmail.com with ESMTPSA id y190sm13506524qkb.133.2021.02.22.15.25.26
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Feb 2021 15:25:26 -0800 (PST)
Received: by mail-yb1-f172.google.com with SMTP id l8so14639907ybe.12
        for <devicetree@vger.kernel.org>; Mon, 22 Feb 2021 15:25:26 -0800 (PST)
X-Received: by 2002:a25:aa43:: with SMTP id s61mr38889621ybi.32.1614036325816;
 Mon, 22 Feb 2021 15:25:25 -0800 (PST)
MIME-Version: 1.0
References: <20210219181032.1.I23e12818c4a841ba9c37c60b3ba8cfeeb048285f@changeid>
 <20210219181032.2.I6a426324db3d98d6cfae8adf2598831bb30bba74@changeid>
In-Reply-To: <20210219181032.2.I6a426324db3d98d6cfae8adf2598831bb30bba74@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 22 Feb 2021 15:25:14 -0800
X-Gmail-Original-Message-ID: <CAD=FV=W7W9RT3SjGChP16o1Mz4_EwCJ=t8nNFYiS5QvK6E27OA@mail.gmail.com>
Message-ID: <CAD=FV=W7W9RT3SjGChP16o1Mz4_EwCJ=t8nNFYiS5QvK6E27OA@mail.gmail.com>
Subject: Re: [PATCH 2/3] arm64: dts: qcom: sc7180: trogdor: Add labels to
 charger thermal zone and ADC channel
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

On Fri, Feb 19, 2021 at 6:11 PM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> Some revisions of trogdor boards use a thermistor for the charger
> temperature which currently isn't supported by the PM6150 ADC
> driver. Add labels for the charger thermal zone and ADC channel
> to allow the removal of these nodes from affected boards and
> avoid the use of bogus temperature values.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
>
>  arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
