Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F11AE403B8E
	for <lists+devicetree@lfdr.de>; Wed,  8 Sep 2021 16:30:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351936AbhIHObR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Sep 2021 10:31:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60150 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351911AbhIHObQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Sep 2021 10:31:16 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCCB9C061757
        for <devicetree@vger.kernel.org>; Wed,  8 Sep 2021 07:30:08 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id a4so2980600lfg.8
        for <devicetree@vger.kernel.org>; Wed, 08 Sep 2021 07:30:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Cd4KZy4x2pTlEHlDKbDrBtC/WiwsU7NBfk76zAgmO4I=;
        b=ca3M97tlnfgje41roeTfZsVBgciesfVX0uP5y414o4x4iaDSFqnkLcxgnzIvhHOAS+
         XMkRC9iiEX4jEx4dLN2oInyTVNHx+3J8lvTV54anV9jiYjREIpX5XVxAcrdE30fpVDf2
         jt2fTln0vgXY2qwYTnvhfnDbs9d1xXfH57hU9RDyhlMLqN7qO+plcIA5HBXupFjjnMon
         3Kw8aKZCWYzEn0AA30h63cywZnU5Ch8I1cQ/xlMSrvFourIaGFgwjk6vnUnuCsRVPL4o
         ejRyLrZQkUlYN4YDJoVVp9PJADk67K/b0TDDj3tBEsMFZmoKFBbzZ4eRf7ksJCURyqcn
         KQUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Cd4KZy4x2pTlEHlDKbDrBtC/WiwsU7NBfk76zAgmO4I=;
        b=2YQK+WEOadVotxjDJ1CZ1C0kXoymBUmhbRVvtAOEUFDabHQqbRZJzmallADktpqV1D
         NN7ZcurBbgjWyoUqKkbIBlPhBKiTBO/HfxIeKG7XH+x6OChu67vlXqUzWCYYISTBQJNZ
         1NqwMO4o0gWCew9ahgtnPNBpR8Fr095XZi/AZjfaN6jPmttMbbdFYAcJqVoGbeGoYWRZ
         anQ1+ao+svevjAiG5OaAHUDaT6OAamVgX86ruq0rrPm6ZHiYaJ/bg8LbRwt1sv3T/Bd8
         44e6QzNv/vLYj7FmZdvzI7hZKjrDBuhHjcwaZ0D61b1ri7DXrdgMzJ8HDPGvqiV3Xw4d
         FqJQ==
X-Gm-Message-State: AOAM530dYxhcs/JkSx1VBpyze5F1xh5Ojx2VZ4kAAKfVGQpKOchUxOay
        Xs2XPKeeCtnNc/JeiT3sPRcqpmXSZxmOINIT9s9oUA==
X-Google-Smtp-Source: ABdhPJx6YkEihkTPOHz7i0JiTJA+kgRrv4PLkRkl3EtqG3Iv3XHz1A4V31/GLbsPFfkomia+ZhmRQ562NZ483N9JshE=
X-Received: by 2002:a05:6512:132a:: with SMTP id x42mr2816010lfu.291.1631111407072;
 Wed, 08 Sep 2021 07:30:07 -0700 (PDT)
MIME-Version: 1.0
References: <20210908141606.136792-1-bert@biot.com>
In-Reply-To: <20210908141606.136792-1-bert@biot.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 8 Sep 2021 16:29:56 +0200
Message-ID: <CACRpkdYo9KYVZKBvEuSbVa_pN__SQRAF0VTRcMFOVs=3CaQQhw@mail.gmail.com>
Subject: Re: [PATCH v3 0/5] Add support for Airoha EN7523 SoC
To:     Bert Vermeulen <bert@biot.com>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 8, 2021 at 4:16 PM Bert Vermeulen <bert@biot.com> wrote:

> This patchset adds support for the Airoha EN7523 SoC, intended primarily
> for xPON/xDSL routers.
>
> v3:
> - s/armv7/armv8 in commit message
> - Fixed dt-bindings vendor ordering
> - Removed CONFIG_COMMON_CLK_EN7523 reference for now

This v3 patch set looks good to me.
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
