Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 19EC02B8692
	for <lists+devicetree@lfdr.de>; Wed, 18 Nov 2020 22:27:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726654AbgKRVZX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Nov 2020 16:25:23 -0500
Received: from mail-oo1-f65.google.com ([209.85.161.65]:33378 "EHLO
        mail-oo1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726300AbgKRVZW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Nov 2020 16:25:22 -0500
Received: by mail-oo1-f65.google.com with SMTP id f8so815650oou.0
        for <devicetree@vger.kernel.org>; Wed, 18 Nov 2020 13:25:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=WvWVZjtMqUEpEVNVyeKHGoOqarrO4fIgaTZGTT4gF3U=;
        b=jbwYADgp7HwTLs3h9jv70f+FQFVAsaJf+agR+pqaa7plJXll6/3bgnUg+UtV9JcnNg
         med+GQRcxxMyym7OlHs06LsX6CJHAEQafv8dosHpuR8oANYHiy6rN9M4TmzXIZXwSngi
         ArwjPFddokyFIDAYXJ+Pplp/esRiKtjtwbpaaeQC1rul9bNl2HODelgNBzxtyVvAMCfP
         O67nu1u081Fs7fwTZo6SFT00s26p0ekOhw3yv26seS7OUA+YXcUU7YDrxtbZQxfA8/69
         GZN2GKQJ9uSyI9qYakSy0g60Wn8dr7KKR4ij+UT3sCngNrBWcvtfKNSZOOvVF+ytgKcf
         Bu2Q==
X-Gm-Message-State: AOAM5313LmOFot0akYR7CSW5bcKaPFlUu9DTAXCMXlMN2iDA6hifGTzD
        kfsWDUZ4xig9sAor5QUWxNNMYWStTA==
X-Google-Smtp-Source: ABdhPJzLVqU8QDghc0cDqrLaoKN5nZD4D7ER9TA5PplGMyAJYCWvJrJfOEpD30jaFL27z4uosAfh8A==
X-Received: by 2002:a4a:c884:: with SMTP id t4mr3609054ooq.52.1605734721460;
        Wed, 18 Nov 2020 13:25:21 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id z12sm8503044oos.12.2020.11.18.13.25.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Nov 2020 13:25:20 -0800 (PST)
Received: (nullmailer pid 1841688 invoked by uid 1000);
        Wed, 18 Nov 2020 21:25:20 -0000
Date:   Wed, 18 Nov 2020 15:25:20 -0600
From:   Rob Herring <robh@kernel.org>
To:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     devicetree@vger.kernel.org,
        =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        bcm-kernel-feedback-list@broadcom.com,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: reset: document Broadcom's PMB binding
Message-ID: <20201118212520.GA1841497@bogus>
References: <20201118132440.15862-1-zajec5@gmail.com>
 <20201118132440.15862-2-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20201118132440.15862-2-zajec5@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 18 Nov 2020 14:24:39 +0100, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Broadcom's PMB is reset controller used for disabling and enabling SoC
> devices.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
>  .../devicetree/bindings/reset/brcm,pmb.yaml   | 51 +++++++++++++++++++
>  include/dt-bindings/reset/brcm,pmb.h          |  9 ++++
>  2 files changed, 60 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/reset/brcm,pmb.yaml
>  create mode 100644 include/dt-bindings/reset/brcm,pmb.h
> 


My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Error: Documentation/devicetree/bindings/reset/brcm,pmb.example.dts:31.5-6 syntax error
FATAL ERROR: Unable to parse input tree
make[1]: *** [scripts/Makefile.lib:342: Documentation/devicetree/bindings/reset/brcm,pmb.example.dt.yaml] Error 1
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:1364: dt_binding_check] Error 2


See https://patchwork.ozlabs.org/patch/1402238

The base for the patch is generally the last rc1. Any dependencies
should be noted.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

