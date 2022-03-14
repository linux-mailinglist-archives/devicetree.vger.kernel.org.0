Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7B5A74D8A16
	for <lists+devicetree@lfdr.de>; Mon, 14 Mar 2022 17:44:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243187AbiCNQoh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Mar 2022 12:44:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60706 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244515AbiCNQoE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Mar 2022 12:44:04 -0400
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9520C26C6
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 09:42:52 -0700 (PDT)
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com [209.85.218.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id DF2413F223
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 16:42:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1647276170;
        bh=Tz9ZNgcki9IM3FCuunguyV56DMoZc7Tr9Mm7Sjlp0x4=;
        h=Message-ID:Date:MIME-Version:Subject:To:References:From:
         In-Reply-To:Content-Type;
        b=SVJPnKoOc/aEwb0r6xeKyn1wekVFxaRm9wvDoBHl2vxtup3wKKQxjs7K09SMpWndU
         gtYsr/fkavYl+93hxPnJOb6WV4n5UyhYbiDo/RvPZDzC9FZM6Y+XI2h5DVEFiS76L0
         c07TjrIj5TICy1Qx5679tZs/fryNXpZhGoqzXEJZ/uEuWpMy00GKP78uRWCQlSt2iN
         kzNExFAwPQKC/cfvtgakTVZUSE1qFvS7PzocL568deiLzHVs+UykyM+1/sxS/yfXJL
         KNBF1InPlQDSdAF1TAimMbkh4QxbJJ9E/tPfFJCvhixwMD00bRc0Nvx/knSaqQIg/b
         MkgAqw78jwDrw==
Received: by mail-ej1-f71.google.com with SMTP id qf24-20020a1709077f1800b006ce8c140d3dso8251232ejc.18
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 09:42:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Tz9ZNgcki9IM3FCuunguyV56DMoZc7Tr9Mm7Sjlp0x4=;
        b=PCVFvi/4A4Tj4aO6MsAFxfyjNEQ3qHYzozFL65dGYip1ZgOH+7/sUniOOZTSW86Kib
         dQcBwlmjNOJfw7GjHOoYpUEqXJ26UiUF2FsAmFJa1pP+DHOVDGiFcZ88q9QE1iOE680q
         krsse8JL46S4ViPwfQzZg8IpMSz6lDVIcC+LqCnVNxKUT3ehvmZsFyexQWTwTrgrwMNK
         GdmwScJV12e1ZEX8nz/Dpsq3+CbGrhD0gnJtIYnD/BWQgdCnRegzcEKWigKslkV95wxk
         WZk8YPN+9WoEPpH3EmSrqjRyrwSzpw0z8Wv8CAY2sY7mXZIhCIxWalhBPL6UpcM9CTny
         7kDQ==
X-Gm-Message-State: AOAM532mpC3a/APdr/a3P1tk7oJsGpilMdjZM16SQItNk0NBbJuFuSKW
        7hXyvEtbY/jvMJMGGlLgcy7HqASirTenYC2UzPDdJmItW7u/HfigN8lZlwgGa7TEvfISTMbqpr1
        pJ/DPbXDc/4ENtg1fZ1fYX9+ZSO8jFx3gatlpXlY=
X-Received: by 2002:a17:906:3a83:b0:6d6:e54d:3264 with SMTP id y3-20020a1709063a8300b006d6e54d3264mr19561887ejd.96.1647276169865;
        Mon, 14 Mar 2022 09:42:49 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx34GYPJ8QiU5oevtOaGkstabUItCiKv4aw+jxv2P1DTpWtgTxUAEh3ZyVjY+fT4Cty1Peodw==
X-Received: by 2002:a17:906:3a83:b0:6d6:e54d:3264 with SMTP id y3-20020a1709063a8300b006d6e54d3264mr19561873ejd.96.1647276169647;
        Mon, 14 Mar 2022 09:42:49 -0700 (PDT)
Received: from [192.168.0.152] (xdsl-188-155-174-239.adslplus.ch. [188.155.174.239])
        by smtp.googlemail.com with ESMTPSA id u9-20020a170906124900b006ce88a505a1sm7205436eja.179.2022.03.14.09.42.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Mar 2022 09:42:48 -0700 (PDT)
Message-ID: <7d560277-95e2-070c-e603-30f00dea7f51@canonical.com>
Date:   Mon, 14 Mar 2022 17:42:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v1 2/2] dt-bindings: usb: Add bindings doc for Sunplus USB
 HOST OHCI driver
Content-Language: en-US
To:     Vincent Shih <vincent.sunplus@gmail.com>,
        gregkh@linuxfoundation.org, stern@rowland.harvard.edu,
        p.zabel@pengutronix.de, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org, wells.lu@sunplus.com
References: <1647235924-15572-1-git-send-email-vincent.sunplus@gmail.com>
 <1647235924-15572-3-git-send-email-vincent.sunplus@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <1647235924-15572-3-git-send-email-vincent.sunplus@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/03/2022 06:32, Vincent Shih wrote:
> Add bindings doc for Sunplus USB HOST OHCI driver
> 
> Signed-off-by: Vincent Shih <vincent.sunplus@gmail.com>
> ---
>  .../bindings/usb/sunplus,sp7021-usb-ohci.yaml      | 69 ++++++++++++++++++++++
>  MAINTAINERS                                        |  1 +
>  2 files changed, 70 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/usb/sunplus,sp7021-usb-ohci.yaml
> 
> diff --git a/Documentation/devicetree/bindings/usb/sunplus,sp7021-usb-ohci.yaml b/Documentation/devicetree/bindings/usb/sunplus,sp7021-usb-ohci.yaml
> new file mode 100644
> index 0000000..7583b68
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/usb/sunplus,sp7021-usb-ohci.yaml
> @@ -0,0 +1,69 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright (C) Sunplus Co., Ltd. 2021
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/usb/sunplus,sp7021-usb-ohci.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +

Looks good. Few minor nitpicks:

> +title: Sunplus SP7021 OHCI Controller Device Tree Bindings

Remove "Device Tree Bindings" words here. Title is about hardware.

> +
> +allOf:
> +  - $ref: usb-hcd.yaml#

Put entire "allOf:" just before "properties:".

> +
> +maintainers:
> +  - Vincent Shih <vincent.sunplus@gmail.com>
> +
> +description:
> +  Sunplus SP7021 USB HOST IP is a USB2.0 Host Controller. It supports both
> +  Enhanced Host Controller Interface (EHCI) and Open Host Controller Interface
> +  (OHCI).
> +
> +  It supports 32-bits address bus and 64bit data bus interface, compliant
> +  to AMBA AXI interface for data transfer.
> +
> +  It supports 32-bits address and data bus interface, compliant to AMBA
> +  AHB interface for register configurations.
> +
> +  It supports 32-bits address and data bus interface, compliant to AMBA
> +  AXI interface for register alternative configurations.
> +
> +  The UTM Interface block generates PHY control signals, compliant to
> +  USB2.0 Transceiver Macrocell Interface Specification Revision 1.0.
> +
> +properties:
> +  compatible:
> +    const: sunplus,sp7021-usb-ohci
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  resets:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1

You might need here phys. Are you sure you do not need to configure the
phy for OHCI? You should not assume it would be configured by other driver.

Best regards,
Krzysztof
