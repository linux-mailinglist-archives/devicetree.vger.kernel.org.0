Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D465561FF56
	for <lists+devicetree@lfdr.de>; Mon,  7 Nov 2022 21:14:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232992AbiKGUOm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Nov 2022 15:14:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51350 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232993AbiKGUOJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Nov 2022 15:14:09 -0500
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 310112B27B
        for <devicetree@vger.kernel.org>; Mon,  7 Nov 2022 12:14:03 -0800 (PST)
Received: by mail-pj1-x1034.google.com with SMTP id e7-20020a17090a77c700b00216928a3917so10893276pjs.4
        for <devicetree@vger.kernel.org>; Mon, 07 Nov 2022 12:14:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=IgPXmc42gSS+9RDbk9bPwPQ6xa5IFwcVI8Es/AMs5QQ=;
        b=Lv0jaAlJO3Pfx2NP9fOi99sjktk/EKRfwOlofukUKOgpp9M2209JDrInYlC/Hb96kX
         WiFgfbpqnRnlKBoFNwrkXH8hdPPEdvc+JMppDiaruAqyLaQClFKAVZtFDzGkHwW7T2RL
         WmqOYCgFSpdcFq5UUU2a314WlDmSL5htwNEqvYznRbM62EhrkUo4OQ60Zi7OKV7aVCqN
         nrAAeEPNouP9/5fi3qrJL26TZ2acC+1IMFkeaV1a3w4/bMys9H4EYRl0pvQ5A5ZL4kee
         +s0yRYYrISNeQuVGL6Zs/zy2ps2eAYlnxiOGNZxpi60pbVpK5w27mE62FYhwoABPH+2A
         C+fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IgPXmc42gSS+9RDbk9bPwPQ6xa5IFwcVI8Es/AMs5QQ=;
        b=lx2WHa6odimRmNYGTurpy3+fw2xOtRjKc4OmstPqTnM/s6aiEHFfDl3ZSMVKYoEjai
         NAQKz/YadHxztweoC2p0ZNCGAZ/2Z9FwhDCb0tT8WWJ7xaCx19MxqfNDkCiT5zQSMYWy
         A7jEHcB/N/sqcWPXo4R/To3eYBRQVFGgBqNeiFl1b413JsToz38fbl+eY41sYhT+0SXN
         cOF6g912eIxjzmJgENuLO00BmU5Jx8M14HPDXTWEbj5DSdLIMwrxep4Zd0n6YoTEgJTd
         DyN2wyyamsT1FDf9n9GC6idgtpo42J5dusgL980KiaCqMRf6GSBiN3wr/X1rp6AM2Rzi
         DneQ==
X-Gm-Message-State: ACrzQf2bK7Z4riits026QKzKszdsDfCorw4oWflAp8z+BiFSz6OhPsE2
        SgQ2ofouIq3cfDyg5UE1ilVw5KF1sYdPwxhLMAdIMw==
X-Google-Smtp-Source: AMsMyM4Uqs3O9TcimuuptYpAiUUKJmyf19xvGSioeogsaTGjXrG+KhSscjv5iIa2S1MqvOlKLMq04hYJyEoDAQTxJ/A=
X-Received: by 2002:a17:90b:4d07:b0:1ef:521c:f051 with SMTP id
 mw7-20020a17090b4d0700b001ef521cf051mr71864059pjb.164.1667852042927; Mon, 07
 Nov 2022 12:14:02 -0800 (PST)
MIME-Version: 1.0
References: <20221106033924.9854-1-mengqi.zhang@mediatek.com>
In-Reply-To: <20221106033924.9854-1-mengqi.zhang@mediatek.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Mon, 7 Nov 2022 21:13:25 +0100
Message-ID: <CAPDyKFp4wEaiGvyXQJPehbDkkZReUXk5fsXwJGLpVX9w2ZOZjQ@mail.gmail.com>
Subject: Re: [RESEND v2 0/2] Mediatek eMMC Inline Crypto Engine support
To:     Mengqi Zhang <mengqi.zhang@mediatek.com>
Cc:     chaotian.jing@mediatek.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com,
        wenbin.mei@mediatek.com, angelogioacchino.delregno@collabora.com,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 6 Nov 2022 at 04:39, Mengqi Zhang <mengqi.zhang@mediatek.com> wrote:
>
> Change in v2
> - change patch 1 commit title
> - change patch 2 commit title, and correct commit message
> - add crypto clock description base on new code base
>
> Mediatek eMMC hardware IP has Inline Crypto Engine (ICE), we support inline encryption now.
>
> This patchset supports Mediatek eMMC inline encryption which meets the upcoming version of the eMMC specification such as v5.1 or v5.2.
>
> Patch 1, add crypto clock control flow in mtk-sd driver, patch 2, document the device tree description about crypto clock.
>
> Mengqi Zhang (2):
>   mmc: mtk-sd: add Inline Crypto Engine clock control
>   dt-bindings: mmc: mtk-sd: add Inline Crypto Engine clock
>
>  .../devicetree/bindings/mmc/mtk-sd.yaml       | 22 +++++++++++++++++++
>  drivers/mmc/host/mtk-sd.c                     | 12 ++++++++++
>  2 files changed, 34 insertions(+)
>

Applied for next, thanks!

Kind regards
Uffe
