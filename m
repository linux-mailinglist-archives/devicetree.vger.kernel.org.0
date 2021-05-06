Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CF8EB3753EF
	for <lists+devicetree@lfdr.de>; Thu,  6 May 2021 14:37:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231327AbhEFMi1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 May 2021 08:38:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50102 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231190AbhEFMi0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 May 2021 08:38:26 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C208DC061761
        for <devicetree@vger.kernel.org>; Thu,  6 May 2021 05:37:27 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id a36so6823455ljq.8
        for <devicetree@vger.kernel.org>; Thu, 06 May 2021 05:37:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=fabHOBF/FKRMCsbocyQpihWbW6A2j8AFwdwyyqGtJ+4=;
        b=ccUzsZuxbe0+1KILFT74bJTOt8/jfyNkOFdmvLWaGDA2/LevE/x9dtV7MEVTFVFX2D
         Phx9+OxRRhaQDCPFAcxhIYz2KaKCqbl0lcbdw6MYnu2yOKhDgd0teWXIn3Q7mzNLxVaX
         FlDDn0I8RtxtWhUxdkydKqQBlJPle97FnB4qdYHuRGLzmQG6g/JluGoT8L7F9iS2MPa6
         HVHp3q8wO+h7TLh/Ajojd9W24mVIvMsuHhb2r+4xF84UwZYs46iip++6F038Gg0sOKme
         +v4UZMotTIO7NW6fNNsD2YIy19FKZe71Tsh16yLdsIIKJKP3fhnYRYiY5388mP6Y1NlG
         EyBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=fabHOBF/FKRMCsbocyQpihWbW6A2j8AFwdwyyqGtJ+4=;
        b=WufXJb4TW6Z8Pu5svUCu9LRjyvPvby7HzDz+Rgg6jTCCZIQYxr7BfqtGM/jb+guuWu
         obTP6RkZ77HP03lW+WQxJsF4fCaqcfl6NR1a+hkwiFVJK7ZUW6C1RRsi1un6Yuyk0/Zw
         MOMrs5SBCXzgiKtdiP8But8QEJuABbJNT9u9UV04Obp2QZI1uSlPz31JwLpirSbgeBSH
         LFQGFk8yGlCdddKMzCsLrAB1JFPqonTcwSz4IroLtV/OOgkiMYnuTSaeutFmh3ml4j5l
         HpmD7GgbQRXha3dW09vU3yKF0IigMsiPhQqKM/BbTAQ5sgE9B8Ty17DfsHQ4/CbCC7O/
         fWYw==
X-Gm-Message-State: AOAM531X3qtqoMRezfvpmEoZu3lPnPwAeb3ajeAsemCnsVbw6GkfkSoH
        o/7Fsw+0zi+OTxcql0w9pmo+SFF/uvpW5t7MHzmVWw==
X-Google-Smtp-Source: ABdhPJzc/sEEaxPFnTNaCN9N8aRbxxrgM4FR4KufYamR7sX63C3IKMoMZo1YtQRmN1lMjxxV8V5P19IYB/xetoF6zmA=
X-Received: by 2002:a05:651c:503:: with SMTP id o3mr3154490ljp.368.1620304646273;
 Thu, 06 May 2021 05:37:26 -0700 (PDT)
MIME-Version: 1.0
References: <20210503210526.43455-1-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20210503210526.43455-1-u.kleine-koenig@pengutronix.de>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 6 May 2021 14:37:15 +0200
Message-ID: <CACRpkdbBa6z7M9Vnsw9E-peuqKsvC4s9f9Qi6ezWX0J2QR57xQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: gpio: introduce hog properties with less ambiguity
To:     =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>
Cc:     Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Sascha Hauer <kernel@pengutronix.de>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 3, 2021 at 11:06 PM Uwe Kleine-K=C3=B6nig
<u.kleine-koenig@pengutronix.de> wrote:

> For active low lines the semantic of output-low and output-high is hard
> to grasp because there is a double negation involved and so output-low
> is actually a request to drive the line high (aka inactive).
>
> So introduce output-inactive and output-active with the same semantic as
> output-low and output-high respectively have today, but with a more
> sensible name.
>
> Signed-off-by: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de>

Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
