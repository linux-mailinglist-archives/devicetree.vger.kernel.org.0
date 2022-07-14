Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 78E1B5750BD
	for <lists+devicetree@lfdr.de>; Thu, 14 Jul 2022 16:27:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240295AbiGNO1b (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jul 2022 10:27:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38670 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240022AbiGNO12 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jul 2022 10:27:28 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id A00935E31E
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 07:27:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1657808846;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=RNJXv/KlGONTEw9UXAEACL1ZXePk/fcM/JbeLsfKXUw=;
        b=S6ecHgbp6JJXU6cfRTYlI3TiARta1b53TRGk8AdxBqDp70qqdyg6R5A4LTb9rFQll20vz7
        +x0oCjuoTPNV97cwbnd22H23l5KYdmIbbqg9/LCE4hevPdXP91m43pl7RM5N4rVRq2pYQu
        hQhT+PQ5qWgz/ONy/dwOXLx/5evswgI=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-554-XsKIL_RrOvGeor-ljeB14A-1; Thu, 14 Jul 2022 10:27:25 -0400
X-MC-Unique: XsKIL_RrOvGeor-ljeB14A-1
Received: by mail-qt1-f199.google.com with SMTP id f1-20020ac84641000000b0031ecb35e4d1so1604337qto.2
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 07:27:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=RNJXv/KlGONTEw9UXAEACL1ZXePk/fcM/JbeLsfKXUw=;
        b=TO89Z6kbNsg1wz9j4rYzVazEPQL0oNsgV+GIfH/kgWk5uc119ht3QRfV7fMP1GtAoR
         ZWR3i8h/Pt3hdjRfWs3nhnsjsHgiPL5VEG78saCiZnPW9AF4CvUP1f1p+8/BqRHB5A+X
         K/Ftu51klJb6m31wJYASDTrBjAXr8Pkqld0+sg3J2U8oNLfMUeerYxdQA3e+aRMCXVYQ
         QqG7uonZEuwcchJLcmgKyFQTByAUp1xR63iGEgTC1zkehohqY5G2bn5UGVFDREqdvLq+
         03yzIb23qzxuAkzTP7RLw/wTvFd+ckHCROwueWHJAzmAHZWzO0zpdb3gVGEAnmRX0BOu
         aCqg==
X-Gm-Message-State: AJIora88Qq8lVdOr9oQ8snioYnAPMXEI7aazFY0GjA9yaja7pGDuTbBe
        oRKn40aMdt12KlYq9J0KGFG/EKBdcrAInMlrSabKJ1jJ0Mfo/BVSv9P2hv7iBoz4VMbBbt+Cky0
        aHsVCj8x3CQDo0cm9PsscQQ==
X-Received: by 2002:a05:620a:f89:b0:6ae:d418:f478 with SMTP id b9-20020a05620a0f8900b006aed418f478mr6128519qkn.344.1657808844826;
        Thu, 14 Jul 2022 07:27:24 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1t5up/uVQSQVJGK2rot92yODR4yGOS6QtM36+OI4Q093IbCDbzMZioEvPtNIyYuRZVqtbwvyQ==
X-Received: by 2002:a05:620a:f89:b0:6ae:d418:f478 with SMTP id b9-20020a05620a0f8900b006aed418f478mr6128500qkn.344.1657808844567;
        Thu, 14 Jul 2022 07:27:24 -0700 (PDT)
Received: from xps13 (c-98-239-145-235.hsd1.wv.comcast.net. [98.239.145.235])
        by smtp.gmail.com with ESMTPSA id r14-20020ac867ce000000b0031eb47652dcsm1534529qtp.59.2022.07.14.07.27.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Jul 2022 07:27:24 -0700 (PDT)
Date:   Thu, 14 Jul 2022 10:27:23 -0400
From:   Brian Masney <bmasney@redhat.com>
To:     Johan Hovold <johan+linaro@kernel.org>
Cc:     Bjorn Helgaas <bhelgaas@google.com>,
        Stanimir Varbanov <svarbanov@mm-sol.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 8/8] PCI: qcom: Sort device-id table
Message-ID: <YtAny03L/RLk9nv6@xps13>
References: <20220714071348.6792-1-johan+linaro@kernel.org>
 <20220714071348.6792-9-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220714071348.6792-9-johan+linaro@kernel.org>
User-Agent: Mutt/2.2.6 (2022-06-05)
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 14, 2022 at 09:13:48AM +0200, Johan Hovold wrote:
> Sort the device-id table entries alphabetically by compatible string to
> make it easier to find entries and add new ones.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  drivers/pci/controller/dwc/pcie-qcom.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> index 8dddb72f8647..fea921cca8fa 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom.c
> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> @@ -1749,24 +1749,24 @@ static int qcom_pcie_remove(struct platform_device *pdev)
>  }
>  
>  static const struct of_device_id qcom_pcie_match[] = {
> +	{ .compatible = "qcom,pcie-apq8064", .data = &cfg_2_1_0 },
>  	{ .compatible = "qcom,pcie-apq8084", .data = &cfg_1_0_0 },
> +	{ .compatible = "qcom,pcie-ipq6018", .data = &cfg_2_9_0 },
>  	{ .compatible = "qcom,pcie-ipq8064", .data = &cfg_2_1_0 },
>  	{ .compatible = "qcom,pcie-ipq8064-v2", .data = &cfg_2_1_0 },
> -	{ .compatible = "qcom,pcie-apq8064", .data = &cfg_2_1_0 },
> -	{ .compatible = "qcom,pcie-msm8996", .data = &cfg_2_3_2 },
>  	{ .compatible = "qcom,pcie-ipq8074", .data = &cfg_2_3_3 },
>  	{ .compatible = "qcom,pcie-ipq4019", .data = &cfg_2_4_0 },

qcom,pcie-ipq4019 should be moved up above qcom,pcie-ipq6018.

Brian

