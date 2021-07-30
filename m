Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 051A53DBA8C
	for <lists+devicetree@lfdr.de>; Fri, 30 Jul 2021 16:26:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239023AbhG3O03 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Jul 2021 10:26:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238948AbhG3O02 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Jul 2021 10:26:28 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9436C061765
        for <devicetree@vger.kernel.org>; Fri, 30 Jul 2021 07:26:23 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id a7so12597457ljq.11
        for <devicetree@vger.kernel.org>; Fri, 30 Jul 2021 07:26:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2oGSD96sNs3fe87T1syyoEjF/gXarcKaHn7imJsZ/wE=;
        b=B9ydlXTx9KHjIbQb/934UeJRtQlmjkfbDf4yiVi1GKeyPlWGSR1DeJEsbK6TcpIRWD
         HKTulJjdYnAeOKo4giQBx4ccFpzmqYVKeIWClW99gfsw9fHmX5nGrD4LnRe2yEVgnKgi
         GqPezmzlgv1ZVCDLB0+dPZRecoNc0/HFiRYR/DnrMWrQV93KCCBvx+zydMb91b8OSyvY
         0/IiM8Noz8DYh5xZpnOQHp+rii0YKIAbsXkFOfkDMfv0qSNkIIkp6qlw+9dLduM7L6Dg
         AN9dUJeC8JyfWd1bThscIeaOVPIlNpaD0KZKAPIIyhVpreGPDy/noXgcT/ESkx+ZjEjj
         D97A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2oGSD96sNs3fe87T1syyoEjF/gXarcKaHn7imJsZ/wE=;
        b=Us1agK4EzuPTYflWVO7OVfKHVtev5VOyCU9jUPA0ScyacCnJXTmwLm/Sam2ZjG3D6J
         WN8GXpsObMvaTRHZhqibi9gdEW8fiEMYLSWnTYhkHg+4rYQoz3XKv+rZqUk5aOF8uC/r
         4Vjdgo5CBHCirCwREbIhKXYe6oMyxpBnUzongmTBoCJxnZWpFRa6o8C5bJTpWqkbpXkc
         mXtdF70s0c4BIrftb2C4WW/K+kgzbl+24fC+yF25TmkGNHkAqAT8530DDZXE/WDd1XdG
         e73kFocFPSxsm1XfGeuLk/qad7aNaYNq4NFnuqV4s27hIxjZJQwuD0zNEarnmtZMJmhM
         J/yQ==
X-Gm-Message-State: AOAM530Dejc0GnGa9+LQpsIUPhRtSQ4EzcR7lOre3ySrqXHg4ZSyvTT8
        G3L2u0PZ4fFSFwoHPx8YHSWp4ZLAyhM+pT9772Ar9ojFbbM=
X-Google-Smtp-Source: ABdhPJyXkDVghehLAHsT/bHp3R4sMxvHWJVGvcrXAo37QXvpkXPTqUtapaXCnDfhYmgE66Lq9qmwg0xmfjUAVpkwhew=
X-Received: by 2002:a2e:b04e:: with SMTP id d14mr1942283ljl.74.1627655182215;
 Fri, 30 Jul 2021 07:26:22 -0700 (PDT)
MIME-Version: 1.0
References: <20210730134552.853350-1-bert@biot.com>
In-Reply-To: <20210730134552.853350-1-bert@biot.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 30 Jul 2021 16:26:11 +0200
Message-ID: <CACRpkdbU_=GcX2Xem0QfK8bY9RGiyPCBhbxWEubxqtyN1W-xDQ@mail.gmail.com>
Subject: Re: [PATCH 0/4] Add support for EcoNet EN7523 SoC
To:     Bert Vermeulen <bert@biot.com>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        John Crispin <john@phrozen.org>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jul 30, 2021 at 3:48 PM Bert Vermeulen <bert@biot.com> wrote:

> This patchset adds support for the EcoNet EN7523 SoC, intended primarily
> for xPON/xDSL routers.
>
> John Crispin (4):
>   dt-bindings: Add vendor prefix for EcoNet
>   dt-bindings: arm: econet: Add binding for EN7523 SoC and EVB
>   ARM: dts: Add basic support for EcoNet EN7523
>   ARM: Add basic support for EcoNet EN7523 SoC

Given that this uses GIC v3 and so forth I recognize that this is brand new
ARM32 silicon. :O

All patches look good. Very interesting platform!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
