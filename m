Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8897E6904FF
	for <lists+devicetree@lfdr.de>; Thu,  9 Feb 2023 11:36:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230171AbjBIKgk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Feb 2023 05:36:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230226AbjBIKgW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Feb 2023 05:36:22 -0500
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com [IPv6:2607:f8b0:4864:20::b36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C10F6A32A
        for <devicetree@vger.kernel.org>; Thu,  9 Feb 2023 02:35:10 -0800 (PST)
Received: by mail-yb1-xb36.google.com with SMTP id g2so1770340ybk.8
        for <devicetree@vger.kernel.org>; Thu, 09 Feb 2023 02:35:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=JJgX5QvJsADw9laMT79k7Un3WgY8suaKk5qie04JT20=;
        b=BDZwjoDell5uK5ikdBXTTYw7oCrWD0oBaZgYkglrpdf8lpqbEKBuyS7bjEUQBKadP0
         eEt94gNomenAEPDoHo9wboyqS3CHfeIP41yJ2O6mAbpjONw234ujUqquopeLauyLSj0u
         FPQ12wpSL3QQI1zG/+pZCh/VSjUFaPbJSaSzYWPu5naAGYszvSSXCfV4t6/V/GngRE4g
         Sf+v/wQWcw5fPAmPr10W5cD7C3ZnDrUptbBpzVzNc6GmR5h20KyE/STUz1Mye/n+YXPn
         /umOWwHXyCj9/tji/P06itCTqFLukM/CnLnnGPJDNYFVFVKE7MgbEa/QluxAbX8YjX7w
         hQEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JJgX5QvJsADw9laMT79k7Un3WgY8suaKk5qie04JT20=;
        b=LaFIoaZ3SP1A9AvoQSey64I+fhuUj32f6qS2KtIFaE+of0t+7DaXEZxvsApHHfTZBk
         jW/OG2jk9WaBuGrKP9ST0ENRBmwvlQSBTuU3HgniaXRnZ61TjZQhftyLTtNKtLryL4Rb
         qnbyp0p1Sz0QsMgPVg1mT9OvYgESMWewjJNzNdR9KABPSie2Efbi/qpTkFLGbM5t3buQ
         jZyiYH8zmMk7kWmxWnJ2AMu+HfUOS/vpw4iz5mAEL7FCjVvJ+5I4jNNIYi8IXOctmc+z
         +kqIXa/irlfkvksVQGE8aV7Q0H9P6iY5UcxS5RRFZGBEsiZLHxI9nBHVMvW/W1UKcqjM
         3TfQ==
X-Gm-Message-State: AO0yUKXLgq0h4Kj4LQPZJ1Gp7QjHxVg7vQZ0RardPGxoB/ujk6H7OQse
        /r++d/nz6gSnDlzsR9WyhJjySPgDE3wABWufjZKHlg==
X-Google-Smtp-Source: AK7set9iONTDm/V2Uk77rB4FKHxBkm7FbdUCso7hGlDRC6qONQKfDwseGChJaZD/z1wiD4VkoLu6GPjRNy2V0/xngkE=
X-Received: by 2002:a5b:150:0:b0:88f:92ec:4292 with SMTP id
 c16-20020a5b0150000000b0088f92ec4292mr1178366ybp.460.1675938888838; Thu, 09
 Feb 2023 02:34:48 -0800 (PST)
MIME-Version: 1.0
References: <20230203141801.59083-1-hal.feng@starfivetech.com> <87e31545-3107-1cc2-fc93-197f66712ccc@starfivetech.com>
In-Reply-To: <87e31545-3107-1cc2-fc93-197f66712ccc@starfivetech.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 9 Feb 2023 11:34:37 +0100
Message-ID: <CACRpkda7ihWGjAP4=FU5uPqFMs4YxV5RLU8iwRNG7bYDeyOJ3Q@mail.gmail.com>
Subject: Re: [PATCH v4 0/4] Basic pinctrl support for StarFive JH7110 RISC-V SoC
To:     Hal Feng <hal.feng@starfivetech.com>
Cc:     linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, Conor Dooley <conor@kernel.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andreas Schwab <schwab@suse.de>,
        Emil Renner Berthing <emil.renner.berthing@canonical.com>,
        Jianlong Huang <jianlong.huang@starfivetech.com>,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Feb 8, 2023 at 3:31 AM Hal Feng <hal.feng@starfivetech.com> wrote:

> I have resent the patches rebased on your "devel" branch. Rob has added
> Reviewed-by tags for DT bindings, but the DT binding patches still need
> to be modified a little bit. Could you apply this series if I modify the
> DT bindings patches and resend as v5? Or it need another round of review?

No more review needed for small fixes. Just resend a v5 and include
the review tags and I will apply it. After a few revisions this is usually
fine.

Yours,
Linus Walleij
