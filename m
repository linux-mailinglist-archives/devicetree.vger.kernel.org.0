Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5BC633EF40A
	for <lists+devicetree@lfdr.de>; Tue, 17 Aug 2021 22:49:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234839AbhHQU2j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Aug 2021 16:28:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54784 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234753AbhHQU2j (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Aug 2021 16:28:39 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A7C6C0613CF
        for <devicetree@vger.kernel.org>; Tue, 17 Aug 2021 13:28:05 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id r9so34331970lfn.3
        for <devicetree@vger.kernel.org>; Tue, 17 Aug 2021 13:28:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=To4Gp542jJmSWD7MdZF3sFHEVTOYykMS63VBniHZYPY=;
        b=bh2mF/LwnSNjB0vFwgLsICNog5EaVsCuDp6N1PNuDbocaQHr2wlqC5Y+ltDOrFGEN5
         u3Z7m+VT7UC2wOgSmWaW7dX9nP/LvrIWTk/0yppmVDoT5+QOBZiIGsJj2OmuPzoeTei4
         oILmZeAAMhVG7eW2qWwXU/Hb/OLRew/XWxASU5THx+BrQRMHGD/90BdnmRwSv+pkD9/b
         Ay/uWSYws4AJWv1n7Bf81YEk50I8wLvI6m8odvtn62SVoJs7HtS3XQYYYf5w6ZCfvLd4
         ft9Ml5Ku8Tu9BRE4MbLSeaSGUEA+PP/9x9kWK65bzsnuR5HIdKTS7sk8+UX++4Ht5ELK
         ICiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=To4Gp542jJmSWD7MdZF3sFHEVTOYykMS63VBniHZYPY=;
        b=JeM+gYMrP4eyG0ohs5SnE0mt2qdjcjprR9OrSQRHYHVwkkSyDvVgRESxbQoLgYVRbR
         3MdPkY+JX87dl+okZKnyiD8kbzEksmjXc68nk9/EaBXRxASmOqv4nrlPzvQTEJt+zMLk
         3XWz8OKXQSaZHYze3KA/h+VINPfbeC204QvK8/WkiXn8m5tscInwKzj4hI9nm9UlfV+9
         aqbqCBU5a6rcfUeeRcv+6DZs3MEmeJczKp5SpAe7CJsdwxb40u13VDEsmWo9sVLq2tL0
         1RwUayeeShC0mn18kwTsGRfhD4L33JuuCH0LtrgfrroxD9T7oHGdB0YKJHPvwaocEFr4
         puaw==
X-Gm-Message-State: AOAM531kvKTPMfbHdTCqDN0NjQ9K3NAau+TuMQJt/RmH4Fvf3fJxvf3j
        9hlZO/a9Zx5N232jPvFGUzHtt00+GKjIjIsx4VFa2w==
X-Google-Smtp-Source: ABdhPJyzKPGkscEIAtPNNEn9m7AoHY+m4cnw4vyR4NqDDFeYVO4Cju2uRh5QlVuft9THtbNOB39mT+PFjmHgsr2J1VA=
X-Received: by 2002:a05:6512:3286:: with SMTP id p6mr3626973lfe.649.1629232083711;
 Tue, 17 Aug 2021 13:28:03 -0700 (PDT)
MIME-Version: 1.0
References: <20210817174743.541353-1-robh@kernel.org>
In-Reply-To: <20210817174743.541353-1-robh@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 17 Aug 2021 22:27:52 +0200
Message-ID: <CACRpkdaoKyPO1nePBYuvwmqxJFxScVVwKgMfngi5UAyL5KmF5A@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: PCI: faraday,ftpci100: Fix 'contains' schema usage
To:     Rob Herring <robh@kernel.org>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        linux-pci <linux-pci@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Aug 17, 2021 at 7:47 PM Rob Herring <robh@kernel.org> wrote:

> The 'contains' keyword applies to elements within an array, so
> using 'items' only makes sense if the elements of the array are another
> array which is not the case for 'compatible' properties.
>
> Looking at the driver, it seems the intent was the condition should be
> true when 'faraday,ftpci100' is present, so we can drop
> 'cortina,gemini-pci'.
>
> Fixes: 2720b991337d ("dt-bindings: PCI: ftpci100: convert faraday,ftpci100 to YAML")
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: linux-pci@vger.kernel.org
> Signed-off-by: Rob Herring <robh@kernel.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
