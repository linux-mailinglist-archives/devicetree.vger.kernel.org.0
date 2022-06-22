Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D0D19554958
	for <lists+devicetree@lfdr.de>; Wed, 22 Jun 2022 14:17:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1357215AbiFVL7A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Jun 2022 07:59:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41040 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353254AbiFVL66 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Jun 2022 07:58:58 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AADBD3C4AF
        for <devicetree@vger.kernel.org>; Wed, 22 Jun 2022 04:58:55 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id cf14so13788529edb.8
        for <devicetree@vger.kernel.org>; Wed, 22 Jun 2022 04:58:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=+hoDgmECCxkmEuLXgBpfFKs4eUitUbbxSUfe43Rhe54=;
        b=C+NroklpGh0nlubI+1ZeSqpfsLNzxb/G87D1tEFno3abaQT9GtucS9KDGd/I33ABE9
         B9rvOtees8v8+IHbiU5niiqIqxJ/XsZI+EN5IuNZjMBKaHMCft6W2iOiWM0JHhBVjKzN
         YHIk1ymllRhQooe5avdb1htIEaJDS4e6o7zQ47bl3mEaNvYOoAGMIFg0TNPOpXj6fNCF
         b4mt/VsMqMCslwz9Iw+OrjyyEba9dG9ZWJQXpQNsaWLsfc3+JShLJV+Y7fZS0sSe5aWN
         M+pU75P2Km9lx5B8DOm5BtfByPt89QbqZfxrnqoRJB3hBOCwQjwEx7W1MMn76MXpoLYP
         6aGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+hoDgmECCxkmEuLXgBpfFKs4eUitUbbxSUfe43Rhe54=;
        b=2KDn3jC2a3z/WGodLQlNEIVFmoCutZJGXYeWsyNC3XLWj+Sq8y+jTImfpzYfM/wqRU
         l+tk8t7mMr8//2fQtBUtBSPjofxvxPk+0hcuVb1CRjVzo/Sa0RVx2g75ug3yjtYPYs2Y
         JBbbKFSWsNFMk+qTw6P84f+dFpVY/rCKYVU7W0zyePHMIdCPRYomuwZDTmxIHmLZMkkJ
         rM22YcQNkv3WJ4QabaQxO+n/ZdChaA7xp4swPbw6Rrneo3aNlC+JhxV8D3MpyAwk09Rz
         WDoVq3/1TLAwuD2AVdsRxAOKazOV4kyT01vqjcb1EprcNZ1hSs+84mlpmKmBZdyl/XjW
         Ak3w==
X-Gm-Message-State: AJIora93FRPdyc6mxwJ6U4QW+M/vs6056AZJTX8oJKYEPjnoEQ3EaElO
        aMEHynbYYK0so3z00pirElwE/4uPnpxeaA==
X-Google-Smtp-Source: AGRyM1sV0n+kFPrHjo7J9mlB5BlTGLwd6/VlnulPgYV6wcLDYSE4OUHrGe0vlIYlpXI7KIin0ABbDw==
X-Received: by 2002:a05:6402:f8d:b0:435:6df2:68a with SMTP id eh13-20020a0564020f8d00b004356df2068amr3762502edb.209.1655899133972;
        Wed, 22 Jun 2022 04:58:53 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id qw21-20020a1709066a1500b0070c4abe4706sm1746212ejc.158.2022.06.22.04.58.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jun 2022 04:58:53 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        krzysztof.kozlowski@linaro.org, linux-kernel@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org, robh+dt@kernel.org,
        pavel@ucw.cz, linux-leds@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, alim.akhtar@samsung.com,
        jacek.anaszewski@gmail.com
Subject: Re: (subset) [PATCH v2 2/3] ARM: dts: exynos: align aat1290 flash LED node with bindings in Galaxy S3
Date:   Wed, 22 Jun 2022 13:58:49 +0200
Message-Id: <165589912782.8422.17803439134103733138.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220620175033.130468-3-krzysztof.kozlowski@linaro.org>
References: <20220620175033.130468-1-krzysztof.kozlowski@linaro.org> <20220620175033.130468-3-krzysztof.kozlowski@linaro.org>
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

On Mon, 20 Jun 2022 19:50:32 +0200, Krzysztof Kozlowski wrote:
> The bindings expect aat1290 flash LED child node to be named "led".
> 
> 

Applied, thanks!

[2/3] ARM: dts: exynos: align aat1290 flash LED node with bindings in Galaxy S3
      https://git.kernel.org/krzk/linux/c/efbf2c262c89f78f99fd781c77b7305fac23c3c7

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
