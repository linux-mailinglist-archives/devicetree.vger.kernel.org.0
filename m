Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2139859C947
	for <lists+devicetree@lfdr.de>; Mon, 22 Aug 2022 21:51:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234589AbiHVTud (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Aug 2022 15:50:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238904AbiHVTua (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Aug 2022 15:50:30 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32D124D4F5
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 12:50:30 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id C335860B09
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 19:50:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2FF90C433D6
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 19:50:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1661197829;
        bh=b8T/RHfnze+80l9hEXpoS5JGnrUh3kRm8hXAbtNfUw8=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=U269x63kXjCr0ndpohfQk/N0uqKKaEJTDjiHajxlY0aaxYLTJpBhb2+nJfEHUmMhb
         +Iyv5wbB/vn3B2pCy0gxVh0nsqxn9toJiG9B6UVX7Pdl/hZmoIH8lK1zdvKCeeG7qK
         AdWzxIdeveMoRaZUTvGh62nCZYdmO1xK+k9fOyG97sB2DXkEIvYk2Tv/5LEIpCTWsF
         Cwa2ma+fFWELU4Hkk/rAvcrKVk38k4l4UaT6G7GG5R9U38o/rxJfFdhyC8bfutvCJq
         TGNBqC7Lm/2X5hs4KYIa3mM1Co9SllJCQBsIQ23TA1bTA/SWIFf0u36xyDG6BKolu+
         p/Mb9rimjxWXA==
Received: by mail-vk1-f180.google.com with SMTP id g185so3683042vkb.13
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 12:50:29 -0700 (PDT)
X-Gm-Message-State: ACgBeo0WT7+ZoWslvn4KZKSaFpaMTgF5/hwzsFDfK2h+G9N2HzRGt+ko
        J2rCFDi9/CGLf7ocXlvrclLj5AI35AOFnL0QTQ==
X-Google-Smtp-Source: AA6agR53bROFL0O7jGPY/f/xNb2evZU3MxhY5xcEPjmL69ywEubOiUF3vhlfkmLV5bYxwJvmvbQ77FEUvH3+oUu6ugs=
X-Received: by 2002:a1f:23c6:0:b0:38c:88f3:f55c with SMTP id
 j189-20020a1f23c6000000b0038c88f3f55cmr1854442vkj.19.1661197828162; Mon, 22
 Aug 2022 12:50:28 -0700 (PDT)
MIME-Version: 1.0
References: <20220822152224.507497-1-jean-philippe@linaro.org>
 <20220822152224.507497-4-jean-philippe@linaro.org> <87ilmkvz6c.wl-maz@kernel.org>
In-Reply-To: <87ilmkvz6c.wl-maz@kernel.org>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Mon, 22 Aug 2022 14:50:16 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLgHiSsPe7_PNX5sVhjByoZ5HwTedRNtSLG=6vMMMq__Q@mail.gmail.com>
Message-ID: <CAL_JsqLgHiSsPe7_PNX5sVhjByoZ5HwTedRNtSLG=6vMMMq__Q@mail.gmail.com>
Subject: Re: [PATCH 3/3] dt-bindings: interrupt-controller: arm,gic: Support
 two address and size cells
To:     Marc Zyngier <maz@kernel.org>
Cc:     Jean-Philippe Brucker <jean-philippe@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 22, 2022 at 2:46 PM Marc Zyngier <maz@kernel.org> wrote:
>
> On Mon, 22 Aug 2022 16:22:24 +0100,
> Jean-Philippe Brucker <jean-philippe@linaro.org> wrote:
> >
> > It should be valid for a GICv2m node, child of a GICv2 node, to use two
> > cells per reg address and size. The QEMU virt device-tree currently
> > fails validation because the schema imposes a single address and size
> > cell. Amend the rule.
> >
> > Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
>
> Acked-by: Marc Zyngier <maz@kernel.org>

Did you want me to pick these up? If not:

Reviewed-by: Rob Herring <robh@kernel.org>
