Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 64440396CE
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2019 22:28:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729952AbfFGU17 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jun 2019 16:27:59 -0400
Received: from mail-ot1-f66.google.com ([209.85.210.66]:43274 "EHLO
        mail-ot1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729118AbfFGU17 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Jun 2019 16:27:59 -0400
Received: by mail-ot1-f66.google.com with SMTP id i8so3025173oth.10
        for <devicetree@vger.kernel.org>; Fri, 07 Jun 2019 13:27:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rKRrV5I8VjyJvam3bB7neEdoqv5gjI88+1EhoJXrUzw=;
        b=q6Cb4yG5ehoiqZVyjYv2fFh51psnKm6V3rOQGhXrMDaSMNHiBGLc1EeikHt3KuHjK7
         3ygXxVTXQ+5mlxKAq1ThX8xsl1mDZ7mB0z0ML0VuwQc/Y9pqjJYGw7mo9IvbUq/WXswa
         j64OJFrXcLZPS0kTCupD+K5hFUXC3k3b+O4OGvI0k2SSYUiuORs4WJtYHjW1woV0E0Gq
         DMiaBvd9K0cuBMWs0Jwe9TxLggRC4M+OdkJui1rLL/P4XpnJjvH8lfAxIwrl3ykaT8e2
         QOEPxbGp03oA+6pnk7V4kJU+LieSZQ5sBcVGQ9WvtNYId6jc2T/ihuyw3cQ05k3uF2ZO
         3wbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rKRrV5I8VjyJvam3bB7neEdoqv5gjI88+1EhoJXrUzw=;
        b=lfNCjzgCPlljhr1UuhmuJGUu8p9m2ME+xx4yooPqJstU3QbDvstaXzKNH4qNvi6cQH
         DsG3e/ox+/spAEdndYK7aPWblRLTMlwWQ9fc/DbRKpeC9sv0M82YXys1PZiE3POYprpb
         4zjqJ0KEH8lDebPNJM3hf/ItNtDnStQqPcxjqtBt7nX4ahZtcSUm50MdyaOPyEmkZiFK
         zzbHQoU7Vhil6UAehZoJ7gVcVxgX9FhV59q9vyQkOhIcYfwtrusnhwZACPT8LUobo6J9
         sv0seNn5Ey42C9zDU46XolD8MfbZLcN760jSSTV4p8IR3MErv6oXNQ0IzhRcJfqX8jkF
         SKLQ==
X-Gm-Message-State: APjAAAXKpA771Dh694P7dmk1ELkzWEQ2o3yBB84upwTkxV9NnYLK81rq
        VookzOJuO0ObdxH8L4AFu8a5DctWH0LvZRT7/Ps=
X-Google-Smtp-Source: APXvYqzLVE4+OIY23DLobobDWO7B21k1vW/vxjpOeH7f8rjTU08f7GPmOeTc9E0c9jJDaMl/5Wig8HrSjydoAOCshlE=
X-Received: by 2002:a9d:14a:: with SMTP id 68mr1633949otu.96.1559939278412;
 Fri, 07 Jun 2019 13:27:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190606132439.25182-1-krzysztof.michonski@digitalstrom.com>
In-Reply-To: <20190606132439.25182-1-krzysztof.michonski@digitalstrom.com>
From:   Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date:   Fri, 7 Jun 2019 22:27:47 +0200
Message-ID: <CAFBinCDKPTBwhG-PGFoz25iDq5-DfMT3y3b=k1VJ7MFPnwezFA@mail.gmail.com>
Subject: Re: [PATCH 1/2] meson_sm: Extend meson_sm driver to be compatible
 with gxl chip
To:     Krzysztof Michonski <michonskikrzysztof@gmail.com>
Cc:     khilman@baylibre.com, linux-amlogic@lists.infradead.org,
        devicetree@vger.kernel.org, afenkart@gmail.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Krzysztof,

On Thu, Jun 6, 2019 at 3:24 PM Krzysztof Michonski
<michonskikrzysztof@gmail.com> wrote:
[...]
> +struct meson_sm_chip gxl_chip = {
> +       .shmem_size             = SZ_4K,
> +       .cmd_shmem_in_base      = 0x82000023,
> +       .cmd_shmem_out_base     = 0x82000024,
where did you get these values from and/or what issues did you see
with the values from GXBB?

I checked Amlogic's buildroot kernel whether they are doing something similar:
$ grep in_base_func
buildroot-openlinux-A113-201901/kernel/aml-4.9/arch/arm64/boot/dts/amlogic/mesong*.dtsi
| cut -d':' -f2 | sort -u
                in_base_func = <0x82000020>;
that includes GXL, GXM, G12A and G12B. however, I admit that I didn't
have time to test your patch yet (so it may be just fine and the
vendor kernel is buggy)


Martin
