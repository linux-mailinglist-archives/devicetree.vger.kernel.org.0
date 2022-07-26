Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ED8E4580E93
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 10:08:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238053AbiGZIII (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 04:08:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238305AbiGZIID (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 04:08:03 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 054852ED71
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 01:08:01 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id w5so4364518edd.13
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 01:08:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=oXh48ITjNIZwRpcTgBzMIm7xvCXasMciNKj2nW0FLMk=;
        b=mvC8tzmaF29BiVZk1Z4LrSkhZNsRUiAI03IHsZWdBIGq+21sY3DaehmsTJSCQhOcCN
         IzDXGzhgPtgoo0weSRcw6clQCDiKyzDjc2VJ61GfKnUunLpFcddwo8T6y4Ox+JSjmmlM
         rRS/zZe7jNcqCaJMZPS2EnSOhBXmrGSZNEX2+6RylN3Eol7x+kLzHOv88BK7KXWQuKhD
         6Y28+AUAsiduoBIPGNkUmO4q80A4+6NEPpUn789GXETl2vPl2oVffajX1nEwiKEemX/A
         CFnBBeIN6MVlaE5OyaBVnc/t8xmEv4oY8fLX79lpUZReRbeqET4R87a5u6pdphdVfgZI
         XK2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=oXh48ITjNIZwRpcTgBzMIm7xvCXasMciNKj2nW0FLMk=;
        b=C3VNX9/tHNv8yeO8AwJpAnrpvWAxvN+BT2XxjY+1u6rfdYH5muzEMsjvVqv/Cs8RBA
         k5Get0iIoi07tvDmM0ZiRIJba18htIvfdZHcr5DEMEUjbme04ibI29dfAuTZqGuCLc/a
         JwCvZs8pJHR8oRh53rTxdmON/faYkuLQBKpsnKehYu2G6RMwUWEJAW7YfqqAG9dGIybr
         8KOvO3kyB4eDY6lnFvP95dnMAZYRLvVgmrAXjBI9ZIGrOswEHnrlAPkYoyjWcJ0EcCyt
         hYHx8x8KuU5+cn/yRZrkg+Pjk4R/ssmtDdoOUWyXY8PofM1y1zJxYv2eZPFDyHmMVQu5
         wu5A==
X-Gm-Message-State: AJIora/cU7GLS6b7VzhrqbqGqMDRq/8uZux8mwtpBkoLP+yyslXKY6xE
        Ejyw5yTTxCIwNT9OXWsQ1pXz2H82iujuC2E2LKnRpQ==
X-Google-Smtp-Source: AGRyM1sg7WwfgT30Z5gFgGtBrpzTZYvjI5t68L1TNcWlRC/z4bCNfsLxzmsyxNfNlAgqIwmyyt5i4fpHDXen1zH7g1M=
X-Received: by 2002:a05:6402:2696:b0:43b:eb8b:d0da with SMTP id
 w22-20020a056402269600b0043beb8bd0damr10795013edd.158.1658822880522; Tue, 26
 Jul 2022 01:08:00 -0700 (PDT)
MIME-Version: 1.0
References: <20220723160513.271692-1-Mr.Bossman075@gmail.com> <20220723160513.271692-11-Mr.Bossman075@gmail.com>
In-Reply-To: <20220723160513.271692-11-Mr.Bossman075@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 26 Jul 2022 10:07:49 +0200
Message-ID: <CACRpkdbNbvKySXPziKHkEfbWknXLdV2L4sb2n1MCR=TSOATEPg@mail.gmail.com>
Subject: Re: [PATCH v5 10/12] ARM: dts: imxrt1170-pinfunc: Add pinctrl binding header
To:     Jesse Taube <mr.bossman075@gmail.com>
Cc:     linux-imx@nxp.com, robh+dt@kernel.org, mturquette@baylibre.com,
        sboyd@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
        kernel@pengutronix.de, festevam@gmail.com, aisheng.dong@nxp.com,
        stefan@agner.ch, daniel.lezcano@linaro.org, tglx@linutronix.de,
        arnd@arndb.de, olof@lixom.net, soc@kernel.org,
        linux@armlinux.org.uk, abel.vesa@nxp.com, dev@lynxeye.de,
        marcel.ziswiler@toradex.com, tharvey@gateworks.com,
        leoyang.li@nxp.com, sebastian.reichel@collabora.com,
        cniedermaier@dh-electronics.com, clin@suse.com,
        giulio.benetti@benettiengineering.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org,
        Rob Herring <robh@kernel.org>
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

On Sat, Jul 23, 2022 at 6:05 PM Jesse Taube <mr.bossman075@gmail.com> wrote:

> Add binding header for i.MXRT1170 pinctrl device tree.
>
> Cc: Giulio Benetti <giulio.benetti@benettiengineering.com>
> Signed-off-by: Jesse Taube <Mr.Bossman075@gmail.com>
> Reviewed-by: Rob Herring <robh@kernel.org>

Assuming the rest of the patch set really isn't getting merged for
v5.20 I simply applied this patch to the pin control tree so you have
less stuff to iterate after v5.20-rc1.

Yours,
Linus Walleij
