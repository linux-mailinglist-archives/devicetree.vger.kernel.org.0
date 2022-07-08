Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4320856C28E
	for <lists+devicetree@lfdr.de>; Sat,  9 Jul 2022 01:13:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237062AbiGHWTJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Jul 2022 18:19:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232561AbiGHWTI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Jul 2022 18:19:08 -0400
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com [IPv6:2607:f8b0:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64659A2E5B
        for <devicetree@vger.kernel.org>; Fri,  8 Jul 2022 15:19:07 -0700 (PDT)
Received: by mail-ot1-x32b.google.com with SMTP id q18-20020a9d7c92000000b00616b27cda7cso133522otn.9
        for <devicetree@vger.kernel.org>; Fri, 08 Jul 2022 15:19:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=z9Ki8kH0MaYR9B1B1eMqo83Dvn85AY+LXjVhqfA7f38=;
        b=ppPb4iwjhfCxSN2JWaotYlMM/YX2VYZjwuZc0J32CxvKPZ+JXtj9b7dD0r63W/lOEf
         v5o6TtM0p98iXy0EIn5pAWeXj1K1WK4IssePEqm6UKgQ4z49BYvqHksZODT+f/7JPjtu
         r9llW19+QcCouSM9Hoqi6tPNGNB6mUxyI2EQC1LFBxvhPrE0BuMfEwiiYrkWj7emTJoH
         pU5e6Lv3tu/2tEL3O0fdtr2PrVYcvfhPBZfJBj9jXLkpYYjbp6Pn356G8Btj6pChEPS3
         VZKAs4wWNPSKxo44bioACn8inEgOWxQBlf0f+dVvRt1est5BVkcSKpxakSAoHWg7HKOh
         AimA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=z9Ki8kH0MaYR9B1B1eMqo83Dvn85AY+LXjVhqfA7f38=;
        b=I3hvX9pPh3clLkpFN/7XOwr5GSV7xriWIdfy+7Lco7ZIrjuTR4GruadWtFHzp7eDen
         Uw5oabD8gi7jooo46U58iaO9ldGSo69gvVFaXJljTg6el6mxxb9YbxNhXwnWn51c21zK
         gSYliG6WxzdsNO4L8YVQ2PnwPnQEsrDvLf5WsIJtL/4/nD0OPZJF0nETFTIi9BcPoifX
         BHlgC1fGcCXZLbqAuT0pN3qIWGtuNr2XqHBL1sUBaFK5jtulV4D1CJOhyqyDNPtWSDsS
         0YxAVS3l+cZ3YB8nAxYzQ3XpyaL5Oa7b9c17s17zNigvr5/P5Yqw9eUuJc+GYROlhYpV
         GM+g==
X-Gm-Message-State: AJIora8u1G38+eHEzqzQGnfqTPIOS5pFjxVBc+MBTzoiyL/1mF8lROHn
        vnx3Vi7EuTWr8D9AnvQoGKHPyg==
X-Google-Smtp-Source: AGRyM1t1/ItNQs24IPO08P8hmqBmPlF4m4Zyt/BXKl/SABvTzA4DKCiwaciFdavT7sFFme8fr/F6dA==
X-Received: by 2002:a05:6830:40c5:b0:60b:39c0:750b with SMTP id h5-20020a05683040c500b0060b39c0750bmr2500196otu.97.1657318746789;
        Fri, 08 Jul 2022 15:19:06 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id y10-20020a9d518a000000b00616a2aa298asm48907otg.75.2022.07.08.15.19.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Jul 2022 15:19:06 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Johan Hovold <johan+linaro@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>, linux-kernel@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH] arm64: dts: qcom: sc8280xp: fix DP PHY node unit addresses
Date:   Fri,  8 Jul 2022 17:19:02 -0500
Message-Id: <165731872888.1018153.17061250329124504141.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220708072556.4687-1-johan+linaro@kernel.org>
References: <20220708072556.4687-1-johan+linaro@kernel.org>
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

On Fri, 8 Jul 2022 09:25:56 +0200, Johan Hovold wrote:
> Fix up the DP PHY node which had the wrong unit address.
> 
> 

Applied, thanks!

[1/1] arm64: dts: qcom: sc8280xp: fix DP PHY node unit addresses
      commit: abf61f7e66c15e00f40ca7e10367f4149639bc57

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
