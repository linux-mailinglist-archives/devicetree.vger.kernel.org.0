Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 034305F3E8A
	for <lists+devicetree@lfdr.de>; Tue,  4 Oct 2022 10:39:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230198AbiJDIjp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Oct 2022 04:39:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55102 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229807AbiJDIjn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Oct 2022 04:39:43 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94538115D
        for <devicetree@vger.kernel.org>; Tue,  4 Oct 2022 01:39:38 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id g27so989340edf.11
        for <devicetree@vger.kernel.org>; Tue, 04 Oct 2022 01:39:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=HbvqDIX9oo5aR0rinPIfG6EwFnlRQIrCG7ZrPltM9Lc=;
        b=YAs5f7a+SVYZc9jo8gHqFvK+zMAcuYKbZ6KbzjlYuTtej3dIzWVWltJrj5VeLGn40Y
         npUP2fYler+Us5soUgncvbdFOV4uzWQNEthG7jf5KUb5W3XE4kY6vJgm/GmJqsUvFmwI
         69pGxMQukCibbJDelCfI+Sz+CNMiYEiKCBAPWk+YufDyUXnlvTKUh2NciYAItEvJYErl
         IpKIm8RRsxsditVTjLzUPqDWnnT3Ln1xsScopy3oGYucptMzQCgI5C0QqL3GmvBmjbsR
         W8rmGRBq6Yga0Di0dG3rLTH8/qymjpGbP9LJYN9lFevnikzYVZXxNL4QYKGXwfQJUDvh
         ZAlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=HbvqDIX9oo5aR0rinPIfG6EwFnlRQIrCG7ZrPltM9Lc=;
        b=EG/oYfOnVFRmZwoc4FxWtqPy+KGWmGF5fUjZZFTkChcPILpQvm/n7O0/uDxDIEkD27
         DJ8xkEE1TdVqdfqX2EmV9CN0V1W1vfK5MH6AT2rFmVfKSR8Q4dZAfBI9C2AcfMbkCuuM
         8BoRK4AoEj+KCcQrisFc8G7Hoj6hmdWkkBw6LphOQZPLuBZCgSOPO4E9R9f8Bk0anT1Z
         f2UIQiCIhJv2BELwuP96LyBlmgEQhlKzngyYoU5mvqU3Uiuo9iOtow1P/aMb2ohm+G4N
         HE883nL4Kbs74OoqU6Ff8VTcBHcWSR6Pwx3hCc+D3d1mAajNcMQOFoKgWQ+niR8fOsd3
         cNvQ==
X-Gm-Message-State: ACrzQf3O23uDnUa+gpmr9Zkj+X/gnBiUvzA0NNLEyZlVZvI3i/31P/Dw
        gDaqILghSjCmBPw5jMFQtyJ7UlMi91BVdtCBmSQWCA==
X-Google-Smtp-Source: AMsMyM7XXeeiChPOkjYqU2QYAwJ1IPbhN43xb08pBTsk70xy7+i7k8gBIK0PAYwLijPvm5c4tRwxEQ8g8/lBrKmdxEw=
X-Received: by 2002:aa7:c050:0:b0:453:4427:a947 with SMTP id
 k16-20020aa7c050000000b004534427a947mr22460271edo.172.1664872776414; Tue, 04
 Oct 2022 01:39:36 -0700 (PDT)
MIME-Version: 1.0
References: <20220926204752.381798-1-marex@denx.de>
In-Reply-To: <20220926204752.381798-1-marex@denx.de>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 4 Oct 2022 10:39:25 +0200
Message-ID: <CACRpkdZq+dirXNxALS9mtCaZqNUFD=FgSRzR3GNr7rpG23kW2g@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: st,stm32: Document
 interrupt-controller property
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-gpio@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 26, 2022 at 10:47 PM Marek Vasut <marex@denx.de> wrote:

> Document interrupt-controller property and its interrupt-cells.
> This fixes dtbs_check warnings when building current Linux DTs:
>
> "
> arch/arm/boot/dts/stm32mp153c-dhcom-drc02.dtb: pinctrl@50002000: gpio@5000a000: '#interrupt-cells', 'interrupt-controller' do not match any of the regexes: 'pinctrl-[0-9]+'
> "
>
> Signed-off-by: Marek Vasut <marex@denx.de>

Patch applied.

Yours,
Linus Walleij
