Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 187B776192E
	for <lists+devicetree@lfdr.de>; Tue, 25 Jul 2023 15:03:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232402AbjGYNC6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jul 2023 09:02:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40922 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233555AbjGYNCz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Jul 2023 09:02:55 -0400
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com [IPv6:2607:f8b0:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97204E67
        for <devicetree@vger.kernel.org>; Tue, 25 Jul 2023 06:02:54 -0700 (PDT)
Received: by mail-pg1-x52a.google.com with SMTP id 41be03b00d2f7-5576ad1b7e7so584365a12.1
        for <devicetree@vger.kernel.org>; Tue, 25 Jul 2023 06:02:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690290174; x=1690894974;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nOEo+FdHDY5WEehTPe3K+p39OaJHljTEL3d0IYWSSeA=;
        b=gygu8qaIkXqwP6Xj1pg1bEqTYTb9c/nW3m748swfsw7xL4tUtUx82wc5GXzO/4gi8H
         Ut3oU1OM9UJ6/36WYpV3TrCdNDAMRnH/WY/uw0Agw3xmXiKvg8H+2keyVf+oe6oqxe6N
         EvYVsk11ZvexQVNsRRxfrHZzUdHQRD2UGAoa7Q8pUsRGcing6iHc2aupohgWCqUCt1G1
         BuvjUWcNScwdCKgIBcvMflBPKxcHKTbqfhuxKtBr/oXCiUoHTvvCxeAalVcHhbciQit4
         SsWpWM23aGZhml0t+qQfPYGpdMrGuCqWuz21d9W0nTgm2kyX3PYX6ZywolqQ0lWiT+cu
         UrKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690290174; x=1690894974;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nOEo+FdHDY5WEehTPe3K+p39OaJHljTEL3d0IYWSSeA=;
        b=Ab/+vYctu3BRkPHuYvPHAVkb7sUj3TLAkCrz5X67cn4pTahNtXBOJ6K0RR2RM2wNwd
         qtPbQWEGBGcKtf7PhXTODB/t9FMcon4ypFC1lmYsiFRkH4KPX6aTNyHLfKqGOV3+xA6R
         QgS8g/NaOf3ePVzWOpAPNRU6j09VWcTG26o3YMU3PbqoC2mJxKGgX2hyjZWJohCS1qRx
         ++dDeu16y/mZRnr6tmyFi3mlqMn0++zMLidWtX/wyx6v8L560QLuMolY/ODbopmH/Md4
         evIxwhlhf9XeSPmMddrFaobxM3WaqfqBRwGCzNy+Wx2xl9j9aY6knO26vIBOvukW8jdT
         RjBw==
X-Gm-Message-State: ABy/qLb4jXqOYOtntweFdAhL7e0KM+h87IRaWU6aJsgWuGSC7aGzfxRJ
        hVo0MU5jCjZD5SH9RkRXHy9a8z/QuojcKl/hzhw=
X-Google-Smtp-Source: APBJJlErkK3/Bqq7OlLvd5itGALTENkxXktbLYhUASp2ZzNmBYROXrTXkYawMk+xJMuNHpDP+YIrje0+S4qKDpUBp80=
X-Received: by 2002:a17:90a:c8d:b0:263:2312:60c2 with SMTP id
 v13-20020a17090a0c8d00b00263231260c2mr11279368pja.3.1690290173656; Tue, 25
 Jul 2023 06:02:53 -0700 (PDT)
MIME-Version: 1.0
References: <20230724222247.162806-1-marex@denx.de>
In-Reply-To: <20230724222247.162806-1-marex@denx.de>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Tue, 25 Jul 2023 10:02:41 -0300
Message-ID: <CAOMZO5AwYyrTo-Oem6KfqpYF4WXCS1gsjkoTP=geZ7SDS2M96w@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mn: Drop CSI1 PHY reference clock configuration
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Adam Ford <aford173@gmail.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Li Jun <jun.li@nxp.com>,
        Marco Felsch <m.felsch@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek,

On Mon, Jul 24, 2023 at 7:22=E2=80=AFPM Marek Vasut <marex@denx.de> wrote:
>
> The CSI1 PHY reference clock are limited to 125 MHz according to:
> i.MX 8M Nano Applications Processor Reference Manual, Rev. 2, 07/2022
> Table 5-1. Clock Root Table (continued) / page 319
> Slice Index n =3D 123 .
>
> Currently those IMX8MN_CLK_CSI1_PHY_REF clock are configured to be
> fed directly from 1 GHz PLL2 , which overclocks them . Instead, drop
> the configuration altogether, which defaults the clock to 24 MHz REF
> clock input, which for the PHY reference clock is just fine.
>
> Fixes: ae9279f301b5 ("arm64: dts: imx8mn: Add CSI and ISI Nodes")
> Signed-off-by: Marek Vasut <marex@denx.de>

Good catch:

Reviewed-by: Fabio Estevam <festevam@gmail.com>
