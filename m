Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 100D17FC57
	for <lists+devicetree@lfdr.de>; Fri,  2 Aug 2019 16:37:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2394861AbfHBOha (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Aug 2019 10:37:30 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:50570 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2392460AbfHBOh3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Aug 2019 10:37:29 -0400
Received: by mail-wm1-f65.google.com with SMTP id v15so68215509wml.0
        for <devicetree@vger.kernel.org>; Fri, 02 Aug 2019 07:37:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:openpgp:autocrypt:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=i8v5OrfAlc7cnw69sdNjHw8GhJEaipmkwKKV+4k7HjI=;
        b=i2CAJIy0B6yfAz6Fgym8ZJ60h02nfACYNLy3zDSdgbqPBv5J1eTixGsOFIlXIqwDkx
         qzPQTmHN4hggVTDZChrVyPsqFvlpy2Va2cGSt03oLokrE0cnmUjfvS//ZXXeJNW9oUU/
         8YYRUYs5dXNAqgF7Uh3Ak/amlbbXBSPNf58Q5oxqmNfcPZf6X7Y77v2broRvo6BplBJv
         pcXMcSGU9+l2rQHy+hA/GS6TddqVKgQlCLkuWMVAQ1c/cUFvT/ggXMNLhsIPBImWn93o
         EaV4i6QsogcVusxv1t7dv9tNU4xUze7xS4GaIzQQPw0zElfCWRWqyPb1XJH9Hcaei7Rq
         7L/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=i8v5OrfAlc7cnw69sdNjHw8GhJEaipmkwKKV+4k7HjI=;
        b=uMD9XG4g77bd5YoGKWeqRyEXO1OLgACxdpnD8ug4sWkzyhUXDr5CzYzBBV8gqrkHG2
         3W0THfeWHxPZOMS/ukFdOr7AlP8zgdplXz3GBg6dUPGcj+DBSCy3T0Ttdkjpv+T30IyC
         lIG/AAazumHI+yb8OXP3JxCkvAl9Aq3zwjcJyyW5lzVA3kNr3QpaXzCSqSSvzbzk7m9f
         1jiUwzXPgO8gU1841V0pL/sMHPTcQwuIjOMfVOkDbSEWHdiODxVAOTYlIZa+20XzWix3
         XT+uNGMRatJdVTwWG22FPV6+UWkAR2y6q9Guypau6m5x4HQO0uPVjBZhXGXsEWSJLI4H
         TcIw==
X-Gm-Message-State: APjAAAVuUmU4HEzkT5R8wVa6cMuzjhy8oYAD3WMkjpp73gFvxOdm8Kuo
        66/p8Cb9m+2oQDmhK3p/St37OP1RLepe5Q==
X-Google-Smtp-Source: APXvYqyj1gMr8VQNG4JS/ZxqMmErnoCifUA8FRkcZuOaHE2MT1gD5nosu4B8nilm3nVDgFAPzDGr2Q==
X-Received: by 2002:a1c:480a:: with SMTP id v10mr4800922wma.120.1564756646351;
        Fri, 02 Aug 2019 07:37:26 -0700 (PDT)
Received: from [10.1.2.12] (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id w7sm88448961wrn.11.2019.08.02.07.37.25
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Aug 2019 07:37:25 -0700 (PDT)
Subject: Re: [RFC 5/9] dt-bindings: arm: amlogic: amlogic,meson-gx-ao-secure:
 convert to yaml
To:     robh+dt@kernel.org
Cc:     linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <20190801135644.12843-1-narmstrong@baylibre.com>
 <20190801135644.12843-6-narmstrong@baylibre.com>
From:   Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <90dbcb33-74a2-68de-eb1a-ce84040298b8@baylibre.com>
Date:   Fri, 2 Aug 2019 16:37:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190801135644.12843-6-narmstrong@baylibre.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

Thanks for reviews.

On 01/08/2019 15:56, Neil Armstrong wrote:
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  .../amlogic/amlogic,meson-gx-ao-secure.txt    | 28 -------------
>  .../amlogic/amlogic,meson-gx-ao-secure.yaml   | 42 +++++++++++++++++++
>  2 files changed, 42 insertions(+), 28 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.yaml
> 
> diff --git a/Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.txt b/Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.txt
> deleted file mode 100644
> index c67d9f48fb91..000000000000
> --- a/Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.txt
> +++ /dev/null
> @@ -1,28 +0,0 @@
> -Amlogic Meson Firmware registers Interface
> -------------------------------------------
> -
> -The Meson SoCs have a register bank with status and data shared with the
> -secure firmware.
> -
> -Required properties:
> - - compatible: For Meson GX SoCs, must be "amlogic,meson-gx-ao-secure", "syscon"

I have a hard time find how to define "syscon" here, if I put syscon in the compatible
it gets matched on other bindings and I get lot of warnings.

How should I model it ?

Thanks,
Neil

> -
> -Properties should indentify components of this register interface :
> -
> -Meson GX SoC Information
> -------------------------
> -A firmware register encodes the SoC type, package and revision information on
> -the Meson GX SoCs.
> -If present, the following property should be added :
> -
> -Optional properties:
> -  - amlogic,has-chip-id: If present, the interface gives the current SoC version.
> -
> -Example
> --------
> -
> -ao-secure@140 {
> -	compatible = "amlogic,meson-gx-ao-secure", "syscon";
> -	reg = <0x0 0x140 0x0 0x140>;
> -	amlogic,has-chip-id;
> -};
> diff --git a/Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.yaml b/Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.yaml
> new file mode 100644
> index 000000000000..cf79287498f5
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.yaml
> @@ -0,0 +1,42 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright 2019 BayLibre, SAS
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/arm/amlogic/amlogic,meson-gx-ao-secure.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Amlogic Meson Firmware registers Interface
> +
> +maintainers:
> +  - Neil Armstrong <narmstrong@baylibre.com>
> +
> +description: |
> +  The Meson SoCs have a register bank with status and data shared with the
> +  secure firmware.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - amlogic,meson-gx-ao-secure
> +
> +  reg:
> +    maxItems: 1
> +
> +  amlogic,has-chip-id:
> +    description: |
> +      A firmware register encodes the SoC type, package and revision
> +      information on the Meson GX SoCs. If present, the interface gives
> +      the current SoC version.
> +    type: boolean
> +
> +required:
> +  - compatible
> +  - reg
> +
> +examples:
> +  - |
> +    ao-secure@140 {
> +          compatible = "amlogic,meson-gx-ao-secure", "syscon";
> +          reg = <0x140 0x140>;
> +          amlogic,has-chip-id;
> +    };
> 

