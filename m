Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4A81E6ABF9F
	for <lists+devicetree@lfdr.de>; Mon,  6 Mar 2023 13:36:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230005AbjCFMgc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Mar 2023 07:36:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229914AbjCFMgc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Mar 2023 07:36:32 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9D4325BB6
        for <devicetree@vger.kernel.org>; Mon,  6 Mar 2023 04:36:30 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id f11so8626510wrv.8
        for <devicetree@vger.kernel.org>; Mon, 06 Mar 2023 04:36:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678106189;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c4q5bpu843lZ9fXgZMzu4vosZM9fn7Qexe0ALutwzh0=;
        b=mI/itH8/YSW7HKGYHfd0EwDMQAWbbDWioZXBPE3R8FKXboUr9t3t/yOQylf0NVAhNj
         KRx1F5YqYUL25o0Y2pfTALSBVnsCxQ7gCY6KALa1sjIg/eMzBE/jM4cfKL3nJVjxJUZq
         n3/+5N3LYCoZrqrbmsU4UH4QAo2nc8eLxIGBotZsc6wTvps9tU1pC9HCdVvlxsqr6VtB
         6kkc/PUJJbbI5GZCDMjknod1aps1A4uormt8MorBz9L/jG4u+Tnacy0geAOvao6WB/ti
         mwwKyRoki9/cKg2AViXFxhwfhXo1c5DtjykADrANPUyX0CFCp75KTWCjRxsIJ7zoUjOa
         ogmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678106189;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c4q5bpu843lZ9fXgZMzu4vosZM9fn7Qexe0ALutwzh0=;
        b=N69Y7ZuSrb25cNOOqEnO/WgVWt8B2nytoAnkfDjWWuhasLynbPeHyhL1yOM/sOMrOI
         Y0hcTa4qNM3jdrVa4qBBuKRUUYrllFHHAO+r4LmjMts3Zy6NQnaFPza1vW4OcIkMBDfb
         eSekxFBPTwshF/UQBimXDC5HSPIAJVRAEBIiZYW9kd94yRztHyZmuRAhtSp/64wDz4ER
         ohbztcv/Gx1BgyUCz+9Q9xGEOufa4AgPm04kvetdPUpWuaHAWXmuobjvhErIJI7kMbdh
         0a9MEsl+kpEgpIP5ITCayHTceJvzIlD0T8AITe91vmKpeAhFXtOUJXAES9gRRquuE/vM
         +ukA==
X-Gm-Message-State: AO0yUKX27nJASp2VbSR0SQSy92nrSKSBiIZgyw292YNNpePNyYv27mu8
        kVKRs+j81GzIdo9Jt5q8lQGh9Q==
X-Google-Smtp-Source: AK7set+HiFqxGxqUbEePaG1GauuZizw+B+A2wTEHisyvMnLYXeI6P9TLO/3lnKFQqiXalKC4PHuH6w==
X-Received: by 2002:a5d:6a12:0:b0:2bf:ee7d:5369 with SMTP id m18-20020a5d6a12000000b002bfee7d5369mr6191618wru.59.1678106189165;
        Mon, 06 Mar 2023 04:36:29 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id k5-20020adfe8c5000000b002c56179d39esm9890545wrn.44.2023.03.06.04.36.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Mar 2023 04:36:28 -0800 (PST)
From:   Neil Armstrong <neil.armstrong@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        Christian Hewitt <christianshewitt@gmail.com>
In-Reply-To: <20230306121351.1606360-1-christianshewitt@gmail.com>
References: <20230306121351.1606360-1-christianshewitt@gmail.com>
Subject: Re: [PATCH v3 0/3] arm64: dts: meson: gxbb-kii-pro: device-tree
 updates
Message-Id: <167810618845.421911.1072624515654199610.b4-ty@linaro.org>
Date:   Mon, 06 Mar 2023 13:36:28 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, 06 Mar 2023 12:13:48 +0000, Christian Hewitt wrote:
> First we sort nodes in the current dts and remove some blank lines. Then we
> add the remaining bits needed for Bluetooth to work. And finally we add the
> AIU audio card to have HDMI and S/PDIF audio output.
> 
> Changes since v2:
> - Rebase on linux-amlogic/for-next
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.4/arm64-dt)

[1/3] arm64: dts: meson: gxbb-kii-pro: sort and tidy the dts
      https://git.kernel.org/amlogic/c/815ad625ec4ea5de655f9c02ccf7f65ecf5e6e29
[2/3] arm64: dts: meson: gxbb-kii-pro: complete the bluetooth node
      https://git.kernel.org/amlogic/c/dae485f52a65ce939b045cf480c401d434cacf2d
[3/3] arm64: dts: meson: gxbb-kii-pro: add initial audio support
      https://git.kernel.org/amlogic/c/914a3aa644cf50947a2dbb97738502ca9f025a10

These changes has been applied on the intermediate git tree [1].

The v6.4/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
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

