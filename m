Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C8011430534
	for <lists+devicetree@lfdr.de>; Sun, 17 Oct 2021 00:15:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244709AbhJPWRi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 16 Oct 2021 18:17:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244710AbhJPWRh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 16 Oct 2021 18:17:37 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F5F8C061767
        for <devicetree@vger.kernel.org>; Sat, 16 Oct 2021 15:15:29 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id o11so978124ljg.10
        for <devicetree@vger.kernel.org>; Sat, 16 Oct 2021 15:15:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=bWD1Wot4CiOZ5+nEEfKw3QurPlGi9CMDSa71U1t30+g=;
        b=IFM6ftu/K+rQCjJ2/RcVxwyvUdSlM2Md5Xbkm9vIoAkL0ZnaM3wk2YhonAjG+GMsTT
         o9lJwnq/rmMx9en1D1Z12Fbxvu53+CQZuyXgtQKM6RfWp1H9Pz3NWA74iL5sLWfsDrNC
         I73KCwAMn+p57HpNRZwtt9Iukx5z0L7Ltcqiw6Hmw7/HrsDKAHbegsI9nKq03GRAAZsm
         xaF7g2I3r0S6iDAkuQYK8jen+42FtM7HOiWZ+IUu8SfjY0wBAhA35yxSPc7SewGce8gP
         nRrejWkEWROopQn5fpLbvw5SOYC1CIt4El+8gNM3v8LuC2uuChD/XFv8O4YP7rVbuTkg
         lAzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bWD1Wot4CiOZ5+nEEfKw3QurPlGi9CMDSa71U1t30+g=;
        b=6O6c6fItcdNrhjt+HqCk7V+UOObJVurTvB+LNzAnYiRJTcRMZFZP1L02xDloSFPX+w
         DvkeKG+m6y5KH+4FcRGI5nnCDtqTSLq6+ZBLrTbOFCmSWrh/2PxBeoCaZQ7rbDKXJ5T6
         NT0HiYh5zTy9+vLuzg8BGgJbhdImOqmRudHrKf29RUXJdjVnB2qDTGOKSlMn2THDTK+T
         IWQJrQeqvF9j/whwp6N1vz4RftKCB9DZ/V71aH4sGxmrShx6R62A1rwB0MJyRe1VC0E2
         9Tqkt/tl3+GYJjD4r+s4LDP6d5LtY/cda1ayDSrwM8ry0nH0uGWT+GQSJ1LZF0K0cQn5
         WX3A==
X-Gm-Message-State: AOAM533rL+evxoj9/WwNn0E47mkWjpE2PBbLS6G+cpXXcVn9FRLIIJ4F
        UkUECmLDlEtdd8Hiop6etZAexX03J4oDULQDUmb9bg==
X-Google-Smtp-Source: ABdhPJzsvOIyKWJIPutTL9ipXbUxr8NKxnWe525hIO2sQaIGZxZYcmi2kIQf6tU76Sr0i+hc/mAvbIxzc/BitbUElDo=
X-Received: by 2002:a2e:b748:: with SMTP id k8mr22367942ljo.358.1634422527329;
 Sat, 16 Oct 2021 15:15:27 -0700 (PDT)
MIME-Version: 1.0
References: <20211007144019.7461-1-jbx6244@gmail.com>
In-Reply-To: <20211007144019.7461-1-jbx6244@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 17 Oct 2021 00:15:16 +0200
Message-ID: <CACRpkdZOvRjH4OuB=gwFBZj_kXt96dyX-DjK0HNjpV2fC36rLA@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: pinctrl: convert rockchip,pinctrl.txt
 to YAML
To:     Johan Jonker <jbx6244@gmail.com>
Cc:     =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Oct 7, 2021 at 4:40 PM Johan Jonker <jbx6244@gmail.com> wrote:

> Convert rockchip,pinctrl.txt to YAML
>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

Patch applied to the pinctrl tree for v5.16.

Please merged patches 2, 3 into the Rockchip tree for
the SoC tree.

Yours,
Linus Walleij
