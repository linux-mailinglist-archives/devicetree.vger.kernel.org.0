Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8C63D6427EA
	for <lists+devicetree@lfdr.de>; Mon,  5 Dec 2022 12:59:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231390AbiLEL7P (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Dec 2022 06:59:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230235AbiLEL7O (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Dec 2022 06:59:14 -0500
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com [IPv6:2607:f8b0:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA60EDFB3
        for <devicetree@vger.kernel.org>; Mon,  5 Dec 2022 03:59:13 -0800 (PST)
Received: by mail-pf1-x436.google.com with SMTP id n3so6848104pfq.10
        for <devicetree@vger.kernel.org>; Mon, 05 Dec 2022 03:59:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JVDnYep+OGuO+Z3tpAIsly50JpE3CrqELGalA8PHONg=;
        b=N5wjABROTlnOf0xkjlrF9DD5NNlAXltNebNeRxy6Iv6U/IFxnXWNcch0ApbhNbuAXl
         aq5kgXkOXdXhCSD/TXtuGnck53j8/j46CwFfsglAkBnlBm2YAVb6ZXcTgUafrPfTKQgB
         7+Xo19wDL124a9m4i+RrLankKSnka65OFqOpGxVwHpl0sPH3U/NyCQFP7kWwfPeH3ykb
         DBjxyYWknWDfL0DlZr2bnBKKx8PVNOBMwAJ1BU6gQWxIgthRQaQjSFJaAknrZCbfI5ck
         I/LtR1ye1+e5jEKWC3Jw6EtnuDFfmfv7Ld0QOH9LYL9jlMTJMcD7uJMo9Xp7UUJHnJ4V
         lFkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JVDnYep+OGuO+Z3tpAIsly50JpE3CrqELGalA8PHONg=;
        b=ZiDrOpWZr9Y5az21eQyi5OKcgS9GMzhYSuf7N8Iv5soHhw5ZqKFaAiCd7gLQb9HpGE
         V37XrKRtfrlWXaR5gwZvO8idbZ5aSc/iOFZ/x8fMh9CQaH2CsVqwpcSk/r95psZ1vOvv
         NStVt2t46f83jG7ELCv+PbGwclDiLfM1MFd+JS17AMntl4hVc6JRDbXQ3UMChwah5Fa/
         dOXJdVTcWrl9jjHflP3T1LEVJ+m8LEjf2Vq8Cr1jrrYN14hGQoejrSg/YJbSMtq8VDbe
         to20SFWXjGNzSCxmFdeZssTwCkCuSipsOXqZ5/xA8dK7d1IK+Y00hGkWsr3jV28vDhOS
         hGmw==
X-Gm-Message-State: ANoB5pkZ34zplN1i+Li86puRLMxDnWhKaVb4MYY0jG6WwgKJTMDn3gX3
        S8pEMpSmTrdhJHUtxGWGl71v
X-Google-Smtp-Source: AA0mqf6j5YhyfdVOKSjtKnCH3MyZNtcxxRSjvEhSz/uAs3E8YB7W4Bx982aZrQIQQ3CVU/0VtFH8dA==
X-Received: by 2002:a63:570e:0:b0:477:a381:84d with SMTP id l14-20020a63570e000000b00477a381084dmr53526864pgb.207.1670241553326;
        Mon, 05 Dec 2022 03:59:13 -0800 (PST)
Received: from thinkpad ([59.92.98.136])
        by smtp.gmail.com with ESMTPSA id i28-20020a056a00005c00b005771f5ea2ebsm789766pfk.135.2022.12.05.03.59.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Dec 2022 03:59:12 -0800 (PST)
Date:   Mon, 5 Dec 2022 17:29:06 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Johan Hovold <johan+linaro@kernel.org>
Cc:     Bjorn Andersson <andersson@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Bart Van Assche <bvanassche@acm.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: ufs: qcom: allow 'dma-coherent' property
Message-ID: <20221205115906.GA20192@thinkpad>
References: <20221205100837.29212-1-johan+linaro@kernel.org>
 <20221205100837.29212-2-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221205100837.29212-2-johan+linaro@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Dec 05, 2022 at 11:08:36AM +0100, Johan Hovold wrote:
> UFS controllers may be cache coherent and must be marked as such in the
> devicetree to avoid data corruption.
> 
> This is specifically needed on recent Qualcomm platforms like SC8280XP.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  Documentation/devicetree/bindings/ufs/qcom,ufs.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
> index f2d6298d926c..1f1d286749c0 100644
> --- a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
> +++ b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
> @@ -44,6 +44,8 @@ properties:
>      minItems: 8
>      maxItems: 11
>  
> +  dma-coherent: true
> +

This property is not applicable to all SoCs. So setting true here will make it
valid for all.

Thanks,
Mani

>    interconnects:
>      minItems: 2
>      maxItems: 2
> -- 
> 2.37.4
> 

-- 
மணிவண்ணன் சதாசிவம்
