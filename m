Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8F163438C26
	for <lists+devicetree@lfdr.de>; Sun, 24 Oct 2021 23:34:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231479AbhJXVg6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 24 Oct 2021 17:36:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231394AbhJXVg6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 24 Oct 2021 17:36:58 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13787C061764
        for <devicetree@vger.kernel.org>; Sun, 24 Oct 2021 14:34:37 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id t9so8563648lfd.1
        for <devicetree@vger.kernel.org>; Sun, 24 Oct 2021 14:34:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ZPW7xjaRp4Hr+hJkHCqWII1gH67HS4t+IkCZy7aFFFc=;
        b=GGQ8UArU56cB+RD+AoCYyoP3l+siFbiwdTtCXNqsFe7Zc2KxwKhe9naYVlzQmG1AsF
         cyfhgKVfYMm6vS97ynkA9MyT3M8kV+JDkML0JVG9gwsicuCK1I5UIRDq5l3AzgOKfzeK
         hac4/JABp3qj4ajJt+8KDpPo+vlvcmjOx5Ex5C7KY/u+o6+91jk6kv7BKsa/ID8gR26o
         ipoAt1uPafBDAS4nwVvAtMHU03m4DAvmHZM2tT17wLilrGTVrZmnY3IQa5YsX0NvytzQ
         vM57gVSehavr0lHOyV6Xe8CgLsLXxnEEgv7KlqoaPzkXCcCTMevL0a+6Nwvwy5e2SNqZ
         EpIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ZPW7xjaRp4Hr+hJkHCqWII1gH67HS4t+IkCZy7aFFFc=;
        b=N08oGd7FPt5uvlfH0JKWQJbC0U/HfYlD/pM+9AVdib923diKo91zkYf2xPL2FLc+vz
         6kRL2Mo2uN9j10R0q49NovNWrEt7gXdzAbMAVSnSxfKzRcHcJAxWiy8Cr/ZFeLv21TGu
         Yt+WwI+HxBZILNSP4BYxCionF+Iav8MrvbW3xNLZ7Z/dzoKuCb/UvguQ0ok57kScB3+6
         877EweOTBL6eAcT1GLVPwVA+FLuAvgEVGne/O0H9plOFHcb+efRot1cc980Q3juaAybb
         pi37TkygR+ZIosBoHy3uPjRrxFffZZBMcTbBnhtmOhU2mTirv/HgXE12GxGHAKryxaMV
         +wIQ==
X-Gm-Message-State: AOAM531iyUTzyILSMFgfDdAUqtdPAbpwqGQwau7npdh8PnBVZ4Twqn10
        YtssgHt9vLZFU+TWMyNpqLzIlu7GDalaKyG+x4t49A==
X-Google-Smtp-Source: ABdhPJzQFEsPjqi9ritYdnxfHCq3a6oU++3lC2ldocq8lg2iM+o9YuX9jBIGxGJrQoDOE3sdVW1QNhci37L3+Cjz9Es=
X-Received: by 2002:ac2:430d:: with SMTP id l13mr6578344lfh.656.1635111275299;
 Sun, 24 Oct 2021 14:34:35 -0700 (PDT)
MIME-Version: 1.0
References: <20211024101838.43107-1-joey.gouly@arm.com>
In-Reply-To: <20211024101838.43107-1-joey.gouly@arm.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 24 Oct 2021 23:34:24 +0200
Message-ID: <CACRpkdZ26Qt00YU5sPUVVag4FRHK631iO492G_cA6yXhgQdO_A@mail.gmail.com>
Subject: Re: [PATCH v4 0/5] pinctrl/GPIO driver for Apple SoCs
To:     Joey Gouly <joey.gouly@arm.com>
Cc:     "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Hector Martin <marcan@marcan.st>,
        Marc Zyngier <maz@kernel.org>,
        Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
        Sven Peter <sven@svenpeter.dev>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Mark Kettenis <kettenis@openbsd.org>, nd <nd@arm.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Oct 24, 2021 at 12:19 PM Joey Gouly <joey.gouly@arm.com> wrote:

> Here is the v4 patchset for the Apple pinctrl/GPIO driver.

I'll wait for Marc Z:s comment on the irqchip instances, I'm
lost myself, I always solved it with per-instance irqchips.

Otherwise the patch series looks good to me, if Marcan
ACKs it too I am ready to merge them!

Yours,
Linus Walleij
