Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 801033D45A9
	for <lists+devicetree@lfdr.de>; Sat, 24 Jul 2021 09:22:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234266AbhGXGlU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 24 Jul 2021 02:41:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234264AbhGXGlT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 24 Jul 2021 02:41:19 -0400
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com [IPv6:2607:f8b0:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD341C061575
        for <devicetree@vger.kernel.org>; Sat, 24 Jul 2021 00:21:50 -0700 (PDT)
Received: by mail-oi1-x232.google.com with SMTP id z26so4450768oih.10
        for <devicetree@vger.kernel.org>; Sat, 24 Jul 2021 00:21:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=YCIh3fMX63lUF8i5fYD8BvOZCJrvnxU7VR8u7cCIPkM=;
        b=F8KsU4oCjmUbDiG/44a1/9d/K1RSICyr8qRoUBatEcm2yuOnbH7x5u34aeTyoaGedf
         XspnhRRwzNL7+g4/Nx6pvKw6xYviqluCbfQMDZ6FKgnJwS48kDaZFoVynRZdK9Wuy2Kz
         TNqPsk76y8BVKooKPaYtVeGe7DdKKQnkt3Q0duAmpsRisp/WAw9balXiT9DlpU3OV43I
         aHFh0qKcNZuG1qHOCvcevEhEnjkx1YviTBbBqxeFr7PeZminYEs2vEQqG4fenEMeByTW
         m0LX5Krh3ZG5XzrPwf0n85LySwF2henr06R0Fr3gGC8nvwjzVmc7MFh35mb8k+e4PXmk
         WBRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=YCIh3fMX63lUF8i5fYD8BvOZCJrvnxU7VR8u7cCIPkM=;
        b=jXJnLMo+tzkJJ8PdYhzHFdu3OSLf+N9THnRL77M8vN0PDkbbBkpiXwGTPcxPGCHWZH
         SNFEDTShQhcWPaOi+oZmeV2pC43i8SSD5LJLQ0SrgeOzQB88tZeQjELLHVMMwy9sC/lZ
         dks55pJyOC2w7OfRULwKmlYRhaMcjLDjL4b3eSPOHuyJIUSucQBz70Poh8lwwe4AHyUR
         Bzal+XbmYMVhATzrGgEM+xb27ZMQR+oaqv9Dz5maRPgeLfIJTmjO1BMb486+8Elv1FbY
         spTp0hB/iEiauIJKu1ZPO+fx14fEaOsKh2pDh21bDUGqAkZxnRXMdX5t05Qee6dKVNU0
         TzUA==
X-Gm-Message-State: AOAM530vY8lXPRUdhRL/bON+lQKhjj4ORnVT9t03eZMRLKHS4oVfgE7Y
        5sLPN/UKvEfQYqkJyx6/YH08K4cVThzsLCxfez/68g==
X-Google-Smtp-Source: ABdhPJx2xQLq56xZ6EcRh66jo509CDGGbajlVjK2lo9Espbwz0WE2eEyyxbA+1wnATCEeMJ9qDOhrzNjdfKPytQAOmY=
X-Received: by 2002:aca:af10:: with SMTP id y16mr10638074oie.12.1627111310129;
 Sat, 24 Jul 2021 00:21:50 -0700 (PDT)
MIME-Version: 1.0
References: <20210629123407.82561-1-bhupesh.sharma@linaro.org> <CACRpkdacTi-9YzhOqpfFkNhzSATmbWHs=wMoJcsXwG8pBeW7Mg@mail.gmail.com>
In-Reply-To: <CACRpkdacTi-9YzhOqpfFkNhzSATmbWHs=wMoJcsXwG8pBeW7Mg@mail.gmail.com>
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
Date:   Sat, 24 Jul 2021 12:51:38 +0530
Message-ID: <CAH=2Ntxk5NdcPCsOD=SRyFFKrgtUqOxV2UpuJP21W-dpaPHrrQ@mail.gmail.com>
Subject: Re: [PATCH v4 0/4] pinctrl: qcom/pinctrl-spmi-gpio: Add support for
 pmic-gpio on SA8155p-adp
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     MSM <linux-arm-msm@vger.kernel.org>, bhupesh.linux@gmail.com,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Linus,

On Fri, 23 Jul 2021 at 21:51, Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Tue, Jun 29, 2021 at 2:34 PM Bhupesh Sharma
> <bhupesh.sharma@linaro.org> wrote:
>
> > Changes since v3:
> > -----------------
> > - v3 series can be found here: https://lore.kernel.org/linux-arm-msm/20210617053432.350486-1-bhupesh.sharma@linaro.org/T/#m2b1bf2d32dfdde3196dc5342722e356ee1f87456
> > - Rebased patchset on pinctrl/devel branch.
> > - Added Reviewed-by from Bjorn for patches 1 to 4 and Ack from Rob for
> >   patches 1 and 2.
>
> This v4 patch set applied!
>
> Sorry for taking so long, I had a bit too much to do.
>
> Excellent work on the patches Bhupesh!

Thanks for picking the patchset.

Regards,
Bhupesh
