Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 85D92434298
	for <lists+devicetree@lfdr.de>; Wed, 20 Oct 2021 02:32:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229657AbhJTAep (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Oct 2021 20:34:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229627AbhJTAeo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Oct 2021 20:34:44 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0D1FC06161C
        for <devicetree@vger.kernel.org>; Tue, 19 Oct 2021 17:32:30 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id g8so9338084ljn.4
        for <devicetree@vger.kernel.org>; Tue, 19 Oct 2021 17:32:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=M6nsyJyFKfWb8ylGf29YNGR4cBIds20QVCnsCLesAU8=;
        b=kZPUFX2zWgXq/8T35MbOX4wBhZvNIdS32XCwQ0zEd3xUSQ4cwI2j+TFrAody1+bPW1
         CEB6S7Zy7jfwDWA7Lz+q++6rQ2+CiHYPq/wH/ZCIvC1qj8Pxf54jZnkCEI8MRu/3D7Xc
         0t1oiexsWI8wXrkoBr19wc6JpPk5ZwM5w1LkBVx/9nlRZ+nJ6zU5b62c21to81PAcwP4
         ZHN0ZAzVfK4VmtdTC2V+Zdimwvx+8iLVrmehBCKf3rmYY8YkFxXdwqq0uu6nq4p67zCG
         T2msed5ifJQgQJBrE9NfUEZvoEpkNV6i6kEl8+YIbyHQ1fSJ3sw6gnMoNRZm7S76y6Uf
         O8Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=M6nsyJyFKfWb8ylGf29YNGR4cBIds20QVCnsCLesAU8=;
        b=bVZmaAXPddu65028jQRfM/CavpaIliI78KdTpFi4R+cv8qrvBDWQTxrkwyoncE1vXN
         gl9PbRMn/JWP60DkHZ0kmzTnZXGx0Pr6TBuHiBuBEMv9zNtv+lhYsGc6JXz5+kcgLEP9
         SMEZ1EY6PpFkTGbGXgdwAKhGxAJrQWOYH6UTh4Vp3mqGbcVGeHLB1Go1VaxpYcQ5O5SU
         BCVHQB4jroRXhUscrFPD3/+oyw+xZGMRZt9e+mxKS/m+8P1aBLHCuhcUyHKbfcMcC/cN
         UI8+9ldhXtUA/9vmnV8KRF0ggu5ElaxUx11/1obZXS6eqnZnuwxqbUBGon4B2sMYyk+M
         tY4Q==
X-Gm-Message-State: AOAM531yDX24rHvGM0y/2A8xx/4D1V8i4eJ8GpyJnqmnkAdrEDJD42mx
        gUCJJ+gPKkkKF1FCP8QSB/HYCHp2rzD22FE1IlqlF97EFFE=
X-Google-Smtp-Source: ABdhPJyNNX26X7gI3vVEWzHVmm8QMVN0banwjpbRFYyd6X9OhGhOwQiNrXlozPsJY6VcLhi0JLxtAaASxALLAMmHtfc=
X-Received: by 2002:a2e:7f05:: with SMTP id a5mr9954728ljd.261.1634689949223;
 Tue, 19 Oct 2021 17:32:29 -0700 (PDT)
MIME-Version: 1.0
References: <20210928192123.1840842-1-robh@kernel.org>
In-Reply-To: <20210928192123.1840842-1-robh@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 20 Oct 2021 02:32:17 +0200
Message-ID: <CACRpkdbJJ1jLk0npO4Hfb1jLss+N1nKes8b3vL-n7U_mqcFMaQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: ixp4xx: Group PCI interrupt properties together
To:     Rob Herring <robh@kernel.org>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Sep 28, 2021 at 9:21 PM Rob Herring <robh@kernel.org> wrote:

> Move the PCI 'interrupt-map-mask' and '#interrupt-cells' properties
> alongside the 'interrupt-map' property in each board dts. This avoids
> having incomplete set of interrupt properties which may fail validation.
>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Rob Herring <robh@kernel.org>

Patch applied. Sorry for the delay.

Yours,
Linus Walleij
