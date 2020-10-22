Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EA9BF296796
	for <lists+devicetree@lfdr.de>; Fri, 23 Oct 2020 01:15:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S373331AbgJVXPR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Oct 2020 19:15:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S373330AbgJVXPR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Oct 2020 19:15:17 -0400
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com [IPv6:2607:f8b0:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67FB2C0613CE
        for <devicetree@vger.kernel.org>; Thu, 22 Oct 2020 16:15:15 -0700 (PDT)
Received: by mail-ot1-x344.google.com with SMTP id c5so2836472otr.1
        for <devicetree@vger.kernel.org>; Thu, 22 Oct 2020 16:15:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=XqZRiMhuJbb9xQjfZ/Kso8UhUVd+NGKCMF23xD+oK5A=;
        b=G0PWbSpxIEODLM5nxyFaH4wcSC5Tof/eTKvTFJfDjb4jdSxh2k8WP0w07CycnNkqSs
         uVupbWaEV3DgvKcdVUr023+qrEjkshzPyyEO/uc3JhL9c/OIwsiOvagKq1aJG5DeQy7e
         iP06v2r5JX4Qjn83Q+ncdtCN2QZf0gf30vzfM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=XqZRiMhuJbb9xQjfZ/Kso8UhUVd+NGKCMF23xD+oK5A=;
        b=WjaFOYnd6c3Eul182MBsE4fwEci8NQcmrIZHBn5jptvNu3stSglt3fbfBTyT9fQnLS
         9d4RANzp69v540OGVKNtBRu/um/uxI7Kq4ugOZDHKpWhnIqjyOLAEf6Q01XKzmrLgfwe
         cj1PEr68z0zCRjThkCLCMZAHz+PQn6i4Gq6rSP2yBYde0kg3JFG2CqcIoALQOYx+kOEt
         2r0QJxo8g/3ll4E173Iz+7Za7BIGfwOHW5bE6YckMg6GiIhfN4dwqKqQlS/dtaQxxirZ
         4Vb+U7XAlAVlfm5ALQ2o+x2OBketiHYt7+Is+05HjnM6fAw5so8J8cSX2MIj1sMbt0DG
         sqSA==
X-Gm-Message-State: AOAM533XpBzXZ8PYbsfQLl0qQxLCGlG5rwBDirBKOo7jyTQIad7oRGi9
        pyg5aRh3sp6CseJjih6njcS/8M6Fpq8tag==
X-Google-Smtp-Source: ABdhPJwwwOVJ5kfke8HyxKwKNHnw/MXJiVM4heqQVdhu9xYapeE/3dyrXmIG7d+esCKQsz77hvEung==
X-Received: by 2002:a05:6830:1694:: with SMTP id k20mr3842808otr.100.1603408514522;
        Thu, 22 Oct 2020 16:15:14 -0700 (PDT)
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com. [209.85.210.53])
        by smtp.gmail.com with ESMTPSA id d123sm193325oib.55.2020.10.22.16.15.14
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Oct 2020 16:15:14 -0700 (PDT)
Received: by mail-ot1-f53.google.com with SMTP id t15so3243963otk.0
        for <devicetree@vger.kernel.org>; Thu, 22 Oct 2020 16:15:14 -0700 (PDT)
X-Received: by 2002:a9f:31ce:: with SMTP id w14mr3531663uad.104.1603408090224;
 Thu, 22 Oct 2020 16:08:10 -0700 (PDT)
MIME-Version: 1.0
References: <20201022050445.930403-1-amstan@chromium.org> <20201021220404.v3.2.Ie4d84af5a85e8dcb8f575845518fa39f324a827d@changeid>
In-Reply-To: <20201021220404.v3.2.Ie4d84af5a85e8dcb8f575845518fa39f324a827d@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 22 Oct 2020 16:07:58 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VeRs=EzBoQkVNVYnrEmUAwV0B-zKtYeS9s80TpEjPmgg@mail.gmail.com>
Message-ID: <CAD=FV=VeRs=EzBoQkVNVYnrEmUAwV0B-zKtYeS9s80TpEjPmgg@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] arm64: dts: qcom: trogdor: Add brightness-levels
To:     Alexandru Stan <amstan@chromium.org>
Cc:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>, Lee Jones <lee.jones@linaro.org>,
        Daniel Thompson <daniel.thompson@linaro.org>,
        Jingoo Han <jingoohan1@gmail.com>,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Matthias Kaehlcke <mka@chromium.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Oct 21, 2020 at 10:05 PM Alexandru Stan <amstan@chromium.org> wrote:
>
> We want userspace to represent the human perceived brightness.
> Since the led drivers and the leds themselves don't have a
> linear response to the value we give them in terms of perceived
> brightness, we'll bake the curve into the dts.
>
> The panel also doesn't have a good response under 5%, so we'll avoid
> sending it anything lower than that.
>
> Note: Ideally this patch should be coupled with the driver change from
> "backlight: pwm_bl: Fix interpolation", but it can work without it,
> without looking too ugly.
>
> Signed-off-by: Alexandru Stan <amstan@chromium.org>
> ---
>
>  arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi | 9 +++++++++
>  1 file changed, 9 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
