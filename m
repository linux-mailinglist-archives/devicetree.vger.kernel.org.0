Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 884414CC9D3
	for <lists+devicetree@lfdr.de>; Fri,  4 Mar 2022 00:10:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231904AbiCCXLB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Mar 2022 18:11:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233192AbiCCXK6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Mar 2022 18:10:58 -0500
Received: from mail-yb1-xb31.google.com (mail-yb1-xb31.google.com [IPv6:2607:f8b0:4864:20::b31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C69B47AEE
        for <devicetree@vger.kernel.org>; Thu,  3 Mar 2022 15:10:12 -0800 (PST)
Received: by mail-yb1-xb31.google.com with SMTP id w16so13319451ybi.12
        for <devicetree@vger.kernel.org>; Thu, 03 Mar 2022 15:10:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=YInCGTDHP4uEDLfZ+VtOKdALPoSEe5yJvGES7+vW7vI=;
        b=rYUcvXAjbjBP/e/HHL9CQrZXT3yEcE6V3E5vTjyI8ujlve9/iZ/WOdLLbrrhK8HQgC
         IcplXQchbeeDO0QN4mH3DD9fn3VaYVSZdGR5pAXvesv9RZxAHf84T3ZMaWXRceTdLtRJ
         Co3yPy5txLG+rQqamF7+DphG6YADQ0R6yiTdhJJoogWVX4BJiQwXXLHwMBti9IKDhFjZ
         A12cV6bBEf08yORmYmsfD021Q82YuE+w1YA2Dqkw1Fba4Y87oOK7FweNtHWEKCAuwsKI
         paQf3SYp8l7zTuhvdmpZE3PKUGoh+NTaVD9S0mH7cODfPuuAXu4j6BDt9P4zGaiT9iUG
         tNEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=YInCGTDHP4uEDLfZ+VtOKdALPoSEe5yJvGES7+vW7vI=;
        b=DQhbh2xECMf3JZZU4ssuMor3+C7oDzDgSR9m0i0AkqhmpE62Cdtvm8oE9F+D86l9L2
         0eV3LmESU0gWHW+Zd3hQbkyQkHSjAD4nWWpAJDZWYwYoftie37LPrWBNeuwHmD3ehJML
         VtijFgRuvPdurQSWk/lhRqlmlK6ql7xJ6e1uF0vLblBGav9wDV1+v41I5Ovrp3mhSXny
         5Rax3N2NmAuKY7Ke9RQPzrnMg6djfzwD/UAHAwxmP9Z5yDnrCPMarujobumEapykwYok
         mwGgTU53J565aeCyeg6WQkcSlTGOqHD8H1C1Y7Hy4KFrIXPgTHME4yIWj8EhxnjAC8Wz
         itJA==
X-Gm-Message-State: AOAM531i0X8N9FRXTRPFCA5KZUk6n8EI34SLQ4irRya/Wecx/mDPWQYr
        JjY8mipihIPQio3ZP8f3Pq1XIWkPpWZBAp3KLiIBXw==
X-Google-Smtp-Source: ABdhPJzTeVvy0ZXmMbNug5JQgHPRdUPKsYwepu2pUfahumGm8539y4yaEH88/G2mI0zVqSydkS+y839Csd59U8fXZts=
X-Received: by 2002:a25:2308:0:b0:628:9a66:7327 with SMTP id
 j8-20020a252308000000b006289a667327mr10394599ybj.626.1646349011461; Thu, 03
 Mar 2022 15:10:11 -0800 (PST)
MIME-Version: 1.0
References: <52970494111d9287cc8355e0f2e3de474361c75f.1646296493.git.geert+renesas@glider.be>
In-Reply-To: <52970494111d9287cc8355e0f2e3de474361c75f.1646296493.git.geert+renesas@glider.be>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 4 Mar 2022 00:10:00 +0100
Message-ID: <CACRpkda+gNgE1bE1_79pLrqku86dXygg4v_ynC5OaFNb0yth=Q@mail.gmail.com>
Subject: Re: [PATCH v2] ata: Drop commas after OF match table sentinels
To:     Geert Uytterhoeven <geert+renesas@glider.be>
Cc:     Damien Le Moal <damien.lemoal@opensource.wdc.com>,
        Hans de Goede <hdegoede@redhat.com>,
        Jens Axboe <axboe@kernel.dk>,
        Patrice Chotard <patrice.chotard@foss.st.com>,
        Sergey Shtylyov <s.shtylyov@omp.ru>, linux-ide@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
        Florian Fainelli <f.fainelli@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Mar 3, 2022 at 12:03 PM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:

> It does not make sense to have a comma after a sentinel, as any new
> elements must be added before the sentinel.
>
> Add comments to clarify the purpose of the empty elements.
> Rewrap entries to a single line to have a consistent style.
>
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Reviewed-by: Sergey Shtylyov <s.shtylyov@omp.ru>
> Acked-by: Florian Fainelli <f.fainelli@gmail.com> [ahci_brcm]

This looks so much better.
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
