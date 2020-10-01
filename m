Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F090B27FBF7
	for <lists+devicetree@lfdr.de>; Thu,  1 Oct 2020 10:54:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731131AbgJAIyK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Oct 2020 04:54:10 -0400
Received: from mail-ed1-f68.google.com ([209.85.208.68]:40858 "EHLO
        mail-ed1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725938AbgJAIyI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Oct 2020 04:54:08 -0400
Received: by mail-ed1-f68.google.com with SMTP id t16so4783307edw.7
        for <devicetree@vger.kernel.org>; Thu, 01 Oct 2020 01:54:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=zsSyPKYevthoFdfr4eWmZVbU79RGvd62AkQsiVBsgUQ=;
        b=Uo8TtJjmU9wLTMO/ixlML2KjKOgIULsYiRiVaqVPWRXGNhw/+rVF0DUPQ3i2ET9jvW
         bermQFSlidRl11KMmGn06YAE3GnPSLYqtMNF5lHI21Kp1lqPAhaEWhGHHozar447n6Db
         VAdp4BRhLsSN7P5WjpXexTn5whuq6ql/GkhiN06VmXru7h4A82QovG9VWA7cClJgzknA
         0vtog2EO4ew/1l7sfg+pafulHEzFRTVPNz3v3aCO/mNepDQGS8Vt8yUbgKkPDl3ksUtS
         y2n+G/uX2fGD9KUNec8ZoO/2chEQ0c2oDyj6qGJtmFIpYCg5JwLu3N1HreVNTxp12AHx
         RGHw==
X-Gm-Message-State: AOAM531AoYzqZ5e0MDp/KLcl9/Qklc6qldF69+3sWWQgSkUwkLTkkz1q
        fEgpDV+L099Lht+SBs4OAMs=
X-Google-Smtp-Source: ABdhPJzc3DhPPyzqN3mjf8bnEBHh7n2O51vCXgG6EIpFhSBC37dTIUOwKMNJyk4QA7n3yfJOsXh9jg==
X-Received: by 2002:aa7:c158:: with SMTP id r24mr6771886edp.61.1601542446937;
        Thu, 01 Oct 2020 01:54:06 -0700 (PDT)
Received: from kozik-lap ([194.230.155.194])
        by smtp.googlemail.com with ESMTPSA id m10sm3691340edf.11.2020.10.01.01.54.05
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 01 Oct 2020 01:54:06 -0700 (PDT)
Date:   Thu, 1 Oct 2020 10:54:03 +0200
From:   Krzysztof Kozlowski <krzk@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Marek Vasut <marex@denx.de>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, patchwork-lst@pengutronix.de
Subject: Re: [PATCH 08/11] dt-bindings: add defines for i.MX8MM power domains
Message-ID: <20201001085403.GC15804@kozik-lap>
References: <20200930155006.535712-1-l.stach@pengutronix.de>
 <20200930155006.535712-9-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20200930155006.535712-9-l.stach@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 30, 2020 at 05:50:03PM +0200, Lucas Stach wrote:

Missing commit message. After adding some description:
Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof

> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  .../bindings/power/fsl,imx-gpcv2.yaml         |  2 ++
>  include/dt-bindings/power/imx8mm-power.h      | 22 +++++++++++++++++++
>  2 files changed, 24 insertions(+)
>  create mode 100644 include/dt-bindings/power/imx8mm-power.h
> 
