Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2A17769C2BA
	for <lists+devicetree@lfdr.de>; Sun, 19 Feb 2023 22:33:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231733AbjBSVdg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Feb 2023 16:33:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40226 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231728AbjBSVdf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Feb 2023 16:33:35 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53B35196B4
        for <devicetree@vger.kernel.org>; Sun, 19 Feb 2023 13:33:34 -0800 (PST)
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com [209.85.128.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 2D5993F71C
        for <devicetree@vger.kernel.org>; Sun, 19 Feb 2023 21:33:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1676842413;
        bh=8R8frgxkiDD95gIO0fe6fOdEBdEu/5r0X1kDOciAmuU=;
        h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
         To:Cc:Content-Type;
        b=fEmlihE06/apP2MH6kBu3u4bai+g8WmGugzzyTysQjUuUKdJMoQ8zwIe3JP4f/pBr
         SUHgEjmhPcmZ/t6lEalKAw0TLoDy/NGObufhNQkqUIVKjY4C1av0L16SpOnU1tOW0E
         axeqHti/DaINZEq1MH88Fb1Owax6+vlxanDcgKYu1x5Q69bXT60q4lT0uUFU7JxSJx
         BRAfVJH/4M0YvnO+pTR3uEP4PwqHeaIuJ2BhAe7IxX6eC71rnUyOSDiYefobS6Ru1x
         ItAVUlYZSUXAc4Sje6R90ceLJK7hUSWdY/KSG2ZR9CVYboKBpbw4bJ1V0kgnWaUnlZ
         uh89Q37mKtoLA==
Received: by mail-wm1-f69.google.com with SMTP id y6-20020a1c4b06000000b003dfeeaa8143so908223wma.6
        for <devicetree@vger.kernel.org>; Sun, 19 Feb 2023 13:33:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8R8frgxkiDD95gIO0fe6fOdEBdEu/5r0X1kDOciAmuU=;
        b=vI8g8YfrDDdo2CQN6vhmkA0YTUvooCM1cWz0Gify3ApJgGjzhB1xFL2S0mjVxEHE3p
         K4+4Zofg3FBD2dH2viFyHEt9nNZL9tVawVws6G9veVOch4BWJqcd+gNCUUifab+Ahg3D
         boDn/E4hVBg0w6KrEgx2cqLZhs9eFEFYR9k6GJzAduhCBORIe91Ue61yBRSxRBCerMeJ
         n9b1hA//dTRNmfdW0T51x9nYIxa0Ps7JXat2rScc5Y6bVN7NH9FKRIf0aXSEQ9zYIhIc
         hBsvYF8m/9VE3WK8p29aayToENVukj6R8/BXYNpksw08VuvPRJn/5xMs/qZkoX4VuLa6
         zugw==
X-Gm-Message-State: AO0yUKVZ4IKJLhriT0TvJ+Xv1508rXmQD/G5PZVBTsylKVy47Npvk5nW
        3j/I57dinifhflnd21Iq3oyleucCjK6plvKhwjKR0JCg15NKx5fQpL1KyjMvMKGB5IZctpYSh55
        CH8pMarRUyr9EBcD/kRZ4SE8rXgqHw9Ak360KAejtUiokV6h1C7Jwi4Y=
X-Received: by 2002:ac2:43dc:0:b0:4db:1aa4:fe08 with SMTP id u28-20020ac243dc000000b004db1aa4fe08mr25262lfl.1.1676842389566;
        Sun, 19 Feb 2023 13:33:09 -0800 (PST)
X-Google-Smtp-Source: AK7set/jqCxE7vysa+nLkM379Amt8o48UAX1vdCWM3PBOuY188t0gNT9otYGX3LH6uHIPrqc4/KhbzdCFeHafmAK5zQ=
X-Received: by 2002:ac2:43dc:0:b0:4db:1aa4:fe08 with SMTP id
 u28-20020ac243dc000000b004db1aa4fe08mr25246lfl.1.1676842389272; Sun, 19 Feb
 2023 13:33:09 -0800 (PST)
MIME-Version: 1.0
References: <20230211031821.976408-1-cristian.ciocaltea@collabora.com>
 <20230211031821.976408-5-cristian.ciocaltea@collabora.com> <Y+567t+kDjZI+fbo@spud>
In-Reply-To: <Y+567t+kDjZI+fbo@spud>
From:   Emil Renner Berthing <emil.renner.berthing@canonical.com>
Date:   Sun, 19 Feb 2023 22:32:52 +0100
Message-ID: <CAJM55Z_poY3dVu9fQ1W1VQw3V=8VdVKc1+qUcdHduM1aAveJUQ@mail.gmail.com>
Subject: Re: [PATCH 04/12] soc: sifive: ccache: Add non-coherent DMA handling
To:     Conor Dooley <conor@kernel.org>
Cc:     Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
        Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Emil Renner Berthing <kernel@esmil.dk>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Giuseppe Cavallaro <peppe.cavallaro@st.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Jose Abreu <joabreu@synopsys.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Richard Cochran <richardcochran@gmail.com>,
        Sagar Kadam <sagar.kadam@sifive.com>,
        Yanhong Wang <yanhong.wang@starfivetech.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        netdev@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, kernel@collabora.com,
        daire.mcnamara@microchip.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 16 Feb 2023 at 19:51, Conor Dooley <conor@kernel.org> wrote:
>
> Emil,
>
> +CC Daire
>
> On Sat, Feb 11, 2023 at 05:18:13AM +0200, Cristian Ciocaltea wrote:
> > From: Emil Renner Berthing <kernel@esmil.dk>
> >
> > Add functions to flush the caches and handle non-coherent DMA.
> >
> > Signed-off-by: Emil Renner Berthing <kernel@esmil.dk>
> > [replace <asm/cacheflush.h> with <linux/cacheflush.h>]
> > Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> > ---
>
> > +void *sifive_ccache_set_uncached(void *addr, size_t size)
> > +{
> > +     phys_addr_t phys_addr = __pa(addr) + uncached_offset;
> > +     void *mem_base;
> > +
> > +     mem_base = memremap(phys_addr, size, MEMREMAP_WT);
> > +     if (!mem_base) {
> > +             pr_err("%s memremap failed for addr %p\n", __func__, addr);
> > +             return ERR_PTR(-EINVAL);
> > +     }
> > +
> > +     return mem_base;
> > +}
>
> The rest of this I either get b/c we did it, or will become moot so I
> amn't worried about it, but can you please explain this, in particular
> the memremap that you're doing here?

No, I can't really. As we talked about it's also based on a prototype
by Atish. I'm sure you know that the general idea is that we want to
return a pointer that accesses the same physical memory, but through
the uncached alias. I can't tell you exactly why it's done this way
though, sorry.

/Emil

> Cheers,
> Conor.
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv
