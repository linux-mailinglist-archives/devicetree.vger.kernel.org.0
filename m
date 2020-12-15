Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DC0422DB597
	for <lists+devicetree@lfdr.de>; Tue, 15 Dec 2020 22:07:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727384AbgLOVHt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Dec 2020 16:07:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727582AbgLOVHs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Dec 2020 16:07:48 -0500
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com [IPv6:2a00:1450:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BA07C0617A7
        for <devicetree@vger.kernel.org>; Tue, 15 Dec 2020 13:07:08 -0800 (PST)
Received: by mail-ej1-x644.google.com with SMTP id qw4so29674167ejb.12
        for <devicetree@vger.kernel.org>; Tue, 15 Dec 2020 13:07:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5oyP6mvBrvE3aEYFhLfs2RYWHj0K8mQLLM6Luko/efo=;
        b=del9jE5SOnMZt6v3+c7d+G/TxIN3JzQQaLdEu/P/mWpV1LqwThTlFgRGPPh7HyeAVH
         JDrbSeo5jQNYKIxUcBS4lME2fzO1FieKxP/gopAy3MPqExnhHza1QJHU/LbujshLUV03
         tLIUVYkyVUb2qUN09S38om1HeQMcNu+KdL8Io=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5oyP6mvBrvE3aEYFhLfs2RYWHj0K8mQLLM6Luko/efo=;
        b=X9DeoSG6D10tdcsyHGZCneEPEO2+JDEpLTY+xH6zt6x+fuwWaPWqfBN+a5/PNf45Nj
         +NzlRDilTOOsvHOZjDeVl+CEPFV1NL99oM4PI1bHtSTQGInHutXQnB96umT4MTcu+YhP
         UAhT7GQqle7m1OaGcIQ90qPDOJSBReblYsaeZS9lFI7D+qrwl9RteDWyecuWUzriQdX9
         Fyte5JTtEHHkwi9sGlczAkqIWWeii8eZM6/XAPmgLthLbeiFTO8SkMUjJ0xQGnwhdTD/
         F8KDFh76JILX6urJq4WpmWV88BxmB0wZCFfv8gztInneglLCoDu8xVYFlOfVZcrytuZf
         rdHQ==
X-Gm-Message-State: AOAM532z741y7+TPlRfSn54tby2JY+t8Yd0O85ttgZ4jO9ZXqmuS3K6i
        4vNOYaqAm4pxMbdezHOkih8J679LkOlXUoa1VnGoiQ==
X-Google-Smtp-Source: ABdhPJzWwlcPoqKhjHTrI6zoBOxh/CVBgBRXg6QTI1801GgWXVReiXUxUyJ9HY6W6Y/LCE22kPBK9M045rauq7GzpII=
X-Received: by 2002:a17:906:4ec7:: with SMTP id i7mr6677702ejv.252.1608066426798;
 Tue, 15 Dec 2020 13:07:06 -0800 (PST)
MIME-Version: 1.0
References: <20201215204858.8186-1-adrien.grassein@gmail.com> <20201215204858.8186-4-adrien.grassein@gmail.com>
In-Reply-To: <20201215204858.8186-4-adrien.grassein@gmail.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Wed, 16 Dec 2020 02:36:54 +0530
Message-ID: <CAMty3ZD2WsFeuCnt4DEL87Ou-sxHPYiBVu1n-LoK2gEzgO3XwQ@mail.gmail.com>
Subject: Re: [PATCH 3/6] regulator: dt-bindings: pf8x00: fix nxp,phase-shift doc
To:     Adrien Grassein <adrien.grassein@gmail.com>
Cc:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        Troy Kisky <troy.kisky@boundarydevices.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 16, 2020 at 2:19 AM Adrien Grassein
<adrien.grassein@gmail.com> wrote:
>
> nxp,phase-shift is an enum so use enum format to describe it.
> Minimum and maximum values are also wrong.
>
> Signed-off-by: Adrien Grassein <adrien.grassein@gmail.com>
> ---
>  .../bindings/regulator/nxp,pf8x00-regulator.yaml | 16 ++++------------
>  1 file changed, 4 insertions(+), 12 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/regulator/nxp,pf8x00-regulator.yaml b/Documentation/devicetree/bindings/regulator/nxp,pf8x00-regulator.yaml
> index 913532d0532e..1da724c6e2ba 100644
> --- a/Documentation/devicetree/bindings/regulator/nxp,pf8x00-regulator.yaml
> +++ b/Documentation/devicetree/bindings/regulator/nxp,pf8x00-regulator.yaml
> @@ -60,21 +60,13 @@ properties:
>
>            nxp,phase-shift:
>              $ref: "/schemas/types.yaml#/definitions/uint32"
> -            minimum: 45
> -            maximum: 0
> +            minimum: 0
> +            maximum: 315
> +            default: 0
> +            enum: [ 0, 45, 90, 135, 180, 225, 270, 315 ]

Do you mean 0 is the minimum or starting value? I can see Table 48.
SWx phase configuration with minimum and maximum values are starting
from 45, 90, 135, 180, 225, 270, 315, 0 with phase bits as 0x0 to 0x7

Jagan.
