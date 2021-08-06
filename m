Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AC09B3E30B2
	for <lists+devicetree@lfdr.de>; Fri,  6 Aug 2021 23:11:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237334AbhHFVMF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Aug 2021 17:12:05 -0400
Received: from mail-io1-f42.google.com ([209.85.166.42]:42613 "EHLO
        mail-io1-f42.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231431AbhHFVME (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 Aug 2021 17:12:04 -0400
Received: by mail-io1-f42.google.com with SMTP id h1so13991869iol.9
        for <devicetree@vger.kernel.org>; Fri, 06 Aug 2021 14:11:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=LZzLPNLXbH+j+QO7f5cFRnRIwZWOf0wOnEn5bd8ofmY=;
        b=eBHdDh11EknqiaiNOrg96qr7V1md/zp+nkp1zHdcAujnlTzPCyBmfWK5x42+46r4Ot
         tmKh5oq5ANzRX86YSNgf4XF9dvUMkHWinWwctpaVjrlxkpF5OFDx93kjJ0dLeNHTkeej
         e79s1D0m2Lwn8UFqj6CNVo72Hv3Z3VEXJUwBHKhq9FxvQbCsYDkifKcsYEtx51R+DIXo
         2cP4jgLAHSlkTcPdy8VgECyW8esmEVgtgWXX8Wh5ITrnO0Gd4LIxbdMgDVGmfGz99wED
         xuPGRk1orv80NjZTLL6w47AycM9TUzc0doTvqtKIhDCea+o/C35kVhx6eMaKPDpcVkYT
         O5jA==
X-Gm-Message-State: AOAM533fwuYMZoCcZTjd+b+OccqjSEMuu0etjaf4d57yply5tooYYcl/
        U7MoTPDtdLN3fmdJ1QK+ZHiWNT799w==
X-Google-Smtp-Source: ABdhPJxG5y+9T8u/1FgW5uVaR36zaAqnKdyvXae7TZwrXeI+gxxU4npGbsvZOsbBSN4Lq8iSKo1SzA==
X-Received: by 2002:a6b:7801:: with SMTP id j1mr135161iom.32.1628284308120;
        Fri, 06 Aug 2021 14:11:48 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id i11sm5035205ilb.15.2021.08.06.14.11.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Aug 2021 14:11:47 -0700 (PDT)
Received: (nullmailer pid 1806205 invoked by uid 1000);
        Fri, 06 Aug 2021 21:11:45 -0000
Date:   Fri, 6 Aug 2021 15:11:45 -0600
From:   Rob Herring <robh@kernel.org>
To:     Stefan Wahren <stefan.wahren@i2se.com>
Cc:     Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 4/9] dt-bindings: display: bcm2835: add optional property
 power-domains
Message-ID: <YQ2lkWoeq9D/yOc6@robh.at.kernel.org>
References: <1627820932-7247-1-git-send-email-stefan.wahren@i2se.com>
 <1627820932-7247-5-git-send-email-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1627820932-7247-5-git-send-email-stefan.wahren@i2se.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Aug 01, 2021 at 02:28:47PM +0200, Stefan Wahren wrote:
> The Raspberry Pi boards with BCM283x needs control of the power domains
> to get display components running. So add this as an optional property
> in order to avoid such DT schema warnings:
> 
> hdmi@7e902000: 'power-domains' does not match any of the regexes: ...

You're adding it because it is in use but failed to be documented, not 
to avoid warnings. The warning is just the symptom of that.

> 
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> ---
>  Documentation/devicetree/bindings/display/brcm,bcm2835-dsi0.yaml | 3 +++
>  Documentation/devicetree/bindings/display/brcm,bcm2835-hdmi.yaml | 3 +++
>  Documentation/devicetree/bindings/display/brcm,bcm2835-v3d.yaml  | 3 +++
>  Documentation/devicetree/bindings/display/brcm,bcm2835-vec.yaml  | 3 +++
>  4 files changed, 12 insertions(+)

In any case,

Acked-by: Rob Herring <robh@kernel.org>
