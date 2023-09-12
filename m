Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F74279C818
	for <lists+devicetree@lfdr.de>; Tue, 12 Sep 2023 09:21:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231530AbjILHVr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Sep 2023 03:21:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231316AbjILHVq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Sep 2023 03:21:46 -0400
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com [IPv6:2607:f8b0:4864:20::b2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46317B9
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 00:21:42 -0700 (PDT)
Received: by mail-yb1-xb2d.google.com with SMTP id 3f1490d57ef6-d7eed15ad69so4976359276.1
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 00:21:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694503301; x=1695108101; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c2r0YpULLY6K+PxoHfEEwV/ucVHBZJ+Dpxajz81fyHs=;
        b=u2PBuX93fI2Rpasq/z7cSoNZh+orlb09Brx1ovk4kVDI2uLLcZ6d/q+593F+Y+IRxU
         P8jzoDpg+4zFMEGC46B+VDC12Rd49ozjSvr0DG1CH3IpNHQPap+UcYadbAJUQPRehGGX
         PE0RGTzRYJTky6KN2s86Ddg33YYIN4xmtQ5v/PsPs/ut0L0NJtPyouK0GDWhw/XZyKBn
         0Onis/rCaT56OSuNgFV7+akclCIiKdVZH8f1mc47hWWPnMk1wtoFj+RJqr4nerZy9JzI
         y2h+czZ7EuN2vFUsofmZs3jka7zEbdoxsduKTmg0d8c3gv2A3Pa7fxUg8cH2J9FdZy7w
         BoNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694503301; x=1695108101;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c2r0YpULLY6K+PxoHfEEwV/ucVHBZJ+Dpxajz81fyHs=;
        b=G9aSorbZDJeu/OzFoHTe9twjFmY/dao8jiFMKH4+i75JALXAg7MpXPDKDzHMJmQhff
         aPTYkITjoRwF1Nt+jHrPTYDtKQopC76l7Dp6gvpGhfsp/64U5SzSQQ2Xx4GP8CC1Wx70
         BvdFCU6wUZhIIsIRbTPM/WW+YBznNab/LIVklZKAVbzvvOLAdlMrvVA7Vy9EIr1R6AA7
         g9Occ1dd3fuufTUjMIZYxUq1/4g9YeMxvbdPdOKSaHb8kRkI9bN0mVLIqDYyP/eGXfSf
         PK8fonWBa743Zr16YOhF8wZPa9UB+29JYLZXRfgB07cc8me4lW2SKLgH1qvT9H2ZJhSb
         xFdA==
X-Gm-Message-State: AOJu0Yzahkop+wFZ8qk4mOdx4W2xClRNw9uEaa0+3fme1a7ZM/t/ENH1
        eg/RRUKi1Hk0FDQqEJLzs9QdMjKaYJQm3kdKr47g3A==
X-Google-Smtp-Source: AGHT+IGg2CzEWP667Qqfts/ono6Td0uu2ls6pFuWNKcBbheeGuby4e11KXIChG8MZ1ozsgyPMRvu62/lvBUhMk9vKbU=
X-Received: by 2002:a25:42d7:0:b0:d3b:b36f:37b1 with SMTP id
 p206-20020a2542d7000000b00d3bb36f37b1mr10652029yba.33.1694503301543; Tue, 12
 Sep 2023 00:21:41 -0700 (PDT)
MIME-Version: 1.0
References: <20230830200437.715735-1-robh@kernel.org>
In-Reply-To: <20230830200437.715735-1-robh@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 12 Sep 2023 09:21:30 +0200
Message-ID: <CACRpkdbEcejuN64+y+s0B=jpPcHwG+0Q8ufE+0ytxqUT=3976A@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: arm,integrator-ap: Fix PCI node name
To:     Rob Herring <robh@kernel.org>
Cc:     soc@kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Lin Yujun <linyujun809@huawei.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 30, 2023 at 10:05=E2=80=AFPM Rob Herring <robh@kernel.org> wrot=
e:

> PCI bus nodes should be named "pci":
>
> arch/arm/boot/dts/arm/integratorap.dts:161.22-206.4: Warning (pci_bridge)=
: /pciv3@62000000: node name is not "pci" or "pcie"
>
> Signed-off-by: Rob Herring <robh@kernel.org>

This was fixed during the merge window by Lin Yujun.
Thanks anyway!

Yours,
Linus Walleij
