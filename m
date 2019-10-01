Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CEB1DC3636
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2019 15:48:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388727AbfJANqi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Oct 2019 09:46:38 -0400
Received: from mail-oi1-f196.google.com ([209.85.167.196]:46657 "EHLO
        mail-oi1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726152AbfJANqi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Oct 2019 09:46:38 -0400
Received: by mail-oi1-f196.google.com with SMTP id k25so14396991oiw.13
        for <devicetree@vger.kernel.org>; Tue, 01 Oct 2019 06:46:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=7Db/D52OR8qvk1x6SmwGs6HmPRhnzJN5DgDvNqwdXBU=;
        b=rFCm2vrhU9Qa24B8hMbB8UjLDqjmR4HnLTu9pgStKaj2s8f/TsFsW8xVwBeje3RRjC
         MxHfgcFKlwwryKx6qm0IfCapS6zh9PNSrBzjFKC9b36oeP1YPQboP/KyazOC40Op8AFX
         /pzfzzU7WZMCaaBDgFzSmpD049u+XkQsiwWRfhlE01lg2FL0G7MhdCkUmnrxLXbw72JX
         Wnbm3W8D9VrAqvqokqg5n2s+FN8hXsLObYdK0JXOgmeI7DTMKIBD3jwJLos1GpnftXlC
         AFPsRd1+CHddyJKdUZI8pwOBjAU/ZaP5BczVpWhY+hPrYbUk2uazS2HabDS3vCVcrlOu
         D/6g==
X-Gm-Message-State: APjAAAXgI5NCtQRSBjtCFDDK708C0rk52Jk3Zy9QJAzMTnw1a6EgRUnN
        4YNW+dFxp5qCTOYgCT0BPQ==
X-Google-Smtp-Source: APXvYqwhBrdUz7WDdxqtLyElalQ37NxNI4bFYk4pJWgqPgK8hRBtijiM/MXJh1P47UD8Fpz68iGkxw==
X-Received: by 2002:aca:7291:: with SMTP id p139mr3805492oic.53.1569937597112;
        Tue, 01 Oct 2019 06:46:37 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id u14sm4788587otj.61.2019.10.01.06.46.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Oct 2019 06:46:36 -0700 (PDT)
Date:   Tue, 1 Oct 2019 08:46:35 -0500
From:   Rob Herring <robh@kernel.org>
To:     Stefan Wahren <wahrenst@gmx.net>
Cc:     Mark Rutland <mark.rutland@arm.com>, Eric Anholt <eric@anholt.net>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        bcm-kernel-feedback-list@broadcom.com,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH V3 4/8] dt-bindings: arm: Convert BCM2835 board/soc
 bindings to json-schema
Message-ID: <20191001134635.GA26744@bogus>
References: <1569672435-19823-1-git-send-email-wahrenst@gmx.net>
 <1569672435-19823-5-git-send-email-wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1569672435-19823-5-git-send-email-wahrenst@gmx.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 28 Sep 2019 14:07:10 +0200, Stefan Wahren wrote:
> Convert the BCM2835/6/7 SoC bindings to DT schema format using json-schema.
> All the other Broadcom boards are maintained by Florian Fainelli.
>
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> Acked-by: Eric Anholt <eric@anholt.net>
> ---
>  .../devicetree/bindings/arm/bcm/bcm2835.yaml       | 48 ++++++++++++++++
>  .../devicetree/bindings/arm/bcm/brcm,bcm2835.txt   | 67 ----------------------
>  2 files changed, 48 insertions(+), 67 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
>  delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm2835.txt
>

Reviewed-by: Rob Herring <robh@kernel.org>
