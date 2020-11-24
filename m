Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 05A972C202F
	for <lists+devicetree@lfdr.de>; Tue, 24 Nov 2020 09:40:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730564AbgKXIjJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Nov 2020 03:39:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44984 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726871AbgKXIjI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Nov 2020 03:39:08 -0500
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com [IPv6:2a00:1450:4864:20::143])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF4BCC0613D6
        for <devicetree@vger.kernel.org>; Tue, 24 Nov 2020 00:39:07 -0800 (PST)
Received: by mail-lf1-x143.google.com with SMTP id a9so27723747lfh.2
        for <devicetree@vger.kernel.org>; Tue, 24 Nov 2020 00:39:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=i8+bYCeKuOJvnepjKUXd1bAXp/xtxeuCkyy0njL/NAA=;
        b=pM2yYux2OW5DIOxHgUVmKI58b7pM94gtzpow1fv7nhugyA1ylNk6yTjvTfL6Isdxa0
         RL/fpFvBHQmjRmSqhc9JPxpgv4Hh8ZdWdWI/E3jRb8mDsuIlEa8niLuk/MPJrYGDbpC1
         ADKmWNH3/BnBsyr72JUrUNzFnzVK/KfPZEgi72Q5YZ4KCmMlzZ47dgHY6QO2za5gPKB5
         VTGRXum+qhzFRudFxIXNExPBbDtNE8JkFI04gjlMrBOsyvWtsD4l6S422YBS7glv9aTv
         GVrFYKXL+T7T05X0vlLfSlmzxYxqNnh7dO0mGfiJzBO5zM6/1XhzLSL3OAJaHlc2kx3c
         9TCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=i8+bYCeKuOJvnepjKUXd1bAXp/xtxeuCkyy0njL/NAA=;
        b=mspJh9St3Rn5jufzyaP50iNP3kCWEBZNi2vZndpBTlWF+eF7ySb/a+xodcD57fl6mq
         KDuHWNzk/dKtmPMD9jM+J9SEnAZWgoihY/fRQUuXJoimj6pH4iYLtB9HLyuD8kVoRFMF
         +UyY6u43my3xMQqPqJOjnfqLYDtRYYAnOCXFn4e8ZJR/MuheHKgON+RXpZvrjjaACVVF
         FBbsnX7LoqTEswUs6DYD2YtGnO1h5o1SU1Pg/JVtj51O5a6iZAOLtHM3VqwC8pvky7Ff
         3GNUqg/zhwIWrUArA4aH0bI4UrADZ44CyozW3L0GvI5yqL7ru2T4dRg8/3mcLsoUNjh8
         hRnA==
X-Gm-Message-State: AOAM532q4PGt40KgIzbFS1+rMJFQRYqqpHSztW2bw2dhFKAJWXZiLsbW
        wecbWZ9cZKjdeUnx0+et3GhzjNbxtDIIhys9tY9UAA==
X-Google-Smtp-Source: ABdhPJzQT4fDtfKY20ncG9HETAsp8RdTF79Jyc6mRKyoBEhhdyG1qtyOY5kKpTCHvD7v0L+Hn6wSYsEYEGC2qtveh2Q=
X-Received: by 2002:a19:5f11:: with SMTP id t17mr1212354lfb.572.1606207146303;
 Tue, 24 Nov 2020 00:39:06 -0800 (PST)
MIME-Version: 1.0
References: <1604570192-15057-1-git-send-email-rnayak@codeaurora.org> <1604570192-15057-2-git-send-email-rnayak@codeaurora.org>
In-Reply-To: <1604570192-15057-2-git-send-email-rnayak@codeaurora.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 24 Nov 2020 09:38:55 +0100
Message-ID: <CACRpkdbrOKct5v2YY6L8G5fweP=eOFpcS9=Z6nUyA2E4Of+h7Q@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] pinctrl: qcom: Add sc7280 pinctrl driver
To:     Rajendra Nayak <rnayak@codeaurora.org>,
        John Stultz <john.stultz@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        MSM <linux-arm-msm@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Nov 5, 2020 at 10:56 AM Rajendra Nayak <rnayak@codeaurora.org> wrote:

> Add initial pinctrl driver to support pin configuration with
> pinctrl framework for SC7280 SoC
>
> Signed-off-by: Rajendra Nayak <rnayak@codeaurora.org>
> ---
> v2: Consolidated functions under phase_flag and qdss
>     Moved ufs reset pin to pin175 so its exposed as a gpio
>     npios updated from 175 to 176

Patch applied.

> +config PINCTRL_SC7280
> +       tristate "Qualcomm Technologies Inc SC7280 pin controller driver"
> +       depends on GPIOLIB && OF
> +       select PINCTRL_MSM

I changed this to depends on PINCTRL_MSM in the process to stay
consistent with John's changes to modularize the pin controllers.

Yours,
Linus Walleij
