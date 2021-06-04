Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DA2CC39C3C3
	for <lists+devicetree@lfdr.de>; Sat,  5 Jun 2021 01:13:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229986AbhFDXPN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Jun 2021 19:15:13 -0400
Received: from mail-qt1-f177.google.com ([209.85.160.177]:39766 "EHLO
        mail-qt1-f177.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229929AbhFDXPN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Jun 2021 19:15:13 -0400
Received: by mail-qt1-f177.google.com with SMTP id c15so8265247qte.6
        for <devicetree@vger.kernel.org>; Fri, 04 Jun 2021 16:13:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=vXmDc2pLbpX9lgKwc2VxPAgHsvXZdqTU2+0uHS8Qm20=;
        b=Q6hzRsvkNOq2IfRMhqfR5Q6fFPfTbJEeWjktfJe4ZqJlNs/8W4nzSxfmscedh4TRYY
         R2vFGv+LhNOQoUiKRLnC5K/7WFJzqWvRgJ+lZRYkL9+EN2R4ETo5oXfZJWWUlCEq9Hni
         ob8YX8UBR5vckySVcQH/IIZIikAnt7KgBgCg0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=vXmDc2pLbpX9lgKwc2VxPAgHsvXZdqTU2+0uHS8Qm20=;
        b=YRHg7SZriQu3HowPZeCPpN78X8Mg7RFTdzqjBzYjz/WQtoJceqHfODJnSz0pKVAP9S
         sEIWDKturmgv9LuHphsEtKajvcn/Yzn3z8HlV9DtlVHwT+EAEvX8V6vCN3xTHG3X2Qj+
         xkua8lATjTDI0jALDWEpNsbJ4YzDQOaXSlTvYB+DNlgzke+P+31odjv9qGZaISS7dHT+
         3aO8xtlcHzdbjzl9Myr9XJ+D0UjxIUiHgirZHr4qF0hAkckPNGf7V4AmyuH18S/i+6so
         Vn/E2Rb2PAWXECMtJqmoPGq+T+B2NvJ75jkOnFEY1YyBUwWL0odqwklHXELhNQJd8q0I
         2CZg==
X-Gm-Message-State: AOAM532es9x13bTWRx4EvYVp/+l2p163B/mo9Dez1m08+OL3Hqz6d+g0
        5VuwrpuCSvUrM2TKdEq4iImYQU5DNjZ4dw==
X-Google-Smtp-Source: ABdhPJzpZVIg5VgKs65fp2oLZsHx674XoGtPHrMy5FJeIMVXhlZZd4pCcqXvCLevSZOoLvmVoe7wHw==
X-Received: by 2002:ac8:4f44:: with SMTP id i4mr6900025qtw.57.1622848330999;
        Fri, 04 Jun 2021 16:12:10 -0700 (PDT)
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com. [209.85.219.169])
        by smtp.gmail.com with ESMTPSA id d15sm4286559qte.15.2021.06.04.16.12.10
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Jun 2021 16:12:10 -0700 (PDT)
Received: by mail-yb1-f169.google.com with SMTP id q21so15851171ybg.8
        for <devicetree@vger.kernel.org>; Fri, 04 Jun 2021 16:12:10 -0700 (PDT)
X-Received: by 2002:a25:8082:: with SMTP id n2mr8366030ybk.79.1622848329667;
 Fri, 04 Jun 2021 16:12:09 -0700 (PDT)
MIME-Version: 1.0
References: <20210603081215.v2.1.Id4510e9e4baaa3f6c9fdd5cdf4d8606e63c262e3@changeid>
In-Reply-To: <20210603081215.v2.1.Id4510e9e4baaa3f6c9fdd5cdf4d8606e63c262e3@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 4 Jun 2021 16:11:57 -0700
X-Gmail-Original-Message-ID: <CAD=FV=V9tczBEnT6zZq1UA=E1x8jyBoiEAt6yJv5R7j-mpOczg@mail.gmail.com>
Message-ID: <CAD=FV=V9tczBEnT6zZq1UA=E1x8jyBoiEAt6yJv5R7j-mpOczg@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: pm6150: Add thermal zone for PMIC
 on-die temperature
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Stephen Boyd <swboyd@chromium.org>,
        LKML <linux-kernel@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Jun 3, 2021 at 8:12 AM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> Add a thermal zone for the pm6150 on-die temperature. The system should
> try to shut down orderly when the temperature reaches the critical trip
> point at 115=C2=B0C, otherwise the PMIC will perform a HW power off at 14=
5=C2=B0C.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
>
> Changes in v2:
> - remove 'pm6150-' prefix from critical trip point
> - updated commit message
>
>  arch/arm64/boot/dts/qcom/pm6150.dtsi | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
