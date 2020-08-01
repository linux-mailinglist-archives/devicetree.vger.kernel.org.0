Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 63BB8234F81
	for <lists+devicetree@lfdr.de>; Sat,  1 Aug 2020 04:53:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728402AbgHACxK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Jul 2020 22:53:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51806 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727047AbgHACxJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Jul 2020 22:53:09 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC4B7C06174A
        for <devicetree@vger.kernel.org>; Fri, 31 Jul 2020 19:53:07 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id l2so18972766wrc.7
        for <devicetree@vger.kernel.org>; Fri, 31 Jul 2020 19:53:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=xQw/GDvZAdqgK8PngDZUR70WBhENQwa4VO5dO5VMRYQ=;
        b=fvD9VkcpIpmLGOc0RN16Q3g+MDuB1wAVsNPB1I3qdv6BXascnBQB4/jFZkdPGFNPlb
         Ic2arZ3utbXNqLm5oNcWE388GCL0ou46KCU6Du0kkjr+1cndmEfqqXaeY24F59LG42u3
         IgGAnx1zhThprobHe2gfEmlVlaxeA0GpoVsVI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xQw/GDvZAdqgK8PngDZUR70WBhENQwa4VO5dO5VMRYQ=;
        b=WLiQrQmSiaYlz7aA4DnUCfk7KXfTGqCq2nnyhVB3AxQUt/5sjjs0h966Zd4MzlvqjX
         VuiUoBk8ZG0kzl9gx98zHi6KUJ5omhU3b9awxqVrsTE5fLZ/ZsRv3ge7xmkjymlIDfIl
         BM/BNyGz5krZWV+WqgTJ76jpkxHOlPk38g1Ca4f9BwRQ720puK2kBw7QOt3uFy9Z14jr
         8z/F2KahYKiSvXwhj66GvzDd9WpDeDVMV/MrTfCiFHHbnOhLqJbUl+FYdDZ1vi7hs0nz
         BzG8UnxhClu7lF0GnSeGzXZGI+bsf4Ous2+KjELWwZWVxe8qIfwgFxObdjTBWmtjaKOx
         SWIA==
X-Gm-Message-State: AOAM5331eY2l4O4nyOSJq1Cb7WTzLfxMUIF7M1q+hPn4wLmtSGuJvN0e
        h3ZBNvVAEy13kL/Cf7SJ7bLUAwXDxQDepAjyF17KlfVf
X-Google-Smtp-Source: ABdhPJzYPKm/erB6sVI52cjRD9FHiQr2nWVZVyOZjhc+4s1LOvf5ZcI3PFb7AEEsBm6nMUykRgV5fktNAgsesrmbuZs=
X-Received: by 2002:a5d:6641:: with SMTP id f1mr5731384wrw.307.1596250386460;
 Fri, 31 Jul 2020 19:53:06 -0700 (PDT)
MIME-Version: 1.0
References: <20200729150748.1945589-1-daniel@0x0f.com> <20200729150748.1945589-3-daniel@0x0f.com>
 <CAK8P3a2DY8kNMzZs6vpcsvpU1CaEQy6yCiHq40txEgUBn8d=wA@mail.gmail.com>
In-Reply-To: <CAK8P3a2DY8kNMzZs6vpcsvpU1CaEQy6yCiHq40txEgUBn8d=wA@mail.gmail.com>
From:   Daniel Palmer <daniel@0x0f.com>
Date:   Sat, 1 Aug 2020 11:53:10 +0900
Message-ID: <CAFr9PXmNLMXDXGOF+XDK1dPVY5OO6PfSvy54tLw-Wj-gdb8wBA@mail.gmail.com>
Subject: Re: [PATCH 2/3] dt-bindings: arm: mstar: remove the binding
 description for mstar,pmsleep
To:     Arnd Bergmann <arnd@arndb.de>
Cc:     SoC Team <soc@kernel.org>, DTML <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 1 Aug 2020 at 04:22, Arnd Bergmann <arnd@arndb.de> wrote:

> This patch for some reason did not apply, so I ended up removing the
> file manually and using your changelog.
>
>       Arnd

Thanks Arnd.
