Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA7EB6D6E61
	for <lists+devicetree@lfdr.de>; Tue,  4 Apr 2023 22:49:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236337AbjDDUtg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Apr 2023 16:49:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58262 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236345AbjDDUtc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Apr 2023 16:49:32 -0400
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 415A04696
        for <devicetree@vger.kernel.org>; Tue,  4 Apr 2023 13:49:29 -0700 (PDT)
Received: by mail-pf1-x434.google.com with SMTP id q20so11168022pfs.2
        for <devicetree@vger.kernel.org>; Tue, 04 Apr 2023 13:49:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680641368; x=1683233368;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zr0STb8PouhkEaR+W3Jx+PQk1fct3dqUWO0BptffeN4=;
        b=KsO2Y5RUYPxbDmzYi2GNKXPmnQpuC6nhX1aktZSCeUu6PW3ZUWlLeLAhu7oztaAW3I
         23XVcm5A+wz2zCnwAUSxnwZUCLHyI2qFrjFidCzkN5asjx+Ox4DBssn9GRf4KoeHNbOd
         TQjJTSqrMC4l1royO2eb1zIBeHhRvQTEWcIVpgMr42oBKI+gs23KfV3hAHyBC8aoy20N
         b3Gf1U1Zwo07ZGN1rNw/Tadog5PQJKOJuBgvuBuf339LE2FlrGopn9PsPltxwL/XciZg
         K9ffLjCl3l8xMbu+A8aTmH6oqYArFS6y9gep6Krd9sPMq/dO9yp8jFCZwDx3r+KMvTZm
         3t3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680641368; x=1683233368;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zr0STb8PouhkEaR+W3Jx+PQk1fct3dqUWO0BptffeN4=;
        b=FOUWnIxSYVrnJTyA/QkttAc9+zdk7YlJ2LcAie+/nmIatgqSpVv6s3KiJI4LVzlc6I
         3In5Txa8Xu7ck7Bptbc5+9pY6tr2PdHfMdrhkLx0ereojdGbiKItdQBKPVd0un7HURiF
         RdDqK9D3XEUmHei2lFrqcTax2A2sW5ObHaUumtwUJ08aeCJBufYtpTHQc0DE7xetjR5x
         pNB6Yd6wInNTzRbZ12w1wj4fHwvtonXUzmONCOuLP8bshmh7ex4QqSZZCGMS5Qr9NdUz
         xuPomPDzOcPpX+27HCsBVF5qVU8QiYxWn3CPcr7NJy0vXQ+waiRGcPz8T244d/x2SDGj
         GC8w==
X-Gm-Message-State: AAQBX9ehAiHT8UBdZ84RE1J0iCamkiLOqrqNHob0773xfObmLhG6pxsC
        bFHlp913b5pUTwcgWQzRQ6zxsBk6TQlNloBX31nXdOdL7gpDmA==
X-Google-Smtp-Source: AKy350YntBj2RlexC23VTFRCA72RVDrdADIjqhBJFf5hHeDoVXueyWJkXdEA72BKG3Fa9xK7ByDCIIKrNPgjyzafQHc=
X-Received: by 2002:a05:6a00:a20:b0:627:fb45:9279 with SMTP id
 p32-20020a056a000a2000b00627fb459279mr392110pfh.0.1680641368665; Tue, 04 Apr
 2023 13:49:28 -0700 (PDT)
MIME-Version: 1.0
References: <20230404000224.534559-1-marex@denx.de>
In-Reply-To: <20230404000224.534559-1-marex@denx.de>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Tue, 4 Apr 2023 17:49:16 -0300
Message-ID: <CAOMZO5DTA56EbvrapDn7v=asXOCwH5TE8Prp+1TbbvGEuQRgrw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mp: Add display pipeline components
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Abel Vesa <abel.vesa@nxp.com>,
        Dong Aisheng <aisheng.dong@nxp.com>,
        =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lucas Stach <l.stach@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Apr 3, 2023 at 9:02=E2=80=AFPM Marek Vasut <marex@denx.de> wrote:
>
> Add LCDIF scanout engine and DSIM bridge nodes for i.MX8M Plus.
> This makes the DSI display pipeline available on this SoC.
>
> Signed-off-by: Marek Vasut <marex@denx.de>

Reviewed-by: Fabio Estevam <festevam@gmail.com>
