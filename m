Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C41BF504A07
	for <lists+devicetree@lfdr.de>; Mon, 18 Apr 2022 01:16:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235339AbiDQXTU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 17 Apr 2022 19:19:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233184AbiDQXTT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 17 Apr 2022 19:19:19 -0400
Received: from mail-yw1-x112e.google.com (mail-yw1-x112e.google.com [IPv6:2607:f8b0:4864:20::112e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B5E0ABF4E
        for <devicetree@vger.kernel.org>; Sun, 17 Apr 2022 16:16:42 -0700 (PDT)
Received: by mail-yw1-x112e.google.com with SMTP id 00721157ae682-2f16645872fso25368297b3.4
        for <devicetree@vger.kernel.org>; Sun, 17 Apr 2022 16:16:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8cpbgmXpsT8kTA2tDzzLPPwjwJw+UvbBaXP36BctY+8=;
        b=UTx76Gjs7MAE4h+GdRm63owJ9jaWQUGfs5qpjs3twfTcv2Xjmmf8+R0gkA5t78hAbm
         2dvH/uTHf+3RtEM2A5XfsIi4bZDFlpsSgaFv/B/jTjXhPDN4nt08aSi3NDO6Ow8v+iPJ
         b+xh6F2vGhlG9t9g84ZX8pN+I1owPrXlMB1dP08nTvjAZMqjcHh1OgSXxl8gyxOi6U+j
         5H5kXNiWx3qeeEd6cPGtsTXDQtHguB+w+SWXBT02+y7cs73LLPJ6gw8K1ESrN56hIA5u
         nBJ6QlaO3/BpHbsjBtOba/4xiwURq3SjVxgFB/Eb4MH6IutMzLNgyUWOC9cdSKigTGUl
         /XJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8cpbgmXpsT8kTA2tDzzLPPwjwJw+UvbBaXP36BctY+8=;
        b=0Sjn63mecArOp+l/aUrIdyo1ZPdP6qysFeqeXOzs3MMbPl0ikKB3q/OQeq/0lr+J3y
         4hl8956RxKcTU6XGwR64Uo7qJaNUx22vn+At19/B4nL9TbYJ9AzfrQ28xAkjSoX64U29
         APpCujGtY2A5jqNrpFzijZT57CNgd39Ztyq/+twfuH0dY+2UqfdhGxqDk+zaQURfeKcl
         pHw6j+Gj7S0aiLtVY4FUB0YMqF3KVLJv6OUYOt1CELl8mlHKVR4ugXFpEH4WT432ShYP
         FeeeeF7huCGCl94lKJXIoOXt7ZnbalJ7oYZc+CuYZzg+vIvAMdN9K0//wnlPsQMsAq5K
         3s2A==
X-Gm-Message-State: AOAM530s7tlSjDO8ojetf6Uld4Exq77z+7FxsoPqmaR9TNs7IRC32ajQ
        JKefEKF0bhQGTy/f1A+mgLyxnGA5JyYAWl0UdTTMfA==
X-Google-Smtp-Source: ABdhPJyCDEjE1qkM6RTotTjlFgV7qxm5FY2m2Ti+oTwe0WtqY5b20AIEjGh8+Q6j3WKkcsDGZ/yDwyn3DRo1JlC8uM4=
X-Received: by 2002:a0d:c4c2:0:b0:2f1:6c00:9eb4 with SMTP id
 g185-20020a0dc4c2000000b002f16c009eb4mr5752276ywd.448.1650237401823; Sun, 17
 Apr 2022 16:16:41 -0700 (PDT)
MIME-Version: 1.0
References: <20220414233055.586962-1-chris.packham@alliedtelesis.co.nz>
In-Reply-To: <20220414233055.586962-1-chris.packham@alliedtelesis.co.nz>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 18 Apr 2022 01:16:30 +0200
Message-ID: <CACRpkdaeg6d+33+eqnqMbqg6Qv9GzbvXr=rvqZKKuEwaGMe2=g@mail.gmail.com>
Subject: Re: [PATCH v4 0/4] arm64: mvebu: Support for Marvell 98DX2530 (and variants)
To:     Chris Packham <chris.packham@alliedtelesis.co.nz>
Cc:     robh+dt@kernel.org, catalin.marinas@arm.com, will@kernel.org,
        andrew@lunn.ch, gregory.clement@bootlin.com,
        sebastian.hesselbarth@gmail.com, kostap@marvell.com,
        robert.marko@sartura.hr, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Apr 15, 2022 at 1:31 AM Chris Packham
<chris.packham@alliedtelesis.co.nz> wrote:

> Chris Packham (4):
>   dt-bindings: pinctrl: mvebu: Document bindings for AC5
>   pinctrl: mvebu: pinctrl driver for 98DX2530 SoC

These two applied to the pinctrl tree for v5.19!

Funnel the rest through the SoC tree, thanks!

Yours,
Linus Walleij
