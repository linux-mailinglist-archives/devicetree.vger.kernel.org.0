Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4099B5199C5
	for <lists+devicetree@lfdr.de>; Wed,  4 May 2022 10:31:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346302AbiEDIeW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 May 2022 04:34:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60168 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346292AbiEDIeV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 May 2022 04:34:21 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4CB4815FEF
        for <devicetree@vger.kernel.org>; Wed,  4 May 2022 01:30:45 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id b24so854792edu.10
        for <devicetree@vger.kernel.org>; Wed, 04 May 2022 01:30:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=auEeftEHQSwPy7eGdwn5Xk85e3UKiUyX7y7kZHtUjr4=;
        b=U8CMHSVak2dXCFzpQBP/0JLPfyPcuAvSA1X3iV0lGYBFTVQ2JbCSu8Hza9bogoCYto
         FB2TReYLqd+5eTu+PFejmUoSP9s/UFVCcbk699yjKle8YLdoqk1au/uc4/PJVxoCRdf7
         SGS83eVoOemNcZANTmftiNXuI9EbsPYe54wlLFuTOo9O43cFQ9QQtkvAqtpk+nWtOt+i
         GZtiKs+1CN+Ko1ATfvUUVYUpuimtDt58tANyTNvn7t6haAEGz/sQVDFI5p0vUqqF/C34
         c3UD4SUPJPyr7/xMMuD7s6LJbMTiqaeOl60Z1D+Q2MhczZFmGpRmzuoM2wMS9Mh/gQqW
         2iag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=auEeftEHQSwPy7eGdwn5Xk85e3UKiUyX7y7kZHtUjr4=;
        b=ZJ0lxZVzcRa2rPoMwXlEj/5jGZloQIdCjq1d78fkoCVYS6tH0BKMQETzFz9gRJ831+
         yEFORuAVPzIO1AY3E6Su6/0uBFM4POhbKU6AD4tXrI+C8zVkVF5Fi4IwkvDgMkDWMBNk
         NDhWODXMJ6R6GeoaXVZAByJg9y1Q8GZvfUsxQpwsfiAFvlW94BGV9HfZE0aMxX7b6djM
         nBkg66evuqYSGjuTJfLhJ7aEV+3yVJdVNdOxKv4t5EtBsvoiQI+1sib5pbRnKKcilFu1
         EJKyWmHudrMfJdcfWOZmkNRN6XXFVk26NoXv7Y22PEzLBQkdFrzPbASsTU57kQvq9vSX
         I2ag==
X-Gm-Message-State: AOAM532He7JHD6AL8kuR7LN7I5R1oV5RAOBsWlRgYBUk9h/py7h5Blsy
        wlCdQLs78f2wFaCzwPx3WS7v4A==
X-Google-Smtp-Source: ABdhPJzavVgMPFF3LvvI4Kyh2I0OhYvRz1waU3e9UdYcLZPETh2JgD6/fJsBBVhGMhA5RIk7AMgFCw==
X-Received: by 2002:a05:6402:c98:b0:425:d806:7e9d with SMTP id cm24-20020a0564020c9800b00425d8067e9dmr22034519edb.337.1651653043880;
        Wed, 04 May 2022 01:30:43 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id jz15-20020a17090775ef00b006f3ef214e4fsm5377029ejc.181.2022.05.04.01.30.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 May 2022 01:30:43 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
        linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Liviu Dudau <liviu.dudau@arm.com>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Dinh Nguyen <dinguyen@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Broadcom Kernel Team <bcm-kernel-feedback-list@broadcom.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Michal Simek <michal.simek@xilinx.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc:     Rob Herring <robh@kernel.org>
Subject: Re: (subset) [PATCH v2 2/9] ARM: dts: socfpga: drop useless 'dma-channels/requests' properties
Date:   Wed,  4 May 2022 10:30:31 +0200
Message-Id: <165165303187.30033.13385606512590831084.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220430121902.59895-3-krzysztof.kozlowski@linaro.org>
References: <20220430121902.59895-1-krzysztof.kozlowski@linaro.org> <20220430121902.59895-3-krzysztof.kozlowski@linaro.org>
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

On Sat, 30 Apr 2022 14:18:55 +0200, Krzysztof Kozlowski wrote:
> The pl330 DMA controller provides number of DMA channels and requests
> through its registers, so duplicating this information (with a chance of
> mistakes) in DTS is pointless.  Additionally the DTS used always wrong
> property names which causes DT schema check failures - the bindings
> documented 'dma-channels' and 'dma-requests' properties without leading
> hash sign.
> 
> [...]

Applied, thanks!

[2/9] ARM: dts: socfpga: drop useless 'dma-channels/requests' properties
      commit: 361736cf495ccc49df5ae66d0f9f10a55976d2da

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
