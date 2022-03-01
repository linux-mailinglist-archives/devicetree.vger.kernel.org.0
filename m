Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6B0454C88B2
	for <lists+devicetree@lfdr.de>; Tue,  1 Mar 2022 11:00:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233803AbiCAKBg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Mar 2022 05:01:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35636 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233985AbiCAKBg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Mar 2022 05:01:36 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6E3C8C7FA
        for <devicetree@vger.kernel.org>; Tue,  1 Mar 2022 02:00:54 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id d17so19554471wrc.9
        for <devicetree@vger.kernel.org>; Tue, 01 Mar 2022 02:00:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=J1W+5NXO359jvQpWTWx2S3L1BddQHRxmvi0thYVEQxI=;
        b=EvioAi2JMzHmdmeCqilFnhiMJEBqSJpLbfddJCFexrQKhoas9sAmLMUXSg+ZUkTN3A
         3gbW+517u9+GHlE/ttlOlhf7MYLeXgR1yAP3JtAmn3BQa35tAnow3bxo4YfXa6wzFwed
         XO/wwQBK4BUJcWAucc1CvWou2Z5YRmyxsFH0dthzkcVUKHbuDYHYutzHNR8VdFpMIUWC
         yqLzFpfhmZFQpUiZAdhs1G/leot2Ib7ZfZPnjd9MGU9c+goa5RnFxXGrqgLUh8qDyUJs
         F+vTudPweGQdsJ/wiRpPdLwLWjCq8yQlbirDimUiC8TQ53/aepmR6CS0oP3nO6nu19BR
         xE+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=J1W+5NXO359jvQpWTWx2S3L1BddQHRxmvi0thYVEQxI=;
        b=tPLzy8Amfyf0sdZrhMO1moJYqo29a9WacF6EhE8BMYSIj/K1j4ZDg8F0ukTHkwp+R9
         fTyHb0xw3KovNdRQCausDvUpkC3YXPGcaYlSOPxerZw1ch1j6O+xfDlYd8DThVDBbC7u
         LnXAgYarhvzpEQVilSmbF0keNrdmxivquH2YC8Bj5GPvRn+sP7kTKCDDxIzpY373el6N
         pALm7kqAUTihBMo39f4N+ufyP9cBvy51H0JJhUmrEDpuHTGxQGJPbxmGKB6LtjZhdkoy
         jydKNuDGZx+Vd9xC40s71Ig1PMbXW90ydS20lwVPxlCJZiQI4yOhMqynXEacDZaqSatp
         QACg==
X-Gm-Message-State: AOAM531G8uVx62ajveKMXYg7JGh1bumqcJbRbOfnIYl7ZvxOX9H42EMq
        +Bes2qvmmvM0AYjSuxoo5og3bg==
X-Google-Smtp-Source: ABdhPJybNpwkGPWvhpD5Gj/Y2hRNA4Xb9vLVAVuQH7zbt/VnEvQAgZ5cHIde1jf/OW/iV2BGsYNRkA==
X-Received: by 2002:a5d:6405:0:b0:1ef:7df1:5c04 with SMTP id z5-20020a5d6405000000b001ef7df15c04mr12104965wru.178.1646128853485;
        Tue, 01 Mar 2022 02:00:53 -0800 (PST)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net. [86.27.177.88])
        by smtp.gmail.com with ESMTPSA id d6-20020a5d4f86000000b001ea8119512bsm13061374wru.55.2022.03.01.02.00.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Mar 2022 02:00:52 -0800 (PST)
Date:   Tue, 1 Mar 2022 10:00:50 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: Add compatibles for undocumented trivial
 syscons
Message-ID: <Yh3u0uD/oJ41M++b@google.com>
References: <20220228221537.1700071-1-robh@kernel.org>
 <c5d61fe7-5238-58ae-c782-5e28531d9b2b@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <c5d61fe7-5238-58ae-c782-5e28531d9b2b@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 01 Mar 2022, Matthias Brugger wrote:

> Hi Rob,
> 
> On 28/02/2022 23:15, Rob Herring wrote:
> > 'intel,lgm-syscon', 'marvell,armada-3700-usb2-host-misc',
> > 'mediatek,mt8135-pctl-a-syscfg', and 'mediatek,mt8135-pctl-b-syscfg' are
> > all used in DT binding examples and/or dts files, but are not
> > documented. Add them to syscon.yaml as they are all trivial cases.
> > 
> > Signed-off-by: Rob Herring <robh@kernel.org>
> > ---
> >   Documentation/devicetree/bindings/mfd/syscon.yaml | 4 ++++
> >   1 file changed, 4 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
> > index eeac1cbc5a17..29d4a97f7108 100644
> > --- a/Documentation/devicetree/bindings/mfd/syscon.yaml
> > +++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
> > @@ -44,6 +44,10 @@ properties:
> >                 - hisilicon,hi6220-sramctrl
> >                 - hisilicon,pcie-sas-subctrl
> >                 - hisilicon,peri-subctrl
> > +              - intel,lgm-syscon
> > +              - marvell,armada-3700-usb2-host-misc
> > +              - mediatek,mt8135-pctl-a-syscfg
> > +              - mediatek,mt8135-pctl-b-syscfg
> 
> Thanks for filling the gap. Would you mind to add as well:
> "mediatek,mt2701-pctl-a-syscfg"
> "mediatek,mt2712-pctl-a-syscfg"
> "mediatek,mt7623-pctl-a-syscfg"
> "mediatek,mt8173-pctl-a-syscfg
> 
> With that:
> Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>

Please follow-up with a separate patch.

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
