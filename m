Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5878467E264
	for <lists+devicetree@lfdr.de>; Fri, 27 Jan 2023 11:57:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231281AbjA0K5v (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Jan 2023 05:57:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38680 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229757AbjA0K5o (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Jan 2023 05:57:44 -0500
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com [IPv6:2607:f8b0:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E142D79C9A
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 02:57:40 -0800 (PST)
Received: by mail-pf1-x436.google.com with SMTP id s3so2980421pfd.12
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 02:57:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=VShsvqMt8UYSKuUHpyz0EidKT6tLGpfipXewaaNHm6s=;
        b=WLYx+iRvZSP7KD0HpFH3oreScPz9Y+dhPqtYRa9dWConxZnUq5yz5NF/c+NmClzxiY
         ww7KVkWRkQ0eqIEWcqEnuvS/JyhBfR7mJYxElneuKrKKti/RvW2/38HqSLPJGw5D+h5D
         rk7SgOARdldP5e9u6L2XKKfBqykIIFrujUkJw54F2vfQRwqfbxlGl+Fh/rFj+QEVfUKK
         P5n/8vqZs8SsuSPEnONh+dWBH+UyL9jGiE0/B4Rlj1IhYHqtaGhDgrdz19GVf62Y1LpQ
         MzepLQeuqtrz3i/eReqf5RT77z8pU2KcYjZZYzJarhPemWrQnD6ve8BhT09Tx5wIZpnD
         TqpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VShsvqMt8UYSKuUHpyz0EidKT6tLGpfipXewaaNHm6s=;
        b=7vt3xFeEJJyminvCoy8W2zdxIzTcKTTcFnsS56Mr/Gp7A4dcBnC+s+rQnAL0t5isJz
         Qy3+ITr/C2D4kNa6VCesOWc4yZ7aOnsxIJdvZN7FqAKczDWkNShNI1x2nQiX8GQByxF9
         J0FSCgVmtxZ2vqFxEzn7NhMADuCyZdQE1oQCCdC4SXDn8ULoLB5G0HDInlORnwrXEzlj
         Gd0v+oFXhS/oURk8ilNxxQiH/zxUE//X6hTGDkY9kyV1qDUBHdm6IrqkPrRz/HI0VDPQ
         jo53hqThIe+fOfXnx7pwB6K4sIo0iSuD51FUcmU9jNZcp5JeR+MkXMPewuuE+Oqytnot
         r/sg==
X-Gm-Message-State: AO0yUKWpU0WQzIuQM3oWDBkKlEU9ddwwG1m0xUMCiA0A0YyO66fQ6PCP
        ST4/NwCjFhaCMaRKfwlkTmRkeP+45hwBZWbhzgCi0Q==
X-Google-Smtp-Source: AK7set+qSUg3Xk7mTTTu/XUOLKflgfnqPfHJM+HUV7TfXkvHSzyx4A69fzrZJxEUjJyqegwMjvIW/vD1B7NdyjpTL6c=
X-Received: by 2002:a05:6a00:279e:b0:592:591c:f6dd with SMTP id
 bd30-20020a056a00279e00b00592591cf6ddmr586139pfb.7.1674817060276; Fri, 27 Jan
 2023 02:57:40 -0800 (PST)
MIME-Version: 1.0
References: <20230125010201.28246-1-hayashi.kunihiko@socionext.com>
In-Reply-To: <20230125010201.28246-1-hayashi.kunihiko@socionext.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Fri, 27 Jan 2023 11:57:04 +0100
Message-ID: <CAPDyKFreuJhwsw3ECvhW+rdM9pouja8wttsRntbwvUR-5haPHw@mail.gmail.com>
Subject: Re: [PATCH 0/5] mmc: uniphier-sd: Add UHS mode support
To:     Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Masami Hiramatsu <mhiramat@kernel.org>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
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

On Wed, 25 Jan 2023 at 02:02, Kunihiko Hayashi
<hayashi.kunihiko@socionext.com> wrote:
>
> The uniphier-sd controller needs to control some siginals from the SD
> interface logic to transition to UHS mode.
>
> This series adds UHS mode support to the controller driver
> to refer to and control the interface logic registers, which include
> mode selector and SDR speed selector.
>
> Kunihiko Hayashi (5):
>   dt-bindings: mmc: uniphier-sd: Add socionext,syscon-uhs-mode property
>   mmc: uniphier-sd: Add control of UHS mode using SD interface logic
>   mmc: uniphier-sd: Add control to switch UHS speed
>   ARM: dts: uniphier: Add syscon-uhs-mode to SD node
>   arm64: dts: uniphier: Add syscon-uhs-mode to SD node
>
>  .../bindings/mmc/socionext,uniphier-sd.yaml   | 10 +++
>  arch/arm/boot/dts/uniphier-ld4.dtsi           |  3 +-
>  arch/arm/boot/dts/uniphier-pro4.dtsi          |  3 +-
>  arch/arm/boot/dts/uniphier-pro5.dtsi          |  3 +-
>  arch/arm/boot/dts/uniphier-pxs2.dtsi          |  3 +-
>  arch/arm/boot/dts/uniphier-sld8.dtsi          |  3 +-
>  .../boot/dts/socionext/uniphier-ld20.dtsi     |  3 +-
>  .../boot/dts/socionext/uniphier-pxs3.dtsi     |  3 +-
>  drivers/mmc/host/uniphier-sd.c                | 83 +++++++++++++++++--
>  9 files changed, 102 insertions(+), 12 deletions(-)
>

Patch 1 to 3 applied for next (I fixed up the comments from Krzysztof
when I applied), thanks!

Kind regards
Uffe
