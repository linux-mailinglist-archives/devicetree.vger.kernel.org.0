Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5741C592C79
	for <lists+devicetree@lfdr.de>; Mon, 15 Aug 2022 12:51:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233464AbiHOKDT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Aug 2022 06:03:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52836 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231239AbiHOKDT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Aug 2022 06:03:19 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C550513D6E
        for <devicetree@vger.kernel.org>; Mon, 15 Aug 2022 03:03:17 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id i14so12688249ejg.6
        for <devicetree@vger.kernel.org>; Mon, 15 Aug 2022 03:03:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=NJX8jO1pYzzhVEPoTBTkL7Gt5+R43W0llgP4O+NknEE=;
        b=4CsAeheZqpI88jrVCMl2Ai+HIPg1QRU2T31EcirAw8ECrKiz+vC+xtLbqswoQ0fOB0
         8noIF8f7rSWmO43r3ua8N1XNq9wi67SqgVtQwjW0t1V0KNfR2uKcuew3vUilbZ5RonY4
         kkIBtBqo/juDP+45QnPwpgeQqMXJwW25ciwd3F6kMhtr9p98qdPdtg9+FDegeaEewrPN
         JAG4DOtpz+fl5YZl3xCUwuw0QAxEs4lq7LqeT2co9rwdHpclvIyKbjLw6KpEAFMmX5V7
         vZr4qyplJqFHV+M6vmeUJ03UBhrqXY67cs4BOFqLx3AqJSBAtlEc3nQKKB73fHOJPhWP
         TYNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=NJX8jO1pYzzhVEPoTBTkL7Gt5+R43W0llgP4O+NknEE=;
        b=6Ua4G8LhV0YOlf4v5hU7fmEbguf59rbmywz1mXboFgYh3GqfB/fYXNoHmj69d5UHYR
         LXxjOB7NqaxBiBQXMnPYvLh9/D9PoyvSIjPqd1/7NI8ac+WyOCscVLWRcwTcAr0MdVKc
         8UuFp6dQPYPj4oPHmmc5FcX3c9qvQmtzJqzN+w3PFWdUG62VKRjeVHPDruJ8qSwEWkZY
         ZEcn4YlHmfs7RlFZc9ew7SwzvB1RmH3hpOpdeRDi7OeROQ1iQ1n77h0m+TcSqCckBZ98
         KtYyNmZ4ewZEUXs+CZWtNQrxC4LBC2yJl1XmoEX2KrDxWxXe4EeVzj5wzvtIZtnWe3EX
         59hw==
X-Gm-Message-State: ACgBeo239Wl2SYFOrfIg6hu+bPHwqzV7BvI38q4hlfnWERaOk6iIr5Bl
        wGgjLYd0ZZNH7VjrrpquyBBZko6TCIwBhrGJK68ngQ==
X-Google-Smtp-Source: AA6agR5hGQYDC8LGpVf58AajIYUmJAZOmVsl7JaDj51K6a6u15Jz5PUBvnJPwL0XuxQ4THkDa5RL10/XBiP2v+NWaSo=
X-Received: by 2002:a17:907:7254:b0:731:61c6:ecf9 with SMTP id
 ds20-20020a170907725400b0073161c6ecf9mr10022260ejc.101.1660557796390; Mon, 15
 Aug 2022 03:03:16 -0700 (PDT)
MIME-Version: 1.0
References: <20220810124109.34157-1-srinivas.neeli@xilinx.com>
In-Reply-To: <20220810124109.34157-1-srinivas.neeli@xilinx.com>
From:   Bartosz Golaszewski <brgl@bgdev.pl>
Date:   Mon, 15 Aug 2022 12:03:05 +0200
Message-ID: <CAMRc=Me_xqOG64yfQHygS=eBbYaqwqGKt6DK1D1DWr+xkM-N3A@mail.gmail.com>
Subject: Re: [PATCH V2] dt-bindings: gpio: gpio-xilinx: Convert Xilinx axi
 gpio binding to YAML
To:     Srinivas Neeli <srinivas.neeli@xilinx.com>
Cc:     Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>,
        Michal Simek <michal.simek@xilinx.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        srinivas.neeli@amd.com,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        git@xilinx.com, git@amd.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 10, 2022 at 2:41 PM Srinivas Neeli
<srinivas.neeli@xilinx.com> wrote:
>
> Convert Xilinx axi gpio binding documentation to YAML.
>
> Signed-off-by: Srinivas Neeli <srinivas.neeli@xilinx.com>
> ---

Applied, thanks!

Bart
