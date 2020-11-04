Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D18CD2A66AA
	for <lists+devicetree@lfdr.de>; Wed,  4 Nov 2020 15:46:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730299AbgKDOqc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Nov 2020 09:46:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730291AbgKDOqc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Nov 2020 09:46:32 -0500
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com [IPv6:2a00:1450:4864:20::242])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0FE43C0613D3
        for <devicetree@vger.kernel.org>; Wed,  4 Nov 2020 06:46:31 -0800 (PST)
Received: by mail-lj1-x242.google.com with SMTP id d24so23196885ljg.10
        for <devicetree@vger.kernel.org>; Wed, 04 Nov 2020 06:46:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=MaiOCdl+gFV/W3GxQBKOzgnoA8DGUtjj+AflxrXx1VE=;
        b=QNApSReGppzoDLJ1EOPy3ksAEqpTVn9sY9zPO2GjSAfz0VQeBRUw7QwxMR8IRUxRMj
         uAirIHE2Wcug+fgxUTz6VshERw5LFl7kShV/rWLrGSJ5nI6kVc9+E4EcLO7vdaJKkcwl
         1PEqMnQzqY1c8ra2PCBHji1zaFFmo248zpwRgWVQZrM9QLhUosImyiY2CpzueyIXnzFw
         nxDtYM7QCBPAYhiSaY154in3xIx/NYuBTLgdIDntmIfNOb9ixGPpnSuvZOPYg9sL0CVY
         gLe6CKZgK9mNlyAgOhGyn4wD2zz1Cxt8w84BGSbgPcEkaEB0i8pQ29Fa1XIM34SX19g0
         etMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=MaiOCdl+gFV/W3GxQBKOzgnoA8DGUtjj+AflxrXx1VE=;
        b=GVtHKYPwFWBUwUvzupDDOhg6LzySYB4fxASx7/MXWHf6O5y2OTwqaHHjZsIzqcwxry
         KjaW+cZg/msi+yda0x/MTHXqbPqr1PuInUdR6ONEe5I8/Zs2p9/YLEwMKzjw4vfZwfzn
         RijvKYZnMcj/DMe3bkbwESQbT3CsFhADIg3j2V4KOOFIFvMIBBLrK+QC99moA5t1ZUZn
         eYw3hHS7vIWP09NavCr56xDydd2CjeOjlDuDN7OGp8g5b/HWTJb6HY3e7Zraj4Op21/P
         QTPfwCCgkamyjqH4fe1cnQZi9gKaB/exvbe4yvYjmGHe7kXNV0Ty2dJID069uY2FZ3Ph
         N09Q==
X-Gm-Message-State: AOAM530EjWREBOvJ8g7E093xcdT2NpazttiIzklLXm/8qGLxoINgI4m6
        y7k/U/CB8tGhkKOnPU7fCDnfUluY4GCb7APg1GpCD5ZmU+JVykjY
X-Google-Smtp-Source: ABdhPJyBI14KChgSLBwhEMe8iVmpquoINeKVFw0+u3m71Mf9awhJXdl0JA6nhPdMeH73CcASuZMLW5J5+PhrWbVs4zU=
X-Received: by 2002:a2e:9a0c:: with SMTP id o12mr10425849lji.104.1604501189577;
 Wed, 04 Nov 2020 06:46:29 -0800 (PST)
MIME-Version: 1.0
References: <20201031181242.742301-1-jic23@kernel.org> <20201031181242.742301-10-jic23@kernel.org>
In-Reply-To: <20201031181242.742301-10-jic23@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 4 Nov 2020 15:46:14 +0100
Message-ID: <CACRpkdbuuiwxmr4BdOHn2LRckhc7+cRb7JCaoVpsL8aR9s65tA@mail.gmail.com>
Subject: Re: [PATCH 09/10] dt-bindings:iio:light:capella,cm3605: txt to yaml conversion.
To:     Jonathan Cameron <jic23@kernel.org>
Cc:     linux-iio <linux-iio@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Jonathan Cameron <Jonathan.Cameron@huawei.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Oct 31, 2020 at 7:15 PM Jonathan Cameron <jic23@kernel.org> wrote:

> From: Jonathan Cameron <Jonathan.Cameron@huawei.com>
>
> Simple conversion using the new iio-consumers.yaml binding in the
> dt-schema.
>
> Signed-off-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>

FWIW Kevin Tsai has listed himself to maintain all Capella
drivers, also this one, so maybe he should be added as
binding maintainer as well?

CAPELLA MICROSYSTEMS LIGHT SENSOR DRIVER
M:      Kevin Tsai <ktsai@capellamicro.com>
S:      Maintained
F:      drivers/iio/light/cm*

Either way:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
