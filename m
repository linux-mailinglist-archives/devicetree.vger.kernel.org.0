Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5F0803E8FF3
	for <lists+devicetree@lfdr.de>; Wed, 11 Aug 2021 13:59:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237416AbhHKL7d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Aug 2021 07:59:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237417AbhHKL7c (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Aug 2021 07:59:32 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0BDDC0613D5
        for <devicetree@vger.kernel.org>; Wed, 11 Aug 2021 04:59:08 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id d4so5092970lfk.9
        for <devicetree@vger.kernel.org>; Wed, 11 Aug 2021 04:59:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=mCS3awkzA8RWLuNBik5eKT8lyl2fZPoNsKZCtZjxeHM=;
        b=hvGuv1nPXE5fSGfW1StTPNwEqjNezSk92PHiyyiwzWfzWx7F0QIB9jS+QRo2gn28to
         Bt64oCxPp3gWybq9VyJQI5P6eRwZEgBjuXSJJc+1E7kBWo3mN8sS88EWk9TwwiOnItDa
         amJIUrEvP3YE23YIkI6LfcTBNzAKd6NeAfHjBDqcTZhFdfThXqGlbvcjMmAbGcrWIlmo
         XpNL3bXIBIV9C0BofYvuV7jNV2Z7IgZFUzIj6rbEjkZHVLos3+R6gksqlU8S4+NSHXbN
         4xrYzpcGqlVg8xY+eQ1bG7ML0svz3zlO3T1CRl0yOyjFtKvTxyH1gEEcWh5pHroP2Pmk
         WMxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=mCS3awkzA8RWLuNBik5eKT8lyl2fZPoNsKZCtZjxeHM=;
        b=Y5GJN+m9zUzLEr2GDhF5XOxtBvHRPXvl37/nmD0LUs5Vfb55V5FQLtFWSOrF+oUWLn
         ch9TLfrCSCN2vMufrxUu9uwgtl1CMBNqYHin3AUAcKF97TagQ51vFx9oQYnUQ4m5AsYR
         QjgQxaOQHJwI4NI29h7LOjqF1ltsyEWHgDhpk82kgLyW6dk3yB8GglXNk/0uoFs+sh+O
         1oiFF4TnKiHUCC6jUoFmPoQywLb42tPjq/hQUPsxG3MDGJOgGQsLTjzkCcGwT7Kaqjnm
         sbhzD+kQVxpyVB0gd1uoofZDhAxFylDEwSZmiU8jRYLdX/j0jRd0Mpagqg9NmOkEONss
         ZrHA==
X-Gm-Message-State: AOAM530ja9A5u80NMvZkU8Zc+rxABH8r519/p+QgZ1WHZ3/Y52mxXVhR
        PSf8yigWOCtHfOK75BEjtJoV/sCQNc5OFBofsMeCxQ==
X-Google-Smtp-Source: ABdhPJzpYp6+24xONNd2RkFQ9OJS/necpcEFr9NwCBDIxjwF+49VMogiOFbS/tQWPsgHQZdMikO98rimMH1Xw8RSdJc=
X-Received: by 2002:a19:c7cd:: with SMTP id x196mr24889464lff.465.1628683147259;
 Wed, 11 Aug 2021 04:59:07 -0700 (PDT)
MIME-Version: 1.0
References: <1627910464-19363-1-git-send-email-skakit@codeaurora.org> <1627910464-19363-3-git-send-email-skakit@codeaurora.org>
In-Reply-To: <1627910464-19363-3-git-send-email-skakit@codeaurora.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 11 Aug 2021 13:58:55 +0200
Message-ID: <CACRpkdYMp6d7hhKSMknsGCQLuytRwow6+5UuiLs=yh9Oh6JFaQ@mail.gmail.com>
Subject: Re: [RESEND PATCH V7 2/3] dt-bindings: pinctrl: qcom-pmic-gpio:
 Convert qcom pmic gpio bindings to YAML
To:     satya priya <skakit@codeaurora.org>
Cc:     Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Lee Jones <lee.jones@linaro.org>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        Das Srinagesh <gurus@codeaurora.org>,
        Kiran Gunda <kgunda@codeaurora.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, MSM <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 2, 2021 at 3:22 PM satya priya <skakit@codeaurora.org> wrote:

> Convert Qualcomm PMIC GPIO bindings from .txt to .yaml format.
>
> Signed-off-by: satya priya <skakit@codeaurora.org>
> Reviewed-by: Rob Herring <robh@kernel.org>

This version applied.

It didn't work first so I had to force-apply it. I don't know why.
Check the result.

Yours,
Linus Walleij
