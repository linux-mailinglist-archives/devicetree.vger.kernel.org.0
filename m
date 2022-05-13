Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8C7BA526BDE
	for <lists+devicetree@lfdr.de>; Fri, 13 May 2022 22:51:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1384362AbiEMUvf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 May 2022 16:51:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52780 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1356070AbiEMUve (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 May 2022 16:51:34 -0400
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com [IPv6:2607:f8b0:4864:20::b29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E348438AA
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 13:51:32 -0700 (PDT)
Received: by mail-yb1-xb29.google.com with SMTP id j84so6452475ybc.3
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 13:51:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Q1lUeUaxjxAnhoOvbl5ZUVWNHVA77t2uWF+2X4IoyPA=;
        b=cHfwau7y/FPCH7f6UNMmfoTRwNQhBKraErEQFbL4UMlr8D19qd52XiN97fGiyRRcsR
         V3TpQYM4GaknOfyeqkInhEWStX+JHJ/WrcRdKdpIUL0ZyNhkI6MGvvgN54LhfZ1xJTBh
         33oSENmqBqZVIvGd+3WqXF/jqj3Hb3+NE8usEaI8mHgV2I3uB3+6BjbFj0rpq9pIRt6g
         OteVPi3Q6Hj+XVq0Z8WfURFvVtXKIhqkL8maORr78SO3oOU7qC93V3oKDjyq3ys0to7f
         2Y294w6LXLOVqAzwd+6RZjOMB3xuML4RHhvv0OlLffmSC7oji8RULuqVC0pOCp9sJxZi
         uYpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Q1lUeUaxjxAnhoOvbl5ZUVWNHVA77t2uWF+2X4IoyPA=;
        b=joli9AeQOP2aqs4oygOGrYkoReVcIupX0HxbTBZ+7IVt+ADUgQWu477/muaVqC1ovg
         cnOT9S/gEOsm6Y0jU8Bwedb4rg8UNF1pfIIOYb/yQ2uupC4wZK5l9+iCLRHdepiJJ7ID
         SzG5Ek6NqvG6LJa6diMs2oPWdWyKI12DQsiOJ3LyxrXTq9ZLEg85s0b2BC+0/iB97stE
         VrvpG6cf4WfQXjGMjKEaX5UQnSo7XZNNiCwlltAw6j6rEmd2EToQSxnG1s+q9oovtxTg
         rP9f2sQHknu44uUexGl0h1wZU2k9aLg/Q8ExlabPrmyrIApIJWNBC9IzYfMVHHC9lLRJ
         XGQg==
X-Gm-Message-State: AOAM530KoFLI+HK3unG5yNRRgroRGupfrqM80JU1CyvIND2gNZ2o4O1k
        ZCdeKvLNpqPRQYy+9O4twto1/b5OpM2uz+dnUgdqAA==
X-Google-Smtp-Source: ABdhPJxzWfxcpJX1h26azJfPz0/Orz9nry4uuChl6eqvoECZKt8El5KnYLZ7vDZYwgCD9hXs3qS9WmEwLodLxlsirYk=
X-Received: by 2002:a25:2c82:0:b0:64d:62a1:850b with SMTP id
 s124-20020a252c82000000b0064d62a1850bmr148021ybs.291.1652475092218; Fri, 13
 May 2022 13:51:32 -0700 (PDT)
MIME-Version: 1.0
References: <20220512142910.328995-1-dinguyen@kernel.org>
In-Reply-To: <20220512142910.328995-1-dinguyen@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 13 May 2022 22:51:21 +0200
Message-ID: <CACRpkdasJnPikNPw0N-1C_e6i0wuKfxAtyNj2m96TxaMORz4-A@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: gpio: altera: correct interrupt-cells
To:     Dinh Nguyen <dinguyen@kernel.org>
Cc:     brgl@bgdev.pl, robh+dt@kernel.org, krzk+dt@kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        stable@vger.kernel.org
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

On Thu, May 12, 2022 at 4:29 PM Dinh Nguyen <dinguyen@kernel.org> wrote:

> update documentation to correctly state the interrupt-cells to be 2.
>
> Cc: stable@vger.kernel.org
> Fixes: 4fd9bbc6e071 ("drivers/gpio: Altera soft IP GPIO driver devicetree binding")
> Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
(...)
> -- #interrupt-cells : Should be 1. The interrupt type is fixed in the hardware.
> +- #interrupt-cells : Should be 2. The interrupt type is fixed in the hardware.
>    - The first cell is the GPIO offset number within the GPIO controller.
> +  - The second cell is the interrupt trigger type and level flags.

So now this says (A) that the interrupt type is fixed in hardware,
and (B) that you should specify it.

This is confusing, I think something is wrong?

Yours,
Linus Walleij
