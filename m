Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9DDEC2810D2
	for <lists+devicetree@lfdr.de>; Fri,  2 Oct 2020 12:58:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726029AbgJBK6d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Oct 2020 06:58:33 -0400
Received: from mx2.suse.de ([195.135.220.15]:52268 "EHLO mx2.suse.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725953AbgJBK6d (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 2 Oct 2020 06:58:33 -0400
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
        by mx2.suse.de (Postfix) with ESMTP id CE8B3B0D7;
        Fri,  2 Oct 2020 10:58:31 +0000 (UTC)
Subject: Re: [PATCH] dt-bindings: arm: Add missing root node constraint for
 board/SoC bindings
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Baruch Siach <baruch@tkos.co.il>,
        Linus Walleij <linusw@kernel.org>,
        Imre Kaloz <kaloz@openwrt.org>,
        Krzysztof Halasa <khalasa@piap.pl>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@st.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        Dinh Nguyen <dinguyen@kernel.org>,
        Anders Berg <anders.berg@lsi.com>
References: <20201001200943.1193870-1-robh@kernel.org>
From:   =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <15e2a4a9-0e2a-f95c-c5c2-fb0c2a569e15@suse.de>
Date:   Fri, 2 Oct 2020 12:58:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201001200943.1193870-1-robh@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am 01.10.20 um 22:09 schrieb Rob Herring:
> Board/SoC top-level compatible bindings should be constrained to the root
> node. Add the missing constraints that the node name must be "/".
> 
> Cc: "Andreas Färber" <afaerber@suse.de>
> Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Cc: Baruch Siach <baruch@tkos.co.il>
> Cc: Linus Walleij <linusw@kernel.org>
> Cc: Imre Kaloz <kaloz@openwrt.org>
> Cc: Krzysztof Halasa <khalasa@piap.pl>
> Cc: Andy Gross <agross@kernel.org>
> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Jonathan Hunter <jonathanh@nvidia.com>
> Cc: Dinh Nguyen <dinguyen@kernel.org>
> Cc: Anders Berg <anders.berg@lsi.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  Documentation/devicetree/bindings/arm/actions.yaml      | 2 ++
>  Documentation/devicetree/bindings/arm/altera.yaml       | 2 ++
>  Documentation/devicetree/bindings/arm/axxia.yaml        | 2 ++
>  Documentation/devicetree/bindings/arm/bitmain.yaml      | 2 ++
>  Documentation/devicetree/bindings/arm/digicolor.yaml    | 2 ++
>  Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml | 2 ++
>  Documentation/devicetree/bindings/arm/qcom.yaml         | 2 ++
>  Documentation/devicetree/bindings/arm/rda.yaml          | 2 ++
>  Documentation/devicetree/bindings/arm/stm32/stm32.yaml  | 2 ++
>  Documentation/devicetree/bindings/arm/tegra.yaml        | 2 ++
>  10 files changed, 20 insertions(+)

Reviewed-by: Andreas Färber <afaerber@suse.de>

Looks like for realtek.yaml we already have it, although in single
quotes, but I assume that's equivalent.

Regards,
Andreas

-- 
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5, 90409 Nürnberg, Germany
GF: Felix Imendörffer
HRB 36809 (AG Nürnberg)
