Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AF3E713047D
	for <lists+devicetree@lfdr.de>; Sat,  4 Jan 2020 22:07:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726234AbgADVHr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 4 Jan 2020 16:07:47 -0500
Received: from mail-il1-f195.google.com ([209.85.166.195]:46639 "EHLO
        mail-il1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726207AbgADVHr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 4 Jan 2020 16:07:47 -0500
Received: by mail-il1-f195.google.com with SMTP id t17so39314396ilm.13
        for <devicetree@vger.kernel.org>; Sat, 04 Jan 2020 13:07:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=LPOl0x7Aub5aLxVDzb4tsAOVCc/ocGDdfg2ZVh/x324=;
        b=YtuK5Hm/lzMbESRWsKWPGlDMOF6thULj/mFR7I5tFRA0aLB1594U8mX1FHEPKFuycD
         rNq/tMjY/cZZBgqQEpbT4rN2wzdOxqWuATZmVq8/gedZQvNANDWmnvONe5CbgHbvBu3G
         vUwQI+HW7GusE4F90OQZAzOudvTKOu+JKPNnIK+dWfeoMiwX6XKcE9DlBXXzbQupB6yR
         k6beMAqtJBACYLGDUojWcPX1bWMmIWjiiWa1f87f0dF7fZ9xpFfU5AK1SzuDecYAeCSx
         8GZz08obq2b2KWbT/FCEbqZ8noYeWdsZ8ZMQvmW1rAsMERkxgLDKxBayePfJKdUohdcf
         fdHg==
X-Gm-Message-State: APjAAAUjn6yp+bHmeccONWedpuaxuFNhcDfKYLXVKyEgK/9rZVj0hKDT
        TPN8jpvaX06BMxMlWLq15dsG3LU=
X-Google-Smtp-Source: APXvYqwKV9VJG9yx+wXp2L63z/Rn7M7kWwLKapL0DcOgFPHSlABftbeD/mktFA8rCMqdBvHZgWVBfQ==
X-Received: by 2002:a92:8d05:: with SMTP id s5mr76590426ild.23.1578172066544;
        Sat, 04 Jan 2020 13:07:46 -0800 (PST)
Received: from rob-hp-laptop ([64.188.179.251])
        by smtp.gmail.com with ESMTPSA id r14sm22491378ilg.59.2020.01.04.13.07.45
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Jan 2020 13:07:45 -0800 (PST)
Received: from rob (uid 1000)
        (envelope-from rob@rob-hp-laptop)
        id 2219a3
        by rob-hp-laptop (DragonFly Mail Agent v0.11);
        Sat, 04 Jan 2020 14:07:43 -0700
Date:   Sat, 4 Jan 2020 14:07:43 -0700
From:   Rob Herring <robh@kernel.org>
To:     James Tai <james.tai@realtek.com>
Cc:     linux-realtek-soc@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Robin Murphy <robin.murphy@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        linux-kernel@vger.kernel.org, mark.rutland@arm.com,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: realtek: Document RTD1319 and
 Realtek PymParticle EVB
Message-ID: <20200104210743.GA12979@bogus>
References: <20191228150553.6210-1-james.tai@realtek.com>
 <20191228150553.6210-2-james.tai@realtek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191228150553.6210-2-james.tai@realtek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Dec 28, 2019 at 11:05:52PM +0800, James Tai wrote:
> Define compatible strings for Realtek RTD1319 SoC and Realtek PymParticle
> EVB.
> 
> Signed-off-by: James Tai <james.tai@realtek.com>
> ---
>  Documentation/devicetree/bindings/arm/realtek.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)

Reviewed-by: Rob Herring <robh@kernel.org>
