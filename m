Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DCC594A8FC4
	for <lists+devicetree@lfdr.de>; Thu,  3 Feb 2022 22:24:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354794AbiBCVYU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Feb 2022 16:24:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232544AbiBCVYU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Feb 2022 16:24:20 -0500
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com [IPv6:2607:f8b0:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E22B1C06173D
        for <devicetree@vger.kernel.org>; Thu,  3 Feb 2022 13:24:19 -0800 (PST)
Received: by mail-oi1-x229.google.com with SMTP id m10so6177351oie.2
        for <devicetree@vger.kernel.org>; Thu, 03 Feb 2022 13:24:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=XW93pKZhYEq2zGiS8ZDDtZvXjPEjhCVsf5y01qSfel0=;
        b=lcQ/tezi9903eLEc6n72KhPBABrKUXJZHsU+ChW/phgt3wXXLcosx8Ck85nkc5gblZ
         rTWrzqFmsFLtA2b7T3GV3fT46dXSItJvsKAGFTRYDySOe9cE6k8o4FQZ1QUkLoZ78sih
         OUq39YG/asbR0wqMD/z9obm8earDOqE4sOjM8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=XW93pKZhYEq2zGiS8ZDDtZvXjPEjhCVsf5y01qSfel0=;
        b=E4lb4TV/0rZ+0gDk0TDt+WnoPOz7h+rch6cRlJfjJEM0U3TWYaZkVyWB8ieUlogrJC
         25FgkWfaPIDx8idvIK/zecJxsChSGUCMTKXN3XfAiphhN/YoGuGDDx9muX6ARkQw2UVx
         XA2leraHqt1N2GpIYFzBXYL9XfMK3YSRPYg47VAJislbOotkdBp3492RVLCop0ZOSIK6
         hHLos34g2olZFeZWG+PzbTVpNmKw9TiSuhDII/0WDIgOTXzYVClXJPvZo9txy9nfZcjv
         n+D7JNo7vHN4oGRUUpFWcKHNZAkIsj5HEsiyER8rZFnnekDBA3GQ7QmASjFpUGPfIuGv
         rFow==
X-Gm-Message-State: AOAM533AQq6rpGAR8dKN+06D9suV8/dOzpKcBZirYKXFxPizWOtUggdq
        txxmIFe3QwpQYNX+lUQ9Q1CniWveCCSsKqDz7hjNhw==
X-Google-Smtp-Source: ABdhPJzgdVn0yY67gEKiW1bbQ+nGjdTw/ZmUrcANmg/KK+0PzScKrUOtWQXJ5j8BBkoMpYKlnqUQoQ8F8lw3dyZEttg=
X-Received: by 2002:aca:df82:: with SMTP id w124mr8781199oig.112.1643923459284;
 Thu, 03 Feb 2022 13:24:19 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 3 Feb 2022 21:24:18 +0000
MIME-Version: 1.0
In-Reply-To: <20220202132301.v3.2.I627e60c5488d54a45fd1482ca19f0f6e45192db2@changeid>
References: <20220202212348.1391534-1-dianders@chromium.org> <20220202132301.v3.2.I627e60c5488d54a45fd1482ca19f0f6e45192db2@changeid>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Thu, 3 Feb 2022 21:24:18 +0000
Message-ID: <CAE-0n50c=5dYJ+-Brg_iACjL0wCYjPaGcMbrf8SjD7am=VcfCA@mail.gmail.com>
Subject: Re: [PATCH v3 02/14] arm64: dts: qcom: sc7280-herobrine: Consistently
 add "-regulator" suffix
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Douglas Anderson <dianders@chromium.org>
Cc:     pmaliset@codeaurora.org, mka@chromium.org,
        quic_rjendra@quicinc.com,
        Shaik Sajida Bhanu <sbhanu@codeaurora.org>,
        kgodara@codeaurora.org, konrad.dybcio@somainline.org,
        Sankeerth Billakanti <quic_sbillaka@quicinc.com>,
        sibis@codeaurora.org, Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Douglas Anderson (2022-02-02 13:23:36)
> Some of the fixed regulators were missing the "-regulator" suffix. Add
> it to be consistent within the file and consistent with the fixed
> regulators in sc7180-trogdor.
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
