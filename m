Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9DA4F32AADB
	for <lists+devicetree@lfdr.de>; Tue,  2 Mar 2021 21:02:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235877AbhCBT4k (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Mar 2021 14:56:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1377992AbhCBIwW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Mar 2021 03:52:22 -0500
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A3F3C06121D
        for <devicetree@vger.kernel.org>; Tue,  2 Mar 2021 00:50:43 -0800 (PST)
Received: by mail-ed1-x52c.google.com with SMTP id dm26so592975edb.12
        for <devicetree@vger.kernel.org>; Tue, 02 Mar 2021 00:50:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=1etITy7cj5GhtJLa/FOQQXW7yboxkS0n4AWEfPrYBhE=;
        b=SVnqXAT2OzXedVGcbW2uy9H4c0GQhemJuAe5rGbGGgyiluQC6AQ918pKVQGYNlLfNK
         0doPmSURVkoW6gt/foXFqOoCgNjcg+qqQDzS6vaNjwuYPufpikItgpmAVi1eivgcnObQ
         ZkLzjLUSAYVLD2EWyui64uf1Rk0/bBRO8MubNQzf5dIDq10sD/YXHsPMNYt6wDCQ0zk3
         oBwZ2Yds2e+oX5+MCwtQrGDnA1TCJKvE9P4N4cZ8JQGqHQFUT2Bw1tkOoFBYuU6YRoH/
         KZBg2kT94hIyPKzh2E6PpqJo62fgnNjmuxD+y3xiSRsFpDq0n44gb1hqN412y4R5iDyF
         HQIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=1etITy7cj5GhtJLa/FOQQXW7yboxkS0n4AWEfPrYBhE=;
        b=OIUbE/6W5qY7zi5VK4Pr8RkUrpy9vuMSY3xaeIFaq1aok0O0hLwsEb3GdfAEnzX71c
         Vhex9aCDeN+2ijl3YkAN1MEwyRLSonQJTkOomj4CfwDm68LKYDrWYGvht8Yoqmsgifcg
         L6I8g6M6y4v4YeSVLVggLtbcLCZyVE3I67AN0LOQK0tFHWWvt/2bDu/XGlCmJxK0FK2k
         VUcSGbIEJ3I5nMqEHvgeHUvu0Fyhm4wS2/NPgRMPfh5VMKGFOxEmi0bZ8TaMZQtmWziL
         pH3nkkGqig1Nyf2zXGnS9WFsbsF7M6XJrl3AAa5IScrcfdR4lgCApbNA23sRcHqUxDGd
         0rGg==
X-Gm-Message-State: AOAM530ak8EdxRhZghR0qqpoh5DsyGJm4Cy98sJV0U886yJbjcfVENzK
        PBbFww7HvoiZxkZIoJA1/f+4M3a07UOIyi/E/edTzg==
X-Google-Smtp-Source: ABdhPJyf27d0G3Qc/JOKGJQ1WR1jXyvXZJwqMV4HEIs881pPKts0F6S41TVLXiaBM4XZskAkhgkuyBI08GKfKpBz6fk=
X-Received: by 2002:aa7:cf16:: with SMTP id a22mr19218786edy.288.1614675041833;
 Tue, 02 Mar 2021 00:50:41 -0800 (PST)
MIME-Version: 1.0
References: <20210216163647.34264-1-vincent.knecht@mailoo.org>
In-Reply-To: <20210216163647.34264-1-vincent.knecht@mailoo.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 2 Mar 2021 09:50:30 +0100
Message-ID: <CACRpkdacDYg+254gqaNjDMdu8n-LzvguxLwX2w8LeGCyLLGaNQ@mail.gmail.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: input/touchscreen: add bindings for msg2638
To:     Vincent Knecht <vincent.knecht@mailoo.org>
Cc:     phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Henrik Rydberg <rydberg@bitmath.org>,
        Michael Srba <Michael.Srba@seznam.cz>,
        Linux Input <linux-input@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Feb 16, 2021 at 5:38 PM Vincent Knecht
<vincent.knecht@mailoo.org> wrote:

> This adds dts bindings for the mstar msg2638 touchscreen.
>
> Signed-off-by: Vincent Knecht <vincent.knecht@mailoo.org>

This looks good to me:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
