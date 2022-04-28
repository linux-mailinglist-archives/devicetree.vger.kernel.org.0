Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 74DC551397C
	for <lists+devicetree@lfdr.de>; Thu, 28 Apr 2022 18:15:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349818AbiD1QSY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Apr 2022 12:18:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349829AbiD1QSW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Apr 2022 12:18:22 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8275B1A3BF
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 09:15:07 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id ay11-20020a05600c1e0b00b0038eb92fa965so5582596wmb.4
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 09:15:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=PJ9fXshc7sXkSmf17RTyOYRRAPFZLf4/m3xbXOUm70M=;
        b=BjQezLJtJXhJeRPdtqhso0UBmUQ0NMOdOsNiQRtxT8tybYx5ZdK0+vh8txyPDxFaA1
         6P089U18UfqSmudm23BIUxPLI4St8AgkXXYdRWlyFBMg8hyxvOfsSMsjvKeizVHFOSA6
         pe4SkfFZW6DC1fn3pLfT8IxwTIzXHW1A+NlKIZ5SC0Kw/jyrCAzwiXPPnGQNMnfJjKP7
         XJRksLD0NpmAXzgR8xKIz305bjilqSu4BE9P/0NPPAasQautK/p/vVrFohbRS9+B1inB
         nzyy3whLczaq5RqyKrj7qK84Sg3DvquiQsBZWT627m9+hMu/u/QXFKUu+RjUu4Cfjqu6
         o0mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=PJ9fXshc7sXkSmf17RTyOYRRAPFZLf4/m3xbXOUm70M=;
        b=7P7WWZ8J9VZI1E3UXI3UkwCMHp9vu2UKQ9VzOQpcC3vDWvpRvDhO+D33A6Y6SXnDv2
         Ks5rpgVgDCUFUVQ7XHBB5ghqdhQNzZ0TkhSzHIRWU1EzQqYUZspRzKwSgQw1faCNvcCZ
         5uBfBJRvI0VfNjwty3AVPTG4Rk9+MpbPGP+E8kssbficiFmpmE9gR0Zq0Zva8Qj+lxqR
         VHGXBkNnqrsiTpu3YC6VP7z/SamA1qJAo8jOM5usPM1gMSPoosh4qH+FsZ2Gk6IZeLS2
         bDYdYmHGDIbyuBB4nX8EutHYNUjcr2owOd3bPTNIjaTVkXAlZt2Hh9LRNVAtiUE96s2r
         zuBw==
X-Gm-Message-State: AOAM533lCXsB576/8/883nakaulQJsHvB+bIgJWVuMIsbtUWASa4lsEr
        GDo0MKwXLmjPLOrlWMJcnioxwA==
X-Google-Smtp-Source: ABdhPJxjzKbO7XX/MsRiwHEuz6e06OZpH88NuPbhYb20alPwj38X0mssnjCP/E+GGAlTNVozQIQUpA==
X-Received: by 2002:a7b:c095:0:b0:393:fd2e:9191 with SMTP id r21-20020a7bc095000000b00393fd2e9191mr10294526wmh.137.1651162506028;
        Thu, 28 Apr 2022 09:15:06 -0700 (PDT)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net. [86.27.177.88])
        by smtp.gmail.com with ESMTPSA id n10-20020a5d588a000000b002052e4aaf89sm191694wrf.80.2022.04.28.09.15.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Apr 2022 09:15:04 -0700 (PDT)
Date:   Thu, 28 Apr 2022 17:15:02 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Caleb Connolly <caleb.connolly@linaro.org>
Cc:     Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        sumit.semwal@linaro.org, amit.pundir@linaro.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: Re: [PATCH v13 3/9] mfd: qcom-spmi-pmic: read fab id on supported
 PMICs
Message-ID: <Ymq9hsmxhtY1u+Yn@google.com>
References: <20220323162820.110806-1-caleb@connolly.tech>
 <20220323162820.110806-4-caleb@connolly.tech>
 <Yma4tXvPQ+U89Whr@google.com>
 <10f7cb8e-4c2a-0bba-df55-16b56d429147@linaro.org>
 <Ymg455MYRIJTXgvW@google.com>
 <850d2c2d-9531-ed4c-48fc-2daa0311e3e6@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <850d2c2d-9531-ed4c-48fc-2daa0311e3e6@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 27 Apr 2022, Caleb Connolly wrote:

> 
> 
> On 26/04/2022 19:24, Lee Jones wrote:
> > On Tue, 26 Apr 2022, Caleb Connolly wrote:
> > > On 25/04/2022 16:05, Lee Jones wrote:
> > > > On Wed, 23 Mar 2022, Caleb Connolly wrote:
> > > > 
> > > > > From: Caleb Connolly <caleb.connolly@linaro.org>
> > > > > 
> > > > > The PMI8998 and PM660 expose the fab_id, this is needed by drivers like
> > > > > the RRADC to calibrate ADC values.
> > > > > 
> > > > > Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
> > > > > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > > > > Tested-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > > > > ---
> > > > >    drivers/mfd/qcom-spmi-pmic.c      | 7 +++++++
> > > > >    include/soc/qcom/qcom-spmi-pmic.h | 1 +
> > > > >    2 files changed, 8 insertions(+)
> > > > 
> > > > Please change the Subject line to match the style of the sub-system?
> > > Hi, sorry if this is a silly question, I don't quite understand what you
> > > want me to change here, the subject line is in the same "mfd: driver:"
> > > format as other patches in the subsystem?
> > 
> > mfd: qcom-spmi-pmic: Read fab ID on supported PMICs
> > 
> > What's 'fab' should that be capitalised too?
> "fab" is short for fabrication I think, the register value can be used to
> determine which factory the chip was manufactured in.
> 
> I can make it clearer and go for
> 
> mfd: qcom-spmi-pmic: Read fabrication ID on supported PMICs

Clearer, thanks.

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
