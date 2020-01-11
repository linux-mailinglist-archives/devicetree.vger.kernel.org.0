Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CD1E0138202
	for <lists+devicetree@lfdr.de>; Sat, 11 Jan 2020 16:29:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729932AbgAKP3e (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 11 Jan 2020 10:29:34 -0500
Received: from mail-lj1-f193.google.com ([209.85.208.193]:38766 "EHLO
        mail-lj1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729926AbgAKP3d (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 11 Jan 2020 10:29:33 -0500
Received: by mail-lj1-f193.google.com with SMTP id w1so5248934ljh.5
        for <devicetree@vger.kernel.org>; Sat, 11 Jan 2020 07:29:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=+yyz8Q0QX9xYsWJoU0+FyOfRmn5JGVzY0Qs3w+7UtAg=;
        b=EYeLJEoh5Ypto/JQ3a+tfiWQLR2ymhe/P1LrB6znfOyDal9+j3hZCeRcFn57i/il52
         jX0lzr12VmeYREHmYMhvQqnsA51acM38xUxlwM8p7HvJt1ZA3rnmQiahWOyuZRZDlKDv
         5zN0JzjFiLAGVn5z95fKfGw17gjmvU8/QMCF/MHAUxBWF91Nb3UBoeF95Ds3spT/uCxT
         wADnlQVBdXNYc9OQ15wDWpmHBqlGDgLcD2d+vErc4Ad4/EO4mSghsKwg1ksC/6phGDXq
         J0HW+xEoVDFD4nGf33C7aSfWdpH5PND+gxT4S5ubasP0NqXWGkv4VidHnOOuYyd0OTjz
         TaPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=+yyz8Q0QX9xYsWJoU0+FyOfRmn5JGVzY0Qs3w+7UtAg=;
        b=qD99ZtT/sCvpUC/EWrjBHNBUZRZCz+ScysLAokiuc18IRqrDBZ7cQEzvFDGL3w1KIi
         aiN1sl2Lr/BshWG/USVOpjf6gM8KndGXewtdwJzTX+IcOz1vd3DVaHwxCdOVW6atBPAn
         VV+5EIa7JDAH+lklvUphqAbdud/w9JuAKjgWW7SeEKhvQbbUVARsNMOt/l8ZvinNqJVe
         +l6deWh2rW8XiJCWETx/8Xpxei+wauXv1/lkIiWkf05T3GLEYMjiIeYYOLkyMeb7VCRv
         zLg1wEdCDSxKWw1YE/c8jrP8tP7YBm8AeU20RQMpX5fsvaqJUxZv6g6fngaIDcJjYPza
         dd7g==
X-Gm-Message-State: APjAAAXJUr/swBqrB/eap7Fd1HxBA4Tj2rz1KAtSTdQ/1zgwNejfLC1q
        MKaThPa2NzU/0JdHhPkfTQV8Ww==
X-Google-Smtp-Source: APXvYqxotAwRwA2HmV4//JkAfwQxXY+vp5mgQ9RHqHBLD2c/gKUaVLFzna4/fqCub7KMfJGufTx9DQ==
X-Received: by 2002:a2e:80cc:: with SMTP id r12mr6032098ljg.154.1578756570955;
        Sat, 11 Jan 2020 07:29:30 -0800 (PST)
Received: from wasted.cogentembedded.com ([2a00:1fa0:867:6876:dd67:e9de:b279:534b])
        by smtp.gmail.com with ESMTPSA id q11sm2704957ljm.76.2020.01.11.07.29.29
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Jan 2020 07:29:30 -0800 (PST)
Subject: Re: [PATCH v3] RFC: dt-bindings: Create DT bindings for SATA
 controllers
To:     Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Jens Axboe <axboe@kernel.dk>
Cc:     linux-ide@vger.kernel.org
References: <20200110081743.10086-1-linus.walleij@linaro.org>
From:   Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Organization: Cogent Embedded
Message-ID: <438c2afd-c751-8548-f7c8-c79ebfbe6a45@cogentembedded.com>
Date:   Sat, 11 Jan 2020 18:29:28 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20200110081743.10086-1-linus.walleij@linaro.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-MW
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/10/2020 11:17 AM, Linus Walleij wrote:

> I need to create subnodes for drives connected to SATA
> host controllers, and this needs to be supported
> generally, so create a common YAML binding for
> "sata" that will support subnodes with ports.
> 
> This has been designed as a subset of
> ata/ahci-platform.txt with the bare essentials and
> should be possible to extend or superset to cover the
> common bindings.
> 
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> ChangeLog v2->v3:
> - Split off into its own RFC patch
> - Only support sata-port@ in this binding
> - Opt to support devices 0..14 on the sata-port in
>   line with ahci-platforn.txt not modeling the port
>   multiplier in the device tree at all.
> ChangeLog v1->v2:
> - Use ide@ and sata@ as node names.
> - Use ide-port@ and sata-port@ for the ports toward the
>   drives, rather than letting the subnodes be the drives
>   themselves.
> ---
>  .../devicetree/bindings/ata/sata-common.yaml  | 51 +++++++++++++++++++
>  1 file changed, 51 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/ata/sata-common.yaml
> 
> diff --git a/Documentation/devicetree/bindings/ata/sata-common.yaml b/Documentation/devicetree/bindings/ata/sata-common.yaml
> new file mode 100644
> index 000000000000..9f6718a69dfd
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/ata/sata-common.yaml
> @@ -0,0 +1,51 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/ata/sata-common.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Common Properties for Serial AT attachment (SATA) controllers
> +
> +maintainers:
> +  - Linus Walleij <linus.walleij@linaro.org>
> +
> +description: |
> +  This document defines device tree properties common to most Serial
> +  AT attachment (SATA) storage devices. It doesn't constitue a device tree
> +  binding specification by itself but is meant to be referenced by device
> +  tree bindings.
> +
> +  The SATA controller-specific device tree bindings are responsible for
> +  defining whether each property is required or optional.
> +
> +properties:
> +  $nodename:
> +    pattern: "^sata(@.*)?$"
> +    description:
> +      Specifies the host controller node. SATA host controller nodes are named
> +      "sata"
> +
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 0
> +
> +patternProperties:
> +  "^sata-port@[0-1]$":
> +    description: |
> +      DT nodes for ports connected on the SATA host. The master drive will have
> +      ID number 0 and the slave drive will have ID number 1. The SATA port

   Mhm... SATA doesn't have master/slave drives, there's only 1 drive pert port, IIRC.

> +      nodes will be named "sata-port".
> +    type: object
> +
> +    properties:
> +      reg:
> +        minimum: 0
> +        maximum: 14
> +        description:
> +          The ID number of the drive port SATA can potentially use a port
> +          multiplier making it possible to connect up to 15 disks to a single
> +          SATA port.
> +
> +...

MBR, Sergei
