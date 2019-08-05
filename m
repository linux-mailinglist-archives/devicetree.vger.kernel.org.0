Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EFEC982018
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2019 17:28:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729246AbfHEP2V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Aug 2019 11:28:21 -0400
Received: from mail.kernel.org ([198.145.29.99]:42164 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1729114AbfHEP2V (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 5 Aug 2019 11:28:21 -0400
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id ED6F82173B
        for <devicetree@vger.kernel.org>; Mon,  5 Aug 2019 15:28:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1565018900;
        bh=JyLT5/gBpzIk1rH7isrqNLBn5A/UpJtzoI2uZTecU7A=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=RFtcy4/Zr2lmLLd0LFtqbFK5BY8jwem5PK2/BDHaRth85BpGkm/3v0W2yZG3mAi8D
         t4gw/sfgHmEyb2bj29vlc4KC3uzEnmUrykIXkxCXiljCQSj3xgpypqZi8GdO8JshLq
         r7PwQE+TWDISIvHn74XfGvIMMhIEZ60ONvYmFNlI=
Received: by mail-qt1-f180.google.com with SMTP id k10so12172533qtq.1
        for <devicetree@vger.kernel.org>; Mon, 05 Aug 2019 08:28:19 -0700 (PDT)
X-Gm-Message-State: APjAAAUZqgZXsLQCdUk11CzCLs4dfynge/qxD+JToJqAv4yEt2U8eNOB
        Dlg1k/uZWta6MeShCMDh+Sx8p8Grw9WnxHRadw==
X-Google-Smtp-Source: APXvYqxXjw8XmBwL0enSNum1gkTWI7+BHw8p9CU0a90E4HCQu+3gGOHuO4zbgNYgnUYEtPMCmobpQW6y2Rv+IULc0q0=
X-Received: by 2002:aed:3fb0:: with SMTP id s45mr109113018qth.136.1565018899101;
 Mon, 05 Aug 2019 08:28:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190805085847.25554-1-linus.walleij@linaro.org> <20190805085847.25554-3-linus.walleij@linaro.org>
In-Reply-To: <20190805085847.25554-3-linus.walleij@linaro.org>
From:   Rob Herring <robh@kernel.org>
Date:   Mon, 5 Aug 2019 09:28:07 -0600
X-Gmail-Original-Message-ID: <CAL_JsqL=9fN=8ANmKP6-rSuK=r=yQCf92VQP16b=xwzne6Ea_A@mail.gmail.com>
Message-ID: <CAL_JsqL=9fN=8ANmKP6-rSuK=r=yQCf92VQP16b=xwzne6Ea_A@mail.gmail.com>
Subject: Re: [PATCH 2/4 v2] drm/panel: simple: Add TI nspire panel bindings
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     Daniel Tang <dt.tangr@gmail.com>,
        Fabian Vogt <fabian@ritter-vogt.de>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 5, 2019 at 2:59 AM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> Add bindings for the TI NSPIRE simple display panels.
>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> ChangeLog v1->v2:
> - New patch as bindings are required
> - Let's use YAML
> ---
>  .../bindings/display/panel/ti,nspire.yaml     | 36 +++++++++++++++++++
>  1 file changed, 36 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/ti,nspire.yaml
>
> diff --git a/Documentation/devicetree/bindings/display/panel/ti,nspire.yaml b/Documentation/devicetree/bindings/display/panel/ti,nspire.yaml
> new file mode 100644
> index 000000000000..fa81602a922a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/ti,nspire.yaml
> @@ -0,0 +1,36 @@
> +# SPDX-License-Identifier: (GPL-2.0+ OR X11)

I think you want MIT rather than X11. However, the preference on new
bindings is (GPL-2.0-only OR BSD-2-Clause).

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/panel/ti,nspire.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Texas Instruments NSPIRE Display Panels
> +
> +maintainers:
> +  - Linus Walleij <linus.walleij@linaro.org>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - items:

You can drop this. Just 'enum' is sufficient.

> +          - enum:
> +              - ti,nspire-cx-lcd-panel
> +              - ti,nspire-classic-lcd-panel
> +
> +required:
> +  - compatible
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    panel {
> +        compatible = "ti,nspire-cx-lcd-panel";
> +        ports {
> +           port {

You need to capture that there's a single port in the schema. There's
not really a lot of examples for this yet, but you should add:

allOf:
  - $ref: panel-common.yaml#

With a single port, you can drop 'ports' or you can keep it. If you do
the latter, then you need to define 'ports' and then 'port' in your
schema. The common schema is only sufficient if you have a single
'port' node otherwise you need to define what's under 'ports'.

Rob
