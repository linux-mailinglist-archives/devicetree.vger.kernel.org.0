Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DD84251DFF
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2019 00:13:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726656AbfFXWNY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Jun 2019 18:13:24 -0400
Received: from mail-lj1-f193.google.com ([209.85.208.193]:35423 "EHLO
        mail-lj1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725881AbfFXWNY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Jun 2019 18:13:24 -0400
Received: by mail-lj1-f193.google.com with SMTP id x25so14181711ljh.2
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2019 15:13:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=E6ucUb/4G6TX7U6IlvaXO7Noph77Huv96zwgj/iVbk4=;
        b=Mdb29tXw/X8t1nTGw1Tb/az/GIy3MBpx/mG9kBd3XormoeMtZIiNk11sY5SclYB087
         C4XYpgkY6bBM5A1LgC+8ChSE8+hNnU/P6pDAwmHzzKztl4+9pGlxydZkItv+oZMfKfUh
         eJoCleDb/9fpZjoJJW99YaiZgFBCS5YnLl40mGgfl3C4X9D6QqPNnu7BJnshXGGDg+vm
         R9XtYGNyVdy5alZNZIwaHwAsmqrVCzdLhDdeMEh2Ulfg3Jz1LQqx08VSyPa0eGTuvAF1
         oBpQjRHm08vzaaolL5N3HfBcXBSaJidGyvBdAS7/ByxXCq4MsuGqdIGvpYxc4v4J+wRy
         o7Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=E6ucUb/4G6TX7U6IlvaXO7Noph77Huv96zwgj/iVbk4=;
        b=rla4e+xJhL9+fcS112g2twyXaSnhbs+3CP+RkWtO2VoMtX7ET537gxQXAcwC48BCU/
         38N9AKEBnTHqV1QncHSZVHmymgqLLJAl13YiKwqx2afVTvBun1PQ/ALeTuOMk3QSjWy1
         5TuPLbGX1fiBomS10oxL3AbVk8oR/qDEg8LmlcZ4JTTf74XBURG/ouseWKieaKs9H0Mv
         1IOM2hELIZyuER34r4t8caX+4vmlVIJqaXXB8+gsov0hFlA86R0PyJxQOzYxWe0meUig
         9iOCPtm0o2RsYSXVjW3+9SFXsgJbQ7Z/8rhkMdLr/b+m16aj6p/t7raDePVZsU0W8xDL
         nj6g==
X-Gm-Message-State: APjAAAWO4SlCJmmyyz3pmLE9mTGW7x5cVRw4oRTOkl3M5T6ycIlL7hXe
        N6EqdxFOU4Ukvylgi7HSgBa1eQxT1rtU2dJDVvmIl1W2
X-Google-Smtp-Source: APXvYqzuILOmlRlfzB4LigJuOFz6xkIbsL4hLOVKc/1qZByIgUnbCmOIDWO1UqiLgRGGrL9IShuXg3gaJHpmgCB46gU=
X-Received: by 2002:a2e:8195:: with SMTP id e21mr59447382ljg.62.1561414402129;
 Mon, 24 Jun 2019 15:13:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190624215649.8939-1-robh@kernel.org> <20190624215649.8939-11-robh@kernel.org>
In-Reply-To: <20190624215649.8939-11-robh@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 25 Jun 2019 00:13:10 +0200
Message-ID: <CACRpkdYKE=zLJhmTeTWYGRCQNt3K8+rNNqsp5UDa2d31GG6Y2g@mail.gmail.com>
Subject: Re: [PATCH v2 10/15] dt-bindings: display: Convert tpo,tpg110 panel
 to DT schema
To:     Rob Herring <robh@kernel.org>
Cc:     "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Maxime Ripard <maxime.ripard@bootlin.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 24, 2019 at 11:59 PM Rob Herring <robh@kernel.org> wrote:

> Convert the tpo,tpg110 panel binding to DT schema.
>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Maxime Ripard <maxime.ripard@bootlin.com>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: dri-devel@lists.freedesktop.org
> Signed-off-by: Rob Herring <robh@kernel.org>

Awesome, fixed up the MAINATINERS entry and applied and
pushed for DRM next with my Reviewed-by.

Yours,
Linus Walleij
