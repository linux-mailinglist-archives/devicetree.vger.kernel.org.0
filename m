Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AD23E39ABBC
	for <lists+devicetree@lfdr.de>; Thu,  3 Jun 2021 22:24:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229989AbhFCUZv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Jun 2021 16:25:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36942 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229665AbhFCUZv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Jun 2021 16:25:51 -0400
Received: from mail-qk1-x72f.google.com (mail-qk1-x72f.google.com [IPv6:2607:f8b0:4864:20::72f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A7FAC061756
        for <devicetree@vger.kernel.org>; Thu,  3 Jun 2021 13:24:06 -0700 (PDT)
Received: by mail-qk1-x72f.google.com with SMTP id j189so7294668qkf.2
        for <devicetree@vger.kernel.org>; Thu, 03 Jun 2021 13:24:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=K0U2vfO0s/gXz3YV0/zSFcReO1Jx7LkT5Q9OOSBMSss=;
        b=j1A98YTafAPvHjzQY+ZV3QAOa/LBVzmJgVhIbhQLSvdy7bXiODny1yOlaQlb7LWls1
         opVdTQxQBf3Q8hayY4a9lm9mPaZjJGGYSQ2H30V1xIUhm1pwHvYQ50/PtHnXUA6ijneI
         dnlEKejOa4+paYKemXhcp2qBAN9dE/b3ctD14=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=K0U2vfO0s/gXz3YV0/zSFcReO1Jx7LkT5Q9OOSBMSss=;
        b=PT0YNhaC988CHlzXsvMPb2qpCyZ4uH7mbWE3SVcyVQnlCbco+AiLsWRIUlavBpdydB
         E8/dPWJ+BvpGuSKcYJ10Om4sbpAQY5wKPSusMMiJ/r5Jivo9DpJZjC2t3dB4V2p1bCR0
         Cbu1l+NZcXJDygQXrTtflItYPTBJdbwRmQC0uxicvcMJ15IGQ5q8HCAczTLu/ArzP+L+
         3XFOxz1PHmRhfII0B1K2JjhAF8Le+qr0L+4HGK9bgnjxJu4gdKL8wCPwh++GbwpeZD74
         sHAO0jBbYDa2uw0BIxcw82szoW26UAZxsFgB3iaXBJ5je2Iok73QeFGiRL3jVKI2QvDs
         GcdA==
X-Gm-Message-State: AOAM530TzR/6ICWNFIcbcS+S32Lo1AVxA81IsXh4R+iYDBZr6vXL3v8u
        rlHaP4kROSgcySJPzmVERJyrqZyo2pMwYw==
X-Google-Smtp-Source: ABdhPJxFWnfdaw0i0vRiQ+bdvXYiXfMoC3dyYLZqWmvaHjJZZFf5iSC9Zdif/8dr11KT1FV2Sas4Ng==
X-Received: by 2002:a37:4484:: with SMTP id r126mr1062174qka.18.1622751845084;
        Thu, 03 Jun 2021 13:24:05 -0700 (PDT)
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com. [209.85.219.181])
        by smtp.gmail.com with ESMTPSA id c20sm2374736qtm.52.2021.06.03.13.24.03
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Jun 2021 13:24:04 -0700 (PDT)
Received: by mail-yb1-f181.google.com with SMTP id g38so10543920ybi.12
        for <devicetree@vger.kernel.org>; Thu, 03 Jun 2021 13:24:03 -0700 (PDT)
X-Received: by 2002:a25:8191:: with SMTP id p17mr361035ybk.405.1622751843264;
 Thu, 03 Jun 2021 13:24:03 -0700 (PDT)
MIME-Version: 1.0
References: <20210602191338.1995827-1-sujitka@chromium.org> <20210602121313.v3.1.Ia83c80aec3b9535f01441247b6c3fb6f80b0ec7f@changeid>
In-Reply-To: <20210602121313.v3.1.Ia83c80aec3b9535f01441247b6c3fb6f80b0ec7f@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 3 Jun 2021 13:23:51 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Vfi6SZsgJN3Jm+DrmW8KrySbn14BMOWQjW9ib-fqZd8Q@mail.gmail.com>
Message-ID: <CAD=FV=Vfi6SZsgJN3Jm+DrmW8KrySbn14BMOWQjW9ib-fqZd8Q@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] arm64: dts: qcom: sc7180: Move sdc pinconf to
 board specific DT files
To:     Sujit Kautkar <sujitka@chromium.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sibi Sankar <sibis@codeaurora.org>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        Mark Rutland <mark.rutland@arm.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Jun 2, 2021 at 12:14 PM Sujit Kautkar <sujitka@chromium.org> wrote:
>
> Move sdc1/sdc2 pinconf from SoC specific DT file to board specific DT
> files
>
> Signed-off-by: Sujit Kautkar <sujitka@chromium.org>
> ---
>
> (no changes since v1)
>
>  arch/arm64/boot/dts/qcom/sc7180-idp.dts      | 102 +++++++++++++++++++
>  arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi | 102 +++++++++++++++++++
>  arch/arm64/boot/dts/qcom/sc7180.dtsi         | 102 -------------------
>  3 files changed, 204 insertions(+), 102 deletions(-)

FYI: Since there were no changes from v2 so you should have kept my
reviewed-by tag from v2. Here it is again, though:

Reviewed-by: Douglas Anderson <dianders@chromium.org>
