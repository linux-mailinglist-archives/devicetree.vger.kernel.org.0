Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6773146F8C3
	for <lists+devicetree@lfdr.de>; Fri, 10 Dec 2021 02:47:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235458AbhLJBux (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Dec 2021 20:50:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231731AbhLJBuw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Dec 2021 20:50:52 -0500
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com [IPv6:2607:f8b0:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58925C0617A1
        for <devicetree@vger.kernel.org>; Thu,  9 Dec 2021 17:47:18 -0800 (PST)
Received: by mail-ot1-x334.google.com with SMTP id 35-20020a9d08a6000000b00579cd5e605eso8274543otf.0
        for <devicetree@vger.kernel.org>; Thu, 09 Dec 2021 17:47:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SB4uGKWGEZlPId4QacTW46ykEN+JrbNE3sc8enIlhxg=;
        b=Tx8UqhdZwbSoZNvIHDfHO6iTw8T2hF9nDLgRFB2FT/3XrWJbwRK3TvErDUIXkqMnMp
         0M5hyy/3ix6UwWdpsoEHgxBXy6ROwOEgmgUzm7CBJjwKiHWyaBy1FkI9Ihk4/sDqVzPB
         x56NW3wkBnI+bS+ZaaPIk+8Lpe9rsaPzW5We87/7weSvN4JLKuybiqGsBBySACmO4fZu
         BJzzwpMVCMErv/1xFh5SeA8Tsn9SwbNuuUp/Mfy1ROYoLRKln9GbBILjL++ttKpYfTxf
         qAORx6HcCgzre/k2Kd5yhdsMXmzyCmBY5nhJUCzt1HbFb2EE33UVJ2LrrIfRYJo96gN6
         D+Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SB4uGKWGEZlPId4QacTW46ykEN+JrbNE3sc8enIlhxg=;
        b=cJJa1YNqPAgopkgBD8c/PoUvfGZN+ShmA4vKDbskJGV4chX23t+E0FHZW+Vh2QOZt2
         Z2gTAn3LNILRfIz/8yO0aMsdwxoAH3RnHeVLrWHDSBnjbhsx9UYS9UMQwNsOUbOdKO6g
         +ol8UIiNqltfrmpWKGDU5NWtMkUrOdhwKr1rEt3Ed43TviA2YcXU4cww9TNmTk+JuYtA
         xHKBCyLLUiuZ3XaWH469PzgyoCsw0+a3tLZV4mHi+zUXgtEKPRdQRMdjrQdiXkgAJ15l
         DxYRtT/7ATc/0l9pi+BTsuMEi/XSf68XSdnXSNzmb8JeDrmiQnvp8kghOFTCLZq940h7
         HldA==
X-Gm-Message-State: AOAM532QB/MuLuGkayH96tfbvdb1MVv7BUNVXsuYCaAdtV1dQ4a8RTGz
        TTDPCoXFm2EcIddWaKLfWPWDzUUrWtjMoL1/H2GUmw==
X-Google-Smtp-Source: ABdhPJxv8IPgVTfY/Q+BKd6CxueTQ+0Us7H8rC65W8oBGtJ/enzhxxKOJo5nVWiuPmyY+HCgpF15ztyzXeiupqfFYjs=
X-Received: by 2002:a9d:ed6:: with SMTP id 80mr8952047otj.35.1639100837724;
 Thu, 09 Dec 2021 17:47:17 -0800 (PST)
MIME-Version: 1.0
References: <20211208173047.558108-1-thierry.reding@gmail.com>
In-Reply-To: <20211208173047.558108-1-thierry.reding@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 10 Dec 2021 02:47:06 +0100
Message-ID: <CACRpkda6sLwmPWTmGBX=5x-2LFK9H0NUiSGXj_bqP0OWqGTL0g@mail.gmail.com>
Subject: Re: [PATCH v3 1/6] dt-bindings: gpio: tegra: Convert to json-schema
To:     Thierry Reding <thierry.reding@gmail.com>
Cc:     Bartosz Golaszewski <brgl@bgdev.pl>,
        Rob Herring <robh+dt@kernel.org>,
        Jon Hunter <jonathanh@nvidia.com>,
        Prathamesh Shete <pshete@nvidia.com>,
        linux-gpio@vger.kernel.org, linux-tegra@vger.kernel.org,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 8, 2021 at 6:30 PM Thierry Reding <thierry.reding@gmail.com> wrote:

> From: Thierry Reding <treding@nvidia.com>
>
> Convert the NVIDIA Tegra GPIO controller device tree bindings from
> free-form text format to json-schema.
>
> Signed-off-by: Thierry Reding <treding@nvidia.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
