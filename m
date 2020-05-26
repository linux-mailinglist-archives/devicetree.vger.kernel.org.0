Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E2D2D1D4CED
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2020 13:47:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726046AbgEOLrK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 May 2020 07:47:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37232 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726064AbgEOLrK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 May 2020 07:47:10 -0400
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com [IPv6:2a00:1450:4864:20::142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF310C05BD0A
        for <devicetree@vger.kernel.org>; Fri, 15 May 2020 04:47:09 -0700 (PDT)
Received: by mail-lf1-x142.google.com with SMTP id 82so1576764lfh.2
        for <devicetree@vger.kernel.org>; Fri, 15 May 2020 04:47:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=45kgRpXG7i03a8aYK/zze6qISAEx5tj2uQAGZ3I6Xt4=;
        b=wKd7R7wUiPSkGeRLR4bmBvnxjAzoa5bDzea1mQC2TC//iywTDOrnscPWHHwnT2wBRN
         zG8RPapwFSNe2yLBw1PXmFO6PN9t9xLbL896mRUWVF9opqw2ZHGDnhB6XvEwXjjP5TK0
         QqouoNlAk0oH0zKaljb+LQkkj3wEL5MnpeBDibbTUc4WMpfg1YGPftPOBoD+6POZn/Oc
         7XdVcsS1epDgWiiQZNemBG39s5HVAejKAA0uLa+z44cVYvuzj9Itr3dM7DaaBQ6OBq8o
         wKBXN9qcML/zCSC0xBAXK6bR9aFjkfEPHfdF//RUaPw4ZOlAcA3K95HOsCJonF4js6vA
         l0fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=45kgRpXG7i03a8aYK/zze6qISAEx5tj2uQAGZ3I6Xt4=;
        b=kh9tMuZfOCRo451uQV0ZZOHwNHnuDhnqjjW3TxOkL9waUXI+2Bc7bLdowUC3glY7ar
         6+bvPrnOZGOsnXkB0bqJgcj+c1N0t7nvR2Pq8TkMYyuu+FYnES/MM+dl9+cT24+u34dT
         yYjZs7D1mqYalYZSb7+7uoAD0hjT7ZhnSpSqP4PPrl1iNCXID379B40G3q2rVb0HhO9u
         2QcaGlNKC6DQmqXLL36HhSzjJXnpCycwsGthsatwuWXSgBaoWNftuG9eLwbYEttia9sF
         5/8JzG4qP1i3acIQbr7vOOGty8oaiQTvAtKgviki0l9L+9LCJHDHtaWw0BMUrzS7To4+
         E6Yw==
X-Gm-Message-State: AOAM532ONO4A+/D13Bi244W+ZZYxCB+QQ6bUvGNNhzDN4SByxY6vE9LE
        7m2cRfHafQVQbfOLEyO4cX1Gxm88d+nN30LNnRvPqQ==
X-Google-Smtp-Source: ABdhPJw9T3ehRz1QGBgsSsq2YD8Ju6RCQuQKhNJM37NZA8yAbN3ISFFjuFeCQtTytOPKHcPPQtpoqw0eVjB0lzPbnI4=
X-Received: by 2002:ac2:5f7a:: with SMTP id c26mr2071360lfc.4.1589543228067;
 Fri, 15 May 2020 04:47:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200514204901.3199-1-xc-racer2@live.ca> <BN6PR04MB0660FE5CCD136539A328B29EA3BC0@BN6PR04MB0660.namprd04.prod.outlook.com>
In-Reply-To: <BN6PR04MB0660FE5CCD136539A328B29EA3BC0@BN6PR04MB0660.namprd04.prod.outlook.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 15 May 2020 13:46:57 +0200
Message-ID: <CACRpkdaPWcbbrEP=HFeLu8ZUcxeQray+9o7E62SfL9VNx9jzWw@mail.gmail.com>
Subject: Re: [PATCH v2 2/7] iio: accel: Make bma180 conflict with input's bma150
To:     Jonathan Bakker <xc-racer2@live.ca>
Cc:     Jonathan Cameron <jic23@kernel.org>,
        Hartmut Knaack <knaack.h@gmx.de>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Peter Meerwald <pmeerw@pmeerw.net>,
        Rob Herring <robh+dt@kernel.org>,
        Kate Stewart <kstewart@linuxfoundation.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        linux-iio <linux-iio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 14, 2020 at 10:49 PM Jonathan Bakker <xc-racer2@live.ca> wrote:

> The bma180 IIO driver is being extended for support for the chips
> support by input's bma150 driver (bma023, bma150, smb380). Don't
> allow both drivers to be enabled simultaneously as they're for the
> same hardware.
>
> Signed-off-by: Jonathan Bakker <xc-racer2@live.ca>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
