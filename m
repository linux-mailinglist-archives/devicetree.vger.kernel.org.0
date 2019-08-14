Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 919B38CE24
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2019 10:14:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727031AbfHNIOP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Aug 2019 04:14:15 -0400
Received: from mail-lj1-f193.google.com ([209.85.208.193]:34402 "EHLO
        mail-lj1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726496AbfHNIOO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Aug 2019 04:14:14 -0400
Received: by mail-lj1-f193.google.com with SMTP id x18so7524069ljh.1
        for <devicetree@vger.kernel.org>; Wed, 14 Aug 2019 01:14:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zaG/7UdyaIFhX05cS2xYIpIbPOrXrLv/mGC2XIacwH0=;
        b=Yc92OLlHBJQCnEKSWpA1mKGG0JUh8gbeUrjAtI0OgS4P418XH/eDOCHlX93E/2CJ3w
         d1wVJLzVs+QKABy2uINiVW3n+eQ+UwW23Jda6fPVCRvh0Ldbf8c2Sb2cx49oWtoO1ihz
         BEQn19zyNr3n1EtxMBrqW7D0A9q+0YjwY96Zx8BOUEgfGD8yXls7zW3oiNFCJKkVTnQr
         g+CGPNvkG+yr9OCI/vdaAiqde3Pc2q5agepXdge3hlOHLgcFmzIt+Jjpe2ydAorCndKi
         +8Sp6oH4puH+hQpgUK5SD7uUYefUib5RIzFvc46O8y6RuG/vyofxy0sOCdwxhWhYWwQ9
         iOuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zaG/7UdyaIFhX05cS2xYIpIbPOrXrLv/mGC2XIacwH0=;
        b=AquMr0JoBunDzd6Ljd0Iaqzz5QGT60dboFGqN5Rq/El1TR50PS9NxU5q4T6VqT5hJW
         rMGCBApK06TRIJRbjojamVr1VcdcFb3jGMT2GTOG87VDvulrG4+/sYbc1jmBE5VwW2xQ
         vtTWuuYLrq+udqShQKkJaTs6wr578Bd09xAkzrz+w3UNTrOTXQ984iDUU18Jw9q9AmqL
         1hxY7JN75BxHB2QKiZaeV+ejR72yEDais8iDUnTSMP/W37TLWR3Ax4rXuf1+V7U7OHq7
         w8ci9h5m1+vX+jRMrmIpoCJKFHsL8fN6f+IeEZR0skVwkJyxHnvJDBMNfig1XCk694FK
         5ndQ==
X-Gm-Message-State: APjAAAVth5padZnb/K/yD1UKIUnQQIsMvzWgPzwHrQkKlPHN9xUT7W+k
        FRvKh68OjGvptjAmFKVwkuZXHh+iJBHKV0aO/0bFSg==
X-Google-Smtp-Source: APXvYqzIyGCVXUJvtCqFdjeExOWBR6oTr+xberM5+BO82NhIej28AjD92DKyh3qHI3IcHXX0bYXMJJjnsrhwkG8yczo=
X-Received: by 2002:a2e:b174:: with SMTP id a20mr9290636ljm.108.1565770452799;
 Wed, 14 Aug 2019 01:14:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190813205528.16651-1-robh@kernel.org>
In-Reply-To: <20190813205528.16651-1-robh@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 14 Aug 2019 10:14:00 +0200
Message-ID: <CACRpkdZztpUBWnUtJiZY030qVJMEB7gNstyXQeTYWUZ6LMwx+A@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: stm32: Fix 'st,syscfg' schema
To:     Rob Herring <robh@kernel.org>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Mark Rutland <mark.rutland@arm.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@st.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        linux-stm32@st-md-mailman.stormreply.com,
        Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Aug 13, 2019 at 10:55 PM Rob Herring <robh@kernel.org> wrote:

> The proper way to add additional contraints to an existing json-schema
> is using 'allOf' to reference the base schema. Using just '$ref' doesn't
> work. Fix this for the 'st,syscfg' property.
>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: linux-gpio@vger.kernel.org
> Cc: linux-stm32@st-md-mailman.stormreply.com
> Cc: linux-arm-kernel@lists.infradead.org
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
> I've got some other fixes queued up and can take this via the DT tree.

OK!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
