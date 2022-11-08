Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D47A4620D35
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 11:25:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233656AbiKHKZS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Nov 2022 05:25:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51524 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233923AbiKHKZP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Nov 2022 05:25:15 -0500
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 017DF3FBBD
        for <devicetree@vger.kernel.org>; Tue,  8 Nov 2022 02:25:15 -0800 (PST)
Received: by mail-ed1-x536.google.com with SMTP id a5so21702872edb.11
        for <devicetree@vger.kernel.org>; Tue, 08 Nov 2022 02:25:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=YT3r2EK/gmP9BrDwDycmHjgxKIl2VpJ1dgBCOQfdNuc=;
        b=vf3ZI0Yz1vmQBrmSJiX9hoo327S/9k3fnLEL46ISscdFEoj462w3M+3jDMDbL/cxZ/
         +pVwQAVGw7xN+OMbtVEYQEhlkXo3DPvnrnH4Jkk9hyFf567HOFQziBFuYEssWCFxGYSP
         WKnmiJjHOG4LpkU6tfnwpaEvhfNTmiGd8bN1HjSPEeLsZU1KjcIkrHCtJOFhjqAyam/n
         wpPJXkiqyaL5hHwML9HQIpPZNQ2fSQBb6cquG0rxmbPrRUho0zl2N7AU1+6f7+/5xnxR
         poyO7KQD+299ert8wyAHw1SksJFblPfM2XOZ4IGUpRVzcrAafqDKZB2/hh2az30B4aEA
         NQVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YT3r2EK/gmP9BrDwDycmHjgxKIl2VpJ1dgBCOQfdNuc=;
        b=h3P67aR9K+dKSPYYEycSzU0Td+A7M5nPBxBhAvn5/cK801JhvhBmSpmrx6Ea5HwaXA
         sANcc0Azw0sknjtwalYBJA2Rnzbx+GE+vLSD7pgZBk5AhRKeNfS7ifMOHQtc+oVBRvcC
         9pv2NAirM/hI+jzHoknFRN4OOzA6UvfbRd8X4Vv+Hkht6LnpCOhLo166qv6ScpldkjMk
         uSM8Fka7TINZaa6QKCC7FQaH1yBjXFxuSAygrBv7CbCYwUF8kg2g9pMtae5/MtmSWfW6
         Ej0kVwJGMiCwE01iz7W3esvs1TbFppq2yamsscuTwNCUWNRPFbLiG2wo8KNT2WZxANr4
         zPiw==
X-Gm-Message-State: ACrzQf0RzoUjkHNZcVKfC3s7vhPGKjajviXJ7+XepedFLb8RaTesFtZB
        wwrk6GoECF/2Xfjz0eJqMUsgQO949VLhXVughrDwcQ==
X-Google-Smtp-Source: AMsMyM7xA77RwpJDljVNBVfizIu19AEjjb/N9RlLWIM28RWvRLroQC2kBSKTeSYzQgr5f83FnWlUehW+4FX10qdW1ys=
X-Received: by 2002:aa7:c718:0:b0:462:ff35:95dc with SMTP id
 i24-20020aa7c718000000b00462ff3595dcmr53675644edq.32.1667903113554; Tue, 08
 Nov 2022 02:25:13 -0800 (PST)
MIME-Version: 1.0
References: <20221027130859.1444412-1-shenwei.wang@nxp.com> <20221027130859.1444412-4-shenwei.wang@nxp.com>
In-Reply-To: <20221027130859.1444412-4-shenwei.wang@nxp.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 8 Nov 2022 11:25:02 +0100
Message-ID: <CACRpkdYXh62PPg5iWL+J8xBn+66TUoooy3JWzTtxokm6OgSp5A@mail.gmail.com>
Subject: Re: [PATCH v4 3/5] arm64: dts: imx8qxp-ss-lsio: add gpio-ranges property
To:     Shenwei Wang <shenwei.wang@nxp.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Dong Aisheng <aisheng.dong@nxp.com>,
        Jacky Bai <ping.bai@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Peng Fan <peng.fan@nxp.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        imx@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Oct 27, 2022 at 3:10 PM Shenwei Wang <shenwei.wang@nxp.com> wrote:

> add gpio-ranges property for imx8qxp soc.
>
> Signed-off-by: Shenwei Wang <shenwei.wang@nxp.com>
> Reviewed-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Please put this into the i.MX SoC tree.

(If that doesn't work tell me and I can queue it in the pinctrl tree)

Yours,
Linus Walleij
