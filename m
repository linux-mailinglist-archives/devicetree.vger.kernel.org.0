Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5561D499CC3
	for <lists+devicetree@lfdr.de>; Mon, 24 Jan 2022 23:13:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1380067AbiAXWIM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Jan 2022 17:08:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353147AbiAXVtA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Jan 2022 16:49:00 -0500
Received: from mail-io1-xd2e.google.com (mail-io1-xd2e.google.com [IPv6:2607:f8b0:4864:20::d2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 137D0C08858A
        for <devicetree@vger.kernel.org>; Mon, 24 Jan 2022 12:33:21 -0800 (PST)
Received: by mail-io1-xd2e.google.com with SMTP id w7so21090417ioj.5
        for <devicetree@vger.kernel.org>; Mon, 24 Jan 2022 12:33:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hjJmpu3e2t2f13z2Lk1fKSYhhOY3XW/vJD/ViRHi/3w=;
        b=ML4ZhwzpblICBpcfdpi1zxRWLHKRxGys7HU2dk4xn5uAUMmwdlmU3jDdG1V5dJaCfy
         6RrkYOndJqDoAeQG5v4B1FGQSLnDS4+WuOb8qckjKx+JK/sG9ox2LwcT2eVQaY8pvgK8
         dn4GQWBto1pDWHU4Cyno/TKRYUJXJxawwrkoc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hjJmpu3e2t2f13z2Lk1fKSYhhOY3XW/vJD/ViRHi/3w=;
        b=vJPAyFsieMfnGUSUpV6AiySUL1TMucH6eha+XgYiar47f4PAmJDJZr4mejO5sRVFMa
         H+PcO22Sh2eVk6sO7UvYx7KDySPsKpJWR1W/n15z5+LS1CiYNCU8Bj227h2UljiuPbQ9
         RAhHStWlTzjEDAAw1Q2whdLHhlBLaaa3drLj8L+Xe/VTZ8lKmGRCzz05BRIF6ZG2TvDR
         s5TEwcq6ZkhWd7wr9lfGtO7RVsLkwEa6Wm3hhBEpemQuH5uxbmlCnvByUe9PVY4vCXFN
         uMQOZVf7F04FT69xtecgo/9p7lWl+rz9sl58XZKNra0dgGL0c0MmBXTfygwULSKeg602
         CpsA==
X-Gm-Message-State: AOAM531QB/CdcBn1NwZOGeOvQrQeN7/MMtDCWd85ttPv4aNzTf0jz02E
        KEoSgNtOoZ3HTUJGBh6B5SrOFad56cJQZg==
X-Google-Smtp-Source: ABdhPJwMnyofP+lvNHLAYzGdubGe1wdwHdosn1LTItR/18oPKyf2nmzBp85D/GLeLsTHCOYENf4tAA==
X-Received: by 2002:a5d:9681:: with SMTP id m1mr8819537ion.53.1643056399938;
        Mon, 24 Jan 2022 12:33:19 -0800 (PST)
Received: from mail-il1-f181.google.com (mail-il1-f181.google.com. [209.85.166.181])
        by smtp.gmail.com with ESMTPSA id g5sm8517734ila.59.2022.01.24.12.33.18
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Jan 2022 12:33:18 -0800 (PST)
Received: by mail-il1-f181.google.com with SMTP id v17so14977964ilg.4
        for <devicetree@vger.kernel.org>; Mon, 24 Jan 2022 12:33:18 -0800 (PST)
X-Received: by 2002:a92:6b10:: with SMTP id g16mr9053356ilc.165.1643056398198;
 Mon, 24 Jan 2022 12:33:18 -0800 (PST)
MIME-Version: 1.0
References: <20220124165745.16277-1-tdas@codeaurora.org>
In-Reply-To: <20220124165745.16277-1-tdas@codeaurora.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 24 Jan 2022 12:33:06 -0800
X-Gmail-Original-Message-ID: <CAD=FV=X3+MDOMEidLbdgvcHVSObO=_x3KSLe31hr-TP6B2jCEg@mail.gmail.com>
Message-ID: <CAD=FV=X3+MDOMEidLbdgvcHVSObO=_x3KSLe31hr-TP6B2jCEg@mail.gmail.com>
Subject: Re: [PATCH v1] arm64: dts: qcom: sc7280: Add lpasscore & lpassaudio
 clock controllers
To:     Taniya Das <tdas@codeaurora.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Andy Gross <agross@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Jan 24, 2022 at 8:58 AM Taniya Das <tdas@codeaurora.org> wrote:
>
> Add the low pass audio clock controller device nodes.
>
> Signed-off-by: Taniya Das <tdas@codeaurora.org>
> ---
> Dependent onLPASS clock controller change: https://lkml.org/lkml/2022/1/24/772
>
>  arch/arm64/boot/dts/qcom/sc7280.dtsi | 43 ++++++++++++++++++++++++++++
>  1 file changed, 43 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> index 937c2e0e93eb..0aa834ce6b61 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -8,6 +8,8 @@
>  #include <dt-bindings/clock/qcom,dispcc-sc7280.h>
>  #include <dt-bindings/clock/qcom,gcc-sc7280.h>
>  #include <dt-bindings/clock/qcom,gpucc-sc7280.h>
> +#include <dt-bindings/clock/qcom,lpassaudiocc-sc7280.h>
> +#include <dt-bindings/clock/qcom,lpasscorecc-sc7280.h>

Presumably using these two include files means a dependency on things
landing in the clk tree [1]. Unless Stephen and Bjorn want to work
something out, I'd guess you'll need to re-post with just hardcoded
numbers for now?

[1] https://lore.kernel.org/r/20220124162442.29497-2-tdas@codeaurora.org/
