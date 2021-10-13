Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BFF8D42B0E1
	for <lists+devicetree@lfdr.de>; Wed, 13 Oct 2021 02:15:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234252AbhJMARI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Oct 2021 20:17:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52418 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233128AbhJMARH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Oct 2021 20:17:07 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BEF1C061570
        for <devicetree@vger.kernel.org>; Tue, 12 Oct 2021 17:15:05 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id i20so2664266edj.10
        for <devicetree@vger.kernel.org>; Tue, 12 Oct 2021 17:15:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=k45RlmlAaGBhyanz62XVynKsrYMLkebENznbPDj5sVg=;
        b=PABXwIUguT5icS4wpRPu1JHzn9c0/tkhD/v57MEsnBL9F+9RgkYhRB/LS0h4zV5hsY
         8XYk5eOXwIQLYSoFc5XRn1CSuCzYDgsAcALBOQY70Ogy8leYEti4oUaZ8F79y8QfaUJB
         xmxiLlRDfq+WQgZ1rN4a8toZeh8JF9XVftR1lrIpl9Q1/qRl4KAuZIouWPgd07oUltP4
         iWU117MuoloJiuoIsDgxUUrM06h0+0xJWmPkfQTPRnH+X2d4uPmaveo6x+jLgdq/lLHf
         iT4f0dTtSchAWk3BajNapLVGMoLfJq3/WZkf/rqeT5sRszXV9rIK/eg03BZ1Ke3RESom
         LRVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=k45RlmlAaGBhyanz62XVynKsrYMLkebENznbPDj5sVg=;
        b=6v/2kh9gRrDApUdSvGp6N9j3LlQq/zU3v43sXjCtMSW1V+J/pNWnOVtnD+If04PeNi
         k7ZpZITnnu6YZa2YbR5O/DylM8knCdFgQTYo1rwXcymyNyPD6PuPx+derRmHURQcqyyy
         JyYgJ8rl9/Cf7SG5LgTH0iN06rfv1Xrc3V/iHKqpesSLzrk3Mf9piPKt62pF/QG2TAWv
         EisuYfS3FptX00+R9+ORuCVeGs/2e8r7gWtt2/H09Tj1Wsh2j84L/QthxBp1tlceKno7
         eVDgzrDY2o9bJscCo1zNZqyovMNwYT9uE8XaoWPqywwGac76LZMX7BD8ZzUHHZbQBqbR
         2Syw==
X-Gm-Message-State: AOAM530DbMeq++bCOg+Jm9WiEo5KZHV0YeZNzTba/VYkljhtj584Qn8B
        X9IQoeiZtwxUNVOle1oxCjMEjj2eQRFn1raPhPscaA==
X-Google-Smtp-Source: ABdhPJzXVKj8PQPYA7eRKaS1ZaXZbhjLzQsPW54s2aDQgexslT0oigZ3wST7XX/ySt1Uj33jnHu/e63NrYh8VqYYAiU=
X-Received: by 2002:a17:906:540f:: with SMTP id q15mr36921869ejo.189.1634084103683;
 Tue, 12 Oct 2021 17:15:03 -0700 (PDT)
MIME-Version: 1.0
References: <1633518606-8298-1-git-send-email-hayashi.kunihiko@socionext.com>
In-Reply-To: <1633518606-8298-1-git-send-email-hayashi.kunihiko@socionext.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 13 Oct 2021 02:14:52 +0200
Message-ID: <CACRpkdZuJDPTi8dL-PpkTVe9VHVjvHGO_f_x5CbBCoTjN_wwBQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] pinctrl: uniphier: Introduce some features and NX1 support
To:     Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Masami Hiramatsu <mhiramat@kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Oct 6, 2021 at 1:10 PM Kunihiko Hayashi
<hayashi.kunihiko@socionext.com> wrote:

> This series includes the patches to add audio pinmux settings for LD11/LD20/PXs3
> SoCs and basic pinmux settings for new UniPhier NX1 SoC. NX1 SoC also has
> the same kinds of pinmux settings as the other UniPhier SoCs.
>
> ---
> Change since v1:
> - Remove non-existent groups "usb2" and "usb3" in NX1 patch

This v2 patch set applied.

Rob's checker is complaining on patch 2 but that patch just adds
a compatible so the warnings must be old? Please look into them
anyways.

Yours,
Linus Walleij
