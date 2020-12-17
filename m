Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AA80B2DD644
	for <lists+devicetree@lfdr.de>; Thu, 17 Dec 2020 18:33:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728846AbgLQRcG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Dec 2020 12:32:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728432AbgLQRcE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Dec 2020 12:32:04 -0500
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 12B22C0617A7
        for <devicetree@vger.kernel.org>; Thu, 17 Dec 2020 09:31:24 -0800 (PST)
Received: by mail-ej1-x635.google.com with SMTP id q22so21310256eja.2
        for <devicetree@vger.kernel.org>; Thu, 17 Dec 2020 09:31:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=BRH0nNLIlpmjZsnoLyF+WIPiAVZ6XtEocGlFLxpMeW0=;
        b=OEUlRGVeZnKjUtgqBTQhGdax0DL+bK/jS6tYUHlCIwBtS+CnQD9hiehNK9J6fD2EbR
         WaEFwR5wiGDPMLednXfXQwIJkHbIHJ6qcvaV19PiQx/gI5MHc1/M+C/A+iL374B4WYfb
         prbR3vyLhPFo6A820EwUUosYFoD/RbUbUqE98=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BRH0nNLIlpmjZsnoLyF+WIPiAVZ6XtEocGlFLxpMeW0=;
        b=lQwQH2ScXtZ6ABBVRO/WD3SIW6M3/FioZKCZKk92IdUiX1G5ZoID4OUh2jjpCb+bh9
         AgjdWRW/OJ9qWPBgvaFkh09d4g0ziOrqA/t/7DFp+Kt+S5i6/0GCfNWehDLlVqiqa9vl
         BqfbRtxrmTSf1KNRExe6BQC4G79Xdc4ZXwYz+p1PO4iRkajfkd3bY5dmJmcpRzznx5/9
         TnPU5YeenRv4Xg9cYwTnQ1M7cbm5HGZLEHGSlK2wx9NHtYF8XiQN1GsHplazz5vwYz1K
         TSIUgYjBdNgHkfsthANrjky7Bq5HxYmGmmfBImo60YQAtH3i7KeNxh/zO6zWcqStcmTv
         6vuQ==
X-Gm-Message-State: AOAM531y5nP0QgMiLbG2vjyrgzBCqf4eyfpsKXehVh2X7s2q/OTBXFDd
        iHdaGVJ1Tw0Uw6pWrs071gEyNPeuQj7Q+sENYEJ8kQ==
X-Google-Smtp-Source: ABdhPJxYcR/ZaW8UNJh4As4nwhQnIZ55MyeoEoQ/SutBKacgHhcplYRiGf9rmZVU4Cw5h3zYv/wITf03jEIsaotrS7o=
X-Received: by 2002:a17:906:2707:: with SMTP id z7mr62463ejc.418.1608226282357;
 Thu, 17 Dec 2020 09:31:22 -0800 (PST)
MIME-Version: 1.0
References: <20201215235639.31516-1-adrien.grassein@gmail.com> <20201215235639.31516-2-adrien.grassein@gmail.com>
In-Reply-To: <20201215235639.31516-2-adrien.grassein@gmail.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Thu, 17 Dec 2020 23:01:10 +0530
Message-ID: <CAMty3ZBq_mUimNrK+SvVigKZwvWHogXD1_6HZnsuTK6Ze7qtNg@mail.gmail.com>
Subject: Re: [PATCH v2 1/7] regulator: dt-bindings: remove useless properties
To:     Adrien Grassein <adrien.grassein@gmail.com>
Cc:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        Troy Kisky <troy.kisky@boundarydevices.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 16, 2020 at 5:26 AM Adrien Grassein
<adrien.grassein@gmail.com> wrote:
>
> regulator-name is a generic property of the regulator.
> Don't repeat it here.
>
> Signed-off-by: Adrien Grassein <adrien.grassein@gmail.com>
> ---
>  .../regulator/nxp,pf8x00-regulator.yaml         | 17 -----------------
>  1 file changed, 17 deletions(-)

Please add pf8x00 in commit head, otherwise

Reviewed-by: Jagan Teki <jagan@amarulasolutions.com>
