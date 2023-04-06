Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DA7016D8E39
	for <lists+devicetree@lfdr.de>; Thu,  6 Apr 2023 06:08:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234846AbjDFEI3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Apr 2023 00:08:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34942 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229608AbjDFEI2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Apr 2023 00:08:28 -0400
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2FF277281
        for <devicetree@vger.kernel.org>; Wed,  5 Apr 2023 21:08:27 -0700 (PDT)
Received: by mail-pl1-x62f.google.com with SMTP id c18so36389067ple.11
        for <devicetree@vger.kernel.org>; Wed, 05 Apr 2023 21:08:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680754106;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dE6cxXzdOccukGxMzeGKLxZd5ekq4xiFUcQTZn1Zt5c=;
        b=Q9vHCT2qowFiUwiB2FG9J80FVBU1hrus1jGPhYqZX4M0nJZ6xgLKa/SGJRvmz2zXPG
         EPd+7HtKFA69kAWL4SaM0g5JRKT/ZAdSBIehaTsFucGlQ378XZhqNrniSm+aMH5MkoA1
         WSdI2iZGgZ6OO8zGWXoGUtND56YdBVvr7P9LB5uuPIix6IcvLv8jBZST5tovz3Pa0J8S
         +tuXN1Wy8TMhtthuIVCqZyVtBjHL7jKko6oP0WFAcathtUUXxdLT+2d4o0mQTXP6yI+G
         V0T6Dte7H+zk+tCWYsP5x7hpyKz5EsMRIehlDdkE2Yv85QPvYsyr6Juwpq5xfd8jkvWK
         wUDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680754106;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dE6cxXzdOccukGxMzeGKLxZd5ekq4xiFUcQTZn1Zt5c=;
        b=lbVMO+ionVY2Y+5rKW9aqyEqQKWek/oi2l+pqrn2Ama8T1ElH5hE69yRj7petSNLla
         tRq4AVKJTmjnwVLsNNfuUytEkydEbCr/uET2J/1EId6LpUnxgvKdhFEqxUloLm5xMtZm
         Q5gJNh/RjcTnLK241TtNldmxLMWt9fc4OHqLnBb6ALrXKm6MV2KRfJtub0VHZh3nJCkR
         AinWpk2hQb+TqRuqYsNAcHVV5SNtUHh7b8as+4ISSTWEEUrJTKj5xuB7YHRBftVSnP/3
         JKulfZ5X0ZXSDyL+SpeZCPeqrDnue7pXA/pcJ/ffpgz5UDS5CUvtbiDJlwwOelSpxNbm
         wMvg==
X-Gm-Message-State: AAQBX9dMakYWRkkRcEy/MqPip8xzFLriInE4obqB7wlkt8os5OW3NF2p
        Z7jt5yJwr4I7vkuuzi7oeCnoXDuvbUMXhb/JG9w=
X-Google-Smtp-Source: AKy350aJ8jJ3OD86h4pgxT/vqUKDZm73JsnlZ/8LC0WBUj3Qa0WMnuGy2ZZ+d3TkT5XDsbEuLFrebA==
X-Received: by 2002:a17:902:d489:b0:19a:bbd0:c5cc with SMTP id c9-20020a170902d48900b0019abbd0c5ccmr9856328plg.60.1680754106673;
        Wed, 05 Apr 2023 21:08:26 -0700 (PDT)
Received: from dragon (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id jf17-20020a170903269100b001a4edbabad3sm297895plb.230.2023.04.05.21.08.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Apr 2023 21:08:25 -0700 (PDT)
Date:   Thu, 6 Apr 2023 12:08:20 +0800
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/2] irqchip: irq-qcom-mpm: Support passing a slice of
 SRAM as reg space
Message-ID: <20230406040820.GB111746@dragon>
References: <20230328-topic-msgram_mpm-v2-0-e24a48e57f0d@linaro.org>
 <20230328-topic-msgram_mpm-v2-2-e24a48e57f0d@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230328-topic-msgram_mpm-v2-2-e24a48e57f0d@linaro.org>
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Apr 05, 2023 at 12:48:35PM +0200, Konrad Dybcio wrote:
> The MPM hardware is accessible to us from the ARM CPUs through a shared
> memory region (RPM MSG RAM) that's also concurrently accessed by other
> kinds of cores on the system (like modem, ADSP etc.). Modeling this
> relation in a (somewhat) sane manner in the device tree basically
> requires us to either present the MPM as a child of said memory region
> (which makes little sense, as a mapped memory carveout is not a bus),
> define nodes which bleed their register spaces into one another, or
> passing their slice of the MSG RAM through some kind of a property.
> 
> Go with the third option and add a way to map a region passed through
> the "qcom,rpm-msg-ram" property as our register space.
> 
> The current way of using 'reg' is preserved for ABI reasons.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Acked-by: Shawn Guo <shawn.guo@linaro.org>
