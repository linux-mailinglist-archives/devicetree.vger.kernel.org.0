Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 28DD9710E9A
	for <lists+devicetree@lfdr.de>; Thu, 25 May 2023 16:53:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231799AbjEYOxe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 May 2023 10:53:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234952AbjEYOxd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 May 2023 10:53:33 -0400
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com [IPv6:2607:f8b0:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 685D5189
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 07:53:32 -0700 (PDT)
Received: by mail-pf1-x42c.google.com with SMTP id d2e1a72fcca58-64d722dac08so490155b3a.1
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 07:53:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685026412; x=1687618412;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RSEHc/E/IRDj7LOjfGuOCP5R0qApwuJ3GPnUYfvbYgQ=;
        b=UIhLvtHqXVc134PaX+UiIOlU0svDl8YBuorZVEi3vohqM50x1gz7LstoHNmII4zu0k
         Na1IT7g/EPDMh7VrYedF6AmEY+2Yq2rlifF6YevAlaEg3f4sOLn/KR2BXPqm1Z7RhNXY
         e+DeTVtT8d5sYCbstBdNtjwXUJrUvOv3NtmzqP7Snb/CXRNs/qOQXbMV8rDydn85E7tV
         L2xf4TsZpyXukvqM6r9w60aat0BbJ80IpGma29Zrwhfb+UL08NeJS63VSOhUA5OaTHZQ
         vftWcvYQzqgekttdaVfX9F+MfxaS4FBJ7W3Ok1KlALS9zhAkDnFtSs6v+lUTiEf/s2Oj
         TQbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685026412; x=1687618412;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RSEHc/E/IRDj7LOjfGuOCP5R0qApwuJ3GPnUYfvbYgQ=;
        b=FPJDUsHEgmSFiZw7CiCfe3oM+kp3gkGj6lEZszfH0e61OCPTIpa/svhZwoxUPfDQmV
         SeELjLVY1SvHdyhChOhLJkBeO2Dm5ure3yW60pUCR3DWq0P2IOjC13DSfkr4tEyC64PA
         +TQ9cC3OiLgZrdiYx56Fj4qCH/Ut4FVvNffVjZRAJP+TKHki4Kqs2xWNVg2RJY1OJ20F
         nAgSWJ7mHVHpZbycLaAEwOPtA5uQLPXAKZFouvV0yJcMPz1+8CGY/75DsCR/WfyGfNOT
         iwRQtF9Zuu4zXyN0m7O0Fo/2HoPS0jxtCxrbDJxCXN0szPzpjhHdH2k0rtvOZnhOLt7z
         BtoA==
X-Gm-Message-State: AC+VfDyLHX9kriBVRAn8yO44VHmsUk1JJnPkHREqOXgAdUAWMwGC3hU8
        cLVcgC+29m+0OYeKsf60e8ii6nakJ6MBC2hmty4=
X-Google-Smtp-Source: ACHHUZ7kbUhHU9x1EyvAPA6NKg+vH/vYZmcJ12v0kydcr8EA6Xq1rxoRpRF4LOhzjmeQ9327UIPwr2rkSzUyrNTz7Xk=
X-Received: by 2002:a05:6a20:3d95:b0:105:66d3:854d with SMTP id
 s21-20020a056a203d9500b0010566d3854dmr18986356pzi.6.1685026411780; Thu, 25
 May 2023 07:53:31 -0700 (PDT)
MIME-Version: 1.0
References: <20230524192042.133755-1-shenwei.wang@nxp.com>
In-Reply-To: <20230524192042.133755-1-shenwei.wang@nxp.com>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Thu, 25 May 2023 11:53:19 -0300
Message-ID: <CAOMZO5CAk+p+XN+g_kzxTcCoUT7uVa10U88Amo1L708i0uQVtA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8-ss-dma: assign default clock rate for lpuarts
To:     Shenwei Wang <shenwei.wang@nxp.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
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

On Wed, May 24, 2023 at 4:20=E2=80=AFPM Shenwei Wang <shenwei.wang@nxp.com>=
 wrote:
>
> This patch adds the assigned-clocks and assigned-clock-rates properties

Replace "This patch adds" with "Add".

> for the LPUARTx nodes. Without these properties, the default clock rate
> used would be 0, which can cause the UART ports to fail when open.

Fixes tag?
