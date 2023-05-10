Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 04F6C6FD9A9
	for <lists+devicetree@lfdr.de>; Wed, 10 May 2023 10:40:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236639AbjEJIke (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 May 2023 04:40:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57592 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236731AbjEJIkT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 May 2023 04:40:19 -0400
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 261AB30DA
        for <devicetree@vger.kernel.org>; Wed, 10 May 2023 01:39:53 -0700 (PDT)
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 90FBB3F243
        for <devicetree@vger.kernel.org>; Wed, 10 May 2023 08:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1683707648;
        bh=LMsA6JxRTYWQXM4naAdveOz2WpVCJs1mzJM+iSTf9FA=;
        h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
         To:Cc:Content-Type;
        b=TYoNnaq0fv8X4f6D0swEt3Aa4+rATBtdnWDQ2C/HrCRkHvJx8iwAfpiguvdj6Au9L
         +D6KXR0gLhbsFyxdp1GsFRbEUvVjqmsQLB9u1/ZNFJi/ZT/Y1ddUBZi/2ElmyRzWBI
         iyopdZHZwfWHhcqge9Klkp8zESLWsofLorhk0qBUKxH5eIIF52KlotfH8hpononLkG
         EvAQgGDAR7vxrcR5eshla1HsfrwMreKJjmUFfo7ikqvL2rhy4HnrBlPUysBUAN4QXV
         BAvMR8z+++sPg9x7jUZgJkdG7tDJhL1NlG98F59hULMe0cjKEAmFHYEziGCWRHGiFx
         ReafP8PAgO11Q==
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-3f4b1bebb9aso1624071cf.0
        for <devicetree@vger.kernel.org>; Wed, 10 May 2023 01:34:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683707647; x=1686299647;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LMsA6JxRTYWQXM4naAdveOz2WpVCJs1mzJM+iSTf9FA=;
        b=dkNosHmPOYsZDXEyGh8uQ8+cgxSmKBkX2Y7KFddo1uipung9n6+T1xyLsBUZsh0FmX
         vCJ7kaZhqkxQDtIkRCjm+xZLi12DO2sWboivbP3CM2i8oc6rVCt69ljQADs4W2XVF4TD
         Nn52KfFt91HZcEdlca0KNjlRGt9uJJsZ8PwcVUsMUSTHX8W8mGmr5NlgajlcNnzvSExE
         gH8D2Jk796TYdA2psALLK2pMNfAJ6OhVG287U4wZZgsax1wpGnpyT9oxuxBCTg3bPv7L
         rca3j/AHOtA8ajVALuQq2BVdtdwWcleibuX53aDVxYx0hWaOs0p72ABrtLy1Uoq5sl1x
         Qvpg==
X-Gm-Message-State: AC+VfDyxcE41VyklDkM88dQMjilR8qfn5O1o/bYbd2KXG7tue0zLuwCg
        9jNZpwOIPpc+MIseKjiauf9hPdeuLJ7mzR7Lb1LF1lhnpge8d6l9twjgREKT/9cp7eyOUsv5fIX
        lEkjQxbYoIkfbOZGPtBnB4XOTpKdNC9sCLmGhXGyU0OUPreNQXZcm5v0=
X-Received: by 2002:ac8:598f:0:b0:3ef:31c4:c8da with SMTP id e15-20020ac8598f000000b003ef31c4c8damr26087991qte.50.1683707647634;
        Wed, 10 May 2023 01:34:07 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ5DZCX5r73TwM0f7t4oRTD7Y8E8pM8uSWayhN2OzbxOG+SFBnhHTqvrbsOT/q3EKUIZc2ylBzrCQUO23z5q8NA=
X-Received: by 2002:ac8:598f:0:b0:3ef:31c4:c8da with SMTP id
 e15-20020ac8598f000000b003ef31c4c8damr26087975qte.50.1683707647399; Wed, 10
 May 2023 01:34:07 -0700 (PDT)
MIME-Version: 1.0
References: <20230506090116.9206-1-walker.chen@starfivetech.com>
 <20230506090116.9206-4-walker.chen@starfivetech.com> <a0932e84-3813-bbbe-762d-948d75fbcd8a@starfivetech.com>
 <20230509-overheat-pliable-00d60523637e@spud>
In-Reply-To: <20230509-overheat-pliable-00d60523637e@spud>
From:   Emil Renner Berthing <emil.renner.berthing@canonical.com>
Date:   Wed, 10 May 2023 10:33:51 +0200
Message-ID: <CAJM55Z9AxMVw=ymfFBb=45nODq89O8dMebzRgo-XD0GKduDBYg@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] riscv: dts: starfive: add tdm node and sound card
To:     Conor Dooley <conor@kernel.org>
Cc:     Walker Chen <walker.chen@starfivetech.com>,
        Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor.dooley@microchip.com>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 9 May 2023 at 20:05, Conor Dooley <conor@kernel.org> wrote:
>
> On Tue, May 09, 2023 at 08:52:48PM +0800, Walker Chen wrote:
> > Hi Conor/Emil,
> >
> > DT overlay is used to describe combinations of VF2 and hat.
> > Do you have any comments on this patch ?
>
> Up to Emil :)
>
> I seem to recall that he said at the linux-riscv sync-up call that we
> have* that he was not in favour of overlays for hats like this.
> I'll let him confirm that though, I might very well be misinterpreting or
> misremembering what he said.

What probably meant was that I didn't want a bunch of different device
trees for each combination board * hat. An overlay makes a lot more
sense. However, looking through the kernel tree there is a surprising
lack of overlays for hats committed already, so I suspect there is
some sort of policy around overlays already in place.

> Cheers,
> Conor.
>
> * https://lore.kernel.org/linux-riscv/mhng-775d4068-6c1e-48a4-a1dc-b4a76ff26bb3@palmer-ri-x1c9a/
