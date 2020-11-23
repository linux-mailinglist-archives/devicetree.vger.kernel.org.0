Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B3D322C0DB9
	for <lists+devicetree@lfdr.de>; Mon, 23 Nov 2020 15:41:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389179AbgKWOcG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Nov 2020 09:32:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389130AbgKWOcF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Nov 2020 09:32:05 -0500
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com [IPv6:2a00:1450:4864:20::141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53A08C061A4E
        for <devicetree@vger.kernel.org>; Mon, 23 Nov 2020 06:32:05 -0800 (PST)
Received: by mail-lf1-x141.google.com with SMTP id z21so23975772lfe.12
        for <devicetree@vger.kernel.org>; Mon, 23 Nov 2020 06:32:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CD/fQep9OsiPNeBueraAPkoryFQ/vLrFoZEixh/G32w=;
        b=B23wlcJH+h65Oy3GOsnudV95X0Xup3PY4Z8RpaKih0qYIno5amPc/+FdCSVJCj6m7U
         8U8Pc7tLOLeXQkimJ5BOKLLYdzMTmGR+/plmRepLBDr6vuYU1c4Mss1x0/fqA4+xIO5O
         DsLfCP0jzl9hGiUvhnjb9IeViXxf9lypNpl4Tx39WdghoKy/UHxw1Yl46bX4WyB592y9
         A502hG1TQCbr0E+LfKAT33rIDSzTpRb/yTlhzNJnGbqJx8uYS3ZWMfbKuP3fXYlFyH8w
         TVajzuVtjqWewR1h9+QMQrbQG6boxLL7a19eUG8WZSGhP74kfchf1B0xdIG3miKTt9Qg
         4D/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CD/fQep9OsiPNeBueraAPkoryFQ/vLrFoZEixh/G32w=;
        b=aKZUULzc+U/dnoazZjvWRyLqHQPQgeYbpoSkR9waHf4lZ5p9JbNeOaTSeR5q2X33YM
         bbL3qsWm/pO05mZWIdpU78XK22Hh9T96nw35ao59mXd3HQKsaZnilkd7cy369J2qLrKK
         J5VxQKgj4LdzoXSsW9lJxZKzRhW+97sHd5EcB05TL/Vk5UxXuLjyowzx73kfFAIi00EO
         qty2iNsxnofY29BdahOCDredjU+xUa6ClmP2+AF+r657t/fuc3LYLwCxMrvXvxC4TQVt
         yaVSMN99nCZ5cS7IjpFTTuNvEL7VOQ+iGLMSrFdpDeT42xh6sVqC8+Jd8TZd11bnTP3l
         j3Xg==
X-Gm-Message-State: AOAM531j6RrbnWDB05FeY0F52wv6lDAUIvuy1SYl7+7xPsfRESstmAla
        UE5PR49VSksILXG/NnPLyFrLgleX05Xl6sD5tlV4FQ==
X-Google-Smtp-Source: ABdhPJx3/GiTdrK6xYxnUkNa0bd9c+GF88T8obU8aOlbCwnyfO7IZEeHl3HBCCg6OK8iuW/g1BPwo3ZtShcB2FSBm3k=
X-Received: by 2002:a05:6512:3e7:: with SMTP id n7mr12620380lfq.585.1606141923819;
 Mon, 23 Nov 2020 06:32:03 -0800 (PST)
MIME-Version: 1.0
References: <20201113145151.68900-1-lars.povlsen@microchip.com> <20201113145151.68900-4-lars.povlsen@microchip.com>
In-Reply-To: <20201113145151.68900-4-lars.povlsen@microchip.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 23 Nov 2020 15:31:53 +0100
Message-ID: <CACRpkdaYHTTXC2gEgtCvDk9N8AqWeUyFSXyWp2aiEd97hk55fA@mail.gmail.com>
Subject: Re: [PATCH v10 3/3] arm64: dts: sparx5: Add SGPIO devices
To:     Lars Povlsen <lars.povlsen@microchip.com>
Cc:     Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Andy Shevchenko <andy.shevchenko@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Nov 13, 2020 at 3:52 PM Lars Povlsen <lars.povlsen@microchip.com> wrote:

> This adds SGPIO devices for the Sparx5 SoC and configures it for the
> applicable reference boards.
>
> Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Please funnel this patch through the SoC tree for this machine.

Yours,
Linus Walleij
