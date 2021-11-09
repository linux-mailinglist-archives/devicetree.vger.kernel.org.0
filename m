Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B03D344A5C9
	for <lists+devicetree@lfdr.de>; Tue,  9 Nov 2021 05:32:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240597AbhKIEf1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Nov 2021 23:35:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34664 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240539AbhKIEf0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Nov 2021 23:35:26 -0500
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com [IPv6:2607:f8b0:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 991C9C061766
        for <devicetree@vger.kernel.org>; Mon,  8 Nov 2021 20:32:41 -0800 (PST)
Received: by mail-oi1-x236.google.com with SMTP id bk14so8594800oib.7
        for <devicetree@vger.kernel.org>; Mon, 08 Nov 2021 20:32:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=XPW05/I7JWkMC7nH5tjGxCD4A2fkhvnHq9/c9af0GlQ=;
        b=VFf04iPQt21pyD9jgemG/8UjO2n+aCufGZ28WT29USfCMN6WMRHlJwx6YXw+G3e/hi
         l9o4HvJMRjBXcEtDAfVqfI/VaiwPf2WUa4KQ0P7QxDCtMWmKQjLBzOs+WMGiajpfWV6f
         tJvIJtL62+qGxeqv3bId01R5WrekNfG5dXKMnM1Co3lyCKvfakCxjba5fV1JyCegCZj2
         Utq5TtiPKuebOMiYUKoJf2lr1+CEfFHS4Zxmsb10U26N4R220mDZuQ7KqHAgoI48UelD
         9GNTCoVNJQBCLaaKtRh+eysMJuWfQcbwR4Biv7fUkF/W0ifQ3BcBJLRP5A2PfWbpV2Xb
         iriA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=XPW05/I7JWkMC7nH5tjGxCD4A2fkhvnHq9/c9af0GlQ=;
        b=C6/h4HoPilZYs5MV+mE+8aKpfs9vrmqm1t1L4QE18ryDqsR/r9/vsRFeOeyCZ2dcS/
         qB+xFvBl8YUjdyIaBsQkOqPqlg6U0k8VqCBv/17rNimaJuLd6GAg8fxD0EcNNnUFhz0q
         LLqSeA/xpmUM6mg9AhQ3VOjrLUiWTWpn32cKF0KCut1Vejdy9fiGCLeuG+gmzZfyB6pW
         C6D38lTd9bQybsDoIPStMuqkLc9KiFpQsP5jItKWwwMOfwb+0gpMIYtvCecWcEK4AN44
         hUYY3qHb/iUb2arjom/GedIscp08sNdSMEyfVAL8y0fl4q/rB8ay32ax98RlJcnrdxTk
         Xu5w==
X-Gm-Message-State: AOAM532yJW0L2eGN562y7wg57cDo2BKTPOZ7tYrKjFLqdcTak3mG7ZKk
        qBRfTjKBnuKaz9V5t57k8PaFou/b4iCpUez9O5dUBw==
X-Google-Smtp-Source: ABdhPJyiXYZZr89IAwXjMdgsg06kxN10S6s/oac8LsbHgXOCPomhOTw0JA/nU8TmlBO67To6uEcKTgdCFGNIZPdoNy4=
X-Received: by 2002:a54:4791:: with SMTP id o17mr3342475oic.114.1636432360933;
 Mon, 08 Nov 2021 20:32:40 -0800 (PST)
MIME-Version: 1.0
References: <20211027134509.5036-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20211027134509.5036-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20211027134509.5036-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 9 Nov 2021 05:32:29 +0100
Message-ID: <CACRpkdbY7QtjACCu63k+=Mn-XeLN3+fOjmKYR0w2NbhEZYGbeQ@mail.gmail.com>
Subject: Re: [PATCH 2/4] pinctrl: pinconf-generic: Add support for
 "output-impedance-ohms" to be extracted from DT files
To:     Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
        Prabhakar <prabhakar.csengg@gmail.com>,
        Biju Das <biju.das.jz@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Oct 27, 2021 at 3:45 PM Lad Prabhakar
<prabhakar.mahadev-lad.rj@bp.renesas.com> wrote:

> Add "output-impedance-ohms" property to generic options used for DT
> parsing files. This enables drivers, which use generic pin configurations,
> to get the value passed to this property.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Reviewed-by: Biju Das <biju.das.jz@bp.renesas.com>

Looks good to me:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

I suppose Geert will queue this patch with the rest of the Renesas stuff?

Yours,
Linus Walleij
