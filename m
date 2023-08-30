Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D12078E184
	for <lists+devicetree@lfdr.de>; Wed, 30 Aug 2023 23:36:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235854AbjH3Vg1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Aug 2023 17:36:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43292 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241589AbjH3Vg0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Aug 2023 17:36:26 -0400
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D4DFE53
        for <devicetree@vger.kernel.org>; Wed, 30 Aug 2023 14:35:53 -0700 (PDT)
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-d7bae413275so1357359276.0
        for <devicetree@vger.kernel.org>; Wed, 30 Aug 2023 14:35:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693430970; x=1694035770; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zwTlMHnpoQxXKu7GQhdvB2OBoERcC10phErlaDthfic=;
        b=VtikGnfl50bEWsOWwmkZEajD57VNp1nXay6FB5zxfqFevQeJC5C6emzX+YEErUzE3f
         aYoOt7cQA4C+UAgpRBz4uWk2Z2d+NpqMzEDE+mz3tyMzLi9pUdtLbFjn2TZV5ztBT+Ml
         +FHcKrxm8N7lzyxf5gkhgwid/9wMM0hDuAMLEWoElBLweOr3zdx3LQ+7NAa7nInK/ocC
         VlT17JBjawt4gLT289/b6jJA8ZDW9zISzKC3e0+Cj/zZlg4xIPhEVwyt1NAPyF/gti0c
         0rLMH1wxHbQ/ZvUexgkpSi65NSRVmQwu6LB8dsbTQNRpfgsNQRgoNJ93Id0kvaYw0BRw
         CkfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693430970; x=1694035770;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zwTlMHnpoQxXKu7GQhdvB2OBoERcC10phErlaDthfic=;
        b=XRyLpalBSoU26RQz2hdpJbDghXr+ZVY8XUqvIa/f+J2+fhikvxBbLpAd24ZsAgvcqA
         sk7lRMSOuQxNyjMzP28HiEe8hgwwcUTjm0CwvXxA23oywBacs1YCpj9uuTQ+0oPGbvnd
         uyB6M1gAcFQQFRiVDGTAoHwNJSFoy7Ye1FOJ7L3FmrMgUqm0rmKe4R0yl6BWX9SAZcNi
         QHIhSyJn6bM7LpQMlXqF0DbsJgx6qa44Uhjkw7HL4HnTQ2IGXMG7UbSt8DEFnrY+zQYq
         Qxoy+oZsV1kBM2/3S+kS46l1itBSgbykBb3VznC3HImqo+9XjhOi4uRTeaBRZ8BuXkE9
         zUQg==
X-Gm-Message-State: AOJu0YzHrBCl8vv20KjNljRqA5Ai2MozbRMGEhJX0EDKPSibrYhFJe/A
        ta3jOjUF7yyHYOwyRnt/EFNPUniFq6a0lqSDegUfkQ==
X-Google-Smtp-Source: AGHT+IHHRbCO2NG6XFPILX+bMbHZwdLHJ4lj0szLA7z4dTcEOaX92f5uiw13Dj9i8r6tPm5FBwHFfI2oixbUXKm8XGc=
X-Received: by 2002:a25:d20d:0:b0:d07:b677:3349 with SMTP id
 j13-20020a25d20d000000b00d07b6773349mr727858ybg.25.1693430970191; Wed, 30 Aug
 2023 14:29:30 -0700 (PDT)
MIME-Version: 1.0
References: <0789000f012122a7fa27ef709c738101b00cd834.1693407196.git.geert+renesas@glider.be>
In-Reply-To: <0789000f012122a7fa27ef709c738101b00cd834.1693407196.git.geert+renesas@glider.be>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 30 Aug 2023 23:29:18 +0200
Message-ID: <CACRpkdY=ayaZpxSzHgutk8sPkcJeAjMh7yJcTP4AnUSQSaGw3Q@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mfd: stericsson,db8500-prcmu: Spelling
 s/Cortex A-/Cortex-A/
To:     Geert Uytterhoeven <geert+renesas@glider.be>
Cc:     Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 30, 2023 at 4:53=E2=80=AFPM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:

> Fix a misspelling of "Cortex-A9".
>
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
