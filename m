Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2ABAB2A7ADF
	for <lists+devicetree@lfdr.de>; Thu,  5 Nov 2020 10:44:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728473AbgKEJoD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Nov 2020 04:44:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56308 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725468AbgKEJoB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Nov 2020 04:44:01 -0500
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com [IPv6:2a00:1450:4864:20::241])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B3C7C0613CF
        for <devicetree@vger.kernel.org>; Thu,  5 Nov 2020 01:44:01 -0800 (PST)
Received: by mail-lj1-x241.google.com with SMTP id y16so893997ljk.1
        for <devicetree@vger.kernel.org>; Thu, 05 Nov 2020 01:44:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Fiir3cs5BIpMPK0iWGpD2ThmHy/2pshy4RnyFAgMk+c=;
        b=zXfMrbFGxsDPNcew9ePdDEatydPgID3NVAQwF6vYCBO9qqkf7ZZXYD1scw5CYR/C/O
         gQDyYfRjOdhCMdy/3EXTkZOGXdRrYggs286zU9qbt2qEeEjQROT3Tn8F0RGOauNRb/+E
         JXLC1DdU5Qx9FKT6BOoV856o7QAmrfECMN99MWIC2fViQJsoWnB11MsAvVyMAhOU+INl
         kueH98gMrAU7wXFrUv75Xq8cEw0tNaDo1Szpdk7LpQfhvA5SFcDNQjHu/hSJQ86aZLAA
         uiQET85Ndm+AuutO+W9BUTNF4Bb/2iO03PBCp828vewhQL064TRYL0hPKhPegRZAWQeQ
         1UoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Fiir3cs5BIpMPK0iWGpD2ThmHy/2pshy4RnyFAgMk+c=;
        b=J2QD1bqT5IiARdVbMtVyXraBJSQFenDJc32It6cUgiX95b6F2OZSCGQnbpgQI/Tx1C
         gK4NPs3gGviUbbsApo4lDwld9HaBKrf3YE3vBNqrjb7z8cOBEcZv3yvAIZaBpdrn651d
         nhcg4dKs5F/t8JELhMNy0+vlgoecNf+jxSQH6oa/G+o+6shehdHayM5D7jMowV8Ykd3c
         k/DHct43uHyGqI2SW2nVCbYuZnOaL8alPOkkZTirW4HLj8fZSzykGj4u2t/8uZTx8bNF
         3sXIbWPyMQLRKz0r5/9aAule+HXHIGwfxxGydZvo+E75cnwAD9R7Khfpsv5URsvheMZM
         QKTw==
X-Gm-Message-State: AOAM532lmPqGP/pLM/nf6fWpbQke1agYq8qUWxQpAAmcogceMohcOCjG
        5OQ+9Tg+qaDazKNVg1hYMFlQyyW+UZXxGJDAvcE2VA==
X-Google-Smtp-Source: ABdhPJxkkaqC2wZ8LOOXXjMLKnX26vsGQzSULmY+F/v48CjdY03gPv2euRri5IvoFQWubR8J93pEdvAcrXazw5NBFRQ=
X-Received: by 2002:a05:651c:1050:: with SMTP id x16mr625184ljm.100.1604569439670;
 Thu, 05 Nov 2020 01:43:59 -0800 (PST)
MIME-Version: 1.0
References: <20201019141008.871177-1-daniel@0x0f.com> <20201019141008.871177-5-daniel@0x0f.com>
In-Reply-To: <20201019141008.871177-5-daniel@0x0f.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 5 Nov 2020 10:43:49 +0100
Message-ID: <CACRpkdaF1+PqZaMOb9WQSV57GHsTbch84etNH765pEWa6VmgFA@mail.gmail.com>
Subject: Re: [PATCH v2 4/5] ARM: mstar: Add gpio controller to MStar base dtsi
To:     Daniel Palmer <daniel@0x0f.com>
Cc:     "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, arm-kernel@lists.infradead.org,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Oct 19, 2020 at 4:10 PM Daniel Palmer <daniel@0x0f.com> wrote:

> The GPIO controller is at the same address in all of the
> currently known chips so create a node for it in the base
> dtsi.
>
> Some extra properties are needed to actually use it so
> disable it by default.
>
> Signed-off-by: Daniel Palmer <daniel@0x0f.com>

Acked-by: Linus Walleij <linus.walleij@linaro.org>

Eventually this should go through the ARM SoC tree, but
it is fine to send with the rest of the patches, I will simply
just apply 1-3.

Yours,
Linus Walleij
