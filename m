Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 177A2755C0A
	for <lists+devicetree@lfdr.de>; Mon, 17 Jul 2023 08:44:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229669AbjGQGoX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jul 2023 02:44:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43270 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229449AbjGQGoW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jul 2023 02:44:22 -0400
Received: from mail-yw1-x1132.google.com (mail-yw1-x1132.google.com [IPv6:2607:f8b0:4864:20::1132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7AB64E71
        for <devicetree@vger.kernel.org>; Sun, 16 Jul 2023 23:44:13 -0700 (PDT)
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-57a8080e4a7so41700747b3.0
        for <devicetree@vger.kernel.org>; Sun, 16 Jul 2023 23:44:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1689576252; x=1692168252;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CPxyXhOq0yMhGwdIhN47SQ9mxxoFo8fBqlACSvCMBec=;
        b=C9354NTV9FJDNTweJtAEiUmBpjXaDX0eREwuXJzRaaZY98lvuHksDVHM5II29JYduV
         KfJva2PKr67iGdjh0RT2tlYFg5DS7pSPBX9bTS7Qn8Chc2bdlkQaQIJE3J5i12PAwQIo
         syWCIKABedWaaegTdoQ0vQ7NFCfU8YpePUuyU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689576252; x=1692168252;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CPxyXhOq0yMhGwdIhN47SQ9mxxoFo8fBqlACSvCMBec=;
        b=PFvu/erJ4YzeJmheQnwMXn/V3JlcqwT4SS6hpghkUG8ceahNBNiXypGlwXlHKh4kAP
         VweRdeB1MKCOfa3KqX5Jths2betc1am0LtetLNZa42SPi8oDlbFm9nT1ZRR9bkLSr3T9
         5srW8Mwa0f2fpwi49eGGOAcinsNmqBfdsGRYlJIDDR5koCcAOPtr/ptmniimIrqwc+dz
         8Dg5pHP1GxUzDpRulBRvEQH9KFHqjfi8Ei/SJ9+EG7nFtQhVMhQhKz9vV7RXs+iskHYY
         VLoU0NdkHU/WBskNeut9lCbc2Eck3LrRqEI/DxWFKlQcW5icIpZwXXZ8Bn41WhzxuE/P
         1zxg==
X-Gm-Message-State: ABy/qLYhesApHRQTKYmzPObOzyzuXKTToiDqJT0ymheSK4Og9QT6bsj4
        47V3hb7zocZ4oTG2LZM716oUbbrQGZpR01dtn/NVts8A+8Ykp6QTyKA=
X-Google-Smtp-Source: APBJJlECuOWcElxDEP2lLqU6Yd6rgdXMubn7FwQoBuI4bs08qGhUgEoxcWDfgPFkaYGvh8rXyJJfyL4vMMG5ewt62+s=
X-Received: by 2002:a81:6d0d:0:b0:577:f47:3d8d with SMTP id
 i13-20020a816d0d000000b005770f473d8dmr11544158ywc.25.1689576252737; Sun, 16
 Jul 2023 23:44:12 -0700 (PDT)
MIME-Version: 1.0
References: <20230717061831.1826878-1-victor.liu@nxp.com> <20230717061831.1826878-10-victor.liu@nxp.com>
In-Reply-To: <20230717061831.1826878-10-victor.liu@nxp.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Mon, 17 Jul 2023 12:14:01 +0530
Message-ID: <CAMty3ZAdzASJCz+j4iOTJ+wCXWP2Z48jFL687kxDmJLPU7T6gA@mail.gmail.com>
Subject: Re: [PATCH 9/9] drm/bridge: imx: Add i.MX93 MIPI DSI support
To:     Liu Ying <victor.liu@nxp.com>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, neil.armstrong@linaro.org,
        conor+dt@kernel.org, rfoss@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, jonas@kwiboo.se,
        shawnguo@kernel.org, s.hauer@pengutronix.de,
        jernej.skrabec@gmail.com, robh+dt@kernel.org,
        Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com,
        kernel@pengutronix.de, linux-imx@nxp.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 17, 2023 at 11:44=E2=80=AFAM Liu Ying <victor.liu@nxp.com> wrot=
e:
>
> Freescale i.MX93 SoC embeds a Synopsys Designware MIPI DSI host
> controller and a Synopsys Designware MIPI DPHY.  Some configurations
> and extensions to them are controlled by i.MX93 media blk-ctrl.
>
> Add a DRM bridge for i.MX93 MIPI DSI by using existing DW MIPI DSI
> bridge helpers and implementing i.MX93 MIPI DSI specific extensions.

I think the better way would add compatibility to be part of existing
dw-mipi-dsi.c with specific driver data. This way it avoids all the
platform-related helpers(extensions) and makes the driver generic to
all SoCs which use DW DSI IP. It would be a straightforward change as
the imx93 drm pipeline already supports bridge topology.

Thanks,
Jagan.
