Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 150873B1210
	for <lists+devicetree@lfdr.de>; Wed, 23 Jun 2021 05:16:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229774AbhFWDTF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Jun 2021 23:19:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229907AbhFWDTF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Jun 2021 23:19:05 -0400
Received: from mail-io1-xd2d.google.com (mail-io1-xd2d.google.com [IPv6:2607:f8b0:4864:20::d2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84A97C06175F
        for <devicetree@vger.kernel.org>; Tue, 22 Jun 2021 20:16:47 -0700 (PDT)
Received: by mail-io1-xd2d.google.com with SMTP id k16so1565552ios.10
        for <devicetree@vger.kernel.org>; Tue, 22 Jun 2021 20:16:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CNHvzLf0dcW/N6FElJHvK7pa8tblzF8RnikMkbRhgqc=;
        b=KQwcWOid5Pg25LdxM1xepkGdITvCc6T4J2R85mmaB7bkIDgEu1T3tUPqT8MEy5vA9h
         awLokaFnKYGx8ttgdD3eDRN6oRIVYzaJop/uieA9G8GVKWcwTsUdlzIhGG/4/KJOod/C
         nGRb+nO7RJRfdqUn6xsuvR1kT7ydpHkprJjZj5dfbLya73340P2sXFpIprDJxL330aet
         6G/IAqswlGR2LuzlgMxhl+IW4O4MVkM0ciptxyZkbtzCxGlYvo5gFgA6cCpVHOraGigP
         KBai2YEbQRC/28ruDaE/G+JaQ+pvYiGypu2zLop7AlD4MD7Hu4vAagJyIms4YAp0ZuWM
         PJDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CNHvzLf0dcW/N6FElJHvK7pa8tblzF8RnikMkbRhgqc=;
        b=JOLlmjdnAZalkgO3dP6st9ipcgQYTG3ik0IoqG5Al1qvEvGXqp6e6Twh2QkCmmn1Ac
         Xa1nBHIxpWmj2lIoYyW5WBTc9tijYFUfof5LAKuDd+sTXKzwo9RA2Yh5t5WcEzpIqvqX
         msb0WHtQmWJs8WNaYPGRp4ALBRlYnWQWol2MUbfdIRE+yJ9dpYsn9m2/FkpJyBhWEJmd
         luv0Z2ikniPLfOhoGWbTf0tdJuCV/8KjWAIufrR5SgBJ4yTCus+Es86N6JIJLggg37Xg
         Yz7/PEqCGAC2k2oWBt1ODhxYXHw5ECvhpnfSKjWhjxAGkpHEdAsT65BHgQHfAKf+lJd/
         z5zQ==
X-Gm-Message-State: AOAM532MgNdr6HucuIBIGwPPFvcMFTS69UNviZXhcClTkNxeN1bVuPcG
        dq6CGAaWZWLgKlVaAPVotdjnNJkU9yv+iHdpOHF7qQ==
X-Google-Smtp-Source: ABdhPJzuf9M76T2J4lfBD21OSbpR4YazJiU8J5HoMfr50/3o7cqXmpWlJ0s7vQ3MoUekR+xDG4MYOY7ygI26fPtNhGk=
X-Received: by 2002:a02:cc04:: with SMTP id n4mr6934723jap.50.1624418206565;
 Tue, 22 Jun 2021 20:16:46 -0700 (PDT)
MIME-Version: 1.0
References: <20210622150917.29137-1-Christine.Zhu@mediatek.com> <20210622150917.29137-2-Christine.Zhu@mediatek.com>
In-Reply-To: <20210622150917.29137-2-Christine.Zhu@mediatek.com>
From:   Tzung-Bi Shih <tzungbi@google.com>
Date:   Wed, 23 Jun 2021 11:16:35 +0800
Message-ID: <CA+Px+wX+HatxQVhsfFG2vHfCL9-kVTHVsCyB1=SbhinqaTKfgA@mail.gmail.com>
Subject: Re: [v2,1/3] dt-binding: mediatek: mt8195: update mtk-wdt document
To:     Christine Zhu <christine.zhu@mediatek.com>
Cc:     wim@linux-watchdog.org, linux@roeck-us.net, robh+dt@kernel.org,
        matthias.bgg@gmail.com, srv_heupstream@mediatek.com,
        linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, inux-kernel@vger.kernel.org,
        linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        seiya.wang@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jun 22, 2021 at 11:10 PM Christine Zhu
<Christine.Zhu@mediatek.com> wrote:
> @@ -13,7 +13,7 @@ Required properties:
>         "mediatek,mt8183-wdt": for MT8183
>         "mediatek,mt8516-wdt", "mediatek,mt6589-wdt": for MT8516
>         "mediatek,mt8192-wdt": for MT8192
> -
> +        "mediatek,mt8195-wdt": for MT8195
nit: would be better if it still reserves the blank line.
