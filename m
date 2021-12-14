Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A1572474727
	for <lists+devicetree@lfdr.de>; Tue, 14 Dec 2021 17:09:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231494AbhLNQJh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Dec 2021 11:09:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56234 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235522AbhLNQJg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Dec 2021 11:09:36 -0500
Received: from mail-ua1-x92e.google.com (mail-ua1-x92e.google.com [IPv6:2607:f8b0:4864:20::92e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E5EBC061574
        for <devicetree@vger.kernel.org>; Tue, 14 Dec 2021 08:09:36 -0800 (PST)
Received: by mail-ua1-x92e.google.com with SMTP id ay21so35620780uab.12
        for <devicetree@vger.kernel.org>; Tue, 14 Dec 2021 08:09:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=X4/dmy9KlF2y5J8EBw2nTz9iMP7ZTiT3R0zWWUj0jJ0=;
        b=fUR1nww9UxFYmuXB4VhCfDVMvZPHIfpDFY468NczY0yq+uzcuvaTZ51tPOE/c3zw5S
         mXOFLAAomKRvcbMx2FIBifF9rjvpHwcY3kw9myiONfCdzDGdSBZWZTeHiuuU1Cv5nxr6
         yNVK2+olJPP+ee0ftFjiYic+ttNzPDAXt2iZ0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=X4/dmy9KlF2y5J8EBw2nTz9iMP7ZTiT3R0zWWUj0jJ0=;
        b=qp94/ZlERzciS7aT3wPygJPXqOZRNIfoPjTaQkLvp0mL7F4eyKhnpUsLTUiFghZiBU
         KkMMU0t57S2hZXmaAmAjGcDW96mwfk9itWgAupsZembqPs+IIDHptqT+zn4zOr1LWBdg
         pzEd+9nycgUEkOcOO14/PwBr/Ror9k+onNkVkAbeg6QJUAaHpJf+tMT8RVOIu4vJIQtq
         qEUeSvLwQvjzP8Dw3WroybILeHRzUt5LUShBLHR+ugMO+E47SWlFUb+oMWMsBTft3BQb
         0YSrZPRKfYYrUtAzAltdZQf7IeXYxWRfbGs82CMMW4NSYdoPymtfLM12dnfJi/gqS12q
         Yv3g==
X-Gm-Message-State: AOAM531dOXnqlc9PhULUYOWBW3LVNYAsEcBoTeFy2lJKWG1sx8ftjsQU
        195D4YC1J6EnbQbDqyL8XM+8r8Nr6KUodw4oVyKkVg==
X-Google-Smtp-Source: ABdhPJx5J7/CFvA9cSKERMhPB9uz6KDyk3QRneBpXxMm88syPU1qmaFmnztQmTg3u9wMfwYY+Jub4VxAAlp+KKEM2bc=
X-Received: by 2002:a05:6102:3a0c:: with SMTP id b12mr5705909vsu.48.1639498174752;
 Tue, 14 Dec 2021 08:09:34 -0800 (PST)
MIME-Version: 1.0
References: <20211213100112.1791192-1-daniel@0x0f.com> <20211213100112.1791192-3-daniel@0x0f.com>
 <CABgxDo+8VK+HQVfts6gxLnm1xW5fBog5rEfvoLN+tjk6KYwMTw@mail.gmail.com>
In-Reply-To: <CABgxDo+8VK+HQVfts6gxLnm1xW5fBog5rEfvoLN+tjk6KYwMTw@mail.gmail.com>
From:   Daniel Palmer <daniel@0x0f.com>
Date:   Wed, 15 Dec 2021 01:12:37 +0900
Message-ID: <CAFr9PXmihQSeDagG7Yt7kfvpJxurjiLsnPPB68uvKbQh52m7eg@mail.gmail.com>
Subject: Re: [PATCH 2/3] dt-bindings: arm: mstar: Add compatible for Miyoo Mini
To:     Romain Perier <romain.perier@gmail.com>
Cc:     devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Rob Herring <robh+dt@kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Romain,

On Wed, 15 Dec 2021 at 00:07, Romain Perier <romain.perier@gmail.com> wrote=
:
>> Signed-off-by: Daniel Palmer <daniel@0x0f.com>
>> Link: http://linux-chenxing.org/infinity2/miyoomini/
>
>
> 'Link:' should not be used for that purpose. Usually it is used for refer=
encing discussions
> or patches on lore.k.o . This is typically what I used in the last pull r=
equest I sent to Arnd for 5.15.

I sort of remember having this pointed out somewhere else and then
looking at the text in submitting patches and thinking it background
info seemed to be what Link was for with the note that if it's a link
to an on list discussion to use a link to lore:

`If related discussions or any other background information behind the
change can be found on the web, add =E2=80=98Link:=E2=80=99 tags pointing t=
o it.
....
When linking to mailing list archives, preferably use the
lore.kernel.org message archiver service."

mmm I need to send a v2 anyhow as I messed up the vendor prefix commit
so I'll move the links out into the message.

Cheers,

Daniel
