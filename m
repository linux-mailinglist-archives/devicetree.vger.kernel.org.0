Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 547812E97E3
	for <lists+devicetree@lfdr.de>; Mon,  4 Jan 2021 16:00:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727407AbhADO7k (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Jan 2021 09:59:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36270 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727340AbhADO7j (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Jan 2021 09:59:39 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B4DFC061574
        for <devicetree@vger.kernel.org>; Mon,  4 Jan 2021 06:58:59 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id a12so64989537lfl.6
        for <devicetree@vger.kernel.org>; Mon, 04 Jan 2021 06:58:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=xVbg/9337K0Ip60GD15691uF6SSutbUGQce683Uj4qw=;
        b=Iut0KXok5ey0haBtjfeAjjLqNi3G9W1vkeD13A0Ik5vUCWpJ+HDpRm2h1fki5PiFhi
         qKjgYtDkbRXM+C+zRIuFuGHVe7gLvqnkrtJ4xG3Nk682pyE9+YCQ5sEMR1nur8K7hM/t
         yi9/QPy5Kff8O+XucXbToVK0QFvhmc+12oI0LYYrmodZGPm0feYJZiVHFY3y597ctvNl
         rX6yQdJt/dmjoHMHAfzhUKtiDQQNyoS+s2B2SeCuNvY+axOVki4MAJ9EzrLgZKSeWEhv
         RzhNzoNXTd/elglaA7G5kZxiEKtOxkzgHr7C3X/T2v/7U+bjuHLqN2aJPBa26MasquZd
         XIXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xVbg/9337K0Ip60GD15691uF6SSutbUGQce683Uj4qw=;
        b=Az6hYqOqtkl3WDluPCaj/zd5KkSugkHhugX/gj7lFSALMcAB9WrOLPisLrCzMR4Wi3
         Yb95ueGlN5qJg7I5vWQWqgfOW/yH9mdn4pifKPtWFv4a46chbv7NsMCG5S6uU7dm0wy8
         9KCkVPoM+VBxmkKsrU9DfCMmkrtkxonc1TNFnR8EO6WMzCPCslaXWR3YweYz/iml3RBT
         6P2j5nWTp8K2aseIR9YqQVXLzfBy/5+uivyW/pYb+MxJVaXjhrQkY6CRbKay8OFbl1+t
         fMFeb3RSmvJndJY0RC6sxQI7XAW3QMjAMBAFMXnBztVWkPNpLpI9YLEgw8UmLtt+6Olq
         iyvw==
X-Gm-Message-State: AOAM530nnAsWKgZJtiMB+2O36/8n74pE80ZIY5aLRMNfhYo79N0MMEGS
        SHsVVCOf/Dr1KPsVrLvADsBqOeQP+W9yVpXOyoqoUg==
X-Google-Smtp-Source: ABdhPJxCNu35Ylb75XyJViFXGvclq2TO1RTTIwq5yDpbN8VP7zLiKQ8YN0rs9fDqAwYAX6aRjaqTRYp2pEGJDeXHBXw=
X-Received: by 2002:a2e:85d1:: with SMTP id h17mr34000037ljj.438.1609772338002;
 Mon, 04 Jan 2021 06:58:58 -0800 (PST)
MIME-Version: 1.0
References: <20201217144338.3129140-1-nobuhiro1.iwamatsu@toshiba.co.jp> <20201217144338.3129140-3-nobuhiro1.iwamatsu@toshiba.co.jp>
In-Reply-To: <20201217144338.3129140-3-nobuhiro1.iwamatsu@toshiba.co.jp>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 4 Jan 2021 15:58:47 +0100
Message-ID: <CACRpkdZeqqH_tev3USrC5BzX_w1rsjFQA=uGDZLPXZDG6jooKg@mail.gmail.com>
Subject: Re: [PATCH v5 2/4] gpio: visconti: Add Toshiba Visconti GPIO support
To:     Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Punit Agrawal <punit1.agrawal@toshiba.co.jp>,
        yuji2.ishikawa@toshiba.co.jp,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Dec 17, 2020 at 6:45 AM Nobuhiro Iwamatsu
<nobuhiro1.iwamatsu@toshiba.co.jp> wrote:

> Add the GPIO driver for Toshiba Visconti ARM SoCs.
>
> Signed-off-by: Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
> Reviewed-by: Punit Agrawal <punit1.agrawal@toshiba.co.jp>

This version is perfect!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Bartosz: this hits pinctrl but it's fine to merge to the GPIO tree, should
not cause any problems.

Yours,
Linus Walleij
