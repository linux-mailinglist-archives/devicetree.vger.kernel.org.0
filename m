Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 557E63D3D13
	for <lists+devicetree@lfdr.de>; Fri, 23 Jul 2021 18:04:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229510AbhGWPYI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Jul 2021 11:24:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57034 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229967AbhGWPYH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Jul 2021 11:24:07 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 22617C061757
        for <devicetree@vger.kernel.org>; Fri, 23 Jul 2021 09:04:41 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id l17so2321479ljn.2
        for <devicetree@vger.kernel.org>; Fri, 23 Jul 2021 09:04:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=kZLoHb00e/f2uvt6VDNXJoTXgrvoGciw5eKO7Rkag8U=;
        b=J57dd99fueJo0Ewd/FRALzk6FomUTPkmWz2HZ4Gi3VfLL89dwVw5CqFoJqS6jtDU2S
         nIuHNd7IrBsbhH5UO7LrRS3k2VNPhFpQu1zVqTMzMWMh1X8AjlCPaq1++OG5y1aEzWvw
         AsTNBoTFTzRjw7XhLopXN0C6O3Qt53DlWZEuD9+SIYZLJCz0IjuwyLKZDYnUl/455bcm
         IXEIlKhkBsx/mWN3pA3la9JamMKa1FH2dmmvEQoo/T3wHotL/jObVoU1C5tPsqxlnxZY
         g3jdTxgTeetP70wta3dJpyADgkLCgl13xN/uAdfkHOiLAx7pT0ndxjZi8FSZe+v3de3l
         xclA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=kZLoHb00e/f2uvt6VDNXJoTXgrvoGciw5eKO7Rkag8U=;
        b=q+R50G6OlRtjUyVwHCAWlcGO7vt56QJ8HlgK6uQ1ZZDcdSv0x362tCCcxxl/GFLG54
         eb9V8QSBC83mhy6xmuAe/vWBIW/UM4YlsJGRlh/re0NhqsaxZUAjuKz+gqJokANstKij
         7C1eodsahp5koHqB32ZYloCjaqN2N4aNrBjU0JINR4fPyzF/jqNAWdfFZkQTJBvf6sDG
         GuCp907Ml5xQ1MVnn1qq1jvdWQ8VQonMyogWgnA+t1RyEZrXmwgZL4PtV8zq+W/zsR1Z
         AGlMzTJsmqF1jtrJ/CFn9v2H34zmtavU3DsI3cDT3e0Hq+vtrNbGB6YSRAD+SEeht0RN
         wONQ==
X-Gm-Message-State: AOAM531Eo4UfX7u02rEbT45Plrr3LlGR4TrAs7VqXjHCQH8ockf9ylRb
        QZK+Taul0j8/y0JWsv+OPDoNDRoX1eyh1bxk8H9Dlw==
X-Google-Smtp-Source: ABdhPJzo0PSYV15eT1qrz5sHyw5iPO4XGjMebwCKucdy2PFnKayrx6kV3CaDbrwwYX/zYhX7EUChqcq6g8MKzHPVFMQ=
X-Received: by 2002:a05:651c:160e:: with SMTP id f14mr3794529ljq.273.1627056278976;
 Fri, 23 Jul 2021 09:04:38 -0700 (PDT)
MIME-Version: 1.0
References: <20210607061041.2654568-1-ping.bai@nxp.com>
In-Reply-To: <20210607061041.2654568-1-ping.bai@nxp.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 23 Jul 2021 18:04:28 +0200
Message-ID: <CACRpkdYeGJvRM7g_2E174NXWv+hqS0wY1PJouQbfu1_sM0B4WA@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: pinctrl: imx8ulp: Add pinctrl binding
To:     Jacky Bai <ping.bai@nxp.com>
Cc:     Shawn Guo <shawnguo@kernel.org>,
        Dong Aisheng <aisheng.dong@nxp.com>,
        Stefan Agner <stefan@agner.ch>,
        Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Sascha Hauer <kernel@pengutronix.de>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 7, 2021 at 8:00 AM Jacky Bai <ping.bai@nxp.com> wrote:

> Add pinctrl binding doc for i.MX8ULP
>
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>
> Reviewed-by: Rob Herring <robh@kernel.org>

Patch applied!

Yours,
Linus Walleij
