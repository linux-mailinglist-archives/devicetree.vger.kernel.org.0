Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6A8AF564452
	for <lists+devicetree@lfdr.de>; Sun,  3 Jul 2022 06:19:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232502AbiGCD6a (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 2 Jul 2022 23:58:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232280AbiGCD5v (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 2 Jul 2022 23:57:51 -0400
Received: from mail-oa1-x34.google.com (mail-oa1-x34.google.com [IPv6:2001:4860:4864:20::34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F084B870
        for <devicetree@vger.kernel.org>; Sat,  2 Jul 2022 20:57:25 -0700 (PDT)
Received: by mail-oa1-x34.google.com with SMTP id 586e51a60fabf-10bd4812c29so3083673fac.11
        for <devicetree@vger.kernel.org>; Sat, 02 Jul 2022 20:57:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=fRrAH5FbGVVVPRiNli2eYxnwW30yYFc3/wUVo0b+rWg=;
        b=FRfA0vtwFDJJ/Th7dWyehPbxeXCrpA9cjuOsy7+x3iU5TsfUvAP0tyETau4RWdDg9+
         el1NBeC03EJsfh65ZW3hkiHEm4OorH8k8o6nsZyy3k5ei6JDQuloZnR8hguMhhuJTLQJ
         niIJ+F3YDo3KNOT4n29pZ8b+va4hSfKI7fbpOGz6PWh641oHbmu8i4Hsm8pr5dh96NX/
         6gp4nRujD+eHDNaaQ1gU5wV+Yo8nuiToy6A8WyCJcnKUJeQ9H6Tb60scZ+mOqoMod+AX
         DyBf13VwPA/6ZjzWtWY0gSfShqDaNv9eOArUnS/ETf8uV1jaGp13sDBGFMSvThNOkfQz
         mlyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fRrAH5FbGVVVPRiNli2eYxnwW30yYFc3/wUVo0b+rWg=;
        b=vw0a/adpKzXgNvzSNM6hlTw9669w2VxmFU+DbdbMYDrWMN0L3V/k21n0w76Bj2Vtsn
         uh+/AowvR7yt6knWG33KTzsONyarVuMpSGC3/qoNyZg3+lwoglTOoJ8tkuI90vigfAH7
         hoQHJAj3McQ0ab4W6SttcR+EGLpf2NHLYAwu7sXPo2fthTpVuHd9qU8JtekhP0RE2l6v
         LWYjgPdKHfHKdHGclGY8vklTzHhyifmJrSzEyjhzOFvOJ+ecjfhZOhHw9LxyiLIhl48B
         kWiBNx2Ym4c6nm9qudwoN4vtNSz8hboxWwAU30JN/Lsui7MjUFrlJLQX+N2ncL46ILjm
         hL0g==
X-Gm-Message-State: AJIora+GSx4BDFn3pNoynOy8ICiTSl0SfuwtOsjeM76N01ayMDOoPtXj
        MCzjqOiuxkAguFklZkx133R6tg==
X-Google-Smtp-Source: AGRyM1s6+Yo1k+45B+I62qVKADmg8Z2bEofJN5NOymrxFC4Ek7h0D1qeJkDCEryRLqXl+uTb37sy+A==
X-Received: by 2002:a05:6870:1c8:b0:102:c96:9aad with SMTP id n8-20020a05687001c800b001020c969aadmr14047689oad.202.1656820645221;
        Sat, 02 Jul 2022 20:57:25 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id 25-20020aca0f19000000b0032e5d0b5d5fsm12965910oip.58.2022.07.02.20.57.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Jul 2022 20:57:24 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: Re: (subset) [PATCH 1/6] dt-bindings: nvmem: qfprom: add IPQ8064 and SDM630 compatibles
Date:   Sat,  2 Jul 2022 22:56:21 -0500
Message-Id: <165682055968.445910.7135061145736044746.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220505113802.243301-1-krzysztof.kozlowski@linaro.org>
References: <20220505113802.243301-1-krzysztof.kozlowski@linaro.org>
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

On Thu, 5 May 2022 13:37:57 +0200, Krzysztof Kozlowski wrote:
> Document compatibles for QFPROM used on IPQ8064 and SDM630.  They are
> compatible with generic QFPROM fallback.
> 
> 

Applied, thanks!

[5/6] arm64: dts: qcom: use dedicated QFPROM compatibles
      commit: b2eab35be13d4537eb9f0e23846f2ab400bf63dd
[6/6] arm64: dts: qcom: sdm630: correct QFPROM byte offsets
      commit: 74b0fbd6048f8f4caaed712ceeca52c6034e9ad6

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
