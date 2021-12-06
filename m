Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8776846A6D6
	for <lists+devicetree@lfdr.de>; Mon,  6 Dec 2021 21:24:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349644AbhLFU1o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Dec 2021 15:27:44 -0500
Received: from mail-oi1-f171.google.com ([209.85.167.171]:45931 "EHLO
        mail-oi1-f171.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349507AbhLFU1o (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Dec 2021 15:27:44 -0500
Received: by mail-oi1-f171.google.com with SMTP id 7so23544549oip.12
        for <devicetree@vger.kernel.org>; Mon, 06 Dec 2021 12:24:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=bEUirRZ4fWv1LBHrIrj57YaZUzYEC1o4RC/sOi0pKaY=;
        b=WqfhGMboWYcbZ50M+jz93k0KzOMwosHpQAyU4C6ZiAzhJK2fBH5mMb+KvLYohb2LwC
         xTy/mTjXHUHNaTZo0Nae+TSxZzwHwcalGR92IOPpKU0Ogwbh6KwNvlrSJaVTZ+ndv86s
         bxuK9JJ76SqySVbs9AdJ8ZCwKveovGwGWz+OrRp1Spa9SdZQqAw/m96x0XyjIL9SpErl
         ZYakqweRnTia62o6EsvXWWqeu75HrMgZSYjc9Q+lIwT8rSAVoME5Z7D6MmV05FKQx8e/
         C7H6ckv2pxknibdcoyU8W401/2LAiRzfUOAFZBbpwl/eKOJViyJtBGyG4l+yr0fopdbH
         EidA==
X-Gm-Message-State: AOAM532DHp1s1b1lgDx8IakB5DirIdNxoYAa7XBamXRLWdgMGl/XCa8a
        DCwkhBotclo9BQNj4DsiXceApzXdcA==
X-Google-Smtp-Source: ABdhPJy7t+PaoJwdvxtbKDvwG7aAfiYKd9zkpVDlgXLv2p2Q2jJexW9pWQf+PbL3YqX7drYx4dNYwg==
X-Received: by 2002:a05:6808:23c3:: with SMTP id bq3mr908696oib.124.1638822255004;
        Mon, 06 Dec 2021 12:24:15 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id a5sm2371223otd.74.2021.12.06.12.24.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Dec 2021 12:24:14 -0800 (PST)
Received: (nullmailer pid 2523955 invoked by uid 1000);
        Mon, 06 Dec 2021 20:24:13 -0000
Date:   Mon, 6 Dec 2021 14:24:13 -0600
From:   Rob Herring <robh@kernel.org>
To:     Thierry Reding <thierry.reding@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        devicetree@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH] dt-bindings: regulator: maxim,max8973: Document
 interrupts property
Message-ID: <Ya5xbe1om40Ac0Ap@robh.at.kernel.org>
References: <20211206153432.226963-1-thierry.reding@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211206153432.226963-1-thierry.reding@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 06 Dec 2021 16:34:32 +0100, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> One of the examples in the bindings has an interrupts property and the
> Linux kernel driver has support for requesting an interrupt as well. It
> looks like the absence from the bindings was just an oversight. Add the
> property to make sure the examples can be validated.
> 
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
>  Documentation/devicetree/bindings/regulator/maxim,max8973.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
