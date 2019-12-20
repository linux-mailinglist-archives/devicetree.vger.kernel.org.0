Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BFCBB1280BD
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2019 17:35:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727404AbfLTQfi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Dec 2019 11:35:38 -0500
Received: from mail-lf1-f65.google.com ([209.85.167.65]:39829 "EHLO
        mail-lf1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727390AbfLTQfi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Dec 2019 11:35:38 -0500
Received: by mail-lf1-f65.google.com with SMTP id y1so7494195lfb.6
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2019 08:35:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=BihX16lmLcl6BldTpsH0OGFl1OVMMJgUyjg3R2fKcVU=;
        b=EmiUr5y3Kd58+fVYmxfPM0pyDKslB1iDO9S9msO5xxUeZIp7Oo+1W9nsF/jWqZ6XEJ
         JsRnlCqsuqlSz/lUB8FUh0tHu5FiAmUU7iGLbgDvvs3dsWWtP660bJfXbQYcR47Az7/n
         fNk2w47VtbPgMWhK4Xiqyrh+PiME/NBtIMMi+SfURAjO2KkBN42TOYge+KSXjaBNIQ22
         ZnqwrWMntyjZA0GtlpN3Oj1G0IShPuZqPDBRvh5vze6Gv+t44X3L2LYsjuO59ANnwq01
         qrqKJRJ5SnRk1Y3+VEYlzW3dDtK4dVfqVUnlpIiyugd/hoUEeZJ/xAifmc4bb2ofXeeo
         EfHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BihX16lmLcl6BldTpsH0OGFl1OVMMJgUyjg3R2fKcVU=;
        b=T+iuxGHHx6YMjyi1Ry7Sop1YeWAHhewrIbC06S5r1ovNbsWs84Aj7UbkofzOaCyLoM
         VcJ9E5no5baoSu+tAFln92deqKt2DWTpBIBaOHpxu99iDatBfsuSnTfBN0kHJfVIyuSZ
         O5BW/qy3NiQoIR/Cj76MhlaD/BdlMWSltNWlZ66weUbvVsGApeWzuhZUkKJrbuQhIZ3E
         eT3C108Qv1p7RTKrijz7sIWwQ8Oxuj4noz99qsX6Xe9g0rk/WTByFznqtTV0qeiqdEzd
         D4U7R11sdWuG3ERnxQSItgJJGbloLWNo0K4uydHUod3529ZquqZsXLIis4CIasAB7d1Q
         BLbw==
X-Gm-Message-State: APjAAAU8EG6x2rnXK47wR6ZUWZsExN3cuNNuXIQ6bE6QtsQbQzFEvR8K
        k4rCusIjE1URX0nQvmK2qFLY4pqJ159+L8OGMSpOHQ==
X-Google-Smtp-Source: APXvYqyONHUapWq71uGWVwAZl8s5Y4Swig6bZPiBWn7kpEpTM9J0RVPQRYFiNRxU1bGREdojEqknlhtFlC5l2emladw=
X-Received: by 2002:ac2:5c4b:: with SMTP id s11mr9445593lfp.133.1576859736469;
 Fri, 20 Dec 2019 08:35:36 -0800 (PST)
MIME-Version: 1.0
References: <20191220160051.26321-1-dan@dlrobertson.com> <20191220160051.26321-3-dan@dlrobertson.com>
In-Reply-To: <20191220160051.26321-3-dan@dlrobertson.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 20 Dec 2019 17:35:25 +0100
Message-ID: <CACRpkdZupt+Q-QOuu99QcDVDJqAMtwjndSpdTRihgXjbOq-Msw@mail.gmail.com>
Subject: Re: [PATCH v8 2/3] iio: (bma400) add driver for the BMA400
To:     Dan Robertson <dan@dlrobertson.com>
Cc:     Jonathan Cameron <jic23@kernel.org>,
        linux-iio <linux-iio@vger.kernel.org>,
        Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Randy Dunlap <rdunlap@infradead.org>,
        Joe Perches <joe@perches.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Dec 20, 2019 at 5:17 PM Dan Robertson <dan@dlrobertson.com> wrote:

> Add a IIO driver for the Bosch BMA400 3-axes ultra-low power accelerometer.
> The driver supports reading from the acceleration and temperature
> registers. The driver also supports reading and configuring the output data
> rate, oversampling ratio, and scale.
>
> Signed-off-by: Dan Robertson <dan@dlrobertson.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
