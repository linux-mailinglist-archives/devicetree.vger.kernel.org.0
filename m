Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D558E79C7F6
	for <lists+devicetree@lfdr.de>; Tue, 12 Sep 2023 09:18:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229556AbjILHSW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Sep 2023 03:18:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51426 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231477AbjILHSV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Sep 2023 03:18:21 -0400
Received: from mail-yb1-xb33.google.com (mail-yb1-xb33.google.com [IPv6:2607:f8b0:4864:20::b33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24A7FE79
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 00:18:17 -0700 (PDT)
Received: by mail-yb1-xb33.google.com with SMTP id 3f1490d57ef6-d7ecdb99b7aso4751349276.3
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 00:18:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694503096; x=1695107896; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RRluws1bKA5tPkRD6dCJv+tjTju2jAo5DUiyO4MGvyo=;
        b=y8QUFaTVU54SGQlmIClNlbxGATknerLc1bUw/ykeiJZwkEnY1mmOJJzuMuZjd/G4fc
         MEAfzmZMLNuC5v91LPe4dMkeB4ta8D4d0lvzCkQyMEoHb2xASP/w40WUHTqAaOS+f7uO
         IQ/KNhcDfkRa5pPY8XOaYoDlr7PqCN6lwab8QSbOlURz/V9Mz2p4FjFDaDlcqtk8kVup
         huZUZcAiYuGmEnBB39r0MVqLF9Oud7uYrVPySlC0U1HkQq/pYcQ7YWMXFztjN3OUTzRQ
         crsi+woF8m9F0F6/oSwedjcUPQ6AUqUIOEZZLFi5nT8yAxZcx1YU9FwCH6qu0PYebub0
         HpUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694503096; x=1695107896;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RRluws1bKA5tPkRD6dCJv+tjTju2jAo5DUiyO4MGvyo=;
        b=D/hCzIZ4A7v1B1vNcs+hns23PIXCOxV/19Muz0WjdiwI7sn+19ju1GSOB85UWouswd
         bGc5bwGL9Zi8OIyroP0Qp31XHWhmfuWavyFCi5Tyaki8lvnoBFUDIfk2dyw+OvVHiQ7N
         mEyJfw6YPRnfFZg/4QvKqZv2ZgnSNxYvetIT6QEbnydrB470tNdpOnYK/ho3N+2Zhals
         GZsw8kO1aOKeVAZoOecfkCU1UEmzX7i6Mw/Y/Jq5qLa3kN9A6GQcZ9APbVqf7wuD/YSM
         P48ybHCOQS69bt2fBCw+tJLNhxJb1HAiQUn296ax/0l+bb+xUNhtyg6FW/ZTLe7v1Th3
         eT8w==
X-Gm-Message-State: AOJu0Yw3/UaF2E0xJQMM0XQi/kbLLFMGWyONw/cNSKda1HlVN2x9pspT
        X7zG3LFL1qUYn0637ma305jgiRHnQtY/N8fon1J1Sw==
X-Google-Smtp-Source: AGHT+IF+Drm1yZXPtH337fh1vDn2QzgzBG2D73iDDROnRZLERLH1RHqq6shn06QA7hITo+o+sOIJhH0K7UeGV8gZX5A=
X-Received: by 2002:a25:dc11:0:b0:d78:878d:e1e1 with SMTP id
 y17-20020a25dc11000000b00d78878de1e1mr10702572ybe.50.1694503096234; Tue, 12
 Sep 2023 00:18:16 -0700 (PDT)
MIME-Version: 1.0
References: <946079fe606d18b97578db42dd57a31acf38b26a.1693407641.git.geert+renesas@glider.be>
In-Reply-To: <946079fe606d18b97578db42dd57a31acf38b26a.1693407641.git.geert+renesas@glider.be>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 12 Sep 2023 09:18:05 +0200
Message-ID: <CACRpkdbgBtAmyxfiXrZ75gAdc1DeaqMaHRNVX=nz7SuzxFU40w@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: arm: realview: Fix development chip ROM
 compatible value
To:     Geert Uytterhoeven <geert+renesas@glider.be>
Cc:     Boris Brezillon <bbrezillon@kernel.org>,
        Ricardo Ribalda <ribalda@kernel.org>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        linux-mtd@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 30, 2023 at 5:03=E2=80=AFPM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:

> When the development chip ROM was added, the "direct-mapped" compatible
> value was already obsolete.  In addition, the device node lacked the
> accompanying "probe-type" property, causing the old physmap_of_core
> driver to fall back to trying all available probe types.
> Unfortunately this fallback was lost when the DT and pdata cases were
> merged.
>
> Fix this by using the modern "mtd-rom" compatible value instead.
>
> Fixes: 5c3f5edbe0a1dff3 ("ARM: realview: add flash devices to the PB1176 =
DTS")
> Fixes: 642b1e8dbed7bbbf ("mtd: maps: Merge physmap_of.c into physmap-core=
.c")
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Patch applied!

Yours,
Linus Walleij
