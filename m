Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 697B75B78B2
	for <lists+devicetree@lfdr.de>; Tue, 13 Sep 2022 19:48:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230151AbiIMRrq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Sep 2022 13:47:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39746 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233324AbiIMRrX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Sep 2022 13:47:23 -0400
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A55C2C115
        for <devicetree@vger.kernel.org>; Tue, 13 Sep 2022 09:44:45 -0700 (PDT)
Received: by mail-pl1-x62d.google.com with SMTP id iw17so12443079plb.0
        for <devicetree@vger.kernel.org>; Tue, 13 Sep 2022 09:44:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date;
        bh=03a1aUyluFxRyNFgmls0Dhj57OlQZXnKGaEc/66Md1Y=;
        b=HqYeZBhfFnNcG3qVw5Vf8NPJa76jsVVEBwMiJQuHJorB95c1g4Mx20X3OSFj7orHiR
         PzoQjRicINpi8uWhP/FbUpkdQameu0KehoSgttSeHoa8sl2tGxWSV08BNrZjYwsQ6AeX
         orURrRcGGa87A7/7TswiGxtVhO80OUNnylbmf9v1OzQk/Rbm3zIvO0JQHQ54HaQbBu2k
         R7E16/Qm0VJzMlTPVHh7seONA3w/ydJdUyIMZD15dnpNzNQidg5DyEMRvdRs+Y9tEbgN
         JyGLwwnLXs+yApZUuK38MAY7Y3HodK7ZOeMRj3l4+CG+AdSHCtsXTIq6xlnQ3sEf0d0p
         8V7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date;
        bh=03a1aUyluFxRyNFgmls0Dhj57OlQZXnKGaEc/66Md1Y=;
        b=lOaTyAccG4GMtiJ3UUFRX34S17ysFK6o3deWxoHT6lGHn5vXa4efqIsLrB2Q8o6rE9
         0iURynCfTCVdn992/1QTWc1k4WQ5CBnhE6HlHlxxuvr9dEfxN2IrlYOvG8KgY8zM2u6t
         ODYfr6XN92fIuandg0XejBptsZKheJ2/92ZzKCL0GOs53zAKfDZXogDGq5UguWqDLIFU
         Im2098XuNlKQtD7w1kMfu28caKKDJTAwo9Rv218f5mS0H4MlsudLJlwYi3FNKhi3sNPM
         6WrWPQ5ZInaMO2ZMkQ0ZYLKrUL90prtLocXckWxbakWWRo4xaXeoubvlgNMyiWVXPT37
         nQFA==
X-Gm-Message-State: ACrzQf1jS+WAIDm4jIRqledsj0UQLdvN8+L20wC4iQaK6Tw9iz16/BFI
        qOqrBWvAR9ztz9MPXoav1ofyI+gudSHetiA=
X-Google-Smtp-Source: AMsMyM6XC/lG30lxAC41YQ1c7e8p5Fr062WE06hfC0r071VKylK3r/IPBObe4aJgxfDZQzvLrN4bYw==
X-Received: by 2002:a17:90a:988:b0:1f2:3dff:f1dd with SMTP id 8-20020a17090a098800b001f23dfff1ddmr188447pjo.150.1663087484938;
        Tue, 13 Sep 2022 09:44:44 -0700 (PDT)
Received: from workstation ([117.202.184.122])
        by smtp.gmail.com with ESMTPSA id k5-20020aa79725000000b0053e7293be0bsm8025332pfg.121.2022.09.13.09.44.39
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 13 Sep 2022 09:44:43 -0700 (PDT)
Date:   Tue, 13 Sep 2022 22:14:37 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     lpieralisi@kernel.org, robh@kernel.org, andersson@kernel.org
Cc:     kw@linux.com, bhelgaas@google.com, linux-pci@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        konrad.dybcio@somainline.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        dmitry.baryshkov@linaro.org
Subject: Re: [PATCH v3 00/12] Improvements to the Qcom PCIe Endpoint driver
Message-ID: <20220913164437.GG25849@workstation>
References: <20220910063045.16648-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220910063045.16648-1-manivannan.sadhasivam@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Sep 10, 2022 at 12:00:33PM +0530, Manivannan Sadhasivam wrote:
> Hello,
> 
> This series contains improvements to the Qualcomm PCIe Endpoint controller
> driver. The major improvements are the addition of SM8450 SoC support and
> debugfs interface for exposing link transition counts.
> 
> This series has been tested on SM8450 based dev board.
> 

Lorenzo, since the bindings are ACKed, you should be able to merge the
whole series via PCI tree.

Thanks,
Mani

> Thanks,
> Mani
> 
> Changes in v3:
> 
> * Removed the maxItems property from "items" list
> * Reworded the debugfs patch
> * Dropped the eDMA patch since that depends on ongoing eDMA series from Sergey
> * Added two new patches that helps in saving power during idle and low power
>   state
> 
> Changes in v2:
> 
> * Fixed the comments on bindings patches
> * Added Ack from Krzysztof
> 
> Manivannan Sadhasivam (12):
>   PCI: qcom-ep: Add kernel-doc for qcom_pcie_ep structure
>   PCI: qcom-ep: Do not use hardcoded clks in driver
>   PCI: qcom-ep: Make use of the cached dev pointer
>   PCI: qcom-ep: Disable IRQs during driver remove
>   PCI: qcom-ep: Expose link transition counts via debugfs
>   PCI: qcom-ep: Gate Master AXI clock to MHI bus during L1SS
>   PCI: qcom-ep: Disable Master AXI Clock when there is no PCIe traffic
>   dt-bindings: PCI: qcom-ep: Make PERST separation optional
>   PCI: qcom-ep: Make PERST separation optional
>   dt-bindings: PCI: qcom-ep: Define clocks per platform
>   dt-bindings: PCI: qcom-ep: Add support for SM8450 SoC
>   PCI: qcom-ep: Add support for SM8450 SoC
> 
>  .../devicetree/bindings/pci/qcom,pcie-ep.yaml |  86 +++++++---
>  drivers/pci/controller/dwc/pcie-qcom-ep.c     | 154 ++++++++++++++----
>  2 files changed, 188 insertions(+), 52 deletions(-)
> 
> -- 
> 2.25.1
> 
