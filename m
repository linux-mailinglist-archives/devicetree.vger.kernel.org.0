Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 70CB95575D7
	for <lists+devicetree@lfdr.de>; Thu, 23 Jun 2022 10:47:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230215AbiFWIrD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Jun 2022 04:47:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230290AbiFWIq6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Jun 2022 04:46:58 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31FA349265
        for <devicetree@vger.kernel.org>; Thu, 23 Jun 2022 01:46:57 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id n1so26645394wrg.12
        for <devicetree@vger.kernel.org>; Thu, 23 Jun 2022 01:46:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=yuZRIg16hgWgvyLgcyb1djhvkqhq6ELp3GvATbp3wU4=;
        b=IPyFvhxKXms2uxVdYCFhGSLzGeNTDdVbl+GzCUpzlIZFsGOviclFqParLyBgfEmkdL
         OHX4LmbzNiWDaTcxZ9ep55ys3WBCfqmrOUXzuHfFwYUL+j0fWVL+zjbfB6mNONbtlCBZ
         2ORGkqIw+I33Hq8xn4209LpHnwaSxhuxJDf2fTY4xG55A1qkUTte5yT7uMKH1PoQCPoi
         EaypG3LSqBwMUyUmnnHfl2jry+4ElfViEW+vkj8XYqG9KU5r9pVcO+4sfuyQqzWcRRmj
         3Zjopzmjq4O2EIKiKaormwRF5J1rIfO8CbQRarWzvpbTR8t1QxxQEqm2kZA9K2EWcM+t
         Xs/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=yuZRIg16hgWgvyLgcyb1djhvkqhq6ELp3GvATbp3wU4=;
        b=1Kt8kyrdtpR+ckjkKblyG1NgmPJv10yzahI4HlPEusdPX+MAAdHT6L5RyAR/j7SpMc
         f9C3DUV7wHTZIkJPTlIcaakjdZ/8QsjEufx4781PvIRdQaTSshTY20toPfvBuqnVRgoX
         9etLR5lqMZ5ZKJrtzkzBBRV5wmfSCCsgzI/jLuwjDLw9ds2j8MjE+/c+wKMs5VgcGCth
         U4HfpU0a/z/x01HADVCd/2XjEfIPT7VDst1YYh77upKmXEgRvpLBAbIL4mPlkMHBE+ZR
         x8t7kUkD4EmObgBt4zhN3x/eNVvw8zjrRJCK+UKCVMtXBwyT2m5z+Yg+9Jgzl/75/3vR
         NS7A==
X-Gm-Message-State: AJIora9wUXEfSTNx+kimjoWqeV9OA+NBQbXZ1LZmI7qElBmJBltmWHYL
        N1OoaU9tm8lh1kLEAYta/xSBQA==
X-Google-Smtp-Source: AGRyM1tAO9KV+qTetpje4rU4OMUWuh4fswkS5Bu3Wxjp7FLiryhsmjKpmvyh00en80vqsC7j8F/tIQ==
X-Received: by 2002:a05:6000:1447:b0:21a:278a:181c with SMTP id v7-20020a056000144700b0021a278a181cmr7396898wrx.161.1655974015758;
        Thu, 23 Jun 2022 01:46:55 -0700 (PDT)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net. [86.27.177.88])
        by smtp.gmail.com with ESMTPSA id v6-20020adfa1c6000000b0021b8905e797sm15391550wrv.69.2022.06.23.01.46.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jun 2022 01:46:55 -0700 (PDT)
Date:   Thu, 23 Jun 2022 09:46:53 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Satya Priya <quic_c_skakit@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alessandro Zummo <a.zummo@towertech.it>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-rtc@vger.kernel.org,
        quic_tsoni@quicinc.com
Subject: Re: [PATCH 1/2] dt-bindings: mfd: qcom-pm8xxx: Update the
 maintainers section
Message-ID: <YrQofT4lvwO/K/2k@google.com>
References: <1655874639-11273-1-git-send-email-quic_c_skakit@quicinc.com>
 <1655874639-11273-2-git-send-email-quic_c_skakit@quicinc.com>
 <c54b9423-10cb-e174-44e6-61468efd333f@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <c54b9423-10cb-e174-44e6-61468efd333f@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 22 Jun 2022, Krzysztof Kozlowski wrote:

> On 22/06/2022 07:10, Satya Priya wrote:
> > Update the maintainers section with latest mail ID.
> > 
> > Signed-off-by: Satya Priya <quic_c_skakit@quicinc.com>
> > ---
> >  Documentation/devicetree/bindings/mfd/qcom-pm8xxx.yaml | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/mfd/qcom-pm8xxx.yaml b/Documentation/devicetree/bindings/mfd/qcom-pm8xxx.yaml
> > index 2568736..61bd0b3 100644
> > --- a/Documentation/devicetree/bindings/mfd/qcom-pm8xxx.yaml
> > +++ b/Documentation/devicetree/bindings/mfd/qcom-pm8xxx.yaml
> > @@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
> >  title: Qualcomm PM8xxx PMIC multi-function devices
> >  
> 
> Both patches can be squashed and then applied by Rob.

Nope. :)

> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Thanks.

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
