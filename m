Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AAF1732AB6E
	for <lists+devicetree@lfdr.de>; Tue,  2 Mar 2021 21:31:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1446241AbhCBU2H (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Mar 2021 15:28:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50952 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1448649AbhCBPdm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Mar 2021 10:33:42 -0500
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD09CC0698C3
        for <devicetree@vger.kernel.org>; Tue,  2 Mar 2021 07:29:06 -0800 (PST)
Received: by mail-lj1-x22d.google.com with SMTP id y12so11510682ljj.12
        for <devicetree@vger.kernel.org>; Tue, 02 Mar 2021 07:29:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=LCwQhqE9NkoRHlHwO6Fmc47EHLE3N6sGTOQ1yFKT36o=;
        b=Px3dXxEpwKxyAHKEvzvnYWBM0KZXBnBuCM/BtUAWJBWMLnWk6lOZ8pi0Gz7Met1TId
         aT57pJgcHmsiNh8w/Fq3eWCR56/3/dTM3OifHpMO5WuEGqk9ThWaAaAFK7aP7RkqfRrK
         h4Dsj2Glvvoa+F8dJDS6xLK8jWTOLlRSK4qDLldlVEk5V2CJiXLhzru36Fv0IzGycuGT
         a6T7hbeh0bwTZ+37RxzGJEjbDxhkqE/lJFK6+waZIspLxTjNlvBk9c/mARsveZoa9T8V
         ofwVTxorf7zso/aVER27KBtJ5KZ2goi5SROzfGvlh4JtOyl8yQFLY1nuwRgfZWnrCJe3
         Y4mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=LCwQhqE9NkoRHlHwO6Fmc47EHLE3N6sGTOQ1yFKT36o=;
        b=qZg3MuFe5EHJX1rcxi9FEHJ+P8dF77k/SiHCOUx4hpy7vgBfD29WoHz7V05flYKG0i
         2qKe9Au6pplUjxCWIj6of4SCOOBwn+JNmq8h9JFiPoqglhmbLHRwXV01vieyDDxx/7gc
         A4rBa3ILJFRgT5FggAs22QBWn1ajeB81Fv5y6e03K6t9trWfX1/DlRuhl9awPKUqnvsF
         l4Ke2kZo0lTuurwfN84s39ckNQ09laUHcOMw/YYJZNwmwg37l5H9LVBYqK20UUQHL1om
         SXLSirLZb+doCbyhKN57d3xgJwDzpDfb5Z350zlltraAK+We7M5cCMEwSCnPdQeilUZo
         wXMg==
X-Gm-Message-State: AOAM530OXzYzNwKIIAiZSjy3g1v3j0uIHZbTkvHTeiaaCDfnDU5BXZaW
        uSjha5f8svwRV9RU/1b1mY6n9Tgeo2Rmmvsw3yio2A==
X-Google-Smtp-Source: ABdhPJy9mNgWIuNzMd1S+ztjRGu8pwsStRN881pmfjS/D9xzv0ch+hdfcQ/S4mujmCBVqvAyOFCFu5FSAgGrbuXhlEY=
X-Received: by 2002:a2e:864a:: with SMTP id i10mr11926918ljj.467.1614698945418;
 Tue, 02 Mar 2021 07:29:05 -0800 (PST)
MIME-Version: 1.0
References: <20210225164216.21124-1-noltari@gmail.com> <20210225164216.21124-11-noltari@gmail.com>
In-Reply-To: <20210225164216.21124-11-noltari@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 2 Mar 2021 16:28:54 +0100
Message-ID: <CACRpkdbuOJUjvmJ2STzfT+2JHCC9UpGnD4LuBYRFO3BEv=CsiQ@mail.gmail.com>
Subject: Re: [PATCH 10/12] pinctrl: add a pincontrol driver for BCM63268
To:     =?UTF-8?B?w4FsdmFybyBGZXJuw6FuZGV6IFJvamFz?= <noltari@gmail.com>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Jonas Gorski <jonas.gorski@gmail.com>,
        Necip Fazil Yildiran <fazilyildiran@gmail.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Feb 25, 2021 at 5:42 PM =C3=81lvaro Fern=C3=A1ndez Rojas
<noltari@gmail.com> wrote:

> Add a pincontrol driver for BCM63268. BCM63268 allows muxing GPIOs
> to different functions. Depending on the mux, these are either single
> pin configurations or whole pin groups.
>
> Signed-off-by: =C3=81lvaro Fern=C3=A1ndez Rojas <noltari@gmail.com>
> Signed-off-by: Jonas Gorski <jonas.gorski@gmail.com>

Same comments as the other drivers :)

Yours,
Linus Walleij
