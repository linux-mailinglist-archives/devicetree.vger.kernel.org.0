Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 104E3729287
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 10:17:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240131AbjFIIRb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jun 2023 04:17:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51624 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240164AbjFIIRa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jun 2023 04:17:30 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E59C26B2
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 01:16:56 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-3f7fcdc7f7fso9445205e9.0
        for <devicetree@vger.kernel.org>; Fri, 09 Jun 2023 01:16:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686298611; x=1688890611;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lYuIhDGuCC9opvLWfytZKMbJoZ2C+T9RI7zl7IlZO1c=;
        b=L9Xw798jWqySjeSyCuN5WLGzZGM9mHf+L552ShJwvBJ3gecpRLasnxziivFuYJplRt
         bzRi4gxZy7IPyiByAoLuPMBmo7moZjTwli8i8gqz51Dpw+zI/2H0lMDsPm/oX8G4F41U
         nGuQsHbcGP+bRfEwv+m94GcXPA8dmCt+dM+rVbyzINgUFk/T9woZNh2xw9h7qj/rjSTx
         eA/IEMOhycMhR/czG5F1IpVAMCWeprDeM9aD0UMTRlRxqNqm1CokZAnff/cu6m0zsxIJ
         mVImESXWghJChwP1VeDjoQ8piIOqyy0IvFSKDCLv8D5nqERgn5oDkrUSnE78bAjKFuFh
         MunA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686298611; x=1688890611;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lYuIhDGuCC9opvLWfytZKMbJoZ2C+T9RI7zl7IlZO1c=;
        b=Z/i1C89z272oBpA1tTz0SdYxtjMpCWNnsV4Mv/5SrVbVNWBZJpx0KlsBf29vyPyyDS
         zR1XuJl2guLpu/KdYLwLcxCXrrgswOPof64Y9KFRkfATtWTtjZN3a4ohXJmgEUveGXYV
         XcTEQRKCSAzOKeqlruCxzci9JHaC6G18SHKdEoNrNxnwzt65QVOQd84psxKh8w9wu61n
         DDNb8REGf7PySpmv1x5wIy/jfaQds2Imh+CxZI4FSS9WdQJtK8wh5Pqb5BIwiFuJj6Qr
         4cHU3RDc5/ZkdGPYkykPanyqg0QOyEWhik+Pdr3lLUkdKsQOkRZx9lY2UQ5rFf6rIZk6
         TDGQ==
X-Gm-Message-State: AC+VfDxG+VtMIyiU7Vn3vdIqRHOw8Oc32w8J7yZiHhKI4OjZsVKZeIGL
        BX8Iaawh9Q8cBT3rjjtSGAcqnOZw0fxVmOW28J9u/A==
X-Google-Smtp-Source: ACHHUZ5MaRYmFgAgHsM4aSp6otcol5L86L1080ihDuGUjqwqVtjgtl5fPm6KgfpUfbk92208u9+K2A==
X-Received: by 2002:a1c:4b16:0:b0:3f4:2158:28a0 with SMTP id y22-20020a1c4b16000000b003f4215828a0mr916471wma.12.1686298611256;
        Fri, 09 Jun 2023 01:16:51 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id m6-20020adfdc46000000b0030e5bd253aasm3768435wrj.39.2023.06.09.01.16.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jun 2023 01:16:50 -0700 (PDT)
From:   Neil Armstrong <neil.armstrong@linaro.org>
To:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        Xianwei Zhao <xianwei.zhao@amlogic.com>
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
In-Reply-To: <20230515093237.2203171-1-xianwei.zhao@amlogic.com>
References: <20230515093237.2203171-1-xianwei.zhao@amlogic.com>
Subject: Re: [PATCH V5] arm64: dts: add support for C3 based Amlogic AW409
Message-Id: <168629861051.1192110.13312431547309473090.b4-ty@linaro.org>
Date:   Fri, 09 Jun 2023 10:16:50 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.2
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, 15 May 2023 17:32:37 +0800, Xianwei Zhao wrote:
> Amlogic C3 is an advanced edge AI processor designed for smart IP camera
> applications.
> 
> Add basic support for the C3 based Amlogic AW409 board, which describes
> the following components: CPU, GIC, IRQ, Timer, UART. It's capable of
> booting up into the serial console.
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.5/arm64-dt)

[1/1] arm64: dts: add support for C3 based Amlogic AW409
      https://git.kernel.org/amlogic/c/02310be6f080071e1b9e2021fd6dd655bd842aad

These changes has been applied on the intermediate git tree [1].

The v6.5/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
for inclusion in their intermediate git branches in order to be sent to Linus during
the next merge window, or sooner if it's a set of fixes.

In the cases of fixes, those will be merged in the current release candidate
kernel and as soon they appear on the Linux master branch they will be
backported to the previous Stable and Long-Stable kernels [2].

The intermediate git branches are merged daily in the linux-next tree [3],
people are encouraged testing these pre-release kernels and report issues on the
relevant mailing-lists.

If problems are discovered on those changes, please submit a signed-off-by revert
patch followed by a corrective changeset.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git
[2] https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git
[3] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git

-- 
Neil

