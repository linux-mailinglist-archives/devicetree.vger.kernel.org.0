Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CD7C57129CD
	for <lists+devicetree@lfdr.de>; Fri, 26 May 2023 17:41:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236487AbjEZPlh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 May 2023 11:41:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237396AbjEZPlh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 May 2023 11:41:37 -0400
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AFD8AF2
        for <devicetree@vger.kernel.org>; Fri, 26 May 2023 08:41:35 -0700 (PDT)
Received: by mail-pj1-x1031.google.com with SMTP id 98e67ed59e1d1-256200b49cdso187229a91.1
        for <devicetree@vger.kernel.org>; Fri, 26 May 2023 08:41:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685115695; x=1687707695;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CVsVd/nLgofgRSk+/vAT2o3D23ukKuz0jIVgV0hlu0k=;
        b=BtWqzGskw15Yw56mToIyP0rZ/mXI5ByNChZLWrYiDQcOPJ8pHbHKxzNyBPmkBc2UT0
         Lz47Dt4bMSZWLo/4ey1DBbWQo5IevSbYqE//Aa8Vx4zmHHzhbYKJ3Y8brIKf2vgI53FI
         ++Jjtz54XUclO0gf8v9DhcAxX+BSe1JkxIv11a3alAbvDHW4H9//60Nb9jV0iJOco62i
         ubkQWi3Mzeg1zmsyk9Uen3NZuezj9zR4qY4Oy526C//g8WOBysCa9x2eaPCzj/b+fGrb
         Bu2tl9IZf9tRVbxmyB2SqzFbtUrpGnm/kf5qIwHsDfQ7lrYmwEtJIo1MM5zsDlqCpkmv
         0MpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685115695; x=1687707695;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CVsVd/nLgofgRSk+/vAT2o3D23ukKuz0jIVgV0hlu0k=;
        b=UVw4JCGo/xhYmSpD/tiLqSAdkNa8NAaFaD171IH5uA7HVJAE0pRDHEy4PnXDmZbDM0
         EodtSxzdTgRtHNH0VYnK4SnAeVOSOiF4EIyGgiy4nfXchMPNaZIyLAV3t5B4ZxOHhwvX
         5NK0L1YQBIUnRvylTv0XxYHEoeOqvW3Ul9YQmZcZ9Y/FC99jUd4JQ9QfMblOgNI5o0My
         YtQdP3wocSEK0rlrdHu5ys+BR1xH3FiTeF9wBOQGX86RtFh4ETVFPp3rt4YwHneYs9jJ
         4EmDdD9A8poYNrrEFvav+dAwHGivUlx2tStIYkXSKN5T1ugiNBKw7FcJcc7ssgvtB19w
         7A8Q==
X-Gm-Message-State: AC+VfDyusTq/FE+4TLKwptJ5uPhkvvUZznFIAPhnUmcAdiVn/pbh1n9/
        1LjzX2qRdKvTRKKkFaX88+QjhCSPja1KwhH2Y8t232XD
X-Google-Smtp-Source: ACHHUZ7CiLGgfE+NHTMiaDWTPRKuMEXNSMZtK/RpjzsaKaN14ncPvumA/OqzM7/1FKDKGaGW5b+kdvrdS9/oVAYounM=
X-Received: by 2002:a17:90b:1e10:b0:252:fb6c:69bd with SMTP id
 pg16-20020a17090b1e1000b00252fb6c69bdmr3359347pjb.3.1685115695040; Fri, 26
 May 2023 08:41:35 -0700 (PDT)
MIME-Version: 1.0
References: <20230526153854.469239-1-shenwei.wang@nxp.com>
In-Reply-To: <20230526153854.469239-1-shenwei.wang@nxp.com>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Fri, 26 May 2023 12:41:23 -0300
Message-ID: <CAOMZO5A=eCWG1D0DR4KA1zCfuXGnBBS5Z7YnL_vwH-3T2+VRaQ@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: imx8-ss-dma: assign default clock rate for lpuarts
To:     Shenwei Wang <shenwei.wang@nxp.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Dong Aisheng <aisheng.dong@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        imx@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 26, 2023 at 12:39=E2=80=AFPM Shenwei Wang <shenwei.wang@nxp.com=
> wrote:
>
> Add the assigned-clocks and assigned-clock-rates properties for the
> LPUARTx nodes. Without these properties, the default clock rate
> used would be 0, which can cause the UART ports to fail when open.
>
> Fixes: 35f4e9d7530f ("arm64: dts: imx8: split adma ss into dma and audio =
ss")
> Signed-off-by: Shenwei Wang <shenwei.wang@nxp.com>

Reviewed-by: Fabio Estevam <festevam@gmail.com>
