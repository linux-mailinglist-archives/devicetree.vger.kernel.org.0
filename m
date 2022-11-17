Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3397F62D653
	for <lists+devicetree@lfdr.de>; Thu, 17 Nov 2022 10:19:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234699AbiKQJTl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Nov 2022 04:19:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44360 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239478AbiKQJTl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Nov 2022 04:19:41 -0500
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B86911162
        for <devicetree@vger.kernel.org>; Thu, 17 Nov 2022 01:19:40 -0800 (PST)
Received: by mail-ej1-x633.google.com with SMTP id n21so3485937ejb.9
        for <devicetree@vger.kernel.org>; Thu, 17 Nov 2022 01:19:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=tE554iAjQ7h+EY98fG7iQCp1+WR6gTDY9R3izQaYbSM=;
        b=RJhyPa+0sTKDvMNQhGaUZE84gU7cSwkIKl8kF/HVjWq5Kj8MIaUnjuF3vLeI9zmqt5
         S4s2/BXDCeR0toJbwvrndR8Rf5UdjyCQum80hnZc7NVvKmoSa674I2uUdmUvlens85Oh
         4IEcYGdVLztzhbGbHqk1ZEtp/QFDREZj6FTRUqRKGVlXFCjQljGRgSSASkya/Vzc8HYK
         VTCncgrg+fqLRoFnVi4HvY7VC9MQCX+Tm7avrETJiBdVXAgiE7WBypICOwr5fpEwMgS9
         eeomFvvxoF/uVInIxAoNemvxQI3VF46GvnxUZznQv1ccf6lqUT3r9FGZ2CCBL3f6760M
         X6DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tE554iAjQ7h+EY98fG7iQCp1+WR6gTDY9R3izQaYbSM=;
        b=qn7dSRAl1eUJ1pTGOxTr9QB+Wv+TmEU6gYSDfZWaf/pn1pYZAPxOyEd9uAV+z9YwHy
         pezTf6o3Fgn+XOHMz/tBIZXTmcFHPQhO80/3e01n1vdK8dxO1mQ8uJS2C2GR9PGLbSWP
         bzGim4Iof99ZvFZhkKfw4iBWIh/N+E1cisbd2zc0bAK3JvE9zOwnjaSDzdjeyG4x5QCv
         sjP7Pv7Sgq7W6Z7wLPDV9xuIhg7unxN0bbjDNrkebwb9UhbCuX7MuUKPVJ1ro4RS/CMi
         wBFqdBoY1kz3YLbu4y1Oo7CIj3Tnc3TuNA8wxxbTDAs1L+4KA3D+mQ9IFTLKTuL4SaaU
         Bx9Q==
X-Gm-Message-State: ANoB5pnOTyjRsz3n/MKEzMCFUoK0Jdz39ZVJNHmq0s6JFx6/VpmPe80x
        HKB4B3sVAiaPhKoSBZm/df2oCa0n4c2ggyY9BoY6oQ==
X-Google-Smtp-Source: AA0mqf5VrTpLOj4ZlFDKaIXtnaXLgZ0CYm7CAAQQe4DXP0PzbRK8eD99DVN0IU9z/RBBDpyRyd9Mayz9bYXq1N47AjA=
X-Received: by 2002:a17:906:19d2:b0:78e:11ea:8528 with SMTP id
 h18-20020a17090619d200b0078e11ea8528mr1440243ejd.190.1668676778935; Thu, 17
 Nov 2022 01:19:38 -0800 (PST)
MIME-Version: 1.0
References: <20221021172012.87954-1-sebastian.reichel@collabora.com>
In-Reply-To: <20221021172012.87954-1-sebastian.reichel@collabora.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 17 Nov 2022 10:19:27 +0100
Message-ID: <CACRpkdYKdTWAtW_dhCgfja4pNZqNh=ixZ0H36bpFj=x_3t2zXQ@mail.gmail.com>
Subject: Re: [PATCH 1/1] dt-bindings: pinctrl: rockchip: further increase max
 amount of device functions
To:     Sebastian Reichel <sebastian.reichel@collabora.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>, linux-gpio@vger.kernel.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Oct 21, 2022 at 7:20 PM Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:

> Apparently RK3588 pinctrl has 13 different device functions, but dt-validate
> only checks for pin configuration being referenced so I did not notice.
>
> Fixes: ed1f77b78322 ("dt-bindings: pinctrl: rockchip: increase max amount of device functions")
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Patch applied!

Yours,
Linus Walleij
