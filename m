Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 33B195555B1
	for <lists+devicetree@lfdr.de>; Wed, 22 Jun 2022 23:06:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350227AbiFVVGS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Jun 2022 17:06:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44858 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235005AbiFVVGR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Jun 2022 17:06:17 -0400
Received: from mail-oa1-x34.google.com (mail-oa1-x34.google.com [IPv6:2001:4860:4864:20::34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D34C93FBCC
        for <devicetree@vger.kernel.org>; Wed, 22 Jun 2022 14:06:15 -0700 (PDT)
Received: by mail-oa1-x34.google.com with SMTP id 586e51a60fabf-101ec2d6087so13594236fac.3
        for <devicetree@vger.kernel.org>; Wed, 22 Jun 2022 14:06:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=76nBAAwaqrTlWdOy83Weff0cq7sUUQgoIpTvu/weE60=;
        b=ws5vzg8YDl2rVjeKq0/ejT9iB0I0EBany/LQ3Zf4sz4GXU0pHEpuNIus47qOCFGzA0
         NNNOkrA7SQ3DBDnWEswpC2FowcUH9h8K0n0uGjPrJtpslkITCGJQCjVrDoKETVV6wQhA
         iizKH7cph+Dcn+Mv1PhYuwJmyPJex45D5D7t3SX/qL67Kos+qLIV9uF61L14v/qSercK
         9/02wKB2UQtts+X5zqB3NBDeBBlLjESQlovWqx6izlmJupkN0ycQn7LBJGzsP3c4pbcE
         C38/+NpT9MNtFoj+QDlZs4HkaICbFuIok9kiaFdP4J+C9LTkeNBER+6o/iiuaUVP2jej
         CU3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=76nBAAwaqrTlWdOy83Weff0cq7sUUQgoIpTvu/weE60=;
        b=WmE4EZCFrIw908G39tzvBbwUboAfXGyTY4QRJpf9OfUFrXAtBQv8KMjBoZgImWjDro
         uzaeCPNrwxkEyeBiVExpDM5I3i0joaAVjcSF0UKiipKRxD87K3X6YDAhivMu3R9NCAwN
         BvJxjSMq1hIYcdqlD9G0pCi4Wi3/+R/9sdWXRCJVZmYmQgi8YhdskSnc9gqfrNNNGPKc
         ckqCa+4kUtUZEagk3ojXAyydVzrDgqQpLsiEUCuCGXBO+2o5U8VMTNRZus3huZZ07gLh
         zsnANA9TiDREMhKfy/P9eDxC5wjEJpuXHa0/9h+o3O9xxQRZ4vhQ2QKV8XLAmtUICXaQ
         Edrw==
X-Gm-Message-State: AJIora/uT8F1Fb3RUoMwd2ZdvLQ62qnS3z/cPXQ+VST5ap6grK5X2TKu
        wa323KRZLtTipeKGvyoN4/rE5g==
X-Google-Smtp-Source: AGRyM1tXfsG7aKhHAIKjiAxDLVyWaekfv1oJVncfIz0/sdO+UnQeg2nhSH8A+Kraebr4HFfDUTaG7g==
X-Received: by 2002:a05:6870:d791:b0:101:ad64:1e74 with SMTP id bd17-20020a056870d79100b00101ad641e74mr216310oab.162.1655931975221;
        Wed, 22 Jun 2022 14:06:15 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id b28-20020a0568301dfc00b0061691db3807sm521774otj.23.2022.06.22.14.06.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jun 2022 14:06:14 -0700 (PDT)
Date:   Wed, 22 Jun 2022 16:06:12 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Johan Hovold <johan@kernel.org>
Cc:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Jassi Brar <jassisinghbrar@gmail.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/6] dt-bindings: arm: qcom: Document additional
 sc8280xp devices
Message-ID: <YrOERL276MFbG2mb@builder.lan>
References: <20220622041224.627803-1-bjorn.andersson@linaro.org>
 <20220622041224.627803-2-bjorn.andersson@linaro.org>
 <YrLXCx90bn7Id4Bn@hovoldconsulting.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YrLXCx90bn7Id4Bn@hovoldconsulting.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed 22 Jun 03:47 CDT 2022, Johan Hovold wrote:

> On Tue, Jun 21, 2022 at 09:12:19PM -0700, Bjorn Andersson wrote:
> > Add the CRD (Customer Reference Design?) and the Lenovo Thinkpad X13s to
> 
> Qualcomm refers to "Compute Reference Design", for example, in commit
> 427b249504ea ("arm64: dts: qcom: sc7280-crd: Add device tree files for
> CRD").
> 

I'll align with that expansion of the abbreviation, thanks.

> > the valid device compatibles found on the sc8280xp platform.
> > 
> > Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> > ---
> > 
> > Changes since v1:
> > - Added the two missing board compatibles
> > 
> >  Documentation/devicetree/bindings/arm/qcom.yaml | 2 ++
> >  1 file changed, 2 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
> > index 5c06d1bfc046..6ec7521be19d 100644
> > --- a/Documentation/devicetree/bindings/arm/qcom.yaml
> > +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
> > @@ -238,6 +238,8 @@ properties:
> >  
> >        - items:
> >            - enum:
> > +              - lenovo,thinkpad-x13s
> > +              - qcom,sc8280xp-crd
> >                - qcom,sc8280xp-qrd
> 
> I believe the "qcom,sc8280xp-qrd" entry was a mistake and should have
> been "-crd" all along? Perhaps you should remove that entry in this
> patch.

It was a mistake on my part adding the QRD when apparently I had a CRD,
but I still believe both exists, so I'd prefer to just keep them around.

Regards,
Bjorn

> 
> >            - const: qcom,sc8280xp
> 
> Looks good otherwise:
> 
> Reviewed-by: Johan Hovold <johan+linaro@kernel.org>
> 
> Johan
