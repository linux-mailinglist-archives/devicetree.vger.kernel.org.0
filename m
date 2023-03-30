Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 260256CF8D9
	for <lists+devicetree@lfdr.de>; Thu, 30 Mar 2023 03:50:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229834AbjC3BuV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Mar 2023 21:50:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34396 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229816AbjC3BuU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Mar 2023 21:50:20 -0400
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com [IPv6:2607:f8b0:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2CA714EFE
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 18:50:19 -0700 (PDT)
Received: by mail-pl1-x62c.google.com with SMTP id kc4so16691031plb.10
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 18:50:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680141018;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=FfJuXAZwwMt2q3i7x/R+WrAISquLwqszrcGXTUw+Vps=;
        b=SoHH4pd3Bc7J8Rv0eluoB8kn+Qs9EFEc7n8L/SaBs92gA9/+iBJzRqgLPSCZyokbld
         PWvDkGdFK2wF0XjgWZvZe5oSKmRc8WTV9Jh/fEPNJavQDXIWGBTL1FHNclq3iV5rqe4b
         W5fgIPlA1MqCh1eZGQPpkMR3d5Vpab3t6UNHeeQvmXSirxNQbG8WeerdiEyKVNhoJ8hb
         q6cFqD7W17yeTMFehAwoHY97xIoikLJ4ocxmcilGFgGAzmWn9LFLyFiLpxZydSyL0y9z
         XwIAjNQAJTtD6EwQn3z0vgtRbVdUe/9eKxf7yZ9e76DuZTdZtSYTFAFGtWe7zh5tKOgf
         +JSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680141018;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FfJuXAZwwMt2q3i7x/R+WrAISquLwqszrcGXTUw+Vps=;
        b=ckZ2YSKYgtmdbFjsYO3tsVTgJJWcwUPWl84V3rfkQErrwuuDUhp4oPzgbAElA0ECCa
         vvodGIzWfD+OiToFQk4HykYqTx13XzWjZo/r6Kg2gGNYgDer+ZzpfhCoOc3dE5/fM0Ab
         3gCiXPLAGGB/T0YoE/ksyvovXEVqt2Sy6PhKBnHB9X3wYYHh04JbGHYGSg5dXAOf9/zm
         UQN7j2dS7RYD87ijlfRaKgXO9vYhCo/vye2e8Vqne/KdUYt3QiejndDWCqEEls5dvB5A
         w60qwshbXn1t+t1M2No0wsMpFn7kWBMo4r/a/RH8Y5NDOxXgrYlpao8EKmQK/tNQ7Ta6
         4XLw==
X-Gm-Message-State: AO0yUKVHPlJlaa44XtzdHzC/q/B209ITzdJct2Tinh1/zzy0+Sw5Wc3x
        bf1tu1gnkluko2HUAsxh46cEbA==
X-Google-Smtp-Source: AK7set/mYZvEMF6zOOWb+taaijHH50+bz+y3pAQiS004LoNFAdTHzOkAmbYZlfiMkFZkCb8A24CDrQ==
X-Received: by 2002:a05:6a20:4faa:b0:cc:eb3b:56e9 with SMTP id gh42-20020a056a204faa00b000cceb3b56e9mr17240657pzb.1.1680141018648;
        Wed, 29 Mar 2023 18:50:18 -0700 (PDT)
Received: from dragon (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id b11-20020aa7870b000000b005ac419804d5sm15070347pfo.98.2023.03.29.18.50.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Mar 2023 18:50:17 -0700 (PDT)
Date:   Thu, 30 Mar 2023 09:50:12 +0800
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
Subject: Re: [PATCH 2/2] irqchip: irq-qcom-mpm: Support passing a slice of
 SRAM as reg space
Message-ID: <20230330015012.GC3590215@dragon>
References: <20230328-topic-msgram_mpm-v1-0-1b788a5f5a33@linaro.org>
 <20230328-topic-msgram_mpm-v1-2-1b788a5f5a33@linaro.org>
 <20230329034958.GC3554086@dragon>
 <c42b8c24-2159-64ae-d36c-92c69274f24f@linaro.org>
 <20230329132819.GA3590215@dragon>
 <14350eba-edb6-0243-5451-2e2b7d1bd3fd@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <14350eba-edb6-0243-5451-2e2b7d1bd3fd@linaro.org>
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Mar 29, 2023 at 03:30:12PM +0200, Konrad Dybcio wrote:
> > Otherwise, I do not understand why devm_ioremap_resource() cannot be
> > used.
> drivers/rpmsg/qcom_glink_rpm.c calls devm_ioremap on the entire
> RPM MSG RAM.

qcom_glink_rpm driver remaps the entire RPM MSG RAM, but it doesn't seem
to request any region.  So MPM can still call devm_ioremap_resource() on
its slice, no?

Shawn
