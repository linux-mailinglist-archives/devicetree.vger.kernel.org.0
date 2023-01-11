Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CB831665A4F
	for <lists+devicetree@lfdr.de>; Wed, 11 Jan 2023 12:36:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232673AbjAKLgd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Jan 2023 06:36:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33200 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238454AbjAKLfs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Jan 2023 06:35:48 -0500
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47CD21CB0D
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 03:33:14 -0800 (PST)
Received: by mail-pl1-x62d.google.com with SMTP id p24so16457166plw.11
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 03:33:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fv2lNIsN5RpdQca9OCm9rk90hHk7bweKV30f5J8WYYQ=;
        b=VieXLAyvO2y4YPOm+zc7KcDX0PVHDgjfApEMJu0ylXH5BmdgjvdvOKxl8yyGBi95sq
         4JZ26LQEdFA0H8UjBEBzTSM0rTz9l8vohHxXfGISDOyE5jOHZL7CafWvix7eu7tGkgj6
         +91SapGiL2oyzKJaH2aW4os0TvMCrDvVLDFCqk9hGtSixJoxZCn8OQvMa+LC06xOTTGT
         Qx4L6kSjNOFGgJd31oV/lyvobTPCfoY22IVTBtmsfQ+t+YScVuJh7vgwKQuN+E5QCopG
         ThTzKcmDs0qoBNDZnYx/e+TjsQN41n7++hxI3uxGlZ64tyahB2xHa2gYdBk7VmqtFjbb
         1z2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fv2lNIsN5RpdQca9OCm9rk90hHk7bweKV30f5J8WYYQ=;
        b=jmAZ9Su13BfZVgz2UATs1dsrfpKgyaLscNziDki4785lp8tzRrbuYghfeEEalZknLC
         mmsmf1zri7r4g2afxm+gOCnMXODP22BG6tabImbAy1Vyu7gQP9uADGIjPvSaUDy8THQk
         t7hvzHKlMjEGtQBOlOa1yDkuhoPWjuHX2UdwgmNkQThu0z8WXVp2sglwnLZhtlxXVFQX
         K6EGWEcEglktk/tacSyqu1/fRWpvWEjdza/iNe1ZaOPzl1YFr6TlwMQYXbqoG2qg4/5d
         TMREkgqkE2JZiP4SpskxO0vHPzz1OLEEPtifDedmKiMd/y4NLTSP/6PWWMRVAex1PrVX
         hmeA==
X-Gm-Message-State: AFqh2krCXe2OrXqSulpdaEmHQDT/vDE9j3DR1HOOOfc19GOAA0xkg/Go
        UrV1clnVcdUfEwzqpc6NStr7
X-Google-Smtp-Source: AMrXdXvyHPHT1WibJbM3qxTpu5HLeZq89WaLpiM9yod6LlcXn5b+fAQP9wznHzVahmXGRKKL2US16w==
X-Received: by 2002:a17:902:7c8a:b0:192:835d:c861 with SMTP id y10-20020a1709027c8a00b00192835dc861mr52121497pll.68.1673436789834;
        Wed, 11 Jan 2023 03:33:09 -0800 (PST)
Received: from thinkpad ([117.217.177.1])
        by smtp.gmail.com with ESMTPSA id m18-20020a170902db1200b00192d07b8222sm9985139plx.100.2023.01.11.03.33.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jan 2023 03:33:08 -0800 (PST)
Date:   Wed, 11 Jan 2023 17:03:01 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Rob Herring <robh@kernel.org>
Cc:     andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        bhelgaas@google.com, konrad.dybcio@linaro.org,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        lpieralisi@kernel.org
Subject: Re: [PATCH v3 2/3] dt-bindings: PCI: qcom: Document msi-map and
 msi-map-mask properties
Message-ID: <20230111113301.GC4873@thinkpad>
References: <20230102105821.28243-1-manivannan.sadhasivam@linaro.org>
 <20230102105821.28243-3-manivannan.sadhasivam@linaro.org>
 <20230108203340.GA229573-robh@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230108203340.GA229573-robh@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Jan 08, 2023 at 02:33:40PM -0600, Rob Herring wrote:
> On Mon, Jan 02, 2023 at 04:28:20PM +0530, Manivannan Sadhasivam wrote:
> > The Qcom PCIe controller is capable of using either internal MSI controller
> > or the external GIC-ITS for signaling MSIs sent by endpoint devices.
> > Currently, the binding only documents the internal MSI implementation.
> > 
> > Let's document the GIC-ITS imeplementation by making use of msi-map and
> > msi-map-mask properties. Only one of the implementation should be used
> > at a time.
> > 
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > ---
> >  Documentation/devicetree/bindings/pci/qcom,pcie.yaml | 12 +++++++++---
> >  1 file changed, 9 insertions(+), 3 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> > index a3639920fcbb..01208450e05c 100644
> > --- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> > +++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> > @@ -114,14 +114,20 @@ required:
> >    - compatible
> >    - reg
> >    - reg-names
> > -  - interrupts
> > -  - interrupt-names
> > -  - "#interrupt-cells"
> >    - interrupt-map-mask
> >    - interrupt-map
> >    - clocks
> >    - clock-names
> >  
> > +oneOf:
> 
> anyOf
> 
> The OS should have the option of both being present and pick which MSI 
> path it wants to use. 
> 

Makes sense. Given that the current series merged by Bjorn, I'll send a
follow-up patch.

Thanks,
Mani

> Rob

-- 
மணிவண்ணன் சதாசிவம்
