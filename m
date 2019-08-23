Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9125B9A900
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2019 09:37:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732886AbfHWHhp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Aug 2019 03:37:45 -0400
Received: from mail-lj1-f195.google.com ([209.85.208.195]:36043 "EHLO
        mail-lj1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732781AbfHWHhp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Aug 2019 03:37:45 -0400
Received: by mail-lj1-f195.google.com with SMTP id u15so7970865ljl.3
        for <devicetree@vger.kernel.org>; Fri, 23 Aug 2019 00:37:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ZZWCM1NaKkWZfHYdamHWGDCsp0daigJ/P9DBMZ7/h0o=;
        b=gnV+a8SbxnF8E7z2Tj14yFsvjUuIGqSsViiLQ/zAYEOipY0vHqYoB2FX2Q9pBj7Byn
         a8uth2qvzy+VzbI5mKAiM0vjBaR9exB16/ASG5Ddhfv8myEUUBaV67NAcnESCw6XGEYK
         oFsRP3hNBTbtXU7DMZdHowrtfY6DkD9y27XIUoOGoQbKnSVxe0iRViKWToVDqVCiNSrD
         1EC2EsLbxekU9X1hKemCBp9Upb3BVVc6Fa5SwH7ARexZmFgondpi+/1u8PgmTannFBIy
         LDqliBZWjE2ewubCbfQmU9vE2GMbIRij4CGeVQ544MW/Zc5SZtl2+01ffnjVd/XT4foa
         kamw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ZZWCM1NaKkWZfHYdamHWGDCsp0daigJ/P9DBMZ7/h0o=;
        b=glCdGts4z/c/NOU9OFmltdN4nwDI24DeE0Uf6y5cutv6RI4kgLJ3gSUQyFLwDQuJLQ
         epA3m6twugmXyxEC+c2YUUFg75Yt+ljmj6qGZJ6BeTESaDr+4SAC0kgdvGY0lpkh5M7d
         ur2CBtivC504TefP2ZH06pTaSax188iC4056A29EPOsksM44yPFxdTCpf7E9RZrBDZyz
         FV6aAUMWsoAjsl48hyZQdCoq+ezfrsn/D8pHehjQl/tHlDOF7gfcJG69d11v7uOqaaLv
         Ms05P4LoRAmMkVX7R6Lr1aAqBRqSNXKPseI1FW8H6+ZAbs5jXhJUtgNh2babyJeueJay
         lyRg==
X-Gm-Message-State: APjAAAWIoMW4Wyvw+LdV5gDkmng7xqa76GLut63pnCbazqm57ESeKVHq
        W26MkNEBcnF5sGm1h9tRPQAbIOuAQ4Z9X/jSBHMk7A==
X-Google-Smtp-Source: APXvYqwoTIF/Emnt9eBfMVVaR3D0yZcfntQldBQ8nXDMcgI62M2HujpKdWtwI9F1v3Vnmg1r5+YyulnqcRsz+8EBjBU=
X-Received: by 2002:a2e:80da:: with SMTP id r26mr1930950ljg.62.1566545863148;
 Fri, 23 Aug 2019 00:37:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190808101628.36782-1-hui.song_1@nxp.com>
In-Reply-To: <20190808101628.36782-1-hui.song_1@nxp.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 23 Aug 2019 09:37:31 +0200
Message-ID: <CACRpkdbYEHQ=sYohxEC99T41qUBHYgBCYjM3MaAnD9PmY4YCyA@mail.gmail.com>
Subject: Re: [PATCH v1 1/3] gpio: mpc8xxx: add ls1088a platform gpio node DT
 binding description
To:     Hui Song <hui.song_1@nxp.com>
Cc:     Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 8, 2019 at 12:26 PM Hui Song <hui.song_1@nxp.com> wrote:

> From: Song Hui <hui.song_1@nxp.com>
>
> ls1088a and ls1028a platform share common gpio node.
>
> Signed-off-by: Song Hui <hui.song_1@nxp.com>

Patch applied with Rob's ACK!

Yours,
Linus Walleij
