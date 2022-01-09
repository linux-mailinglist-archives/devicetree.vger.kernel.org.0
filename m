Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5E66F488903
	for <lists+devicetree@lfdr.de>; Sun,  9 Jan 2022 12:49:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235355AbiAILtu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 9 Jan 2022 06:49:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45102 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235353AbiAILtt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 9 Jan 2022 06:49:49 -0500
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com [IPv6:2607:f8b0:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4B8BC061748
        for <devicetree@vger.kernel.org>; Sun,  9 Jan 2022 03:49:48 -0800 (PST)
Received: by mail-oi1-x233.google.com with SMTP id w80so15470829oie.9
        for <devicetree@vger.kernel.org>; Sun, 09 Jan 2022 03:49:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0F5J1J5COkqUCqUOXJ14sFe0w5hKnvmKmF+HO4uM40k=;
        b=H6BYDtgetE16IE5GgPHEc4Y1Ri/FGk6TuoYmo+cAj4CZRmlKEXfqGFqTBgM3F0bXp+
         At9Q3aI/72dT6dMr/XRAQeuAX8pynpmHI6oeAAP2+oHF9hPqneXBZfOYxloE+czQNtFH
         uwU0AwccEcKKp0Dxc/G/EaKuaVTrizM5h4l+WzSLeC45e/nb3Vvlv7vCrKPIpWMyCJSF
         Q2N2DTwi9PRSNyQaHny/d9CPtFIXiVtvJBBMIXbgQn7G0nbGr3le0IeIxKLOJRQiY4+w
         gV5M5WeZBuTDk6HvK6wvS3GY/FfxVScqxVyoO5E0hLwwx6GtP22jHN/Kq47d8gZN7UV/
         x5jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0F5J1J5COkqUCqUOXJ14sFe0w5hKnvmKmF+HO4uM40k=;
        b=iFe0gu1n/nPXTcnxBgVvZBJ6PwHxg6nTWKO3HA3kSO5hVCjBzhETlVLUOmNxQZR20s
         nUxHetRbGhrPvp4+x1puYe9m9IG49I22LG06kPib2OXrTcaJ+jFGsOUoZXtRbn2FeiOH
         05glrbsO/vMFE4Yo5tnNIXJPV5/sLxuIGTe4Ic+yshjWVZV0k2BvcQWaXlJD4dhnvk1G
         iBd080IStDW18O3C8lfT3Crh1Yqn5rBuvmnkfDkmdLd1Ndv8SEolyvka+X7tjYIFtHYC
         k6H3U70uOYfjpy14MxP3Q73VWpwNCmaRLGh2TLoIFDIh6OnBmx/g4QOzcRA7vpFwpnLd
         xRpg==
X-Gm-Message-State: AOAM532+J5MUAEXH6KiC72LIv3CgFk2hZ0ML6lp4EPnV+ZOva1F9pYOO
        ma93eluehqkkXxSubdq05ylwZj6q+1/M9HtBgfxMZQ==
X-Google-Smtp-Source: ABdhPJxv4S+dfRI1zCeRFZM+rSrjTb/mooA6c6uSfI5wNcIJA9OMB7xhcX9dmW+Xg3dNPQKmXrKkB4G41vTlCQcy1c4=
X-Received: by 2002:a54:4613:: with SMTP id p19mr15195150oip.162.1641728988103;
 Sun, 09 Jan 2022 03:49:48 -0800 (PST)
MIME-Version: 1.0
References: <20220106182518.1435497-4-robh@kernel.org>
In-Reply-To: <20220106182518.1435497-4-robh@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 9 Jan 2022 12:49:36 +0100
Message-ID: <CACRpkdYZ3N-KPJrs6F0L=S-rboTzV9k1vgs-XvtqnGcR1aPOBA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: iio/magnetometer: yamaha,yas530: Fix invalid
 'interrupts' in example
To:     Rob Herring <robh@kernel.org>
Cc:     Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jan 6, 2022 at 7:25 PM Rob Herring <robh@kernel.org> wrote:

> 'interrupts' does not take a phandle, so remove it in the example.
>
> Signed-off-by: Rob Herring <robh@kernel.org>

Oops
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
