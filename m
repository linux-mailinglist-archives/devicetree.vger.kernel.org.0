Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C84D843A4A9
	for <lists+devicetree@lfdr.de>; Mon, 25 Oct 2021 22:26:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238637AbhJYU3B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Oct 2021 16:29:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36676 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238621AbhJYU2x (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Oct 2021 16:28:53 -0400
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com [IPv6:2607:f8b0:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A80CC0432C0
        for <devicetree@vger.kernel.org>; Mon, 25 Oct 2021 13:22:49 -0700 (PDT)
Received: by mail-oi1-x22c.google.com with SMTP id o83so17261639oif.4
        for <devicetree@vger.kernel.org>; Mon, 25 Oct 2021 13:22:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=MIgjsnj2t5G4/nas/d5Scx9CJRo0MWjSv4YqCCkr6zQ=;
        b=dMlhV3hi8OeiZcg3u0Od1E9kdTBADg502uY9rRfMB/wWqyLxgWb0NYx6fm8W/3TSmJ
         j1Gon8iuUGR9+woMRKq6atAqAsTCF6m842fySCF01wJK9WyzW1am7v0+GIS0QtjOwbde
         /D/jfKCyBO9A4EfaExNL259Yt9BnHAgOnDSFo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=MIgjsnj2t5G4/nas/d5Scx9CJRo0MWjSv4YqCCkr6zQ=;
        b=LJGNag+Zwn3d9zoReMMVmoZ5Em7/H9fmV9JNCvEpQcI8TH5oxcOgVbmPq61LbuoWyU
         7EoDzCp5dKUqCwS9eLnFkgr6dxhQuexHLdGP5E7O2rmet98ple2E5VTQrtFYjhPXRiKo
         QOxPneQvzXI26dWxrnxrV2Pax5CcrTyfVt4w8uSEx1TfLxerqI4+ArvdJ6l/G78sAFkX
         2jjh2xf9f6AS2Y85AVMHKRV9H3Lm7EoytjL4+73QV7vMoJR60QlMFNa45gWpRjkogeZd
         e+a2mSQ9K1rJEEp5HJ940tAYrkDGcvQbe1k1LuKlsARvOrCTI82fkYRfRYq/I6F+TgQC
         A7Pg==
X-Gm-Message-State: AOAM531JuCiitmpKTSKF0bFFS8jkB+eJxBdFtmiCSlt6q+VwjdjSEWSu
        gg/jri45yflCzyv/GoNxq9cbE2gkc2kWUy0p4SV/DA==
X-Google-Smtp-Source: ABdhPJztxG/yxrPY5e4sNf62Kn1bNHGpMkkmYXAFUoysctVppmYp6RlKF3Y/ERcj27cwPr8knlXHCorAw/g5RhQ7LpA=
X-Received: by 2002:a05:6808:23c2:: with SMTP id bq2mr25087505oib.32.1635193368630;
 Mon, 25 Oct 2021 13:22:48 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 25 Oct 2021 13:22:48 -0700
MIME-Version: 1.0
In-Reply-To: <1635070162-21669-1-git-send-email-tdas@codeaurora.org>
References: <1635070162-21669-1-git-send-email-tdas@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Mon, 25 Oct 2021 13:22:48 -0700
Message-ID: <CAE-0n52rCpAHndio63yYeN7wnNO=u4c8iL9tpm-rA0reHLLOtA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc7280: Add camcc clock node
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Taniya Das <tdas@codeaurora.org>
Cc:     Douglas Anderson <dianders@chromium.org>,
        Andy Gross <agross@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Taniya Das (2021-10-24 03:09:22)
> Add the camera clock controller node for SC7280 SoC. Also add the header
> file for lpass clock controller.
>
> Signed-off-by: Taniya Das <tdas@codeaurora.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7280.dtsi | 15 ++++++++++++++-
>  1 file changed, 14 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> index d74a4c8..8e6b011 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -4,10 +4,11 @@
>   *
>   * Copyright (c) 2020-2021, The Linux Foundation. All rights reserved.
>   */
> -

BTW, I see this line is deleted but that's probably not intended.

> +#include <dt-bindings/clock/qcom,camcc-sc7280.h>
