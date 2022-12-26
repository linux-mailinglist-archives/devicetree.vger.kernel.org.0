Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 54850656091
	for <lists+devicetree@lfdr.de>; Mon, 26 Dec 2022 07:56:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229638AbiLZG4G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Dec 2022 01:56:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48758 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229574AbiLZG4F (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Dec 2022 01:56:05 -0500
Received: from mail-vs1-xe2c.google.com (mail-vs1-xe2c.google.com [IPv6:2607:f8b0:4864:20::e2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5ADF6CCA
        for <devicetree@vger.kernel.org>; Sun, 25 Dec 2022 22:56:04 -0800 (PST)
Received: by mail-vs1-xe2c.google.com with SMTP id c184so9654273vsc.3
        for <devicetree@vger.kernel.org>; Sun, 25 Dec 2022 22:56:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=nKoRBsCZk8t5IRW6q7FXOzmG70vM+tRWxxCkDHcgI5s=;
        b=Gh5L7i4lMdFGdpQcVXbyK2egNp5Z1yUnv6IBSCJIVgNBy8xEcu7FXNb0L5gzT9eP8z
         C+nRl2MuAO3DcFB2eY31UCof7isEZbIuENKeIinzKjIcHW2xZR/p0Qt8ht2DLvLrlMdA
         NtcVKDhvzKfjPGz17B1xY5nsAyPsyGGHsbTwE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nKoRBsCZk8t5IRW6q7FXOzmG70vM+tRWxxCkDHcgI5s=;
        b=JcpnINjB1Y+gwZhRGJU4dmjN1Ur+N2d8QRMs3+/0+1VlRBR2zFt5cNcLKyh4zwqXAJ
         ghDZkqgI+3IlerbjZ9XKA7ClGOfsyEszIO4ChBTOWpCfcv7HNtxLGZ840eVuwB/Xe/Fq
         jJZEsBdacupWVUKoJu6VFp2u5cDoIzVZ8tzr28N+mJyOiIgyOwSIGh0tmeXG41OiOsoo
         l+ejOxvzLGeKzumA+gt9Kat8ls7hdk9BbEtlXIikDoHxQeRrDwTqI2uHylnXiNJqmRm6
         klmVasbNN7rboZjR0W5/IgBbAPtzomRnJGFEyU/+SGwC5ZLtn6fuxIEDtjPdH0TSsFlo
         bXOQ==
X-Gm-Message-State: AFqh2kr80zLoUDleqFrkTZ2OB4Qkylf+SgQew7qhNEGbsLTkjG83XrzV
        pKXxAlO29sFVZvmsRSv6pxaDI8W5KGuPNxKcJvoXBw==
X-Google-Smtp-Source: AMrXdXtihqlxHKqphDrGOCSc3OcIsPQPPIjiFqufrI1F9HDNZwbnCYgvr87cVSS4ITP2veDTDo3oR+pGal+18iKFQm8=
X-Received: by 2002:a05:6102:4427:b0:3b0:6da7:39ba with SMTP id
 df39-20020a056102442700b003b06da739bamr2383130vsb.26.1672037763548; Sun, 25
 Dec 2022 22:56:03 -0800 (PST)
MIME-Version: 1.0
References: <20221223094259.87373-1-angelogioacchino.delregno@collabora.com> <20221223094259.87373-2-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20221223094259.87373-2-angelogioacchino.delregno@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Mon, 26 Dec 2022 14:55:52 +0800
Message-ID: <CAGXv+5EQDzgT+1VL7MDNGzHXCa4WheemP6Ysn5=3sF6Gft=V0A@mail.gmail.com>
Subject: Re: [PATCH v2 01/23] clk: mediatek: mt8192: Correctly unregister and
 free clocks on failure
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     mturquette@baylibre.com, sboyd@kernel.org, matthias.bgg@gmail.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        johnson.wang@mediatek.com, miles.chen@mediatek.com,
        fparent@baylibre.com, chun-jie.chen@mediatek.com,
        sam.shih@mediatek.com, y.oudjana@protonmail.com,
        nfraprado@collabora.com, rex-bc.chen@mediatek.com,
        ryder.lee@kernel.org, daniel@makrotopia.org,
        jose.exposito89@gmail.com, yangyingliang@huawei.com,
        pablo.sun@mediatek.com, msp@baylibre.com, weiyi.lu@mediatek.com,
        ikjn@chromium.org, linux-kernel@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Dec 23, 2022 at 5:43 PM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> If anything fails during probe of the clock controller(s), unregister
> (and kfree!) whatever we have previously registered to leave with a
> clean state and prevent leaks.
>
> Fixes: 710573dee31b ("clk: mediatek: Add MT8192 basic clocks support")
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
