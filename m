Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 945E837DCA
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2019 22:02:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728137AbfFFUC4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Jun 2019 16:02:56 -0400
Received: from mail-ot1-f68.google.com ([209.85.210.68]:34723 "EHLO
        mail-ot1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727082AbfFFUC4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Jun 2019 16:02:56 -0400
Received: by mail-ot1-f68.google.com with SMTP id z24so3185901oto.1
        for <devicetree@vger.kernel.org>; Thu, 06 Jun 2019 13:02:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=RIvsH3Ym5EcAwDwvS+b3p8z6BprcG74uoKQfADXB/r0=;
        b=esnTxM3nTkO1ix2Z6eEydRnxKZ5Kxa70R83FM0Ou2xWtaJzPe2BriMzf94k6w0BzRU
         6LTA4Sgj/fQmRXjJuWW6mq4ftpQcOPEoC2/GO5meQLdge39Hkrk0jcUuH+r5LStaw7Z/
         pV4rNdHG4gaOcy4D0CsFeygnrDuK0rWkP18iDpucmvAeTt1i+MxVBXtn8qsHtCM1jQx3
         0bCQG1lkjM/3PyBrdi2SCEltbEpSdpRFCS36tOhXizDPk05lTUKfRXdpcSToLDuG224S
         74AbWiCOFdjCrmgO6Ddhs2vQeRVHPb1aq/GnODfKTj3m3jqH7WShs27vHM5wPdlg4BNp
         oUIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=RIvsH3Ym5EcAwDwvS+b3p8z6BprcG74uoKQfADXB/r0=;
        b=P4qcRBnG8klybCRCoqQDYaiEPDg9+TwpxXig95a+bc2cAuhH/tcQFrDyM9IOtb+BiC
         z8+vzQjCKKP+9owhZK3be/Yrox9Cf0jH6Yas26Hi4vV01UAasbnPpz9w1gW+Y0e1F5Xl
         Z+mBK24l0q99JvppSSlx2dDeHgEOdKvPVFFHfoLQ4db7PFy2O9Z36xF7OnHIMBgWsWwD
         ef3coEV9iAvhzDQ8JwY+DZ9/j1Y+z2LdH0Uvgt0Jtt7F2kwIc+qAIemSL1ENZeB272g5
         BDewjFtMPNOuMIFAGcU+UQMVJcwTqv9Scm7wV19WrxOm3Vop624hKyR4QYcKH3IYJbNq
         rQqg==
X-Gm-Message-State: APjAAAWSjJ8OxGX4K/Qg8jeyVAhw2qKGIleUZiLJ4R/uFpLpCFGKROvE
        caendsuGM7YzKO86NH8d4d+u+IGsvd6wmLVUEko=
X-Google-Smtp-Source: APXvYqx8BhBRTpsZfMPkHq8+kTin4ygRej8SSRMvvGxqRArgi61tGGpiaWenaZGYHV0blvgc7tXLrhUxTBm9OLICHmY=
X-Received: by 2002:a9d:14a:: with SMTP id 68mr15480307otu.96.1559851375583;
 Thu, 06 Jun 2019 13:02:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190606132439.25182-1-krzysztof.michonski@digitalstrom.com> <20190606132439.25182-2-krzysztof.michonski@digitalstrom.com>
In-Reply-To: <20190606132439.25182-2-krzysztof.michonski@digitalstrom.com>
From:   Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date:   Thu, 6 Jun 2019 22:02:44 +0200
Message-ID: <CAFBinCB+W8F9PL4ZgiQJxXu7qmgfORgbPB=6AM-kzXmChpjWyg@mail.gmail.com>
Subject: Re: [PATCH 2/2] Enable secure monitor on gxl
To:     Krzysztof Michonski <michonskikrzysztof@gmail.com>
Cc:     khilman@baylibre.com, linux-amlogic@lists.infradead.org,
        devicetree@vger.kernel.org, afenkart@gmail.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Krzysztof,

the subject should start with: "arm64: dts: meson-gxl:", see the git
history (note that there was a rule change to use "arm64" instead of
"ARM64")

On Thu, Jun 6, 2019 at 3:24 PM Krzysztof Michonski
<michonskikrzysztof@gmail.com> wrote:
>
> From: Krzysztof Michonski <michonskikrzysztof@gmail.com>
>
> Add secure monitor node in the gxl dtsi file.
I assume that this is to enable the GXL and GXM specific commands?

> Signed-off-by: Krzysztof Michonski <michonskikrzysztof@gmail.com>
> ---
>  arch/arm64/boot/dts/amlogic/meson-gxl.dtsi | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
> index 3093ae421b17..fd75538ee9f9 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
> @@ -37,6 +37,10 @@
>                         };
>                 };
>         };
> +
> +       sm: secure-monitor {
> +               compatible = "amlogic,meson-gxl-sm";
> +       };
>  };
if you keep the secure-monitor node in meson-gx.dtsi then you can use
something like:
&sm {
    compatible = "amlogic,meson-gxl-sm";
};

the compatible string has to be added to the documentation in
Documentation/devicetree/bindings/firmware/meson/meson_sm.txt with a
separate patch
devicetree bindings should be backwards compatible (at least that's
the rule of thumb)
you can use a fallback compatible string so this new .dts/.dtb also
works with old kernels (which don't support the new, GXL specific,
compatible string yet):
  compatible = "amlogic,meson-gxl-sm", "amlogic,meson-gxbb-sm";


Martin
