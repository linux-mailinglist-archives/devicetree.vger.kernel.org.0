Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C07422A7BAF
	for <lists+devicetree@lfdr.de>; Thu,  5 Nov 2020 11:26:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729110AbgKEKZ5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Nov 2020 05:25:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34606 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726179AbgKEKZ5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Nov 2020 05:25:57 -0500
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com [IPv6:2a00:1450:4864:20::141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB00AC0613D2
        for <devicetree@vger.kernel.org>; Thu,  5 Nov 2020 02:25:56 -0800 (PST)
Received: by mail-lf1-x141.google.com with SMTP id 184so1511205lfd.6
        for <devicetree@vger.kernel.org>; Thu, 05 Nov 2020 02:25:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=wZXYpUcHXnk29q0iXnXVF1m4qzks3JzlHDUDg4qGSWM=;
        b=xUNEMxU+oIFKuSUBXs3OZRa4rjz4U53r2b7DNL5g5nw02FKw9AA1XV6Cil+Pw212Dz
         713HD94UUK0vtS/lPE/9eSxCxlCpbMaWixRJQgACwGq9yqLiHqXxFgFAf588XFdezvBu
         13gNZ1ejls7FrlF6LpU4GHFxJDLQuZ6Lq0hfKky5QEW1z45jI2o2A1yiGkXFDtkmoHFf
         kK8xAppnBcg5vd3hCdtn/dJ+OGCy2Gz/h74RlvDvKc0sJCmj6njz1ZqEKO/Qc8mK3t2W
         hZgjqlJ4/T8hfWvQoDRXGZqoCUWYc45aK34iZU8Kcgxj0IKzSWIBfGNuJkUoAgVQe24G
         ifqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=wZXYpUcHXnk29q0iXnXVF1m4qzks3JzlHDUDg4qGSWM=;
        b=s7UXL/zKDAoodeDLppI+eGKwi7Pz0jGNZTj6qAdeKj1LmsLUpSkKYVlLthZKRgkLIv
         voEeDP2nksuMfqSV0tIloWc8E86cPtpjrteBbBSLTE/78t665mTR9CckFlaDoiUjv9Dw
         yqSeYVlSBxDA8J7BA6LzppiY4ibbCnkTnLahEfrmKuRTaaaZIPsxeY0IJPYEbMh6qJAP
         x1IOqswPNGiLAx1DJchn5hBZWGTOsuPYYVej1qjtu2zsYPfr94rj96eaLdGJswyC77zO
         h12Ccn8mKt4T6VxM2KtHPr6MPAfj/rON75GSEi88BVw9PWRsXZDKlxppu8hdCnLNgQ/F
         yq+Q==
X-Gm-Message-State: AOAM530ZUAutkWfgr+tkXl+V4y3mORPrs7sGpxZ/XuK+XJnk8HG+eAK3
        qljoAjaqBBv+WUdVarzAMsKq5HykPBZG61bz9dVdbw==
X-Google-Smtp-Source: ABdhPJzcSl1hw+q9dkvwTMUc/KZLeW+yUu2A0bMFIP+cz29kOiNYmZhpvR1N7tvOhc4hhoQBs1CZ3idg4TnSeYxK5a4=
X-Received: by 2002:ac2:50c1:: with SMTP id h1mr664955lfm.333.1604571953117;
 Thu, 05 Nov 2020 02:25:53 -0800 (PST)
MIME-Version: 1.0
References: <20201009060302.6220-1-mike.looijmans@topic.nl>
In-Reply-To: <20201009060302.6220-1-mike.looijmans@topic.nl>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 5 Nov 2020 11:25:42 +0100
Message-ID: <CACRpkdYLDUURK5yFC5UDZ3trQ8vN4pL_0zpU_FrgfhRUXibnLQ@mail.gmail.com>
Subject: Re: [PATCH v3] dt-bindings: gpio: pca953x: Add support for the NXP PCAL9554B/C
To:     Mike Looijmans <mike.looijmans@topic.nl>
Cc:     Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Mike!

thanks for your patch.

On Fri, Oct 9, 2020 at 8:03 AM Mike Looijmans <mike.looijmans@topic.nl> wrote:

>        - nxp,pcal9535
> +      - nxp,pcal9554b
>        - nxp,pcal9555a

This triggers my OCD. Putting B before A? Please make it alphabetic.

No big deal, but...

Yours,
Linus Walleij
