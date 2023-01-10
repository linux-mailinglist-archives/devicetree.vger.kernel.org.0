Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5F0D8663A3A
	for <lists+devicetree@lfdr.de>; Tue, 10 Jan 2023 08:54:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230094AbjAJHyx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Jan 2023 02:54:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237832AbjAJHya (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Jan 2023 02:54:30 -0500
Received: from mail-yb1-xb2b.google.com (mail-yb1-xb2b.google.com [IPv6:2607:f8b0:4864:20::b2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01C531EAC6
        for <devicetree@vger.kernel.org>; Mon,  9 Jan 2023 23:54:24 -0800 (PST)
Received: by mail-yb1-xb2b.google.com with SMTP id o75so11014464yba.2
        for <devicetree@vger.kernel.org>; Mon, 09 Jan 2023 23:54:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=M1HA+cUB8IN88uId3+2+zul+0QRsM4IYV5HaTxUg2o8=;
        b=ilvUVPx25OH3XNmE6VPoLRn6bqaJSPeWJn8Ir8cd9MgUZOAHsJycQV4sOLqd1+6DY4
         XAKhTVYNnLhSfK7NHNKM5MN7E7yEqTCioo6nbACSo3q80Si3AbmkAudS7SW6ZgswnsWk
         iW2E92oUtIv39FYjN79fSzAH+m58CCOmkR4i1kFWe7+1cdRaAfcBhlKw8zMCDGYPcIrh
         V6YlLvcehJNFbQpDjOJ0tjTWaTRL1GfbgFy+z2fwOLjQpeyyiPPpcwurTK6Dicw8mIyx
         ed3YFANM9iSdkO0SYBYEd+Oi6xmhfnendwnhLo886z3aeNWJfnQPqIOcrijwjLK+1vVM
         jCsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=M1HA+cUB8IN88uId3+2+zul+0QRsM4IYV5HaTxUg2o8=;
        b=VVJViaqrn0o0T60/CaPormqz9sDaKWjcuLd3YxCrfD0ysiAXHrn9nm8Xb9jZl3LeY7
         3PS/c75qj6PpNuO2kOQEm0Pum+H/WjkeW4wrYbMIy3T5sDEVa8TtMH/L6qYpuo2NQ58S
         /usN9FKHK7AtCL4xbTH0xUmrrMfSKo3sdnpXj4f8kjSarLNqu4pWi67B4n5EI8eD5Hk9
         RnjsJNLmKAbWNbSHmG7T3OSLyJvEbJmYpzj91DL1C1acvtTyP2fLVWFrO6LHOv/WOlzi
         MWKh9mSc8k6eB4ajE3yJQmJ29QuWrT6djXCG7v8/gyiZ1HgfVeJa6Tl06quhGPND+zmj
         W34w==
X-Gm-Message-State: AFqh2kqSvw7AGBzLxGKtbgygw+HZCQ9B63IowsurvnfpV+p6UxjvA23q
        QFnVwZV5OTk2a3rCT6ANJ1/uuGk0CwAMfUYdEdHT9A==
X-Google-Smtp-Source: AMrXdXuxq1hU1ANfE7x69zRH+at5knWFVgWEGqMr5dBQpesWF7B6/CJi/6pfxL4Ad9TNAlTVy08sM+TyJ/s2Y3KsRPI=
X-Received: by 2002:a05:6902:1817:b0:723:be61:1a2c with SMTP id
 cf23-20020a056902181700b00723be611a2cmr7642350ybb.130.1673337264115; Mon, 09
 Jan 2023 23:54:24 -0800 (PST)
MIME-Version: 1.0
References: <20230104021430.3503497-1-peng.fan@oss.nxp.com>
In-Reply-To: <20230104021430.3503497-1-peng.fan@oss.nxp.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 10 Jan 2023 08:54:12 +0100
Message-ID: <CACRpkdaBAc78_Z0-rVBdqNF0ejt4Gnk+i2SG04LL0YYM9Kb5TQ@mail.gmail.com>
Subject: Re: [PATCH V2] dt-bindings: pinctrl: imx8m: Integrate duplicated i.MX
 8M schemas
To:     "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc:     aisheng.dong@nxp.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org,
        s.hauer@pengutronix.de, ping.bai@nxp.com,
        linux-gpio@vger.kernel.org, kernel@pengutronix.de,
        festevam@gmail.com, linux-imx@nxp.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jan 4, 2023 at 3:13 AM Peng Fan (OSS) <peng.fan@oss.nxp.com> wrote:

> From: Peng Fan <peng.fan@nxp.com>
>
> The i.MX8MM/N/P/Q IOMUXC schemas are basically the same, it does not to
> have four schemas for almost the same binding.
>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> Acked-by: Rob Herring <robh@kernel.org>

Patch applied!

Yours,
Linus Walleij
