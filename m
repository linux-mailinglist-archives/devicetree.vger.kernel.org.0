Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 852A24CF45E
	for <lists+devicetree@lfdr.de>; Mon,  7 Mar 2022 10:12:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235208AbiCGJNA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Mar 2022 04:13:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55392 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236274AbiCGJM4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Mar 2022 04:12:56 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F21121E1E
        for <devicetree@vger.kernel.org>; Mon,  7 Mar 2022 01:12:02 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id t11so22107258wrm.5
        for <devicetree@vger.kernel.org>; Mon, 07 Mar 2022 01:12:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=6nVQFiWLxX1TFkzQGCpmdU7DCjFYMMMsRXcMCUihpJQ=;
        b=RwPN7E2qDXqU4CzUcuvLz1UcIrhv+iL260pmNykUHIYZsL+n72fpJkrZTbjpVRKMWS
         s+y7S8yDmxif2I7mH75hENaIbwGMDQDXVpSLPLePnXXvUmOli4toaoe0qCqRMCAt3KK6
         GRu9dcT2G2G7cogXFkAjM89p3QmAcjCM/HahuLmhYDLt//iS72E+vaYw/34jXmGkf4ED
         3iCW3Bc1N26LqPF6cbt33N+VHYVUfN/PAoNkH8T5+or4LAFsiC7TNU+BpMWmbpJIOs89
         ylc/ndr9lJpB1onhifhRzVYkHeMIAAEEGvAGJqaG8PJtsNXMcvnlr+RhW9mn5MivZTys
         JnAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=6nVQFiWLxX1TFkzQGCpmdU7DCjFYMMMsRXcMCUihpJQ=;
        b=Pk5MyYXeGrIZNlIDkVZtZmXsP+NkFKgf1qjvUAoE+OS5UrU4Cfbo9txRA0fZ50/eMd
         9w0huC2ZDe1hXbJIAa4sTpKxRRpFPygyTe1+boV7Qr8db6W3yyxp/w/V8zZqJoWkkcEH
         vdzzuFB+Fy2xOyh0ZrZEYmaF8olMRQeJthuhdMQTeIiAVGRaD2YSNI+YvFAAXZg7RqFm
         5gHLyqeGMMLTuh0kVsIYA5ogWZi3nz3HkS95lcjoKfnSo7cwlQSCHEG2Sxzr1AhFJmrL
         DgEEPDGhP81GBQSnH6WJeHa7vcKBm+9TSFIUV09UhDp7DSk/vnJ/KRJtLmC/MzKDKtTd
         DDdA==
X-Gm-Message-State: AOAM532GGrh8u6+3s1vITJcEGfSEVAIM8MuoKYbSvOBk3aocHO32x3DV
        IXOdizk4655569g+H0nG8kydeNx3D7UN+A==
X-Google-Smtp-Source: ABdhPJxdHVdBVHWE807kbNZBe4/KG9JPWJM4iXynkHybCQVDdoYHAaXxjE8gw/FCXxFLllrW6eX6Wg==
X-Received: by 2002:adf:cd02:0:b0:1f0:767d:b39a with SMTP id w2-20020adfcd02000000b001f0767db39amr7352428wrm.529.1646644321172;
        Mon, 07 Mar 2022 01:12:01 -0800 (PST)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net. [86.27.177.88])
        by smtp.gmail.com with ESMTPSA id y4-20020adff144000000b001f022290737sm10582510wro.6.2022.03.07.01.11.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Mar 2022 01:12:00 -0800 (PST)
Date:   Mon, 7 Mar 2022 09:11:58 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     Chanwoo Choi <cw00.choi@samsung.com>,
        MyungJoo Ham <myungjoo.ham@samsung.com>,
        Rob Herring <robh+dt@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH v2 3/5] regulator: dt-bindings: maxim,max77843: add
 MAX77843 bindings
Message-ID: <YiXMXtnqHsTCRRcQ@google.com>
References: <20220111174805.223732-1-krzysztof.kozlowski@canonical.com>
 <20220111174805.223732-4-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220111174805.223732-4-krzysztof.kozlowski@canonical.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 11 Jan 2022, Krzysztof Kozlowski wrote:

> Document the bindings for MAX77843 regulator driver.  The bindings are
> almost identical to MAX77693 bindings, except the actual names of
> regulators.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> ---
>  .../bindings/regulator/maxim,max77843.yaml    | 65 +++++++++++++++++++
>  1 file changed, 65 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/regulator/maxim,max77843.yaml

Applied, thanks.

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
