Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 60FB0458D68
	for <lists+devicetree@lfdr.de>; Mon, 22 Nov 2021 12:28:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232948AbhKVLb3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Nov 2021 06:31:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32804 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239110AbhKVLb0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Nov 2021 06:31:26 -0500
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 912C9C061574
        for <devicetree@vger.kernel.org>; Mon, 22 Nov 2021 03:28:19 -0800 (PST)
Received: by mail-lf1-x12b.google.com with SMTP id f18so79269452lfv.6
        for <devicetree@vger.kernel.org>; Mon, 22 Nov 2021 03:28:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=IagQM63R+rDjhJUw1VMPJDDpFazIAHieWAnQRQyFphA=;
        b=PFAOxEbUA29b30rxhBtR8jpeMFz07/eFFDDQJAnKfBtRCskpZSpEbXpH0xchxq1vX6
         ObDxcAJdeilTRvGEDpDffya6n9VnUGLW/jItJ0gK3pigN1UpiYMpaqpgSoJudZjtUBCE
         FH4yJ9f2n9A+mQ+y0WJkrxjJk9Cbrj+nCvr9ECf9q1DfbOBIGzzx2uOqesFUOzl7MD5P
         HPTfRtw+XQEbqYzgpL/eYbVxlVikndmIEZ+ApJfNT2S9VDjiR6cq6LCcQ/0O8jVxCi2A
         I9fcmoC3xOdgA+zfvZMnX7rZZefpEQUQOWDDgCUu63ND6vGFsoeAc10oxDb7x4Fn77bW
         97wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=IagQM63R+rDjhJUw1VMPJDDpFazIAHieWAnQRQyFphA=;
        b=M5LpbzMr/t0jAMkoEimw0N/SeZKvt2uJcmW3lQC2Xi497btewEPKAVKK+nJFKwk6W1
         NixUi6Z1fSDKos4r7nQq05x6dnzghagpKlsvts/K52acdQsnkBdMh590ZiiVXbHyIUud
         K8dHCZecGNXfJrnl5mT04mBYs6qouoboRgwam3+acKltluMAqgkWEg+gMR912soRBnz8
         ZGr3ZlKvbpvP7haW/kdnvmFBL4SeYtVEg9TsejfH/Hwc5dGLRFhuDbS7G8N8HJAL1JrH
         5rQc8UANZQDfgIP2wBZYdHcpzbmcLT9PPlU0x0WF5d0cXgDbly4YmNNSxUmZC3tXkZ85
         7nXA==
X-Gm-Message-State: AOAM5302FFqNUkwyMEdLyigVLpHEJD4knPw1cdmBXoDNBMzBrJIWGbcX
        /oXAa5zBRnrvBT0HEjQFbbM3R2kpB1rV0IXlDdxw6A==
X-Google-Smtp-Source: ABdhPJy3c024rax53YED/h5qShT7smb1J1xSLFa5vpqATOSqXWQ6zzjj3kRnEy9P+bc+FTkRM8LPPqCdRz857mHRdrY=
X-Received: by 2002:ac2:4bc1:: with SMTP id o1mr57271385lfq.254.1637580497906;
 Mon, 22 Nov 2021 03:28:17 -0800 (PST)
MIME-Version: 1.0
References: <20211122103905.14439-1-biju.das.jz@bp.renesas.com>
In-Reply-To: <20211122103905.14439-1-biju.das.jz@bp.renesas.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Mon, 22 Nov 2021 12:27:42 +0100
Message-ID: <CAPDyKFrcCHBrh9JUDXkMyuURgnnh8uxjcGp_DLKMDz7zw0pWWQ@mail.gmail.com>
Subject: Re: [PATCH 0/2] Rename RZ/G2L SDHI clocks
To:     Biju Das <biju.das.jz@bp.renesas.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Wolfram Sang <wsa+renesas@sang-engineering.com>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Chris Paterson <chris.paterson2@renesas.com>,
        Biju Das <biju.das@bp.renesas.com>,
        Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 22 Nov 2021 at 11:39, Biju Das <biju.das.jz@bp.renesas.com> wrote:
>
> RZ/G2L SDHI has 4 clocks which is controlled by PM frame work and is using
> Gen3 compatible string. Now the clock factorisation happened on highspeed
> clock handling and it changes to fallback by getting parent clock, if
> "clkh" is not specified in device tree.
>
> This path series rename the clocks to match with the clock names used in
> R-Car Gen2 and later generations. This will avoid driver changes related
> to clock names.
>
> This patch series based on renesas-devel

Acked-by: Ulf Hansson <ulf.hansson@linaro.org>

Kind regards
Uffe

>
> Biju Das (2):
>   dt-bindings: mmc: renesas,sdhi: Rename RZ/G2L clocks
>   arm64: dts: renesas: r9a07g044: Rename SDHI clocks
>
>  .../devicetree/bindings/mmc/renesas,sdhi.yaml          | 10 +++++-----
>  arch/arm64/boot/dts/renesas/r9a07g044.dtsi             |  8 ++++----
>  2 files changed, 9 insertions(+), 9 deletions(-)
>
> --
> 2.17.1
>
