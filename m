Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 347782CFFA7
	for <lists+devicetree@lfdr.de>; Sun,  6 Dec 2020 00:12:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726929AbgLEXLf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Dec 2020 18:11:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726734AbgLEXLe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 5 Dec 2020 18:11:34 -0500
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com [IPv6:2a00:1450:4864:20::143])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C08DC0613CF
        for <devicetree@vger.kernel.org>; Sat,  5 Dec 2020 15:10:48 -0800 (PST)
Received: by mail-lf1-x143.google.com with SMTP id w13so74277lfd.5
        for <devicetree@vger.kernel.org>; Sat, 05 Dec 2020 15:10:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=m1UEZz6HGFFmSdASHfwbCskijV7GUrzT+a+Yt9fsFZU=;
        b=QxPctIMns7UAHl7Ywu+Oy9o2xkI2GRvggQ/tyMeKeOu6xKfFq3kz1Vqes/lt7DLO28
         75DJL3qYF1l2spY1c3NOw/DE4aeCnzH0tF/TsWY0m+9DGHVoCxtmgrWqbrfyvQvoA0Cp
         nICq/9VFHmU3pbgV77Rbikto/FeaOy3238t8+ECriapWRS5d5oVNEBuPdmVaxuSUq0QG
         UpA5BoAn6ZNsfyd6H0gPIUei4a8Aq0K4DZ1XTtF2AP7BN/1OZL10qZE3hUWTTDHvwnuz
         2ISh7oLE/arJe3ZMldQB5CoUP1RcziZs1QMRzZR2NMmFjNDo2h4cp2T5e4TgkmrIbhCf
         pHpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=m1UEZz6HGFFmSdASHfwbCskijV7GUrzT+a+Yt9fsFZU=;
        b=Igdoxo5Ue3dTCnbo1UOnCl1cCUOntwszZJrO+9tKEumzVt0ZBmpl6/soaQCMfwJRdK
         GSH5TiOeATTnjAJasUl9+nj6atmnPSKVEmHaX0MSKFuaetPtruN1suNsBFBqZt13ROS3
         DOT/Fodzd2sckOhh3hZmBdeNy6iwd7kbaQ5PyK/NcsaFsvOFMoS5WfEzniJOTtMzcPa0
         JOXcRT0x2Y3gmCzzi4XdKh5nxJ2HpIXtOSo+KUlTgO7Y1Aw7wPGLtiw5bmJcXY+061mN
         dfIyEx5cl9+2ZhlKscSXGGiarzAOX0vnBgI9MY95Fr5HwHxcvvxkjmcPa6UUV8Vwhvyf
         mHdw==
X-Gm-Message-State: AOAM532+5hSaDDCTInydv9nB/CWpV7lvhcFlldG71MnJU3lg+Ec1+oL4
        oavpnEUjr3MbAXqGVtAxqFd1TjOFKKluQAAQKSNCeg==
X-Google-Smtp-Source: ABdhPJx6u5+LNHuD3eb5jh0scGEPapSyihps7xV7WYYMjWESuWf1iWHgbe3YuYsMsR1Wy+M4DYrGQC2NB28GRB/Sbf4=
X-Received: by 2002:a19:8d8:: with SMTP id 207mr5324591lfi.441.1607209846988;
 Sat, 05 Dec 2020 15:10:46 -0800 (PST)
MIME-Version: 1.0
References: <20201203131242.44397-1-stephan@gerhold.net> <20201203131242.44397-3-stephan@gerhold.net>
In-Reply-To: <20201203131242.44397-3-stephan@gerhold.net>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 6 Dec 2020 00:10:36 +0100
Message-ID: <CACRpkdb9ZMJCPF9nGSX2jzkuj4g-3rCb4m0nHuBfrSFT-rPF_Q@mail.gmail.com>
Subject: Re: [PATCH 3/3] Input: tm2-touchkey - add vddio regulator
To:     Stephan Gerhold <stephan@gerhold.net>
Cc:     Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Linux Input <linux-input@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Dec 3, 2020 at 2:13 PM Stephan Gerhold <stephan@gerhold.net> wrote:

> The Samsung touchkey controllers are often used with external pull-up
> for the interrupt line and the I2C lines, so we might need to enable
> a regulator to bring the lines into usable state. Otherwise, this might
> cause spurious interrupts and reading from I2C will fail.
>
> Implement support for a "vddio-supply" that is enabled by the
> tm2-touchkey driver so that the regulator gets enabled when needed.
>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
