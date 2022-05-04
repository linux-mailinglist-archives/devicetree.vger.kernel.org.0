Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1D76D51AC13
	for <lists+devicetree@lfdr.de>; Wed,  4 May 2022 20:02:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1376404AbiEDSGQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 May 2022 14:06:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47662 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1359540AbiEDSGL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 May 2022 14:06:11 -0400
Received: from mail-oa1-x2b.google.com (mail-oa1-x2b.google.com [IPv6:2001:4860:4864:20::2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4BBB150075
        for <devicetree@vger.kernel.org>; Wed,  4 May 2022 10:21:27 -0700 (PDT)
Received: by mail-oa1-x2b.google.com with SMTP id 586e51a60fabf-d6e29fb3d7so1842180fac.7
        for <devicetree@vger.kernel.org>; Wed, 04 May 2022 10:21:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=tlkw9w1COBFGlrfEOEmUj1EqnjghHZ07vJ79BtjifOo=;
        b=m+YUKyfod23OXFRBpqCg4+1iapObamekGkHiEzVU7Lul/qnTAvu7zDVFU3xa801Dc2
         ocJltiKLrpYKnM78r2NZvtsvk0BeOdLmgPk7PJLkIMVQVFMgYHeDMBUoHl8W2ex7gxP4
         pYcGNoJgdGp8ogLIdB+RBnD6oqjAQWT5q9we6gVdjSjT6f7VNR+ZCzGlt1IdPPqw9boD
         FIMf8jSQMIwwvdKBBusZGXTTm40jCnYKeE+FT9nEMctTYkw8EwDjiHfaHzUd5fNudZwK
         6IRIlSmNHgtDCCvA0Z2jHz9IZfI7BW4NWlI+VNz1tnhVXda5n2U0qFXW8Pdm1HGetY7G
         RWnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=tlkw9w1COBFGlrfEOEmUj1EqnjghHZ07vJ79BtjifOo=;
        b=CNpHhBLroDr+PRm9pFtKfbmQ4EopLExpwpn1sbhKbl5DnW+fL1vUIVL22kb3mKmFgp
         uC5K/xXT+fn5oP1BK/h1cwGtzQE20ZA/d/aC/nTOuN9eWPxcz7TBnK9AfX7/qmo4kyd9
         v3BDXcMCT6IqsDXSthKDOVY9w9+H/+W5fRK9axNH47c0XjX0hScqBr8MBSAYoExPVBkj
         vuKdl84bE3o9f8GI4A/gBgTt5Ub4p4prU5+QuhUx7bjFhYr1582AM3rigH68bLjkB0Uy
         PDFSjkD2n88p0QdTyox66hGzN/G/S39jRI9vb9Oa99NLTjOTDoeHf14rZyWUfcUhuZCO
         WZnw==
X-Gm-Message-State: AOAM532hJd6Ik4XUEwHlftm7r1JZ3LUfwRY2m5wnX+WbNcObj8xgRMq0
        PSnWvdYPCGmXyFf7dTzhHIsnKw==
X-Google-Smtp-Source: ABdhPJynAOZr1shQZ1UOcpvXwTWpxit4tHD2dse/1+L32+bYnRcaMWIrrO38klBRBghqjWxW+5whVA==
X-Received: by 2002:a05:6870:a2cd:b0:ed:754:a2c6 with SMTP id w13-20020a056870a2cd00b000ed0754a2c6mr247783oak.270.1651684886531;
        Wed, 04 May 2022 10:21:26 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id a7-20020a056870b14700b000ead8b89484sm5785452oal.5.2022.05.04.10.21.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 May 2022 10:21:26 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Luca Weiss <luca@z3ntu.xyz>, linux-arm-msm@vger.kernel.org
Cc:     devicetree@vger.kernel.org, phone-devel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Andy Gross <agross@kernel.org>,
        Olof Johansson <olof@lixom.net>, soc@kernel.org,
        Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH 1/3] ARM: dts: msm8974-FP2: We're msm8974pro
Date:   Wed,  4 May 2022 12:21:11 -0500
Message-Id: <165168485226.3730817.5587724254002689421.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220421211936.345168-1-luca@z3ntu.xyz>
References: <20220421211936.345168-1-luca@z3ntu.xyz>
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

On Thu, 21 Apr 2022 23:19:33 +0200, Luca Weiss wrote:
> Fairphone 2 always uses Snapdragon 801, a.k.a msm8974pro so change the
> include and filename to that.
> 
> 

Applied, thanks!

[1/3] ARM: dts: msm8974-FP2: We're msm8974pro
      commit: 3237f21824165b41ef0bbdd3f784579c931b2a21
[2/3] ARM: dts: msm8974-FP2: Add mmc* aliases
      commit: 9c5537723429b82561087f8eb8179d065355443c
[3/3] ARM: dts: qcom: msm8974: Add missing license headers
      commit: 3912e74c576a56920cde1d5591125cdd5560caae

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
