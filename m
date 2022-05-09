Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 70A7B51F87A
	for <lists+devicetree@lfdr.de>; Mon,  9 May 2022 11:59:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235907AbiEIJoh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 May 2022 05:44:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42626 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233391AbiEIJ3n (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 May 2022 05:29:43 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 791CEAE279
        for <devicetree@vger.kernel.org>; Mon,  9 May 2022 02:25:48 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id v12so18498082wrv.10
        for <devicetree@vger.kernel.org>; Mon, 09 May 2022 02:25:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=H+DsutZj1L+ifdMTMDgXzW8ycmvYXow7irv3R3N0G0A=;
        b=EMVg4qQf/QsULTjsrV0B3/wwtsJ9Vf60yiGAFh/5rTydM1bnxbv6hPXNIE/GuCENIN
         q0vbAv2ZGCcs1HtKiJuox1M9qD/l2M28yzb0yjVd+CMkkSkHA977QCHazwlls3m0Z184
         ZiH8eNySBC3/+JNrzj3pDmEg5NvtkNnTosNu/AK0lXNpQ+9kIRweJJBynlJs53Vn1nWQ
         SEuMUaaaIqkiU0gHNLr8IcQqqgNWo/mUSdzeCcYr1e7zN4CS9qay/S1vbyVD5Io8g2W7
         U7CGKtOoipiwPY3OiwTrbj0cOJGXPp/Ef5LbBjLXC9D3nxCur4gwoIts/3CilELEOV+C
         CmpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=H+DsutZj1L+ifdMTMDgXzW8ycmvYXow7irv3R3N0G0A=;
        b=1jkKiJQzWPDuxVAecLZeRQVU1cQNZBoJBIuOaRlm+QRyaIlUEl356nnLgcAuS+slcb
         gFfXdPgIn8ujLC8L0ig+kyjfNe4rV0U3iH+nPDG+cTemBOwhlwSFjmCBPAcqJ6C/Vh2V
         5GtiEGKzU7iVs2NoMXnw8v5EPLrA0x07NZk3irH+YnDkd1KsfsdijuU6aoWWFwEZBqb9
         YpNJew9kyAmw5ZyNSAUVOgo++dz8eBcyfab89dWCij99XCDeQ8slXdEpgt8rP+aWJS3+
         0ctjxiMgEUeAWTCyUZImCvDyCTJtuzJyTZ4ZAKdvPADHJfJoJrsitGymd1JFi/SBUt2e
         RQGw==
X-Gm-Message-State: AOAM532nmm14L3hZo5+jrB6TKly/vqIy8SXX/D/DmWBzAWpGlaDyVdEa
        YmuEtNrztKNtJkT3DPzt4sJbHg==
X-Google-Smtp-Source: ABdhPJwRIgJEwabhbXHOhG62yNCJpaXOkH5nLrt212aoSggBdFxwKKAoFPKPI2PUu9Vk/jJ1E9iVmQ==
X-Received: by 2002:adf:e104:0:b0:206:109a:c90f with SMTP id t4-20020adfe104000000b00206109ac90fmr12894538wrz.259.1652088346627;
        Mon, 09 May 2022 02:25:46 -0700 (PDT)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net. [86.27.177.88])
        by smtp.gmail.com with ESMTPSA id o20-20020a05600c339400b003942a244f33sm15854582wmp.12.2022.05.09.02.25.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 May 2022 02:25:46 -0700 (PDT)
Date:   Mon, 9 May 2022 10:25:44 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     David Heidelberg <david@ixit.cz>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>, ~okias/devicetree@lists.sr.ht,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] dt-bindings: spmi: convert QCOM PMIC SPMI bindings to
 yaml
Message-ID: <YnjeGIGW6Pe1R/gY@google.com>
References: <20211227170151.73116-1-david@ixit.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211227170151.73116-1-david@ixit.cz>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 27 Dec 2021, David Heidelberg wrote:

> Convert Qualcomm PMIC SPMI binding to yaml format.
> 
> Signed-off-by: David Heidelberg <david@ixit.cz>
> 
> ---
> v2:
>  - add #address and #size-cells
>  - add reg and remove spmi include from example
> v3:
>  - fix doc reference error (make refcheckdocs)
> 
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  .../bindings/mfd/qcom,spmi-pmic.txt           |   2 +-
>  .../bindings/spmi/qcom,spmi-pmic-arb.txt      |  65 ----------
>  .../bindings/spmi/qcom,spmi-pmic-arb.yaml     | 120 ++++++++++++++++++
>  3 files changed, 121 insertions(+), 66 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/spmi/qcom,spmi-pmic-arb.txt
>  create mode 100644 Documentation/devicetree/bindings/spmi/qcom,spmi-pmic-arb.yaml

Applied, thanks.

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
