Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 131DD56982F
	for <lists+devicetree@lfdr.de>; Thu,  7 Jul 2022 04:33:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234912AbiGGCcA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jul 2022 22:32:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234914AbiGGCbn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jul 2022 22:31:43 -0400
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com [IPv6:2607:f8b0:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37F4A2F642
        for <devicetree@vger.kernel.org>; Wed,  6 Jul 2022 19:31:39 -0700 (PDT)
Received: by mail-oi1-x22e.google.com with SMTP id w83so21985981oiw.1
        for <devicetree@vger.kernel.org>; Wed, 06 Jul 2022 19:31:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=1ch/3x2mGssm8qBEpggkAFFiBWCJh9rWPZpVFB+JcTU=;
        b=vRJyAYL0VzceK0mW/2KKFNzbEbpWd/O5CdknxxDR+koJ42kwAdu8uK6uUSNk0RtczI
         vI00ieUmNlrZXPjIYS0E6Lv0A0JggxlqwFPaRP9Z3EojQhWuFKhcU9cO31dth9ZaXfAV
         e2Mj3rzD2SRZt04IHEMQQ9VB8DlhiVEWkzeivjICGx4Tq92mDWauW+Z60F2L13mIgBf5
         fCZhhdrI7yqfzI4/ve9NkqlkVPmd5XV6o5PHNH70PcHGChvogBwZJpTejB8ZJEPvIDRY
         iMtV4qJEV2pjhAYHamFOToWKSl1qKI95YdWtFrwVkq9kRLJhpTKrhkGP+XRSqmgmJ+Fz
         uF+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1ch/3x2mGssm8qBEpggkAFFiBWCJh9rWPZpVFB+JcTU=;
        b=790QBogNF26jHqruNmSFyY8VKqSX2MpitSlUewxzexrqsbY1+piEVzlmwWrOOrfk2C
         1PB21ZgQqUstRGYiReR30iYz5g84pPvo1hMmZmpalsX+EaXej3O3Rr2Ozc+7QK2i5ljL
         /aw2llk+ua2YR3AratzctDefBgkaluN/tjWpdYamyiCG3WdFKHC49iRD+GNno3Li7EyE
         Qq/p7PUO8ajzZtRIB3tCPKgZoKbGilIfa2wkhtv5hQSFs96xmuxuNr4nxEHvttJTEkus
         CykuXRFUg+KlAJBlA797EVfhR46BMqq5Awa9hLK4DAHkzyn84xQXKfhVBhrq3IlFElYm
         /WDQ==
X-Gm-Message-State: AJIora+5ut3m6OjrvQUZmigxL154XW7b+rXtEWpX2qRXVobQFE1gVXxw
        olyFb4ELCcZnyvESGjDmzWDoSg==
X-Google-Smtp-Source: AGRyM1uHq9ZHuymbi/mIRAGAFY8gONPHVHl0zZUZjWFV6tqb5bWY5UZFoNFjqtdtsMVJnMl7tnlD4A==
X-Received: by 2002:a05:6808:1719:b0:335:216e:dc01 with SMTP id bc25-20020a056808171900b00335216edc01mr1104566oib.275.1657161098927;
        Wed, 06 Jul 2022 19:31:38 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id x48-20020a056830247000b006168c71ca4asm17024469otr.56.2022.07.06.19.31.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Jul 2022 19:31:38 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     vkoul@kernel.org, robh+dt@kernel.org, sean@poorly.run,
        agross@kernel.org, dianders@chromium.org,
        devicetree@vger.kernel.org, Kuogee Hsieh <quic_khsieh@quicinc.com>,
        robdclark@gmail.com, swboyd@chromium.org
Cc:     linux-arm-msm@vger.kernel.org, quic_aravindh@quicinc.com,
        freedreno@lists.freedesktop.org, quic_mkrishn@quicinc.com,
        quic_abhinavk@quicinc.com, quic_kalyant@quicinc.coml,
        quic_sbillaka@quicinc.com, linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH] arm64: dta: qcom: sc7180: delete vdda-1p2 and vdda-0p9 from mdss_dp
Date:   Wed,  6 Jul 2022 21:31:16 -0500
Message-Id: <165716107315.864223.1202817730153711160.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <1656690436-15221-1-git-send-email-quic_khsieh@quicinc.com>
References: <1656690436-15221-1-git-send-email-quic_khsieh@quicinc.com>
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

On Fri, 1 Jul 2022 08:47:16 -0700, Kuogee Hsieh wrote:
> Both vdda-1p2-supply and vdda-0p9-supply regulators are controlled
> by dp combo phy. Therefore remove them from dp controller.
> 
> 

Applied, thanks!

[1/1] arm64: dta: qcom: sc7180: delete vdda-1p2 and vdda-0p9 from mdss_dp
      commit: 154fd146a446c0fffa81d72c78611b0ce26b2718

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
