Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 705C66781EE
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 17:42:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233460AbjAWQmB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 11:42:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41908 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233443AbjAWQlo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 11:41:44 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D3922C67C
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 08:41:00 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id y1so6884652wru.2
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 08:41:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kkvs3S3jr+7/Bm5mSPQZ0AOsz6TtEKnjkCb8fldDeko=;
        b=sxlUQKDkfXET+VlBQxjalijTLTwZYIN6OydmvyTwluUIvYogXNszJqiBOmCY3cmuGK
         BmWwzUdmYl4PCJTzTJXipHPf6E5+67/fX9x0FYPmZy7wGYe7uAskiUdya5Sjfa/YxU2a
         1z7w4NvmozUvPVVdQ3pTs3zfpJJFAFGwg8l5wP6WW/b+ZYInpDx9Kieo6e/tueywQIAA
         P4LkpexHLx38dlsty2V0eQ0MGKWxOw6bJR3BArrgaXbmuaWnYC0XECUIaF2OoqOzE5L3
         Ee46RZMFLWZtfX6dU3mIwFbUYgU28pZw8eoEbDElc1wqri6tTa3uUwJR1Qfdvsg0xADF
         XXPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kkvs3S3jr+7/Bm5mSPQZ0AOsz6TtEKnjkCb8fldDeko=;
        b=wXH1v592ye2svuH9tlsZOCR3eBUqz8JFd1yHVgDSrW2IRJk5rwjb2ybWAO2sRvHx1B
         K1VD88MXHPd1TzwhhgYV4aH6ciMDAdhrsIxcnj6XZytxIsZCIgxhQkmmxg7PXXRsm28D
         /ZNB7mASJ5OhfiYrKwFMQZGcOV1UqSjpvG38W/POpFsARO5iiEs9r8KKgLzOJ0f195oN
         KNEHUei5Mcrjjjo2GPvwYNzOmjXoNfS0u8UWsdlAsQbZKBk57toVYKTWHwbow4yU3uQs
         NcXcJNY4TnzulH3aOusidjXL18pCPnTFKv4cX14+GKqOjXeCZPGWLwi3A5PJduF6rtqo
         OqSg==
X-Gm-Message-State: AFqh2krE8uDnvWwNgoX7k+edRkbb5J4S4XLkQZCSpMwwN7VCpsIlPPvs
        VK1IvA8mEZZT268ya8Snxc+9hQ==
X-Google-Smtp-Source: AMrXdXt9F4i0NyH8/CCuBUxnEMaqGRQq4GQ/LpYPY1JEUJbveDf+Md21yVg7s3aVlpQTbFuYCOcjkQ==
X-Received: by 2002:a5d:65d2:0:b0:2bb:6c04:4598 with SMTP id e18-20020a5d65d2000000b002bb6c044598mr22477407wrw.67.1674492054178;
        Mon, 23 Jan 2023 08:40:54 -0800 (PST)
Received: from linaro.org ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id d5-20020adfa345000000b002be546f947asm8496694wrb.61.2023.01.23.08.40.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 08:40:53 -0800 (PST)
Date:   Mon, 23 Jan 2023 18:40:52 +0200
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: PCI: qcom: Add SM8550 compatible
Message-ID: <Y864lFLEQyCwZLef@linaro.org>
References: <20230119112453.3393911-1-abel.vesa@linaro.org>
 <7befa113-c45a-93d0-2696-17bbf62af711@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7befa113-c45a-93d0-2696-17bbf62af711@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23-01-20 09:37:32, Krzysztof Kozlowski wrote:
