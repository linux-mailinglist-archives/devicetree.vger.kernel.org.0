Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3FBF24777B7
	for <lists+devicetree@lfdr.de>; Thu, 16 Dec 2021 17:15:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235883AbhLPQPO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Dec 2021 11:15:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40996 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239221AbhLPQPO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Dec 2021 11:15:14 -0500
Received: from mail-ua1-x930.google.com (mail-ua1-x930.google.com [IPv6:2607:f8b0:4864:20::930])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0446CC061574
        for <devicetree@vger.kernel.org>; Thu, 16 Dec 2021 08:15:14 -0800 (PST)
Received: by mail-ua1-x930.google.com with SMTP id p2so47981129uad.11
        for <devicetree@vger.kernel.org>; Thu, 16 Dec 2021 08:15:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=3ywxY5tdrdps9fttgpayP687vhVuBUauIZe1xmCWLRU=;
        b=tSpNkwVAUK+mf59orsKdbzn/4affyJHuYn8LmGSLh54mNq2jfSoWELqf7qOeGGaoz5
         gFDtMf8RhnbMB20y/XbioaY5TL3NOVGtDROt5SQP2EnyFHGw/8GQz/ETqF8sPU0q53UY
         bwwvtTOX/qwd8GHbCQPTsJpgNb4xAVDK3dlVs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=3ywxY5tdrdps9fttgpayP687vhVuBUauIZe1xmCWLRU=;
        b=Pc67s/y6g7d8XXZVKOlRjAlNfb4E1DJGSk5fg3/uyZScZ3+/aWLVovJyyidgbJ7koq
         XWkVWJShClGu4/xZgB42DdOrLU8ZT86sWGYZakKY6klVXSnDJznH7PFURRqeiPdaRyOW
         bOcNsyw8TreVAAO/QppeamfZzfdbTHifn53VRE5R/8XNzc5Ck4tlTv0ACHCI1ZBA9zc8
         c4eBUO2RdUrqHWUY7fUAGP4fKtIkT7ZXOWc3jp3uuTS9kK8flUHFq6IjwqY59zTpA/t/
         ZSSt4WWMt8tHRXgNKGrvN0H7R6yv4cXPK7TY87jzSFptfTlGu4iK/iXYDeGlrbvx3geP
         fxZQ==
X-Gm-Message-State: AOAM533dioIw5/UV2T+2dNNGs+Tjf8slJM1norA85xJO7nAyrCz1neNS
        XWjGKcBwzU5iEQQRAOJNXuWHqKG68oHLCvVw1lqGEg==
X-Google-Smtp-Source: ABdhPJxduTFNOMMXRodhEvw01iqWoZkcDRli6ZrQmghTHAkiqkZtC2PFQC4DFVKQDk9OOX8iYZXGR7WIP5K87LJ8Yfw=
X-Received: by 2002:a05:6102:3a0c:: with SMTP id b12mr5830681vsu.48.1639671313049;
 Thu, 16 Dec 2021 08:15:13 -0800 (PST)
MIME-Version: 1.0
References: <20211216105246.3548133-1-daniel@0x0f.com> <CABgxDoKJRc_qORcpFx=eNPS=bGV68hPrbeH0VtcQ2Jjx2ruqmg@mail.gmail.com>
In-Reply-To: <CABgxDoKJRc_qORcpFx=eNPS=bGV68hPrbeH0VtcQ2Jjx2ruqmg@mail.gmail.com>
From:   Daniel Palmer <daniel@0x0f.com>
Date:   Fri, 17 Dec 2021 01:18:17 +0900
Message-ID: <CAFr9PX=AAssT1imCfpU_piGBOemD23RGBZzngznyia-4TXrK=g@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] ARM: mstar: Initial Miyoo Mini support
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

On Fri, 17 Dec 2021 at 00:53, Romain Perier <romain.perier@gmail.com> wrote=
:
>
> Hi Daniel,
>
> Le jeu. 16 d=C3=A9c. 2021 =C3=A0 11:52, Daniel Palmer <daniel@0x0f.com> a=
 =C3=A9crit :
>>
>>   - I've left the link tags as-is as using them for linking
>>     to background info seems acceptable.
>
>
> https://www.kernel.org/doc/html/latest/maintainer/configure-git.html#crea=
ting-commit-links-to-lore-kernel-org

The explanation of Link seem to have been updated recently in
1f57bd42b77cdc4b8e05ba9f4417872a6691b66d
(https://www.kernel.org/doc/html/latest/process/submitting-patches.html#des=
cribe-your-changes
a few paragraphs down).

My reading of the paragraph since that commit is: Explain what the
commit does in the commit message. If there is a bug that prompted the
change then link it. If there is some background for the commit then
link it.

If it needs to be changed around I'll do that but I personally think
it looks nicer. It seems like the right way to provide links to
datasheets etc without putting a bunch of long messy urls into the
commit message.

Cheers,

Daniel
