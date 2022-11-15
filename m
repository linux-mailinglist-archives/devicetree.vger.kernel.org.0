Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A1ED8629921
	for <lists+devicetree@lfdr.de>; Tue, 15 Nov 2022 13:46:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229695AbiKOMqJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Nov 2022 07:46:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56176 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229508AbiKOMqI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Nov 2022 07:46:08 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 087DE27CFB
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 04:46:05 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id l14so24064001wrw.2
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 04:46:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mlZD0Z2uZ+ThYG4e4r6CMcbbN5g4YL6Nxz6PbfmS5NA=;
        b=Yb7kmLhGhyYiM5Q8MgXeUnKQK4LE6+7zq57DqabdJ26qf7EizBpTbfxYyt6TRJRH7g
         iMCvzoK2Hjfv9V7SD/2dgd+0NrOlZpVSIb+Zn3bOFrYEsCltvvivgOVnvZHW2Vddxaiv
         yU0lMINmERm0Hi8UK3OClxCtltTXYgQXZ1argRqmb5aLQjZMBreAsiXddyMR/8RCYvBY
         3fNB4/DBNErdX2p4BFu0nX1Vd777tDlL6VbsuFetwlpXVkLNDEN3bumcqizBZBBfFpIE
         w3O/cx3oY8iFEFI1tbqApqu9NRxlKlB/MP05CIZN+Palc9NZo/G3fpcB0HUppPqPB/pz
         hlVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mlZD0Z2uZ+ThYG4e4r6CMcbbN5g4YL6Nxz6PbfmS5NA=;
        b=GOsb/kLVtBcES6TS+q4PaMBXiSLY9Z7Sr9wnpq7CzD7NKGnnSkjVB5M8UmJqrkyzgp
         ozKFnEy/Qv6AsypJBGEL4APseGPQf53mFd7TTlqMFomNnvwziXlLUbUJAuPP/IP7L/wP
         WOeOdmidgcIR56dPKDC3sDAggeN2NsWN97aFyhOpjDpLiH1JR6AZyBBfMq4xAWT6zyy2
         ARjXl0dhfi7KCBQlhGUtWdP+/M0MEi5DXrnfyFcxYjI71ZPgI7VohLvORvzIUy0MRZ+j
         gWzTRzM+0GkiVunTjlUaMBAmm25bNrLGrRklLbg+Mri+a72zNn68aYRKxVcXFmClMEPl
         cDPQ==
X-Gm-Message-State: ANoB5pkRPsRY9BMMdQSsPMCbMRbmPo8cWZKLlz7zuApgUKGw5RUr6Ume
        UySS7zQO9LUJ1+LPF0xbyP29VA==
X-Google-Smtp-Source: AA0mqf6vybVgZNApQBaGCsmb/WmoxQCxkT1rPljAJ3wbuzXcligL+cMP8YKndcURsBFb7hNRAA9EBg==
X-Received: by 2002:adf:ec10:0:b0:22e:48ee:dc64 with SMTP id x16-20020adfec10000000b0022e48eedc64mr10465784wrn.319.1668516363574;
        Tue, 15 Nov 2022 04:46:03 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id h5-20020a1ccc05000000b003cf7292c553sm15100857wmb.13.2022.11.15.04.46.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Nov 2022 04:46:03 -0800 (PST)
From:   Neil Armstrong <neil.armstrong@linaro.org>
To:     linux-amlogic@lists.infradead.org,
        Jiucheng Xu <jiucheng.xu@amlogic.com>,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org
Cc:     Jianxin Pan <jianxin.pan@amlogic.com>,
        Will Deacon <will@kernel.org>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Chris Healy <healych@amzon.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Kelvin Zhang <kelvin.zhang@amlogic.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Chris Healy <cphealy@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
In-Reply-To: <20221109015818.194927-1-jiucheng.xu@amlogic.com>
References: <20221109015818.194927-1-jiucheng.xu@amlogic.com>
Subject: Re: (subset) [PATCH v9 1/4] perf/amlogic: Add support for Amlogic meson G12 SoC DDR PMU driver
Message-Id: <166851636240.2706970.5044622392336607391.b4-ty@linaro.org>
Date:   Tue, 15 Nov 2022 13:46:02 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.10.1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, 9 Nov 2022 09:58:15 +0800, Jiucheng Xu wrote:
> This patch adds support Amlogic meson G12 series SoC
> DDR bandwidth PMU driver framework and interfaces.
> 
> The PMU not only can monitor the total DDR bandwidth,
> but also the bandwidth which is from individual IP module.
> 
> Example usage:
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.2/arm64-dt)

[4/4] arm64: dts: meson: Add DDR PMU node
      https://git.kernel.org/amlogic/c/90cf8e21016fa3864a311622f6162fde13aaaf23

These changes has been applied on the intermediate git tree [1].

The v6.2/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
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
