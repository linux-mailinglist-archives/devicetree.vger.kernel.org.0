Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1C4C822D843
	for <lists+devicetree@lfdr.de>; Sat, 25 Jul 2020 16:56:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727768AbgGYO4K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 25 Jul 2020 10:56:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48704 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726995AbgGYO4K (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 25 Jul 2020 10:56:10 -0400
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com [IPv6:2a00:1450:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFE57C08C5CE
        for <devicetree@vger.kernel.org>; Sat, 25 Jul 2020 07:56:09 -0700 (PDT)
Received: by mail-ej1-x644.google.com with SMTP id g7so4526844ejw.12
        for <devicetree@vger.kernel.org>; Sat, 25 Jul 2020 07:56:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:cc;
        bh=Z3BO379AIIOQgwO3FCcZpz1irg2T698dYZqqZ6uG+R4=;
        b=tLdQphfJzsVs9dJ2Glsq2n5VdjG1lRATm6bxyUBb27Dch67O62baUNJo/untsiHJSZ
         BPpQPAVJqkp+glVjPi5umUBc9fbT6Pj2lrotfhMrcPMR9NAlf1npGa/vRjGlKxriVrYT
         GACmDPnCqmoh6O346YthLBMpOyqs2cW8g+7aFpDigBBkygHDwrTBRleB+Jrnd3YrtprR
         drf7qCqYbQf+8CmIZDjFejZwfeSrwnMKwMfRQqvoh4yn3J9mD7dDfqhlDMNekD7RuGeI
         q+pRM6LUaQQsYg9neVCqiCbwS9ifDndBqX497Npz6hgW9oNHCRKjiyKoFyV8RdcVPACp
         v5Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:cc;
        bh=Z3BO379AIIOQgwO3FCcZpz1irg2T698dYZqqZ6uG+R4=;
        b=Ym1wk9lyVm2RlW9mLxh27HJFRHU6rq65Mz2TQn5Sdriny+Lca3GnzgX8vBLaBa09p5
         dZHCblkys6Pnk5F1F5d/G5NiZqKcAVqn5JpfZbSrNWavRaKSkz1y+P192HBQqjgTu1B+
         ev9Xi8AZz2WTEXvXPiVq1f5W/wVjvakOdttZzhBCB+xMkltXA42lPrS1VoDdIqL7cBkJ
         4QMpxxXC4ZPoblTcn4TbF9hfZA43+FvqlKjvCJFMbYr/L8fgTJJPus+Fmjp1g/OgOuZY
         ziMutdy7dJMUDyNVHYIefffbFkCgHrO/L9oXlU2h0fk7e672Ibp+ES3WaBCs+UMUmrrS
         9bZg==
X-Gm-Message-State: AOAM532K0HtVawhBsOoD37p8/YzFSlf+DdGVBJO5a+hLHkYSM0/ggd2E
        3x/Zp/XHjJgXwOXp99O8Mw2/6iNJbLDJApTcye4=
X-Received: by 2002:a17:906:b787:: with SMTP id dt7mt11099292ejb.320.1595688968572;
 Sat, 25 Jul 2020 07:56:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200724213659.273599-1-martin.botka1@gmail.com> <20200724213659.273599-3-martin.botka1@gmail.com>
In-Reply-To: <20200724213659.273599-3-martin.botka1@gmail.com>
From:   Martin Botka <martin.botka1@gmail.com>
Date:   Sat, 25 Jul 2020 16:55:33 +0200
Message-ID: <CADQ2G_G7N_iH523urk3wOieZ0bT7O88Vnnbq6r_h9A4GLXQ5Nw@mail.gmail.com>
Subject: Re: [PATCH RFC 2/6] pwm: core: Add option to config PWM duty/period
 with u64 data length
Cc:     Fenglin Wu <fenglinw@codeaurora.org>,
        Konrad Dybcio <konradybcio@gmail.com>,
        Jacek Anaszewski <jacek.anaszewski@gmail.com>,
        Pavel Machek <pavel@ucw.cz>, Dan Murphy <dmurphy@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>, Lee Jones <lee.jones@linaro.org>,
        linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
To:     unlisted-recipients:; (no To-header on input)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

As can be seen this divides llu by llu in few warnings and error.
At the time of sending i didn't realize it but this fails on 32 bit
architectures.

So i would like to ask how would you like this fixed ?
Using macro or some other way ?

Thank you.

Best regards,
Martin
