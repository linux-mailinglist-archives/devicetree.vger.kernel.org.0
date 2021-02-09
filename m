Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 90CF03158CA
	for <lists+devicetree@lfdr.de>; Tue,  9 Feb 2021 22:43:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233925AbhBIVkO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Feb 2021 16:40:14 -0500
Received: from mail-oi1-f180.google.com ([209.85.167.180]:36545 "EHLO
        mail-oi1-f180.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234257AbhBIU7V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Feb 2021 15:59:21 -0500
Received: by mail-oi1-f180.google.com with SMTP id k204so19371794oih.3
        for <devicetree@vger.kernel.org>; Tue, 09 Feb 2021 12:58:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=iSIrg/FaL7A6M2rR3qTcwdKYc7gS9Dxi8ludh/I5r4k=;
        b=tGVQeWy6t9MVUgiEJWZyitg1oK9TgDKzOTp4L9w+xUR8d2byD+lbXfVqWEzokdWxIH
         7QMNMfFeW54cabkH6wmOsA9zA98ioU47Ch5WPscFaf4W+29mIX2qKCepI/uVoT5xlw7U
         34MBp70j8PI34ARX6RdE1N1f0DCZ0Vyoi/E+WtVE9YSjcHh6yi49McLdGUWlZay7o8ay
         J+sdzTjObuM+V62L9b4Hzs9m4U5tgtFWDn7Tr828rA7vVyVNH5GTyQVboPHwNOqSk/hK
         GNspTRjcPTy4VowfOTzhDkxot9HhHVP9xI1zxAJ7LEqc32JNdhMxWdkcrLyNzREQkgjf
         iG3g==
X-Gm-Message-State: AOAM532hkwttl4MxJkadEI2kKfVYwfwPwF/gwWGKdel0F+nEGg7soiyU
        MjBtb5kNTTlR4oOURXmVycAMdSwWKw==
X-Google-Smtp-Source: ABdhPJwg6XPrEQBeIbH00oyFZSow9ke80AtGXeWCeAQYyWvGIVo5cbq+tz2XVRrn9DJdJ0dvJ5kM2g==
X-Received: by 2002:a05:6808:84:: with SMTP id s4mr3797302oic.164.1612904299608;
        Tue, 09 Feb 2021 12:58:19 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id s49sm4588224otb.39.2021.02.09.12.58.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Feb 2021 12:58:18 -0800 (PST)
Received: (nullmailer pid 169585 invoked by uid 1000);
        Tue, 09 Feb 2021 20:58:17 -0000
Date:   Tue, 9 Feb 2021 14:58:17 -0600
From:   Rob Herring <robh@kernel.org>
To:     Lokesh Vutla <lokeshvutla@ti.com>
Cc:     Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Sekhar Nori <nsekhar@ti.com>, Nishanth Menon <nm@ti.com>,
        Vignesh R <vigneshr@ti.com>, Rob Herring <robh+dt@kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Dave Gerlach <d-gerlach@ti.com>,
        Device Tree Mailing List <devicetree@vger.kernel.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: ti: Add bindings for AM642 SK
Message-ID: <20210209205817.GA169419@robh.at.kernel.org>
References: <20210202081530.14984-1-lokeshvutla@ti.com>
 <20210202081530.14984-2-lokeshvutla@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210202081530.14984-2-lokeshvutla@ti.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 02 Feb 2021 13:45:29 +0530, Lokesh Vutla wrote:
> AM642 StarterKit (SK) board is a low cost, small form factor board
> designed for TI’s AM642 SoC.
> Add DT binding documentation for AM642 SK.
> 
> Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
> ---
>  Documentation/devicetree/bindings/arm/ti/k3.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
