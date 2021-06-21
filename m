Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D2F623AE72A
	for <lists+devicetree@lfdr.de>; Mon, 21 Jun 2021 12:30:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230061AbhFUKcy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Jun 2021 06:32:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60708 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229641AbhFUKcy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Jun 2021 06:32:54 -0400
Received: from mail-qk1-x736.google.com (mail-qk1-x736.google.com [IPv6:2607:f8b0:4864:20::736])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 355B1C06175F
        for <devicetree@vger.kernel.org>; Mon, 21 Jun 2021 03:30:40 -0700 (PDT)
Received: by mail-qk1-x736.google.com with SMTP id q190so26426434qkd.2
        for <devicetree@vger.kernel.org>; Mon, 21 Jun 2021 03:30:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=DeySwvB/L6nRcxyc3RUUU/XORVsjO8A0OuiLh/T9c9E=;
        b=e3fOXIsdHN8zBR5AjQWgc4RNrsDP1MXpB7+IkfN5wdlTVxLZn8JKTfXMYbfZeR95XK
         S5ft47Nf2INeLNoUgoXUSrOPeX5tsT0+kbat/e75YnxfQxJ1RdX4AXSxI6cdFb5M4H9w
         Z8KqflUOF+SZCWGRLTL5qW9AV3tfIVjYyAWdtT3bjFseHVHp+YjabZ3IZowO5tHiL6S6
         7yVu/h8HleEmpKORVXdljtApCwHoVXccETcuFSxuKdPQOgeZAXOgBkoqRWPQKEDZ2ZpS
         hu5il66gQ3oID3VF6R7aPQICa3fXo2PjZXXQy6GJ/l3JSDq60riUZxczsTnfs8ahPv1H
         +pGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=DeySwvB/L6nRcxyc3RUUU/XORVsjO8A0OuiLh/T9c9E=;
        b=JcfemAd0bjv1GQ/qLSaWuG9QDbK/KwnEKG/HWx9Xz967eSWaUCrieSeEw7Q1iHsOOW
         6XY4cNbBUGA5VwRZ5ZghIc55xUHzWHw5nBlPUZsOXbnTJznFqgdA5VrkRSU9Pkn+v/pl
         je+/vdT+H53BmgPNdKg024951ufmFyFtkgfiFHwZAv/pifJug+XbrDeJ9adpC7F7IcE/
         m0hKYyPIcuFoCzhYEyQ/oQzFqdRmfbwEiF5cck9kpuOIRkhinsnx+xXVR36stRJm1yUS
         82d1MGHZD+jWvRPRuSW6AvrzbrM1x+VRt6MzSZl1CXroMulC4HxKEbwTVd9k1Oa5bsQj
         rVIA==
X-Gm-Message-State: AOAM533V/IQkxdI37EY8dYm0SvGrjuMp0VG6lcJAUXQSwpcCKkYVuUlz
        6AYmSR6+rFbe9LCy/QFGg7gsj4xQof/FuSg8k5h78Q==
X-Google-Smtp-Source: ABdhPJynErsP1ymVSnLK/htXoVZUp48gWLGb5+JZcWWEkfT3WPJcFvso38Auforwlu+DimLlQo3C8a8PDp40Kmu89do=
X-Received: by 2002:a25:738e:: with SMTP id o136mr8451107ybc.469.1624271439447;
 Mon, 21 Jun 2021 03:30:39 -0700 (PDT)
MIME-Version: 1.0
References: <20210531120753.719381-1-iwamatsu@nigauri.org>
In-Reply-To: <20210531120753.719381-1-iwamatsu@nigauri.org>
From:   Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date:   Mon, 21 Jun 2021 12:30:28 +0200
Message-ID: <CAMpxmJUcscOAf2_VsOF0TbKT7KyAi6MdVkptF5+4_hmdEUG2pg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: gpio: zynq: convert bindings to YAML
To:     Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Michal Simek <michal.simek@xilinx.com>,
        linux-gpio <linux-gpio@vger.kernel.org>,
        linux-devicetree <devicetree@vger.kernel.org>,
        arm-soc <linux-arm-kernel@lists.infradead.org>,
        LKML <linux-kernel@vger.kernel.org>,
        Soren Brinkmann <soren.brinkmann@xilinx.com>,
        Harini Katakam <harinik@xilinx.com>,
        Anurag Kumar Vulisha <anuragku@xilinx.com>,
        Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 31, 2021 at 2:08 PM Nobuhiro Iwamatsu <iwamatsu@nigauri.org> wrote:
>
> Convert gpio for Xilinx Zynq SoC bindings documentation to YAML.
>
> Signed-off-by: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
> ---

Applied, thanks!

Bart
