Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 42E7E57DBB2
	for <lists+devicetree@lfdr.de>; Fri, 22 Jul 2022 10:03:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234703AbiGVIC4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Jul 2022 04:02:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53720 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232768AbiGVICy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Jul 2022 04:02:54 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79DB19B1BF
        for <devicetree@vger.kernel.org>; Fri, 22 Jul 2022 01:02:52 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id l15so1366865wro.11
        for <devicetree@vger.kernel.org>; Fri, 22 Jul 2022 01:02:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=bvEexGq32Q2q4yLSZgYal6lzMRVPSRDwzzKaxMf771o=;
        b=evku2628x8f7AayzAAE1I5iATAY92Nv0ST8sh2IwQ63jYO3pXS+81O5kKMh8cHWdg0
         fEOkQP44gh9YLaDgU6h5fw/TpHvTGXIzsMK0BxkOSokAGiT68uJq0o96IoR2t5yzmWBC
         VONUbj8m7D9BYNUlm3vlO2DdcFlELpkCnzGMPiEONQNVbHIXhqcwWp1+3duanEX8gJ6h
         8jvXFXifWx+fyevCpsJfdidOmZW23cDFW7y1rYjc9Q2kscaK51y6ThurHiBUfZNLTU3E
         6EjzRr7ORduLoY/7B56rQC69Sqo+R8xspanSeOHAS5/6QEKNk7EmzzFvPaYKI6JpEX0Z
         11Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=bvEexGq32Q2q4yLSZgYal6lzMRVPSRDwzzKaxMf771o=;
        b=JQZO+BA5/jB2eOR80IMNZwbd2m1TAzf47rGR/rDe+V6KJN3bAJqRuZ9Mr5AjUO576j
         OB/eronDcroIXB5ueBHcSepNGrIfWr49ya2Pug+HiyvZidEkJmvOjieVq70bAv1P5d3Y
         zqPHLv97S4uN5c28RPOKER7stIG+HFp08cFP8Bq1kRzxMKhNamI7PLZeZToxkG232Nr0
         gpxZvJ1dc5UnIqYHWIkHm2M9tYZa67/c09KrYyYGESIM10P5hQMFCMK0iOG7S4r786Qe
         uDfQCPf6vneaoBWVm+i/rBoo9PWCqLqdruhrDLfTsjHvXX5VsbyVUm9HmD2sQ4Hw0jT6
         k9dw==
X-Gm-Message-State: AJIora9wvHOuAAk81rNG4e2qo1BrlomHKMMwQ2rcv8781OFB2ZQyd6X+
        qOkrxHhqQoJ0VHJUD6NDkaxaWA==
X-Google-Smtp-Source: AGRyM1v1LK4VrBLGMhVxuBKsl0VRF2RpAftCZFCp1jKEXOMgOZ9vuAekYBfklMuNr345fGlUFFQQHg==
X-Received: by 2002:adf:fb10:0:b0:207:af88:1eb9 with SMTP id c16-20020adffb10000000b00207af881eb9mr1575350wrr.238.1658476970912;
        Fri, 22 Jul 2022 01:02:50 -0700 (PDT)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net. [86.27.177.88])
        by smtp.gmail.com with ESMTPSA id m9-20020a056000024900b0021d746d4820sm3868746wrz.37.2022.07.22.01.02.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Jul 2022 01:02:50 -0700 (PDT)
Date:   Fri, 22 Jul 2022 09:02:48 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Rob Herring <robh@kernel.org>
Cc:     Fabrice Gasnier <fabrice.gasnier@foss.st.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: mfd: stm32-timers: Move fixed string node
 names under 'properties'
Message-ID: <YtpZqNm7Cgzz9+ZC@google.com>
References: <20220706211934.567432-1-robh@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220706211934.567432-1-robh@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 06 Jul 2022, Rob Herring wrote:

> Fixed string node names should be under 'properties' rather than
> 'patternProperties'. Additionally, without beginning and end of line
> anchors, any prefix or suffix is allowed on the specified node name.
> 
> Move the stm32 timers 'counter' and 'timer' nodes to the 'properties'
> section.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  .../bindings/mfd/st,stm32-lptimer.yaml        | 28 +++++++++----------
>  .../bindings/mfd/st,stm32-timers.yaml         | 20 ++++++-------
>  2 files changed, 24 insertions(+), 24 deletions(-)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
