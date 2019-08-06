Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E692C83987
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2019 21:21:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725881AbfHFTVo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Aug 2019 15:21:44 -0400
Received: from mail-ot1-f67.google.com ([209.85.210.67]:35133 "EHLO
        mail-ot1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725798AbfHFTVo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Aug 2019 15:21:44 -0400
Received: by mail-ot1-f67.google.com with SMTP id j19so18665328otq.2
        for <devicetree@vger.kernel.org>; Tue, 06 Aug 2019 12:21:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SplwwiyeESrOxdFMQX+Fq9e1EkjSANi0+FEZLNzZBcw=;
        b=GTcns9OqwCG5oZbTUpNed9xNrtU/wRovnmqXkxfiThQYH6oTdEADwNbZwptfpFbeLZ
         DRNZm5fv6NGKHl+aw3DgDkUv+8Hb0+z0NurH80Hx2qzc+tmR9n1fUO2KeGBk/DsG6DMP
         BxeY4pbMONjTKI4MDrATtmZKZQjT6ce1QDOmuCFrMTvRMf4ha/Nq1mIsqBcbckoK4DYO
         if8qyn51WhvfLuv75nZfIMnI1pFwrmWS2SQIBqO7lTvuKweEjVw9Wv8pqP7dCXLvWu6O
         L3H/qgC3UbrXazxyJbW2szCYBwWEYticiaDOosYIxOj0mp1WYeXQBiQbWO/LtPjxzLnK
         oRZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SplwwiyeESrOxdFMQX+Fq9e1EkjSANi0+FEZLNzZBcw=;
        b=dQ2r84riXXOs3PdFroVcuJepP8GnRzzBzip62BX5vD9itEpwn3VcYOMFwukX/yXStW
         L7EE8vxxGhV55bxxYVCgz2x42IYFiMS2bgSnYKgyrgeu0bdcL9ILMbMvAaO0qdm6017M
         6bPeFTTryM4C5PXC2FteO2fHc9qSU6OEfmdcAKlYRbAx6vO4+s0IN6DndMkyjuzqZNAF
         jpQW9KFg48YmKPZJk7WjFDRBPxz8jKiW3JzET2SVBAVbSu5mF2AQkZx+/R89Pf9FTIa5
         rcn2yix+T3xdnY9IzgUJgVq8qbTIn/pOFm1/azqzw8EOKtDEYRB7RPVBO6LtIpJtoiG4
         bGyw==
X-Gm-Message-State: APjAAAV0WsouoJjYUDElpmUrnBQ7ntUZvQUUgq5sZZsD1Q14CUeq7DIW
        Ob4xeiCutqPdv79GWKNecdsKInScrxOWxToPqQQ=
X-Google-Smtp-Source: APXvYqz96GEQwQHe2/BNEUUe8sw0fk/npT5MtyHckYM2U7saF9YCBqZXlcIMLhzLoWrU0hflGxn5hB7XTEVnJCAQXvM=
X-Received: by 2002:a05:6830:1e5a:: with SMTP id e26mr4117308otj.96.1565119303263;
 Tue, 06 Aug 2019 12:21:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190805120320.32282-1-narmstrong@baylibre.com> <20190805120320.32282-7-narmstrong@baylibre.com>
In-Reply-To: <20190805120320.32282-7-narmstrong@baylibre.com>
From:   Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date:   Tue, 6 Aug 2019 21:21:32 +0200
Message-ID: <CAFBinCCqpSkzNUNz5pbct1G6TEsLF3AHLH=kqqXgwY2wzPCawA@mail.gmail.com>
Subject: Re: [RFCv2 6/9] dt-bindings: phy: meson-g12a-usb2-phy: convert to yaml
To:     Neil Armstrong <narmstrong@baylibre.com>
Cc:     robh+dt@kernel.org, linux-amlogic@lists.infradead.org,
        devicetree@vger.kernel.org, kishon@ti.com,
        linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 5, 2019 at 2:05 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Now that we have the DT validation in place, let's convert the device tree
> bindings for the Amlogic G12A USB2 PHY over to a YAML schemas.
>
> While the original phy bindings specifies phy-supply as required,
> the examples and implementations makes it optional, thus phy-supply
> is not in the required list of attributes.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
