Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B4066554708
	for <lists+devicetree@lfdr.de>; Wed, 22 Jun 2022 14:11:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239079AbiFVKOt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Jun 2022 06:14:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233054AbiFVKOs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Jun 2022 06:14:48 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 965FD3A5FD
        for <devicetree@vger.kernel.org>; Wed, 22 Jun 2022 03:14:47 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id j5-20020a05600c1c0500b0039c5dbbfa48so10768277wms.5
        for <devicetree@vger.kernel.org>; Wed, 22 Jun 2022 03:14:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZGMHT1uhjCKvxJm1ObjOuYivPXVQOnihHYXcGYcwvas=;
        b=nKEBuDo2khsFXyhhiCOkz3xLQFq3fpyOaakLCcIfD0KQAYYeMqHG16/xfV/Jh5RvAh
         M8m4z3dO2KOg2upsEK1hxI3CvHEsyBaeFn/Svcx/sepUahoZyVs9lMsnFu0REWnTl+kd
         bMXxgXxU4oyqzJNctDhaCrhitdpZhCJHSmHqFNPFxjnhQz9SurO5mUjZtf9xatk5TSBA
         ojl6+imXM7cXFJd8DipOpp1sfoofm2Itv9+eD3alkAbv/4rA2ihQD5QyhX694kNJIMP3
         XM7D0ku5dxdl+h+JBX3bxtI4y9S2gNR5SUX4EDLy99hrnxo665PzGWJHzq0Ba6+wKyOY
         kbtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZGMHT1uhjCKvxJm1ObjOuYivPXVQOnihHYXcGYcwvas=;
        b=5ZSk01XQ8Sxop59BwYa71ESR3ysGTXaFElXZJeHgwQ5eChl9QmeEZni7PlKfW68tEt
         VIQZypvBaddm0XRSJaF+bA0Y47OMoIVZH+t+Pj2Z7IOoe6vcEHqznoTUVdC3hKSA7Shl
         cBIlEuI4WeXiDM1yUkd9NbnFySKnhJz2PToI9tbwobxmJjXvbtuDQhBPT8MWvmN32rbR
         XT6VB3RUvd3Qn7WsbuFb9HY2Qr2RUmCPymfetQQyrcpGz4pX2LHSZtSLSku4DmthXdEd
         IO0KPne7XVKnksYw5TW1/0DEDIkA7guXgN/YQnnh1cueNWeAOC41b1HBUoXoiBW8YujR
         1DiQ==
X-Gm-Message-State: AJIora+lHGzvWnXO1Hy1gUKsBiQH5Bat/1BZ0vI2fsTjXcrkp3Ubtj/Y
        nzFr827zKoIiR1bW0jFroNdl5g==
X-Google-Smtp-Source: AGRyM1v007oGF6GyrHQNq0+BOyS4cdvxLvwNXS3/IfxgfWnvBjzy2ucrJT/HKxalC4BaUp9+fdNlSw==
X-Received: by 2002:a7b:cb88:0:b0:39d:16a7:dac7 with SMTP id m8-20020a7bcb88000000b0039d16a7dac7mr3060353wmi.128.1655892886072;
        Wed, 22 Jun 2022 03:14:46 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id w5-20020a05600018c500b00210320d9fbfsm22184549wrq.18.2022.06.22.03.14.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jun 2022 03:14:45 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     David_Wang6097@jabil.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        edward_chen@jabil.com, ben_pai@jabil.com
Subject: Re: (subset) [PATCH v5 3/3] dt-bindings: arm: aspeed: document board compatibles
Date:   Wed, 22 Jun 2022 12:14:43 +0200
Message-Id: <165589284658.28441.5142469500178504592.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220531011100.882643-2-David_Wang6097@jabil.com>
References: <20220531011100.882643-1-David_Wang6097@jabil.com> <20220531011100.882643-2-David_Wang6097@jabil.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 31 May 2022 09:10:59 +0800, David Wang wrote:
> Document jabil board compatible.
> 
> 

Applied, thanks with fixing up the white space.

Please be sure git format-patch and checkpatch do not complain on your patches.

[3/3] dt-bindings: arm: aspeed: document board compatibles
      https://git.kernel.org/krzk/linux-dt/c/ae8980247d5af8528145713e07f1338abc57a00d

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
