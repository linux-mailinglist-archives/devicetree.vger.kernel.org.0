Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5170B39319B
	for <lists+devicetree@lfdr.de>; Thu, 27 May 2021 16:59:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236708AbhE0PBM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 May 2021 11:01:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236655AbhE0PBL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 May 2021 11:01:11 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B11C0C061574
        for <devicetree@vger.kernel.org>; Thu, 27 May 2021 07:59:37 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id f12so1243402ljp.2
        for <devicetree@vger.kernel.org>; Thu, 27 May 2021 07:59:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4xbGiR54Yx6gg+pVE2EkTSvl0jDhj1rav2WrSXNnIPE=;
        b=U1CDiYnRkPbC0bAmRjtb86+lsNu8KCuS0oRuTosKG6SCR3E/3L9BEi5177vck2m7zA
         MgV6Ont/sAdDPDRIT+ZzjeUt2r9DGVsdlVzag+Wi2dMRxW5F8OIBT+kOhxY2vqW5Uw2X
         m3T352hrAGv991hA89cVPZ83+mEAA+s0Cj0g4dgdTCQptZNE7XCGc4McY0UZMpZlrk3u
         ZPB/QjBiJfOGFRU3fz4OZi+Si99M4kNr+oLeSG446m8azInQcNEIn1u/PRB+6DoD5lz4
         xsIe47OTb4GBfzaK6R6QZf4YW9TJYIb8iw2VAIL+wxp+W1JeOFUyHIWhIFnBPhNliBY9
         uIVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4xbGiR54Yx6gg+pVE2EkTSvl0jDhj1rav2WrSXNnIPE=;
        b=BwoRnQUWnIjLrwyCAgUOtFisZ9RaQXTGW3k657Gr/l3LtjjkNoppwemP6oy95a/YHX
         VXyw4+kr2/eGeV8goDDt3KmrcDloHyOcTcT4qc6efWpS55GOJCGhLQRMU5Jx5k0iQROP
         IyiOsXj3mL3dqNSlLgbbevHG5ttYpeqVRAU3JM9KGdzJG/J30sEEYkyyg/fb8Vd0706F
         mPJRUWN8SpxEZVg3+HdlBMma9Vzc3W6BIk28jisSbz1A46c+zY2tCtbpMsoKRDQcjoUK
         xVukN1MLf3XXmIku6BlmV6eHSTKVgnL30eXhd4BcR5RiYr58SlVKdlHoCqCcRsE8GTKu
         2e0A==
X-Gm-Message-State: AOAM533tIhvX4iPDDTovzwFVEmF/DDNitTyN6U68Wl+Io5e9HTWqbOHE
        XuUOIaL72+FG+OwMuKncd0b55T2Ho2Mp2+r2gA2tZg==
X-Google-Smtp-Source: ABdhPJzKbt5zIp2uVTh5CSDjLDATaaINbEMq/M8s0jX7ciAj7dfweUNH5poTdJ7pW9yPY1DQ+VUJ36hs752rsbqMFZg=
X-Received: by 2002:a2e:22c3:: with SMTP id i186mr2997277lji.273.1622127576068;
 Thu, 27 May 2021 07:59:36 -0700 (PDT)
MIME-Version: 1.0
References: <20210523173910.661598-1-olek2@wp.pl>
In-Reply-To: <20210523173910.661598-1-olek2@wp.pl>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 27 May 2021 16:59:25 +0200
Message-ID: <CACRpkdZH4mqp6xc40XZmNS3+UmrZ9K3Kkj3ek+u9bz4im9QVXw@mail.gmail.com>
Subject: Re: [PATCH v3] dt-bindings: gpio: stp: convert to json-schema
To:     Aleksander Jan Bajkowski <olek2@wp.pl>
Cc:     Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        John Crispin <john@phrozen.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, May 23, 2021 at 7:39 PM Aleksander Jan Bajkowski <olek2@wp.pl> wrote:

> Convert the Lantiq STP Device Tree binding documentation to json-schema.
> Add the missing pinctrl property to the example. Add missing lantiq,phy3
> and lantiq,phy4 bindings for xRX300 and xRX330 SoCs.
>
> Signed-off-by: Aleksander Jan Bajkowski <olek2@wp.pl>

Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
