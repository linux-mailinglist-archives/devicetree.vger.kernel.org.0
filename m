Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 65CD01322D2
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2020 10:47:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727728AbgAGJrU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jan 2020 04:47:20 -0500
Received: from mail-lj1-f195.google.com ([209.85.208.195]:35364 "EHLO
        mail-lj1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726485AbgAGJrU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jan 2020 04:47:20 -0500
Received: by mail-lj1-f195.google.com with SMTP id j1so46621346lja.2
        for <devicetree@vger.kernel.org>; Tue, 07 Jan 2020 01:47:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=GKAgR/S5tBz772raWFJYIXfn8TDQH+brFFCBErQ1zuE=;
        b=cjBKRspfACIPeQVMLJLGEfJDGZNyVnna+Twaa3iVAAHS8U+oy2m9Nb9/ySkIfP+83o
         6Nd+hf5KKEqfByAC7lMtKr9MvuGv4ZYfIANPqsQW1zPiN5oxYMfRen8GL8vHrREQCf5P
         fYFZ94xQTN2WhdOAGXCHEi1T/VuirSxPZ6wRmCw0bCG5HY6x4Sze6nl/zikjeqkOFPAg
         UbCPoMUGD0dJ2CrJo+iVFMjdnIbuI1koYD3fO6igDmWt304aS6EprJ/qmbHAXwZABxbW
         oJaq9ofupn1axmEw/P6QHZ/7dsm+wYsFMYfHNSOgbT6x3HPRZCo0hphOZb+D2FfMEDmI
         Ml6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=GKAgR/S5tBz772raWFJYIXfn8TDQH+brFFCBErQ1zuE=;
        b=KEKABE43UhIoH4GNPBhfIvDFBsQbTtLKhO/nzpkHCYuHlfJTAE9SFtD0fBWP4NCXga
         qGBTkZKqgAVSKYuWWT5JXwHlX3Lu85aQsndKFf8+sXUEjtxBV6cJej0pK9uygPF7X2Bw
         RxKoAaTh7Uvyn7MBQHef+UPThpQnEzPU9OME2gOXfs3Tdxz2Bfa+hFeBsRqmqSc09Hdz
         d8NphMFm0Xnn0zCh2ovNz9csSwLAahMUwhCXjJVk2C+0eTGRTgY5k2OIWuI8G+HjccAT
         67xuJlq3Lk9y7n0wLukb6L89Hzt76QEhFg3SBV/WWdKGg3IfVvkHuRkdwFtEKDlnPWic
         ww+g==
X-Gm-Message-State: APjAAAWC1tAYRGNfHuXE4lnjVpXJGexNB14n10/Yb205trWMlb7oNSa4
        c7WK+4xMBJKIPZkKiv3ziVdFLGmHhQlBSN1FB4y5Rw==
X-Google-Smtp-Source: APXvYqz0CNhEmsacDTRcEPmfxQ/oGL27kQqghbLjNnpafVZ5FskeP2/QqmHESgY8kC+PmcK3Ux3RyArBjry1NP4YanU=
X-Received: by 2002:a2e:85cd:: with SMTP id h13mr61135533ljj.191.1578390438453;
 Tue, 07 Jan 2020 01:47:18 -0800 (PST)
MIME-Version: 1.0
References: <20191219103153.14875-1-srinivas.kandagatla@linaro.org> <20191219103153.14875-9-srinivas.kandagatla@linaro.org>
In-Reply-To: <20191219103153.14875-9-srinivas.kandagatla@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 7 Jan 2020 10:47:07 +0100
Message-ID: <CACRpkdYc-kB4Kx690FnU=3CwnjFdQhdxofGguFAAs_j==C=nmQ@mail.gmail.com>
Subject: Re: [PATCH v6 08/11] dt-bindings: gpio: wcd934x: Add bindings for gpio
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     Mark Brown <broonie@kernel.org>, Lee Jones <lee.jones@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Vinod Koul <vinod.koul@linaro.org>,
        "moderated list:SOUND - SOC LAYER / DYNAMIC AUDIO POWER MANAGEM..." 
        <alsa-devel@alsa-project.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        spapothi@codeaurora.org, bgoswami@codeaurora.org,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Dec 19, 2019 at 11:33 AM Srinivas Kandagatla
<srinivas.kandagatla@linaro.org> wrote:

> Qualcomm Technologies Inc WCD9340/WCD9341 Audio Codec has integrated
> gpio controller to control 5 gpios on the chip. This patch adds
> required device tree bindings for it.
>
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> Reviewed-by: Rob Herring <robh@kernel.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Tell me if you want me to merge this patch through the GPIO tree.

Yours,
Linus Walleij
