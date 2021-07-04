Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4CE073BB469
	for <lists+devicetree@lfdr.de>; Mon,  5 Jul 2021 01:33:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229642AbhGDXfp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 4 Jul 2021 19:35:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229733AbhGDXfp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 4 Jul 2021 19:35:45 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D960C061574
        for <devicetree@vger.kernel.org>; Sun,  4 Jul 2021 16:33:08 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id bq39so16555784lfb.12
        for <devicetree@vger.kernel.org>; Sun, 04 Jul 2021 16:33:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gTm2A7ibgQ3e28ydh3Ded5QurMsV9SerKRCbFyiWwjg=;
        b=MVSrijijak+qtCEaVC1btikMIX8cLj5ukVzkeWzNOYFTr1D47YslT6mVGEpn29hexe
         00422XeuW41z+qelfKCHSm9lmJsrVkEy5uyK/pe6WV8CW8yHizX1ljLuQcXeSsPn6YPw
         iCzen5uXIhqySzPQr90dmnz3cx4CRySVKpLg6I5mUk77Pu6YrL4QQl/iJsQGBqx/dUEo
         /2ia9gYJN9gDavx9fiwdX2fVPsRKgiUj9lvSLuuxG3Cpe/LVHkG3NVFMc1Ycq5/gatZz
         d8hqM6BG0Ll8Vdgn5BZtn+5j2pgdK1eEEd490na+fs2mg7sEuA0QU46ANkdjnmVNAayp
         YCXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gTm2A7ibgQ3e28ydh3Ded5QurMsV9SerKRCbFyiWwjg=;
        b=bLZqSTbcDaZFSrCaSBCGxcG7YK03g++UZ+FuZ4tSK3S/dWCOmC/wy4/eld9Ef9Kb1+
         pupUCaTvrKOTz6FiF8fijW4/wD4nMjh8diHjG6DkElBMNDwLBnGFIA6r1mXbnzpX4Fn6
         +10JPN733NxsCSIezxWStX1sivbjitfLeWS2BgP0YtxIocKpnyOnFQATZmf8FBaOhJJv
         wyuE2hoJxbSmhbuVzB6gLycEU20garkLsdU57oVpoUJHGz+uNsGSgx++J3cwXYriNFel
         CNLeCpF8KBrgsai1ELsFpZoTpCh+OlBdCIdTXr/0w4OQVJqMbk1hD6xesXFg/7jIQDve
         lMmw==
X-Gm-Message-State: AOAM5321MhHsmE27PGPp9Vzut1QvoBbttasNqs9WqKVE6qOuoPpBYt0c
        +dlgYMv+48NwHVWGxDEGMvQaSpSXYMNurTPFD2HLJw==
X-Google-Smtp-Source: ABdhPJzHBVSn3DCxq/UwwLLJ3pQ6m6/ni3OVRb137FHXyXohsJpIBm/Ydm2kvT4Sp4+nKR7J4qfWPOR6ywfkhH5x0Co=
X-Received: by 2002:ac2:55af:: with SMTP id y15mr8683741lfg.29.1625441586652;
 Sun, 04 Jul 2021 16:33:06 -0700 (PDT)
MIME-Version: 1.0
References: <20210628191440.2823024-1-clabbe@baylibre.com>
In-Reply-To: <20210628191440.2823024-1-clabbe@baylibre.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 5 Jul 2021 01:32:55 +0200
Message-ID: <CACRpkdayenaEWvXCvU9pwMVs7C1O=5US3LYAMxS1EVtDSTs_EA@mail.gmail.com>
Subject: Re: [PATCH v2] dt_bindings: mtd: partitions: redboot: convert to YAML
To:     Corentin Labbe <clabbe@baylibre.com>
Cc:     =?UTF-8?Q?Miqu=C3=A8l_Raynal?= <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Rob Herring <robh+dt@kernel.org>, Vignesh R <vigneshr@ti.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 28, 2021 at 9:14 PM Corentin Labbe <clabbe@baylibre.com> wrote:

> Converts mtd/partitions/redboot-fis.txt to YAML.
>
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>

Looks good to me! Thanks for doing this.
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
