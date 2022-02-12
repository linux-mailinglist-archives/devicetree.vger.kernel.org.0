Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B51C74B3672
	for <lists+devicetree@lfdr.de>; Sat, 12 Feb 2022 17:31:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237322AbiBLQbu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 12 Feb 2022 11:31:50 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:44348 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237291AbiBLQbt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 12 Feb 2022 11:31:49 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0CD5197
        for <devicetree@vger.kernel.org>; Sat, 12 Feb 2022 08:31:45 -0800 (PST)
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 21014407C0
        for <devicetree@vger.kernel.org>; Sat, 12 Feb 2022 16:31:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644683504;
        bh=8Lhf7r5GEcQMqlZAoHA91Tt/jKDSvbsuMxA0NCPyhiA=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version:Content-Type;
        b=YEypQZkvLB4Eg4mtnXQURiX+wPQC+UQcREhYuZw7KLJjJdm3vqiSw59SrVxeEMLAC
         tmqhI1TGtoTk58tjcjoOEwwgctWBaMGplY9yNDOW7kKSafymV9n4Aib+Mf1i5epKyj
         +yLFv6fKOESjMZUsL9wmrm2FgkXgiMHdSWFZJ3vjmEYivis1z6dSqccQNQLH+NM4bG
         wl7Lu5PjLhRgYwZxOAhepByBbFdGPwPfpt99EFZpe7BMcOnaEFrDyWwJP61AqncpZU
         oUZkJzHr9EMEaHjFSUvbysNN5ElwIJacxVWXXnlqxmJ6Nk5+kNjxnm59vmwaZ7LYnt
         JUcd486pLZKog==
Received: by mail-ed1-f71.google.com with SMTP id b26-20020a056402139a00b004094fddbbdfso7346285edv.12
        for <devicetree@vger.kernel.org>; Sat, 12 Feb 2022 08:31:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8Lhf7r5GEcQMqlZAoHA91Tt/jKDSvbsuMxA0NCPyhiA=;
        b=NRy5byH6Gw8RvNJH6DKfuOCWIe+fdZ9v8pXWO3RkJS6oHngW6hxN+2iWFBSryauI5F
         e+lcfWU+MLw+fcaqONg9qzGXoc78CN5iHHfL2mT4VcFmt95hgVr55Psoadc7yMsc8o88
         SrpqYDFYZxBRMl0EmhSdnTRhixCJzY9Ec0xDu2LE+s31HqFpWlglZaaFbIRB21eTO1uT
         8Ya3r7L5UHSy2FOEvQoxo2Og0LtlNFIDyDbdxXSmAU32BJjtPnZHZQG3sMeG6853V0Yo
         BN4PZcHhmL1avANDit1n5hSAwSX7eXPw8CT0Oas6m+u5IJzBo8okHRNBzGww2QK7oh9G
         /2gQ==
X-Gm-Message-State: AOAM533epNCDET4uSk9vGeM1H/3wNyo3+RH7JcU+//tbpVCdXT1+Gfa4
        Db4SP4tNDUFcgvkYvYfBp/NJ3wpRd2QFe4r0ldMTZjH45ux7P/9x7MZsxL8B2oxHygEiwwrI81u
        jijSqfrSlcK2KTCd9TPH+nZEI0wq2kP+QeCdlRFI=
X-Received: by 2002:a05:6402:b9c:: with SMTP id cf28mr7316743edb.295.1644683503674;
        Sat, 12 Feb 2022 08:31:43 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwPLJ7SWTPKzXbJuCVaehwlh0yiOX7PnxNdHbnZKzKFslpm8C19hbTGaOtSxRwZ5jyH8Kbndg==
X-Received: by 2002:a05:6402:b9c:: with SMTP id cf28mr7316732edb.295.1644683503542;
        Sat, 12 Feb 2022 08:31:43 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id h6sm4472412ede.50.2022.02.12.08.31.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Feb 2022 08:31:42 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Sam Protsenko <semen.protsenko@linaro.org>,
        linux-kernel@vger.kernel.org,
        Jaehoon Chung <jh80.chung@samsung.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        linux-arm-kernel@lists.infradead.org,
        Chanho Park <chanho61.park@samsung.com>
Cc:     Sylwester Nawrocki <snawrocki@kernel.org>
Subject: Re: (subset) [RFT][PATCH 3/3] arm64: dts: exynos: drop incorrectly placed wakeup interrupts in Exynos850
Date:   Sat, 12 Feb 2022 17:31:40 +0100
Message-Id: <164468346864.47019.15604871002670498638.b4-ty@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211230195325.328220-3-krzysztof.kozlowski@canonical.com>
References: <20211230195325.328220-1-krzysztof.kozlowski@canonical.com> <20211230195325.328220-3-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 30 Dec 2021 20:53:25 +0100, Krzysztof Kozlowski wrote:
> The pin controller device node is expected to have one (optional)
> interrupt.  Its pin banks capable of external interrupts, should define
> interrupts for each pin, unless a muxed interrupt is used.
> 
> Exynos850 defined the second part - interrupt for each pin in wake-up
> pin controller - but also added these interrupts in main device node,
> which is not correct.
> 
> [...]

Applied, thanks!

[3/3] arm64: dts: exynos: drop incorrectly placed wakeup interrupts in Exynos850
      commit: daeb1c2b50fb98118d6318b5fdbd9ef9bdfaeaf5

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
