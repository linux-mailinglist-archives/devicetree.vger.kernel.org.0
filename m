Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B13A2BE888
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2019 00:55:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729968AbfIYWzH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Sep 2019 18:55:07 -0400
Received: from mail-pg1-f194.google.com ([209.85.215.194]:35208 "EHLO
        mail-pg1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729959AbfIYWzH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Sep 2019 18:55:07 -0400
Received: by mail-pg1-f194.google.com with SMTP id a24so214609pgj.2
        for <devicetree@vger.kernel.org>; Wed, 25 Sep 2019 15:55:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=9WC9auWepUy78cUJN0aqVvX0lDk3WeTONEi6+SRxepQ=;
        b=eoqlvEqQxVKWBUggvKjRbdxmqgttREvbLfuo9DiOOEnl2OUh0wUEp4SrUi0xIDRbOq
         V5BovfMxNoOTiYrIiSiauLlB8IUPau86O8w5VEXiD89gUa97Tl/hmc9Ekwgnhc3cmDDX
         RCVE98WWlxe5UCCRhwuKjewoproUEVcDDZn2Z7ovjumQvyzfAfFDXT0nM1ZkInMVe72B
         VkR1u6V510QP34t6MdbbFP0KMeIrp3VIPtM8KvFxMpohWWNV9dUR5mYxWZojPXbGw88e
         zSx8oPFkeq8P3EH3hQMKVB8CgNQS3nCZvaVsFjl/GjssU+6pbt/DNxOPMyLicl236ns9
         g9kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=9WC9auWepUy78cUJN0aqVvX0lDk3WeTONEi6+SRxepQ=;
        b=Q1TGvYO1iXhGsNX5AsbeAwypxztMu9MVlWMTPxV9j2oPH11E+bnExe95ltYRoooq9b
         ufGg/w1SPRqlfomNFQ0EOvSnff+NtPfrS+O60qPJ7/HU2+qCu8/rp/KOVHxiPU5tK2t5
         cs5O0Kw6owDOgJYkTZ5F0MaaMEu7Mny4C0RLG9Ql9H5Zm1PuIXxdWnLThzOd2GYZT11i
         kdBZzM39ftV0btifobljN5gBkxVH2RO+3gSR7ZG5j0I4kWzdEVnjo4x/zDV7rmWEyYyY
         likncMJLUg09wRHCMZXUFK6qm+i0BN6g48UAOFl/1tWJFq2UOBjK7qJtm9Xn4gQvBjwJ
         A3FA==
X-Gm-Message-State: APjAAAUJdJB1tRy6vcXgqkT3/K4akUUXeUL9NRjdyHtc9sFWomZYNulu
        nb/2ddNNl5qKx8RZfsRV5htTUw==
X-Google-Smtp-Source: APXvYqyHy++T2AILkhhlqZKUmq7GMsbUVh3oS83mlr5NVQ7OOev5eiPms6EaAI0vnUK3PPzAG6b4fg==
X-Received: by 2002:a17:90a:244f:: with SMTP id h73mr59911pje.137.1569452106814;
        Wed, 25 Sep 2019 15:55:06 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.gmail.com with ESMTPSA id y15sm62024pfp.111.2019.09.25.15.55.05
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 25 Sep 2019 15:55:05 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Xingyu Chen <xingyu.chen@amlogic.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Neil Armstrong <narmstrong@baylibre.com>
Cc:     Xingyu Chen <xingyu.chen@amlogic.com>,
        Jianxin Pan <jianxin.pan@amlogic.com>,
        Rob Herring <robh+dt@kernel.org>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Hanjie Lin <hanjie.lin@amlogic.com>,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/3] dt-bindings: reset: add bindings for the Meson-A1 SoC Reset Controller
In-Reply-To: <1569227661-4261-3-git-send-email-xingyu.chen@amlogic.com>
References: <1569227661-4261-1-git-send-email-xingyu.chen@amlogic.com> <1569227661-4261-3-git-send-email-xingyu.chen@amlogic.com>
Date:   Wed, 25 Sep 2019 15:55:05 -0700
Message-ID: <7htv90rnp2.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Xingyu Chen <xingyu.chen@amlogic.com> writes:

> Add DT bindings for the Meson-A1 SoC Reset Controller include file,
> and also slightly update documentation.
>
> Signed-off-by: Xingyu Chen <xingyu.chen@amlogic.com>
> Signed-off-by: Jianxin Pan <jianxin.pan@amlogic.com>

The order here doesn't look right.  As the sender, your sign-off should
be last.  Is Jianxin the author or are you?  If Jianxin, there should be
a "From:" line at the beginning of the changelog to indicate authorship
that's different from the sender.

> ---
>  .../bindings/reset/amlogic,meson-reset.yaml        |  1 +
>  include/dt-bindings/reset/amlogic,meson-a1-reset.h | 59 ++++++++++++++++++++++
>  2 files changed, 60 insertions(+)
>  create mode 100644 include/dt-bindings/reset/amlogic,meson-a1-reset.h
>
> diff --git a/Documentation/devicetree/bindings/reset/amlogic,meson-reset.yaml b/Documentation/devicetree/bindings/reset/amlogic,meson-reset.yaml
> index 00917d8..b3f57d8 100644
> --- a/Documentation/devicetree/bindings/reset/amlogic,meson-reset.yaml
> +++ b/Documentation/devicetree/bindings/reset/amlogic,meson-reset.yaml
> @@ -16,6 +16,7 @@ properties:
>        - amlogic,meson8b-reset # Reset Controller on Meson8b and compatible SoCs
>        - amlogic,meson-gxbb-reset # Reset Controller on GXBB and compatible SoCs
>        - amlogic,meson-axg-reset # Reset Controller on AXG and compatible SoCs
> +      - amlogic,meson-a1-reset # Reset Controller on A1 and compatible SoCs
>  
>    reg:
>      maxItems: 1
> diff --git a/include/dt-bindings/reset/amlogic,meson-a1-reset.h b/include/dt-bindings/reset/amlogic,meson-a1-reset.h
> new file mode 100644
> index 00000000..8d76a47
> --- /dev/null
> +++ b/include/dt-bindings/reset/amlogic,meson-a1-reset.h
> @@ -0,0 +1,59 @@
> +/* SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> + *
> + * Copyright (c) 2019 Amlogic, Inc. All rights reserved.
> + * Author: Xingyu Chen <xingyu.chen@amlogic.com>
> + *
> + */
> +
> +#ifndef _DT_BINDINGS_AMLOGIC_MESON_A1_RESET_H
> +#define _DT_BINDINGS_AMLOGIC_MESON_A1_RESET_H
> +
> +/* RESET0 */
> +#define RESET_AM2AXI_VAD		1

minor nit: can you use comments/whitespace here to indicate holes?
Please see the other amlogic files in this dir for examples.

Kevin
