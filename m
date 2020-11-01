Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7C8AE2A1F07
	for <lists+devicetree@lfdr.de>; Sun,  1 Nov 2020 16:26:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726839AbgKAP0a (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 1 Nov 2020 10:26:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33994 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726832AbgKAP0a (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 1 Nov 2020 10:26:30 -0500
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com [IPv6:2607:f8b0:4864:20::641])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7CA6C061A04
        for <devicetree@vger.kernel.org>; Sun,  1 Nov 2020 07:26:28 -0800 (PST)
Received: by mail-pl1-x641.google.com with SMTP id r10so5531273plx.3
        for <devicetree@vger.kernel.org>; Sun, 01 Nov 2020 07:26:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=vKigyyy69RrMO2wivE7nOb9ykQ6TIQpd+G42MBJUIn8=;
        b=bmy5XVeGN9uxrIuvcEDzy4ODGtU/npvWAz3Di8wXje7L8s+RkPgEt7FLctGjHyJ/ca
         /f57AnwK47m24PE3lLnBR0qzdRkEBhMssb4YgAPByPKreiBMrTwuyGbGvNEqjMdsvdIc
         oEMxycFPRvzR8ADLHm3NOTQWbGZNW6BvzFVR4CLhcuRoMSFkoe7GugD+1bK9CmDrBSkg
         hNjtMr7GEjXEjK1ueNq2QfU4qoQwsnZP4qDfrNf0SRty2CEQACoAon5eLgMNCQa0+U6R
         VOJA/KsanPbt9iQP+2qf33WnNBKw46Pj8SESJd8C4j4nA4S+ZNlsEqPlxOKSy3pqZzMI
         d2nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=vKigyyy69RrMO2wivE7nOb9ykQ6TIQpd+G42MBJUIn8=;
        b=Rr5XEtAVkQashKA9/cFnbF3j0a2WyTFEEL/JLUvcVPq6e7iQG19mzCwYc6xpZRpl4E
         OnROLyzL4QNpVP9A69DDdPcVTH5foKqG9l7ej7DcbGVq82/6EGVGSq5IBaCx2zRpl2r8
         LIKtiUubKcI0Fg4s5quwsU0XwUBuNJSFpcDmY3JuX7XqHJ3Ls3qA8TYzvromYYIYQniA
         auOzQNIkGtkAIwOUCtAyraFfxmgjhthlNtGY34iwCC60Aj55WDhQaswp7mUXygTBXT/W
         /jg8XQYuZXaec1XxhBIMipcH6pjZRxdeUjKZUla24akm1pf3JFLAPnZDrDtadrYwYcZp
         YOsg==
X-Gm-Message-State: AOAM531epMWn5k9sVO+PwnGa4XSNyDKSk+8RSGcKK7KsR5LOo94utSVu
        WgS33LRqSuXkfwfIeOKc0yCM
X-Google-Smtp-Source: ABdhPJwGNneB5X/GX07OnmKf6zv3cmd3EbewFrLINom47KVIkTLnce6GvYo5gLMlnHhJ/BJ4vEekfg==
X-Received: by 2002:a17:90a:65cc:: with SMTP id i12mr13031446pjs.193.1604244388341;
        Sun, 01 Nov 2020 07:26:28 -0800 (PST)
Received: from Mani-XPS-13-9360 ([2409:4072:6d8d:be1b:b0c0:14ff:1364:f14c])
        by smtp.gmail.com with ESMTPSA id q8sm10867819pfg.118.2020.11.01.07.26.24
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 01 Nov 2020 07:26:27 -0800 (PST)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-Google-Original-From: Manivannan Sadhasivam <manivannanece23@gmail.com>
Date:   Sun, 1 Nov 2020 20:56:21 +0530
To:     Jonathan Cameron <jic23@kernel.org>
Cc:     linux-iio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org,
        Jonathan Cameron <Jonathan.Cameron@huawei.com>,
        Peter Meerwald-Stadler <pmeerw@pmeerw.net>
Subject: Re: [PATCH 22/46] dt-bindings:iio:light:st,vl6180: txt to yaml
 format conversion.
Message-ID: <20201101152621.GB5384@Mani-XPS-13-9360>
References: <20201031184854.745828-1-jic23@kernel.org>
 <20201031184854.745828-23-jic23@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201031184854.745828-23-jic23@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Oct 31, 2020 at 06:48:30PM +0000, Jonathan Cameron wrote:
> From: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> 
> I'm not sure anyone would use this part primarily as an ALS,
> given the time of flight laser also present, but I'll stick with the
> original decision on where to put the binding.
> 
> Added interrupts property as the device has a GPIO interrupt even
> if the driver is not currently using it.
> 
> Signed-off-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>

Acked-by: Manivannan Sadhasivam <manivannanece23@gmail.com>

Thanks,
Mani

> Cc: Manivannan Sadhasivam <manivannanece23@gmail.com>
> Cc: Peter Meerwald-Stadler <pmeerw@pmeerw.net>
> ---
>  .../bindings/iio/light/st,vl6180.yaml         | 45 +++++++++++++++++++
>  .../devicetree/bindings/iio/light/vl6180.txt  | 15 -------
>  2 files changed, 45 insertions(+), 15 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/iio/light/st,vl6180.yaml b/Documentation/devicetree/bindings/iio/light/st,vl6180.yaml
> new file mode 100644
> index 000000000000..27c36ab7990d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/light/st,vl6180.yaml
> @@ -0,0 +1,45 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/light/st,vl6180.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: STMicro VL6180 ALS, range and proximity sensor
> +
> +maintainers:
> +  - Manivannan Sadhasivam <manivannanece23@gmail.com>
> +  - Peter Meerwald-Stadler <pmeerw@pmeerw.net>
> +
> +description: |
> +  Proximity sensing module incorporating time of flight sensor
> +  Datasheet at https://www.st.com/resource/en/datasheet/vl6180x.pdf
> +
> +properties:
> +  compatible:
> +    const: st,vl6180
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +additionalProperties: false
> +
> +required:
> +  - compatible
> +  - reg
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        proximity@29 {
> +            compatible = "st,vl6180";
> +            reg = <0x29>;
> +        };
> +    };
> +...
> diff --git a/Documentation/devicetree/bindings/iio/light/vl6180.txt b/Documentation/devicetree/bindings/iio/light/vl6180.txt
> deleted file mode 100644
> index fb9137d85df9..000000000000
> --- a/Documentation/devicetree/bindings/iio/light/vl6180.txt
> +++ /dev/null
> @@ -1,15 +0,0 @@
> -STMicro VL6180 -  ALS, range and proximity sensor
> -
> -Link to datasheet: https://www.st.com/resource/en/datasheet/vl6180x.pdf
> -
> -Required properties:
> -
> -	-compatible: should be "st,vl6180"
> -	-reg: the I2C address of the sensor
> -
> -Example:
> -
> -vl6180@29 {
> -	compatible = "st,vl6180";
> -	reg = <0x29>;
> -};
> -- 
> 2.28.0
> 
