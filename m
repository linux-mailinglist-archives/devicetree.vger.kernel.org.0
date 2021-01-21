Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5A9CF2FEEEC
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 16:35:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731933AbhAUPdp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jan 2021 10:33:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37608 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731902AbhAUNV5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jan 2021 08:21:57 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 886CFC0613CF
        for <devicetree@vger.kernel.org>; Thu, 21 Jan 2021 05:21:08 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id v24so2455252lfr.7
        for <devicetree@vger.kernel.org>; Thu, 21 Jan 2021 05:21:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=op8j6R+4g48Fa+r3T9cI5xuzEnP9tzeqMgjxOehUVnQ=;
        b=KOqidmz/CNyqEKehs2nWu23QUqIuHHvV8BJ4khGA4+VCmdaIvawUrg0n3clUglYtHQ
         5sH8Rka2lKSp3BBHtLiPfEp6BCPmQL+B8KbwEq8SwUczwlwBELUnAHiujJ/oe3PKpWP8
         QZkVdVEV4eXJ1yzbjli5R2kJb/U29jmdl8ksIRgxV6ceR6fm7+2sAPDly16MmHrvRpiP
         TaSihqF6tt2OfDgtxLzUNFPNdNNogXDiti+c6DNiFtcb4y1jMaoRcva4cTXFbY2/Zqi5
         xeTFjUHjJvoNqrtr/g5BL+b7hl81Ok8GyUvjTvJ68kU5sPgZffhiQqSOkHLMGKGgvMpJ
         88QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=op8j6R+4g48Fa+r3T9cI5xuzEnP9tzeqMgjxOehUVnQ=;
        b=G7FwkEActH94ojS8WPgkamqD0a/TXveDLObKQG6UK7C/p6RD7Jx7hOny7o0gD5OVz0
         cUNuneeZWduBU1iBkmgI5T3bKeyAUO81ThIW0vF9RgcSVdW29IMzhSzfSo6kjDOW847V
         s3zz4kuqaTVk7vcvlvk/+uDhU7dqz38Dh5dCwuVCZ7ihzuBcighZ9GX3Kh18ikwazb4B
         tSZTeWQoPPIYpiKP1eOfwraCQDgqsiVmtv9uldDLpUZYKpJSNf/1jWat3KNw00dkzYKK
         OuX8gWcYQPAIbYDiAeeFMzDwVZsOtwLxdfKZ8hUcbFThDoGdwk4d++6bHQjxvJENq/2L
         g8tA==
X-Gm-Message-State: AOAM532m6UW/PQkd8ygh8yeFQeqJ4AXU9fhc+T4VAo2KxkCSajgsnTrA
        Nz7kwzSPF7Sa0LgDJ9B8eHPVsdy9YquLbhSFS5pAlA==
X-Google-Smtp-Source: ABdhPJzjolIGs0g1G1QMpgs9c5ZxqJOsxS9rir1XxYZUkDea4S/zurMDNfneRGbRqCXReCG1CXXIURIgom29HL1H5uI=
X-Received: by 2002:a05:6512:3238:: with SMTP id f24mr6846302lfe.29.1611235266996;
 Thu, 21 Jan 2021 05:21:06 -0800 (PST)
MIME-Version: 1.0
References: <20210120222114.1609779-1-bjorn.andersson@linaro.org> <20210120222114.1609779-2-bjorn.andersson@linaro.org>
In-Reply-To: <20210120222114.1609779-2-bjorn.andersson@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 21 Jan 2021 14:20:55 +0100
Message-ID: <CACRpkdY6G_EP8QAp1C-eghdbgcgwQezA1ap=nDtSHPNqjuDF6Q@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: pinctrl: qcom: Define common TLMM binding
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        MSM <linux-arm-msm@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jan 20, 2021 at 11:21 PM Bjorn Andersson
<bjorn.andersson@linaro.org> wrote:

> Several properties are shared between all TLMM bindings. By providing a
> common binding to define these properties each platform's binding can be
> reduced to just listing which of these properties should be checked for
> - or further specified.
>
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Overall it looks good, just cutting some slack for reviewers (especially
DT people) before applying.

> +description:
> +  This defines the common properties used to describe all Qualcomm TLMM
> +  bindings and pinconf/pinmux states for these.

I vaguely recall asking you in the past what the acronym TLMM actually
means. This would be a good place to expand the acronym so people
know what these four letters actually represent.

(There, I finally gave you an official reason to go and poke Qualcomm
hardware engineers about this. ;)

Yours,
Linus Walleij
