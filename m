Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0F5CB2F7FD2
	for <lists+devicetree@lfdr.de>; Fri, 15 Jan 2021 16:40:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726402AbhAOPjw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jan 2021 10:39:52 -0500
Received: from mail-oo1-f41.google.com ([209.85.161.41]:40460 "EHLO
        mail-oo1-f41.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732751AbhAOPjv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jan 2021 10:39:51 -0500
Received: by mail-oo1-f41.google.com with SMTP id v19so2290378ooj.7
        for <devicetree@vger.kernel.org>; Fri, 15 Jan 2021 07:39:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=94xkx+0r8OoT6ih6r+wvNCHlyCkX38ZU2pCIwQ+F1Os=;
        b=K8Msg9K3DwptRuiP8KlwxoqQDccGh/gboIukL3024QvGGMPl5UzKvX65rftNIStuhU
         qDFhMXXPCuakBnv2dopfqLvkN/Be6RYqrdyJeDkmENbuCp0UeNH8juN09YoJrv/AdhHk
         WJAN9HL5U6s3V5YV8wA9Eed8cDp42GwhbwvOqzttVTowi5HWmLpQymwOhUildWlvhhu/
         RF9bn9gwkRz9idWGp/T9gJVTUidJjYR4OvyhbiUONchMbny8i9hWggfibLnVd6eQcs+D
         HMpQyR1STvHCfHgTMbjoCn30wlr11QJPxXYaZkTbUz+/zAke8mnNgKkPv8GUV8zZHBqe
         JyqQ==
X-Gm-Message-State: AOAM531JJF8xAEpWsU8BKactmHkTzxADjmezjnB5GOR2zdii42wua3gC
        d6FWU+h2JYIw6a7N23jOHPSxwldNzQ==
X-Google-Smtp-Source: ABdhPJyL8zfTEZXUqiakxcaGWlJvzJbNssl5LSkAF2uY0V4vq3RryGCrQkMEp0nP8mwv9xJpwOdUwA==
X-Received: by 2002:a4a:a11a:: with SMTP id i26mr8681904ool.54.1610725150668;
        Fri, 15 Jan 2021 07:39:10 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id z189sm1728067oia.28.2021.01.15.07.39.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Jan 2021 07:39:09 -0800 (PST)
Received: (nullmailer pid 1311459 invoked by uid 1000);
        Fri, 15 Jan 2021 15:39:04 -0000
From:   Rob Herring <robh@kernel.org>
To:     Damien Le Moal <damien.lemoal@wdc.com>
Cc:     linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>
In-Reply-To: <20210115140352.146941-9-damien.lemoal@wdc.com>
References: <20210115140352.146941-1-damien.lemoal@wdc.com> <20210115140352.146941-9-damien.lemoal@wdc.com>
Subject: Re: [PATCH v12 08/17] dt-bindings: fix sifive clint compatible string
Date:   Fri, 15 Jan 2021 09:39:04 -0600
Message-Id: <1610725144.899521.1311458.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 15 Jan 2021 23:03:43 +0900, Damien Le Moal wrote:
> Fix the Sifive clint compatible string definition to make the value
> "sifive,fu540-c000-clint" optional, allowing a DT to specify only
> "sifive,clint0" for its generic implementation without any tweak.
> With this change, a Sifive clint node can now be defined as explained
> in the compatible string description.
> 
> Cc: Anup Patel <anup.patel@wdc.com>
> Cc: Rob Herring <robh@kernel.org>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> ---
>  .../devicetree/bindings/timer/sifive,clint.yaml          | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/timer/sifive,clint.example.dt.yaml: timer@2000000: compatible: 'oneOf' conditional failed, one must be fixed:
	['sifive,fu540-c000-clint', 'sifive,clint0'] is too long
	Additional items are not allowed ('sifive,clint0' was unexpected)
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/timer/sifive,clint.yaml

See https://patchwork.ozlabs.org/patch/1427053

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

