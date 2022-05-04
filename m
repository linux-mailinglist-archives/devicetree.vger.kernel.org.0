Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 02E0E5199CD
	for <lists+devicetree@lfdr.de>; Wed,  4 May 2022 10:31:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346337AbiEDIec (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 May 2022 04:34:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346292AbiEDIeZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 May 2022 04:34:25 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A3F92494B
        for <devicetree@vger.kernel.org>; Wed,  4 May 2022 01:30:49 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id l7so1498769ejn.2
        for <devicetree@vger.kernel.org>; Wed, 04 May 2022 01:30:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=L7LS3CTO+y/aLliPfCEtLr2UH4vA3T5jXf37IbE+3f8=;
        b=YdXA+oaBj1pYNLd3toBgP3od+CdYH9zwZTjAfUNsA3xe7CdJ7WM9hdUYGHZ4mdxgCP
         sLghdrsDiOAsUJc+wObLsvA0Ks/DoxpM7i4Q402vJjgriKNqRMnvDfw4Md7/UPmzJPZG
         Rl/+RxFxoKWsXxlsCfwAMQl2n5POTISOzFqrahotltObdvyNF4VMtS+dfrSEguyXydhw
         4QpUM0XPHav4yP8SiomGXqE2xVYnC+3NHCpTLo+EBvI0vCSK+/wzKKfyzsOpwIlOwtmi
         XjfI5VQZGmwXfA2kio4ulKFP6HOK1ZD6nHmje49obrUJHhR4dmNN5Hktc6IJx7CFiyTK
         YgMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=L7LS3CTO+y/aLliPfCEtLr2UH4vA3T5jXf37IbE+3f8=;
        b=W1/IJFEFDRJLgIMJ3rJNjyXQeZ2wRSPii2YAQh+O/OLJQwKXvsSeBwCGHanO2985y0
         1vIa48qBz1dJDLiw3h690qOeGubiuXfl0Jznp1zY7YocOewEZxcPsOF4IItRfI5f8BcA
         OY0I29TJYJswb98pMWnovQAYt6V635yRBVjJ/XGdn+oeOlpNyivXXBM8Mb2PhZhECk6A
         HeawTP5Rd7Jhkc7uSXDhFESK8FEl6oTuU1XfMKwMYCEj9VXjMimqSTdMhieZi7nUJdN2
         KYkFxT8hrSIVRnZjau8iVw23K4w4f+HBlS8n5KCpclMyNShPmbsPpG2oi5q2d2mbuQ9L
         D8kg==
X-Gm-Message-State: AOAM531Eo/ajLuDEX+5Rebe4k+FxJWzMgTzYPz1nL6uU2mVBjZz0wOkZ
        BUFA5XLLbnXudU69mZgqQW/azOpkudZsuQ==
X-Google-Smtp-Source: ABdhPJwxGhgEs+20/YIlsLAvn3XZ5DJ494PHqzI6RNwjNmqHFbrbM5igiNM9oxB0U3AsrzhyuB2nkw==
X-Received: by 2002:a17:907:8a21:b0:6f4:d2e5:4d17 with SMTP id sc33-20020a1709078a2100b006f4d2e54d17mr345553ejc.196.1651653048687;
        Wed, 04 May 2022 01:30:48 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id jz15-20020a17090775ef00b006f3ef214e4fsm5377029ejc.181.2022.05.04.01.30.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 May 2022 01:30:48 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Scott Branden <sbranden@broadcom.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        linux-samsung-soc@vger.kernel.org, Ray Jui <rjui@broadcom.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Liviu Dudau <liviu.dudau@arm.com>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Dinh Nguyen <dinguyen@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Broadcom Kernel Team <bcm-kernel-feedback-list@broadcom.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Michal Simek <michal.simek@xilinx.com>,
        linux-arm-kernel@lists.infradead.org
Cc:     Rob Herring <robh@kernel.org>
Subject: Re: (subset) [PATCH v2 7/9] ARM: dts: exynos: drop useless 'dma-channels/requests' properties
Date:   Wed,  4 May 2022 10:30:35 +0200
Message-Id: <165165303187.30033.108615029823581053.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220430121902.59895-8-krzysztof.kozlowski@linaro.org>
References: <20220430121902.59895-1-krzysztof.kozlowski@linaro.org> <20220430121902.59895-8-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 30 Apr 2022 14:19:00 +0200, Krzysztof Kozlowski wrote:
> The pl330 DMA controller provides number of DMA channels and requests
> through its registers, so duplicating this information (with a chance of
> mistakes) in DTS is pointless.  Additionally the DTS used always wrong
> property names which causes DT schema check failures - the bindings
> documented 'dma-channels' and 'dma-requests' properties without leading
> hash sign.
> 
> [...]

Applied, thanks!

[7/9] ARM: dts: exynos: drop useless 'dma-channels/requests' properties
      commit: d414b7a3f370d640cff544a3aa3a41abf34fd5d6

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
