Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5E78FC989C
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2019 08:50:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726808AbfJCGuv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Oct 2019 02:50:51 -0400
Received: from mail-io1-f68.google.com ([209.85.166.68]:33349 "EHLO
        mail-io1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725879AbfJCGuu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Oct 2019 02:50:50 -0400
Received: by mail-io1-f68.google.com with SMTP id z19so3121845ior.0
        for <devicetree@vger.kernel.org>; Wed, 02 Oct 2019 23:50:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ZHYvlpN03aN9XlL85X95NOUwb+VywcBIMog6JdvU8/E=;
        b=TPFD+Yd6CfTdFITa1ngVIu7bhHHpMGlesUhtu9MDTLyuP4HMgvy5WMD6yyY9KoFNW3
         ULlEEjL/G+DiRVPDmI16XEM5gcI+L9El120dH3U1ZMT0cm1lcBnN6D4y2tXwllLYtcPN
         nc2TkrkJ2eYpF/SLjZO42qi/FTcx1ZBzS8t0E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ZHYvlpN03aN9XlL85X95NOUwb+VywcBIMog6JdvU8/E=;
        b=pb3AO51sK+h64CnRb6pROllK4I1aOmV2y+sYpEZ4IDbWnpMovQ8ckoMge1auV7exes
         i8a1U7s1neL2gyBYQSnWtyG6NSMQVAToclUnhJSnsSF7i8llMpvOVKNuihnGQ5Doht4f
         pk2OGT3xmKSxABz/qFNkJIlK+VCYnkQ/432Z50vnZQTYGZLki/ZRaYEfhW0YH/rAAhAg
         GF2/cY3vIuw3JMZbADKnxEegZBaRTgkEKUDn6RsrgZ5tHzScQbN+gRH37vxG13TNJdTv
         pukC618YnRGRcPWUWyW5ya5Ra1/fuAUHkCMTdeiyTJOx9GfTzBaVsMjJeb/G2MAGNF5I
         vCoQ==
X-Gm-Message-State: APjAAAU77VN9qlJk4eZ8I2wy7niTNfjxXELyEuFqiWMflJOwzUaEAn5i
        kbMdmJnd5QKQQZR7K9rdbyvTR9SP6bLNIFuVtGeoBg==
X-Google-Smtp-Source: APXvYqxidNtZbs0x8HYndi+juRNw13gBCSF4Pfuk3ENR73KLAzRF4+IeuTb4FHlPvke2H95mbMi4Mwo+TGNlA/lh/QE=
X-Received: by 2002:a6b:2b07:: with SMTP id r7mr7235777ior.173.1570085448370;
 Wed, 02 Oct 2019 23:50:48 -0700 (PDT)
MIME-Version: 1.0
References: <20191003064527.15128-1-jagan@amarulasolutions.com> <20191003064527.15128-8-jagan@amarulasolutions.com>
In-Reply-To: <20191003064527.15128-8-jagan@amarulasolutions.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Thu, 3 Oct 2019 12:20:37 +0530
Message-ID: <CAMty3ZAHPWOn=h04AjGLf33uGhW4MxqpU4z1izGp0BgUmyOiLQ@mail.gmail.com>
Subject: Re: [PATCH v11 7/7] ARM: dts: sun8i: bananapi-m2m: Enable Bananapi
 S070WV20-CT16 DSI panel
To:     Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>
Cc:     Michael Trimarchi <michael@amarulasolutions.com>,
        Icenowy Zheng <icenowy@aosc.io>,
        linux-sunxi <linux-sunxi@googlegroups.com>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Oct 3, 2019 at 12:16 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> This patch add support for Bananapi S070WV20-CT16 DSI panel to
> BPI-M2M board.
>
> DSI panel connected via board DSI port with,
> - DCDC1 as VCC-DSI supply
> - DLDO1 as VDD supply
> - PL5 gpio for lcd reset gpio pin
> - PB7 gpio for lcd enable gpio pin
> - PL4 gpio for backlight enable pin
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---

This would be an overlay patch, which doesn't need to mege. please
correct the same.
