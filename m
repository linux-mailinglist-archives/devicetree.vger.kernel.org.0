Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2601954D3DE
	for <lists+devicetree@lfdr.de>; Wed, 15 Jun 2022 23:40:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235490AbiFOVkm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jun 2022 17:40:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33414 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239710AbiFOVkl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jun 2022 17:40:41 -0400
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com [IPv6:2607:f8b0:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28D6E42A03
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 14:40:40 -0700 (PDT)
Received: by mail-pg1-x530.google.com with SMTP id r5so5845304pgr.3
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 14:40:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=E9ERFJfmycetiewLsnmPEUf5XGwsEH0WUvIwEqLk+7s=;
        b=ttJN/MGyhYY6DGazXaoQqpX+PSl81iONtGWiRVGGyQJycYL5aAU4x+kKpmRyu0Hsjp
         fcUFQA9DPiXWusNHCI5SwF7dtfoq27GhyKYZVRwPUVp0xl9q2wR7jB5Y5OhdoBwYwmVg
         s2pkhk/gEkd1GpbOqbgtWYk1Y6TGaibyIW9ZhgaDSO0cHHwqTQbYZkQpPxW756AFy3Y+
         7Px/hNO31Ei4BRE9FubcBHP9lSEuAUgIkR83rVGTvBbF/pB/TUng+UFCC5DxawNkXYP2
         /U2tvrhwk6VncuD77fjMrRKzkv2Yv5n9YnSw3j/nKRVKCCo9yCyqJoyc4A7yFKm1wR5z
         kmGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=E9ERFJfmycetiewLsnmPEUf5XGwsEH0WUvIwEqLk+7s=;
        b=vsKOmKlrdtEp2z4Pfu0b8u7YgYwO9GflbqvJc3xrBCmdzvkwmpbQcUrz8XoBfFJvCu
         BXOG7cZpWwL4KzhtG2HsswZy0lqBSp5ggzO1TKBpZC05u14YouMyRrQKyjUPqxwsHB6c
         gmaLbeqZnxgtm9dtbiE9RP62AtE1Av7gpq2Fw5/Iv1hbFyp4BGi1v04232qj1uP55rGK
         XBpU0V8qFxsLErcsGy2Ktxhvry3TOrMtSnzyOkv+vN6iT6qC2wqA3fB8gJJSc8JsFYOm
         ABwiRrSXKmZmDBRNGaCafISYef+N7QlWOP3p59fcP23bX3EsIRZCivEE20T18Jfe5zoN
         anyg==
X-Gm-Message-State: AJIora/0b5g7qFsT/gySRQtH4Bn26jP2478BGI+gM49DjvVmVGzPikwn
        mozZ46+HC4mCsf2LOpSVMCs8vQ==
X-Google-Smtp-Source: AGRyM1sMKXkKuZQnP6khsj5hB3YYQDGwcOOc6pFBBPKzk2thLFoH4KcLdt7LufAaCkTq/ji06lSuFw==
X-Received: by 2002:a63:fe49:0:b0:408:9928:44da with SMTP id x9-20020a63fe49000000b00408992844damr1516490pgj.373.1655329239625;
        Wed, 15 Jun 2022 14:40:39 -0700 (PDT)
Received: from google.com ([192.77.111.2])
        by smtp.gmail.com with ESMTPSA id s17-20020a17090a5d1100b001e0d4169365sm2330350pji.17.2022.06.15.14.40.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jun 2022 14:40:38 -0700 (PDT)
Date:   Wed, 15 Jun 2022 22:40:36 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Caleb Connolly <caleb.connolly@linaro.org>
Cc:     Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org,
        Jami Kettunen <jami.kettunen@somainline.org>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: Re: [PATCH v14 03/10] mfd: qcom-spmi-pmic: read fab id on supported
 PMICs
Message-ID: <YqpR1FmubmQPHzXV@google.com>
References: <20220429220904.137297-1-caleb.connolly@linaro.org>
 <20220429220904.137297-4-caleb.connolly@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220429220904.137297-4-caleb.connolly@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 29 Apr 2022, Caleb Connolly wrote:

> The PMI8998 and PM660 expose the fab_id, this is needed by drivers like
> the RRADC to calibrate ADC values.
> 
> Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Tested-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  drivers/mfd/qcom-spmi-pmic.c      | 7 +++++++
>  include/soc/qcom/qcom-spmi-pmic.h | 1 +
>  2 files changed, 8 insertions(+)

Acked-by: Lee Jones <lee.jones@linaro.org>

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
