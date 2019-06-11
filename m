Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E3846416C3
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2019 23:19:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2407010AbfFKVTE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jun 2019 17:19:04 -0400
Received: from mail.kernel.org ([198.145.29.99]:34854 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2406712AbfFKVTD (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 11 Jun 2019 17:19:03 -0400
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id EA6122086A
        for <devicetree@vger.kernel.org>; Tue, 11 Jun 2019 21:19:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1560287943;
        bh=Ve3KCQ7GVV2V44RSV8meBmmRd5/4p88GK3ZOJPkM/MY=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=E4SZ0A35aIqTlLZwv1X0TwyIBFoxqdEMm5IEZmdPuYtMU58eXXbRJb9AZ/M2PpIaA
         ktduPud0j2tcfi5JcQWJqFmTeSMYSuSItcUYggozrXieHs2RTPMyuEwsQbWvNsoCOx
         /S8TOPNKgP4wpoEMqD4HFpJ7d8Ou63ffa6WVkCrM=
Received: by mail-qt1-f182.google.com with SMTP id p15so8954709qtl.3
        for <devicetree@vger.kernel.org>; Tue, 11 Jun 2019 14:19:02 -0700 (PDT)
X-Gm-Message-State: APjAAAWMxqNI4KsTKpeV3mbJLapulW7CpxptnquyxaPqNssd/C0Iq9NO
        38l6ACBQqVa4JkxWz/AsJ3uFC42aW4ZJn8XblQ==
X-Google-Smtp-Source: APXvYqzGCWdmTOkqDG2RV/ScJ5WrTfWdxnE12sJbvaMkVf+INrGsAHXMw1/6Qv9CGzm/OLpy9y76vX5nDfomSnoZ+j0=
X-Received: by 2002:aed:3fb0:: with SMTP id s45mr13236463qth.136.1560287942208;
 Tue, 11 Jun 2019 14:19:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190525134140.6220-1-maxime.ripard@bootlin.com>
In-Reply-To: <20190525134140.6220-1-maxime.ripard@bootlin.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Tue, 11 Jun 2019 15:18:51 -0600
X-Gmail-Original-Message-ID: <CAL_JsqK829bfc4VX1hmYRuLYWQXaixAgSwU2N7veA41vfxLXvw@mail.gmail.com>
Message-ID: <CAL_JsqK829bfc4VX1hmYRuLYWQXaixAgSwU2N7veA41vfxLXvw@mail.gmail.com>
Subject: Re: [PATCH 1/5] dt-bindings: vendor: Escape single quote
To:     Maxime Ripard <maxime.ripard@bootlin.com>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        Frank Rowand <frowand.list@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, May 25, 2019 at 7:41 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> Single quotes need to be escaped in YAML, make sure it's the case.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> index 19cc3240a445..ec53162e900d 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -672,7 +672,7 @@ patternProperties:
>    "^plantower,.*":
>      description: Plantower Co., Ltd
>    "^plathome,.*":
> -    description: Plat'Home Co., Ltd.
> +    description: Plat\'Home Co., Ltd.

Actually, I think this isn't necessary. Where was this causing a
problem? Only in single quoted strings do you have to escape a single
quote and it is done with 2 single quotes rather than a backslash.
However, to maintain a json compatible subset of yaml, maybe we do
need it.

Rob
