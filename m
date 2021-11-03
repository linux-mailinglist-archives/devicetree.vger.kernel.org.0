Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 57FF7443AEA
	for <lists+devicetree@lfdr.de>; Wed,  3 Nov 2021 02:21:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232840AbhKCBXh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Nov 2021 21:23:37 -0400
Received: from mail-ot1-f43.google.com ([209.85.210.43]:33335 "EHLO
        mail-ot1-f43.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232850AbhKCBXW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Nov 2021 21:23:22 -0400
Received: by mail-ot1-f43.google.com with SMTP id s19-20020a056830125300b0055ad9673606so110440otp.0
        for <devicetree@vger.kernel.org>; Tue, 02 Nov 2021 18:20:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=fe5Xv+kyJauzq7ZNqvI2QuktA50T37+vjr5WzceAdTw=;
        b=GIPG7Axz4U/pFfXBANHBZCs8MqZrCujduLs8jbV1Kb26+3r0BP4er+9IXgeVRCFy9H
         Dtn6LRRttscqTh18lZ7SevuREfVR1CapcGJg8OGSLLJbv5YRZM66pt9D2Ett1CeWi7v4
         xfU3raioWgyFy569qfT7yR43dg665E/+6qeNn0h2UevNKkzs1Rv7BRnXi4GglJ3miBnL
         qsr5JnCWHVic8UioOqRmDKYdKMYzAeCg2tVs//PdoVsxnQrvy05sZbY0sYWyaw8uKJdb
         P9HKh7mc/gKiKHXyTO5r6W1oPwYimlzO+ECGEUQPDpioAd5GMn6SrH+0KLNQH5oOEy7v
         AAjw==
X-Gm-Message-State: AOAM532qvTp17y5o5j846WToEQLOplza49FpjQHBoEKJQpcn+kn22J0f
        ++5yee7KEmVrBaJ7UptazQ==
X-Google-Smtp-Source: ABdhPJz012ObTzy65pW0RU2VGVoksQdKqgK4OuppwSTNNNdYMfy9+gVwPH8EccTAzNuAlHk+IzJTig==
X-Received: by 2002:a9d:518a:: with SMTP id y10mr24416564otg.143.1635902446777;
        Tue, 02 Nov 2021 18:20:46 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id az10sm166312oib.45.2021.11.02.18.20.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Nov 2021 18:20:46 -0700 (PDT)
Received: (nullmailer pid 3880389 invoked by uid 1000);
        Wed, 03 Nov 2021 01:20:37 -0000
From:   Rob Herring <robh@kernel.org>
To:     jae.hyun.yoo@intel.com
Cc:     Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
        openipmi-developer@lists.sourceforge.net,
        linux-aspeed@lists.ozlabs.org,
        Haiyue Wang <haiyue.wang@linux.intel.com>,
        Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Cedric Le Goater <clg@kaod.org>,
        Corey Minyard <minyard@acm.org>,
        ChiaWei Wang <chiawei_wang@aspeedtech.com>,
        Rob Herring <robh+dt@kernel.org>
In-Reply-To: <20211102203717.96794-6-jae.hyun.yoo@intel.com>
References: <20211102203717.96794-1-jae.hyun.yoo@intel.com> <20211102203717.96794-6-jae.hyun.yoo@intel.com>
Subject: Re: [PATCH -next v2 5/6] dt-bindings: ipmi: aspeed,kcs-bmc: add 'clocks' as a required property
Date:   Tue, 02 Nov 2021 20:20:37 -0500
Message-Id: <1635902437.654631.3880388.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 02 Nov 2021 13:37:16 -0700, jae.hyun.yoo@intel.com wrote:
> From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
> 
> Add 'clocks' as a required property.
> 
> Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
> ---
> v1 -> v2:
> Changes sinve v1:
>  - Added 'clocks' property into kcs-bmc bindings using
>    'aspeed,ast2400-kcs-bmc.yaml' because it's not merged into
>    'aspeed-lpc.yaml' yet. The bindings merging could be done using a
>    separate patch later.
> 
>  .../devicetree/bindings/ipmi/aspeed,ast2400-kcs-bmc.yaml   | 7 +++++++
>  1 file changed, 7 insertions(+)
> 

Running 'make dtbs_check' with the schema in this patch gives the
following warnings. Consider if they are expected or the schema is
incorrect. These may not be new warnings.

Note that it is not yet a requirement to have 0 warnings for dtbs_check.
This will change in the future.

Full log is available here: https://patchwork.ozlabs.org/patch/1549943


kcs@114: 'clocks' is a required property
	arch/arm/boot/dts/aspeed-bmc-amd-ethanolx.dt.yaml
	arch/arm/boot/dts/aspeed-bmc-bytedance-g220a.dt.yaml
	arch/arm/boot/dts/aspeed-bmc-inspur-nf5280m6.dt.yaml

kcs@24: 'clocks' is a required property
	arch/arm/boot/dts/aspeed-bmc-amd-ethanolx.dt.yaml

kcs@28: 'clocks' is a required property
	arch/arm/boot/dts/aspeed-bmc-amd-ethanolx.dt.yaml
	arch/arm/boot/dts/aspeed-bmc-facebook-elbert.dt.yaml
	arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dt.yaml

kcs@2c: 'clocks' is a required property
	arch/arm/boot/dts/aspeed-bmc-amd-ethanolx.dt.yaml
	arch/arm/boot/dts/aspeed-bmc-asrock-e3c246d4i.dt.yaml
	arch/arm/boot/dts/aspeed-bmc-bytedance-g220a.dt.yaml
	arch/arm/boot/dts/aspeed-bmc-facebook-elbert.dt.yaml
	arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dt.yaml
	arch/arm/boot/dts/aspeed-bmc-inspur-nf5280m6.dt.yaml

