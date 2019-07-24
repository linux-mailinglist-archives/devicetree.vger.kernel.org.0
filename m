Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 313E273065
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2019 15:59:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728258AbfGXN6y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Jul 2019 09:58:54 -0400
Received: from mail-lf1-f68.google.com ([209.85.167.68]:36534 "EHLO
        mail-lf1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727806AbfGXN6y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Jul 2019 09:58:54 -0400
Received: by mail-lf1-f68.google.com with SMTP id q26so32066837lfc.3
        for <devicetree@vger.kernel.org>; Wed, 24 Jul 2019 06:58:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8Z5UzFYhi6H2Bzr3Scice37n2cKfwrnM1A2zQSOal84=;
        b=otxjmkh/kVjZ4IM4FQrw7xAdQ6ZMWi7+vpVhvym8xvAtfzvsk6Y1MpF4kDfF3szG4e
         ujXo01qlYB9GyBVtTvCW55pyJKAvSuzyYGgc05yORTFQHoumbStriwvaB0wzizPkIgfJ
         /yc+ELX0sXvFi3mfyJSNrnWj6CVB1ipo/QyokYR78Gh0e1CB2knhw8/hPuF5AfdQdef/
         4Fhsrj/r3MlKVkPGCS/weUjARoJojbnyZvnv56TMBg92X1JWDap0/Ni0fmdniXwDgQnw
         A+EVyIDK9D40WfqySO9uC4KK1Pp/KkU5GDrcEx3G4cU6+M60/PQR6TijaHqQV+URDtow
         M0KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8Z5UzFYhi6H2Bzr3Scice37n2cKfwrnM1A2zQSOal84=;
        b=nif2xGTwghRG69C0OKUGgogMZLfxyJXT8ENG45GZ45D5mMej+XoHdmo5GwPxK/RA4x
         mIZqJFbrBeeuRyOtf1O013rdZkYT7bjWR0vIsaRno7gS0jXe4qQ6Fvb81VDP/TB/tYoM
         UrtZVHcZ9IcryGZ+G87pxgqn+tb9tsnbxZuocmJtTWhc84LIAxMtypQeKFjIdaZfgAuC
         JMF/ltqNRi5dTONMaOXU/Slg/iVemxnbQynASI6ZVnGKVeOeGEEGLHUTOcz66hB+UK5n
         OOIRjvz7pbntESE4XziZuLxRE9yX/y534UQsrEfd2dVSkStWinwJklWJoIbJqjquzey6
         kr2g==
X-Gm-Message-State: APjAAAVKXjwb1ll9NfFjB2c6Xk7eGS+AyyQYxquGOn10MmLZbqO1zWbn
        v94HgVDvdBxupoiTV/YTsp3Pb/hIm0Ya+edZH+3z/A==
X-Google-Smtp-Source: APXvYqwdTOeseN/Hq1XGnjd8lMRnCKAQsTM7/VsBcWVBoPs4cjVpWdHT/C6Xf0cA20TN5udLNcPOED/4Mrw9SvzUGiI=
X-Received: by 2002:a19:6a01:: with SMTP id u1mr38209122lfu.141.1563976732315;
 Wed, 24 Jul 2019 06:58:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190723133755.22677-1-linus.walleij@linaro.org>
 <20190723133755.22677-3-linus.walleij@linaro.org> <20190723175445.GA23588@ravnborg.org>
In-Reply-To: <20190723175445.GA23588@ravnborg.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 24 Jul 2019 15:58:40 +0200
Message-ID: <CACRpkdYmO=fBj3MFoQdLrEgA05BLZR3tNv9WhqjLeJ0R0cdDbQ@mail.gmail.com>
Subject: Re: [PATCH 2/3] RTF: drm/panel: simple: Add TI nspire panels
To:     Sam Ravnborg <sam@ravnborg.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc:     Daniel Tang <dt.tangr@gmail.com>,
        Fabian Vogt <fabian@ritter-vogt.de>,
        "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Sam,

fixed most things, one question remain:

On Tue, Jul 23, 2019 at 7:54 PM Sam Ravnborg <sam@ravnborg.org> wrote:

> Furthermore I did not see any bindings for the panels.
> If they indeed are missing, then please provide bindings in the yaml
> format.

IIUC we do not create binding documents for the simple panels,
but I can do this of course, just vaguely remember that the DT
people didn't want to see bindings that all look the same
but instead rely on panel-common.txt

Yours,
Linus Walleij
