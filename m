Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D938A34AE87
	for <lists+devicetree@lfdr.de>; Fri, 26 Mar 2021 19:27:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230106AbhCZS0s (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Mar 2021 14:26:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46654 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230026AbhCZS0j (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Mar 2021 14:26:39 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7D2CC0613AA
        for <devicetree@vger.kernel.org>; Fri, 26 Mar 2021 11:26:38 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id f16so8515547ljm.1
        for <devicetree@vger.kernel.org>; Fri, 26 Mar 2021 11:26:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=dsV+/461uL86RBQXWt+O3MOKcum8LIWw0YCOchxb7jY=;
        b=deeMKQO9NpE0tgnfdv6yiLMIK5zfO75TRuFpLhkw6QIe/3ig3PBApWMeoEqbKESVZ7
         k+pA7mixze//X7gdrslvsopfdh6uYLETeWijY4vTICh6Kf6rJRvLSXV/ldluJWwXvbYI
         qp8SfaYQyHvJoxpd6XdoN/bP13wEFxLfp7gfdIBYava2U6zXVf3qaZ60bRX374KPTgHi
         qUdhKCgJY+eSoL74nJyABL5ThNccmdsFsJ4jXP3ftUiHBhfLKIB1wn12ZUXiltchP3QR
         va939UOcxEP5jA+qGfCHAckQYp3YSWyTwx8IjdgFiZIIKPwmJj8+hYII54yuhuDZgSei
         m4VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=dsV+/461uL86RBQXWt+O3MOKcum8LIWw0YCOchxb7jY=;
        b=JiJhAvO4KNz5cg2zpz0La3cNzCAwlzIidwFVOE6BeeDFO1l5Y3/ysc93kwRMIw8ojd
         qrY7QIS9zNNouJG/h9HTfnq5kMgXr+F8g5p3uLwjLc6k85yO3fi9cRXBewb9AFGNbFvi
         wS8SUHBAsv28du7kt3vGZF0i99/f2/cE0Mu/kvppp6DajmJoYG1+EHq6Q2cLrLYE/WcY
         WektnJ5vhdruDdICIJcZ1W0NgmAmE2tNXzM1WsUMH8LwFBSAuxCviCmbCOuWrRp/asqV
         LwKp1QmhD297KDEJwuzDurKWFw+fB5wQRoKTsGOt2oA7aykbgFMiJjCtmmSkH2Ro39Ce
         5pHA==
X-Gm-Message-State: AOAM5324/SW4jIod3tF1m1T67mHCi4q4UFwozcckeqwsh6TQvk1ZIsym
        fIX7MzEC3FQqIBd+DZjbKLdV6XzeZb6nKJseIeH282F0MPY=
X-Google-Smtp-Source: ABdhPJzpxAIiyVqHYMtj4EB98Qg03zqyniRewUWWa2gRQD/91hp6S9fXHx+UGalLCWrN1Er7IdXu1prvLCEqlpmTz7o=
X-Received: by 2002:a2e:701:: with SMTP id 1mr9500098ljh.264.1616783197321;
 Fri, 26 Mar 2021 11:26:37 -0700 (PDT)
MIME-Version: 1.0
References: <20210326142459.30679-1-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20210326142459.30679-1-u.kleine-koenig@pengutronix.de>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Fri, 26 Mar 2021 15:26:25 -0300
Message-ID: <CAOMZO5DXgZeEk3sA-ZFpDPLn8oGf+RNSY0OWNe5pyzHGhOpaNQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mp-evk: Add i2c bus driving the PMIC
To:     =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>
Cc:     Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Uwe,

On Fri, Mar 26, 2021 at 11:25 AM Uwe Kleine-K=C3=B6nig
<u.kleine-koenig@pengutronix.de> wrote:
>
> There is no binding and driver for the PMIC itself, but making the bus

What about the commit below that landed in kernel 5.9?

commit 0935ff5f1f0a44f66a13e075ed49f97ad99d2fdc
Author: Robin Gong <yibin.gong@nxp.com>
Date:   Sat Jul 4 00:19:35 2020 +0800

    regulator: pca9450: add pca9450 pmic driver

    Add NXP pca9450 pmic driver.

    Signed-off-by: Robin Gong <yibin.gong@nxp.com>
    Reviewed-by: Frieder Schrempf <frieder.schrempf@kontron.de>
    Link: https://lore.kernel.org/r/1593793178-9737-2-git-send-email-yibin.=
gong@nxp.com
    Signed-off-by: Mark Brown <broonie@kernel.org>
