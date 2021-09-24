Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BAE4C4169F9
	for <lists+devicetree@lfdr.de>; Fri, 24 Sep 2021 04:23:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243873AbhIXCYl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Sep 2021 22:24:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42306 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243863AbhIXCYk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Sep 2021 22:24:40 -0400
Received: from mail-oo1-xc2b.google.com (mail-oo1-xc2b.google.com [IPv6:2607:f8b0:4864:20::c2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A414C061756
        for <devicetree@vger.kernel.org>; Thu, 23 Sep 2021 19:23:08 -0700 (PDT)
Received: by mail-oo1-xc2b.google.com with SMTP id j11-20020a4a92cb000000b002902ae8cb10so2807897ooh.7
        for <devicetree@vger.kernel.org>; Thu, 23 Sep 2021 19:23:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=LAYAkbkNZo1Peyg1Lw8w9S8AW36p1FDE1eK2XpmXUvU=;
        b=s7LUn20R6YALzq4CYG9t/YFw6TtC6VEyOMQxS9UUw0QVUXmNHz593CGkeMy61E+IAo
         Vy+mR9N5tQDWHGD234kDWHp4D49AVaPKQ230WO+0EWpK4W0EK8fYP3XUoRY8B+uI91jK
         HD8v4orUdZpnRNtTimlK7c+/xAb+R0FAhPtydwsatPcoaVoaxoayFhEiNz1rxc6hgzRE
         gMI5uibBWxXUkGwCiMQlk9US7KaEI8+trYtp29obJtXgkvQt2t2L5c9NkWytMexVoAf5
         6TB/2nMwr0JUp5M5TKujPA8823YW3eJjcoYPKhbJMw29+/+4h081NBhLdnFSkZinHfIA
         VMVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=LAYAkbkNZo1Peyg1Lw8w9S8AW36p1FDE1eK2XpmXUvU=;
        b=BN1qZKP4lA22+zjhStC4NwO3xG5kyfXHQbd9Iz/h0kOvzTv5Pt84eO4pAgMSaRQKLs
         BTtKZ1x36ye2SoMf3jUkw78Bt81eO9hx4ujhY232YwiOZYukrqmu3iAVzG1L4P481Z+6
         VNvTAwL/6B5cR62JIWOYyO7TPk5kadGn1ofwzIwDZFirQHsulMvff3S/SKdiXa7XsjZp
         08dTtU64+rjaX3U8cO0Po2n3VwOWCwAUqzMjXG3WtHGzUXA5SkoNfrK3zN4AompFz2zg
         Njw+iciK4bBQu3qctyIwzNQsTHtGpApYxCs7YF5QfzchZc7b1tkWskanPwL9LyQCBMpB
         5p8A==
X-Gm-Message-State: AOAM532oTwHMIY15q3NJHIXMVZL3Wpk56v4pVjd80s5BnowOm8RHwKA/
        7joSZ14todk45lEUQBuUoZ7Jbg==
X-Google-Smtp-Source: ABdhPJxGSV4VuO/mPzJ62qLVHmogryzSw/Pa1LYra4xGr0X2iPBv2REt9nXbPy4EP+xFv8xRfRNUKA==
X-Received: by 2002:a4a:6412:: with SMTP id o18mr6564774ooc.79.1632450187659;
        Thu, 23 Sep 2021 19:23:07 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id r19sm1813147otg.37.2021.09.23.19.23.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Sep 2021 19:23:07 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     devicetree@vger.kernel.org, martin.botka@somainline.org,
        robh+dt@kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: (subset) [PATCH] arm64: dts: sm6125: Remove leading zeroes
Date:   Thu, 23 Sep 2021 21:23:06 -0500
Message-Id: <163245012732.850743.3717197322767814061.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210922195208.1734936-1-festevam@gmail.com>
References: <20210922195208.1734936-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 22 Sep 2021 16:52:08 -0300, Fabio Estevam wrote:
> dtc complains about the leading zeroes:
> 
> arch/arm64/boot/dts/qcom/sm6125.dtsi:497.19-503.6: Warning (unit_address_format): /soc/timer@f120000/frame@0f121000: unit name should not have leading 0s
> arch/arm64/boot/dts/qcom/sm6125.dtsi:505.19-510.6: Warning (unit_address_format): /soc/timer@f120000/frame@0f123000: unit name should not have leading 0s
> arch/arm64/boot/dts/qcom/sm6125.dtsi:512.19-517.6: Warning (unit_address_format): /soc/timer@f120000/frame@0f124000: unit name should not have leading 0
> 
> Remove them.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: sm6125: Remove leading zeroes
      commit: 2e7586bab95f5d284867c35ca46c0f0c19ccbf7f

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
