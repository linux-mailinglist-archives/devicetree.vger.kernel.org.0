Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AFD2A5199CC
	for <lists+devicetree@lfdr.de>; Wed,  4 May 2022 10:31:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346348AbiEDIed (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 May 2022 04:34:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60270 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346311AbiEDIeY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 May 2022 04:34:24 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC050167EB
        for <devicetree@vger.kernel.org>; Wed,  4 May 2022 01:30:47 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id a1so881208edt.3
        for <devicetree@vger.kernel.org>; Wed, 04 May 2022 01:30:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=iPeEXxPsMmuH5BIM8Ykp+funBDB9Ycw+ShEzOqZphrU=;
        b=GnrAw0TEvU0tpzme8enuhMy/H48HgVsDSO3weltpBzYcN2vuQ+z/t79AD6MRpUcxHJ
         /kSyvDrigLLu1l53uJfpmPteIH6WmgH92MCi+e0juocIVynJ62byDUdPcokBwJ9HKr5O
         2ZXKc6blHClUuu7s4vZn1Q3Hvga6xRjkGX2xtgNYnbwg39n/qI87nMjV4XArJI5bx68L
         c4s+y5+jiltmAxZ7hCN+IRmxLl8VS1ILgnQhykPDGHIJMSWh83QbEk3AT5Y7IpgQKRiI
         GXtmBG2XZ1X3vIpwKDEZKtcNVHq+6LwlDcJXTnhzeKzf5frTRvJ/niFTLy+w50LU0zBi
         hmwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=iPeEXxPsMmuH5BIM8Ykp+funBDB9Ycw+ShEzOqZphrU=;
        b=h8YHyRM2Nv6Nz7W+OS/wfI1FV9AIhqeaeWFGmTwsEX1vJn2nULEPWmJJFE6iNKx6mh
         RMf1eclUpYthnCJHqnL11X32Jr//eXH2KE4N4kdF/+N6pOBdwb3PuM9Qv+PSOGTtN9vy
         PoudnUiXJHshZWSIMwzH1kTZgNb3m0AKNnBhm5Rm1c5qO5Gdph7PFzAGBlTM8Wq6Yjrw
         K1WR7VLbdaCGZinRhwMTT09uzEpCphv7FxSmuwq/gh0HLsyiAEENSEUeVEP6lUGpVjF9
         QWHvyVf36RxEo5YDq0JUXZz6zBmdpap5GK71CaPM7SG4pJiv09HkXXpaZo0IDwgl1zko
         SRKA==
X-Gm-Message-State: AOAM531cQ5R3+/j/Q34nV6aWcU7Daxr90LbWXsLlpXgPlc8OQ/176DXB
        5CSuCybTZPonOarzSJQ2r3xRww==
X-Google-Smtp-Source: ABdhPJzqm9x0tWUR2vRNRUG1rY0KzrTBJ6zQ4/f3y7Am51Ahlk1ANzfaBKjPOXcoGTgow0R7pSbzZg==
X-Received: by 2002:a05:6402:4256:b0:428:39:c6c7 with SMTP id g22-20020a056402425600b004280039c6c7mr3530396edb.374.1651653047513;
        Wed, 04 May 2022 01:30:47 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id jz15-20020a17090775ef00b006f3ef214e4fsm5377029ejc.181.2022.05.04.01.30.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 May 2022 01:30:47 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
        linux-samsung-soc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Liviu Dudau <liviu.dudau@arm.com>,
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
Subject: Re: (subset) [PATCH v2 6/9] ARM: dts: s5pv210: drop useless 'dma-channels/requests' properties
Date:   Wed,  4 May 2022 10:30:34 +0200
Message-Id: <165165303187.30033.9122414202499504250.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220430121902.59895-7-krzysztof.kozlowski@linaro.org>
References: <20220430121902.59895-1-krzysztof.kozlowski@linaro.org> <20220430121902.59895-7-krzysztof.kozlowski@linaro.org>
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

On Sat, 30 Apr 2022 14:18:59 +0200, Krzysztof Kozlowski wrote:
> The pl330 DMA controller provides number of DMA channels and requests
> through its registers, so duplicating this information (with a chance of
> mistakes) in DTS is pointless.  Additionally the DTS used always wrong
> property names which causes DT schema check failures - the bindings
> documented 'dma-channels' and 'dma-requests' properties without leading
> hash sign.
> 
> [...]

Applied, thanks!

[6/9] ARM: dts: s5pv210: drop useless 'dma-channels/requests' properties
      commit: d0b05d3820fa1b688b192699017f95f8a565523b

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
