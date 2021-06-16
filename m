Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DF84E3A952B
	for <lists+devicetree@lfdr.de>; Wed, 16 Jun 2021 10:38:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231727AbhFPIkg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Jun 2021 04:40:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231602AbhFPIkf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Jun 2021 04:40:35 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02089C061574
        for <devicetree@vger.kernel.org>; Wed, 16 Jun 2021 01:38:29 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id q20so3007803lfo.2
        for <devicetree@vger.kernel.org>; Wed, 16 Jun 2021 01:38:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=g/rrUBRBKr4+tIfljhgk6uKWo9IRMgLxxsoOB9I8YGI=;
        b=QYGc2XXGDuQT8k39pSCunL/cqnKQ4dae501GTofBf0roPJEm83xUKWTiW5EN3K4biQ
         Xb+9+mDa/5GMPvPjUTjlCYEbTmcz2x5gZhL1tDtNq+0FcKb7AYPD1R8t7/CH80W+ax5T
         gbm4VWsurXzothvPvZW10287TGFQYCWAt1GtJDahhVW9PfSAQjeH/u/UfpffzgxlyDq7
         T8SGNJdpKEUz9CVGMbWZKkRQm0uuuK1+wwHgCIGWJ4CiNX6K7Wi5huA7ljOi28E2zDsC
         ZMReRZVT23gS4JPlk1OqT0nn78Ox7MoQMUg8eW9DiryxL7CFc+XlmA5AmJ3znrrqI8wV
         8xcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=g/rrUBRBKr4+tIfljhgk6uKWo9IRMgLxxsoOB9I8YGI=;
        b=IVHnXokrXUuxunwHaC7HGtbfVgHAjUjOpB2uhrilMRgV+4xt7IWZK9SksnMrwn5o2P
         qn9etzkIcgD0HqTjGVioNkpLSItBj2luE0VlV6awcpGAyhjrc4cyNk36vK2uVUqLEX66
         uez5ci6UtgmLsH0K7nsIEtfXdUJdOxmqX2Wz8rbUG60+J3nZO6ZhnsSnxaSo4LMb32Fe
         +a/Y/8V3S6JEvofiBM5L9xgpelNC6vJ8ylHZ/eCXBLhETevcG38JEBqgGwc+HedgZgDJ
         /fXPjo1olNF4EiAl/mkCuMV/zneZ1TGjw82FZ+pNc2zYXqzrhv7wazmSvWSS4pqCy2gj
         WYUA==
X-Gm-Message-State: AOAM532t24li0j2v60AWJM2L1+rXzz7Iqaif7C9m0nvaj5AyB9YnRRAt
        rQfsK6xPm33mmIDryK2QMrgACAeaTg7WnvAGFzbjKw==
X-Google-Smtp-Source: ABdhPJzV8rcxUyxYn8NVP3dd+mKcvzZFOcNT17YroYdYGlp71gmpX2hIgMkExGRpBrdNAGn4haW5sKD6K0oc9a5jmsU=
X-Received: by 2002:ac2:4c8f:: with SMTP id d15mr2787448lfl.157.1623832707400;
 Wed, 16 Jun 2021 01:38:27 -0700 (PDT)
MIME-Version: 1.0
References: <20210614163150.7774-1-stephan@gerhold.net> <20210614163150.7774-3-stephan@gerhold.net>
In-Reply-To: <20210614163150.7774-3-stephan@gerhold.net>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 16 Jun 2021 10:38:16 +0200
Message-ID: <CACRpkdYSpf32bR4MZ4ZdMA+-tR5=OC-HXhEOP9x1ihxcDseZug@mail.gmail.com>
Subject: Re: [PATCH 2/3] dt-bindings: iio: accel: bma255: Sort compatibles
To:     Stephan Gerhold <stephan@gerhold.net>
Cc:     Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>,
        linux-iio <linux-iio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Hans de Goede <hdegoede@redhat.com>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        ~postmarketos/upstreaming@lists.sr.ht
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 14, 2021 at 6:34 PM Stephan Gerhold <stephan@gerhold.net> wrote:

> Similar to recent rework in the bmc150-accel driver, sort the compatible
> list in the DT schema so there is a consistent order.
>
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
