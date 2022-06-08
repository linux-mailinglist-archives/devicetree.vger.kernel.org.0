Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8002B542DD7
	for <lists+devicetree@lfdr.de>; Wed,  8 Jun 2022 12:31:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237124AbiFHKab (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Jun 2022 06:30:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40986 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238252AbiFHK36 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Jun 2022 06:29:58 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C623619763D
        for <devicetree@vger.kernel.org>; Wed,  8 Jun 2022 03:22:19 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id c2so13074145lfk.0
        for <devicetree@vger.kernel.org>; Wed, 08 Jun 2022 03:22:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=6MvVCHkA9nZFkLH6XXvcaT5WkDeOWl8XVZeIyd8n1Yk=;
        b=dI3j/mRiNdhGkN1jqhXgY8EDtTNOmTCI16JzkTM1TUosxY70xD3JQsOqDQdcW47Hd9
         kSZOlpiT64s4Nm4vc0vwDTBP5WIUtBfLprItEQpkmaNl6WV7ks10CofHpB56V/AI4E0B
         Mqzf6m/a/hr9JzppmQO5jmbfyveSXxmci2rZQcbtYQg8/XZ8SAm4DUQdEO/Cpu3aUNgl
         SrI8G0XG2+kmh3W+G3JX1XrUy2pEe1uWC4AYEoALUnEANH4OwqbKgrQCTC3ekHLPrQxt
         3f0c9ZGwvD9VPiKlLcz49A4z3dgOQp6e5fNmiZexzkFh/uBxyfLZlYL63Hfd6h8Fxse6
         fc7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6MvVCHkA9nZFkLH6XXvcaT5WkDeOWl8XVZeIyd8n1Yk=;
        b=CFeZA64GERtlOt14JJM79dMI4NA4UyD6GSTYa7I5PEzk8gPu54lZ/BV7Am6pvg7rhS
         6EXKukt4NNXLfcUPcCu5HNQmoO/i7LCymN7Emn7bP4+a1SOiT+ltWn/xjYhhT0PL51rg
         /+5uOJkg/2pnMW/lOJwBCaKjiy1Z3jDgpiGF6p4siN7xmnl4MH8R3utlKQ4+GVR2DZnC
         t8LEs9JsGZqbFTgKNb+urRWIC0/AuZsHMa440SVkDQyR70qbhC+XoLwUYt0FdoneYbRS
         GCI4fYPpNaVpTPYdjDXXKRJFkVKMPerPZZw4lDas2uqdg/PYep1jT+SK3ngilA4QtpYk
         5wmg==
X-Gm-Message-State: AOAM532HlCqRJEf2fEa765uG3LLwKiY8MotpH83OdGdBjgCjNq+b4jPI
        PNXx78Fwu96ny+JTowh8jPBr/Q==
X-Google-Smtp-Source: ABdhPJwhy+KM30PMbLozabIVJXIRGcRR1c1/GtRpK5IXY5QjX0t8EZQCbYF1rizl20EjyzZuAuCUVA==
X-Received: by 2002:a05:6512:c18:b0:479:36c1:207a with SMTP id z24-20020a0565120c1800b0047936c1207amr11811458lfu.260.1654683737976;
        Wed, 08 Jun 2022 03:22:17 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id v1-20020ac25601000000b00478fe3327aasm3642934lfd.217.2022.06.08.03.22.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jun 2022 03:22:17 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jingoo Han <jingoohan1@gmail.com>,
        Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Stanimir Varbanov <svarbanov@mm-sol.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc:     Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        Johan Hovold <johan@kernel.org>, Rob Herring <robh@kernel.org>
Subject: [PATCH v14 7/7] PCI: qcom: Revert "PCI: qcom: Add support for handling MSIs from 8 endpoints"
Date:   Wed,  8 Jun 2022 13:22:08 +0300
Message-Id: <20220608102208.2967438-8-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220608102208.2967438-1-dmitry.baryshkov@linaro.org>
References: <20220608102208.2967438-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

I have replied with my Tested-by to the patch at [2], which has landed
in the linux-next as the commit 20f1bfb8dd62 ("PCI: qcom:
Add support for handling MSIs from 8 endpoints"). However lately I
noticed that during the tests I still had 'pcie_pme=nomsi', so the
device was not forced to use higher MSI vectors.

After removing this option I noticed that high MSI vectors are not
delivered on tested platforms. Additional research pointed to
a patch in msm-4.14 ([1]), which describes that each group of MSI
vectors is mapped to the separate interrupt.

Without these changes specifying num_vectors can lead to missing MSI
interrupts and thus to devices malfunction.

[1] https://git.codelinaro.org/clo/la/kernel/msm-4.14/-/commit/671a3d5f129f4bfe477152292ada2194c8440d22
[2] https://lore.kernel.org/linux-arm-msm/20211214101319.25258-1-manivannan.sadhasivam@linaro.org/

Fixes: 20f1bfb8dd62 ("PCI: qcom: Add support for handling MSIs from 8 endpoints")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index 8523b5ef9d16..2ea13750b492 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -1592,7 +1592,6 @@ static int qcom_pcie_probe(struct platform_device *pdev)
 	pci->dev = dev;
 	pci->ops = &dw_pcie_ops;
 	pp = &pci->pp;
-	pp->num_vectors = MAX_MSI_IRQS;
 
 	pcie->pci = pci;
 
-- 
2.35.1