> On 19/01/2023 12:24, Abel Vesa wrote:
> > Add the SM8550 platform to the binding.
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> > 
> > The v2 was here:
> > https://lore.kernel.org/all/20230118111704.3553542-1-abel.vesa@linaro.org/
> > 
> > Changes since v2:
> >  * dropped the pipe from clock-names
> >  * removed the pcie instance number from aggre clock-names comment
> >  * renamed aggre clock-names to noc_aggr
> >  * dropped the _pcie infix from cnoc_pcie_sf_axi
> >  * renamed pcie_1_link_down_reset to simply link_down
> >  * added enable-gpios back, since pcie1 node will use it
> > 
> > Changes since v1:
> >  * Switched to single compatible for both PCIes (qcom,pcie-sm8550)
> >  * dropped enable-gpios property
> >  * dropped interconnects related properties, the power-domains
> >  * properties
> >    and resets related properties the sm8550 specific allOf:if:then
> >  * dropped pipe_mux, phy_pipe and ref clocks from the sm8550 specific
> >    allOf:if:then clock-names array and decreased the minItems and
> >    maxItems for clocks property accordingly
> >  * added "minItems: 1" to interconnects, since sm8550 pcie uses just one,
> >    same for interconnect-names
> > 
> > 
> >  .../devicetree/bindings/pci/qcom,pcie.yaml    | 44 +++++++++++++++++++
> >  1 file changed, 44 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> > index a5859bb3dc28..93e86dfdd6fe 100644
> > --- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> > +++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> > @@ -34,6 +34,7 @@ properties:
> >        - qcom,pcie-sm8250
> >        - qcom,pcie-sm8450-pcie0
> >        - qcom,pcie-sm8450-pcie1
> > +      - qcom,pcie-sm8550
> >        - qcom,pcie-ipq6018
> >  
> >    reg:
> > @@ -65,9 +66,11 @@ properties:
> >    dma-coherent: true
> >  
> >    interconnects:
> > +    minItems: 1
> >      maxItems: 2
> 
> 1. Why do you skip cpu-pcie interconnect on SM8550?
> 2. This should not be allowed on other variants.

That is a good point. Will add the cpu-pcie in v5.

> 
> >  
> >    interconnect-names:
> > +    minItems: 1
> >      items:
> >        - const: pcie-mem
> >        - const: cpu-pcie
> > @@ -102,6 +105,10 @@ properties:
> >    power-domains:
> >      maxItems: 1
> >  
> > +  enable-gpios:
> > +    description: GPIO controlled connection to ENABLE# signal
> > +    maxItems: 1
> > +
> >    perst-gpios:
> >      description: GPIO controlled connection to PERST# signal
> >      maxItems: 1
> > @@ -197,6 +204,7 @@ allOf:
> >                - qcom,pcie-sm8250
> >                - qcom,pcie-sm8450-pcie0
> >                - qcom,pcie-sm8450-pcie1
> > +              - qcom,pcie-sm8550
> >      then:
> >        properties:
> >          reg:
> > @@ -611,6 +619,41 @@ allOf:
> >            items:
> >              - const: pci # PCIe core reset
> >  
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - qcom,pcie-sm8550
> > +    then:
> > +      properties:
> > +        clocks:
> > +          minItems: 7
> > +          maxItems: 8
> > +        clock-names:
> > +          minItems: 7
> > +          items:
> > +            - const: aux # Auxiliary clock
> > +            - const: cfg # Configuration clock
> > +            - const: bus_master # Master AXI clock
> > +            - const: bus_slave # Slave AXI clock
> > +            - const: slave_q2a # Slave Q2A clock
> > +            - const: ddrss_sf_tbu # PCIe SF TBU clock
> > +            - const: noc_aggr # Aggre NoC PCIe AXI clock
> > +            - const: cnoc_sf_axi # Config NoC PCIe1 AXI clock
> > +        iommus:
> > +          maxItems: 1
> > +        iommu-map:
> > +          maxItems: 2
> 
> 1. Don't define new properties in allOf. It makes the binding
> unmaintainable.
> 
> 2. Why only SM8550?

Good point again. Will make both iommus and iommu-map properties global
as even SM8450 has them.

> 
> > +        resets:
> > +          minItems: 1
> 
> Why second reset is optional?

link_down reset is needed only by g4x2 pcie, AFAICT.

> 
> > +          maxItems: 2
> > +        reset-names:
> > +          minItems: 1
> > +          items:
> > +            - const: pci # PCIe core reset
> > +            - const: link_down # PCIe link down reset
> > +
> >    - if:
> >        properties:
> >          compatible:
> > @@ -694,6 +737,7 @@ allOf:
> >                - qcom,pcie-sm8250
> >                - qcom,pcie-sm8450-pcie0
> >                - qcom,pcie-sm8450-pcie1
> > +              - qcom,pcie-sm8550
> >      then:
> >        oneOf:
> >          - properties:
> 
> Best regards,
> Krzysztof
> 
