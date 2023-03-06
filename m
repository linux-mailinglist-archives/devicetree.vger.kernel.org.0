Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6CF886AB87A
	for <lists+devicetree@lfdr.de>; Mon,  6 Mar 2023 09:38:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229837AbjCFIiL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Mar 2023 03:38:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39772 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229754AbjCFIiI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Mar 2023 03:38:08 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6206D7D99
        for <devicetree@vger.kernel.org>; Mon,  6 Mar 2023 00:38:06 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id r19-20020a05600c459300b003eb3e2a5e7bso4691536wmo.0
        for <devicetree@vger.kernel.org>; Mon, 06 Mar 2023 00:38:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678091885;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NBn8YOHpxIfsYVyC9NKPdmAQvu8dSftWMYkzf80yjII=;
        b=W5ml6sum57UIXTAX+I+A6X3qRi6NnIb34wqMkiVjr0JqSBycww3tEpf5jjrQ3q7Fzl
         ZPMte+96aaRvGFd+38kFRgGbeShWJGfwXeEdo+eRV/vJzMUz25l04JpBjIq7LflIqer6
         mQzV/aUA6HBAGzLwmZ5UK1yIH5vmESbMpIzb0NIDdpBjr+xHCrl4kk4xpilPdCHC1E+t
         bpji6/DG3NB5B3TagNg09I3pAY8yozf4p/eIda7pujQx64PMNLAxoD9un8ZIxFCim0Y7
         NxGjrY+zaZt0p3mFyBY3tKHCqTj0/cgImKQ5clOI0jTdBCXC5IgBEUyLeFf4kotNprnV
         KNPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678091885;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NBn8YOHpxIfsYVyC9NKPdmAQvu8dSftWMYkzf80yjII=;
        b=yqll8W/nXC2HNoGX3nWGGTajDyIYxadaVvm4PTYAuinTiFzxBuKgQDbtnTicUa+xSZ
         tq7jgLx0554CGM0JenyhGqwcf3zRg6+wU9JkzBjTsJXhv2tWA3EygU0r4e1UWJXCEEqS
         GONResksGKLB+kXow++21kcOhvguUa/zdpIl1Ygal+kqgGDGCJjDkdNskRh7y/zwGX6E
         2Pb13wGwm7+FIJrpeMbfpVsa3/UTESRR/Ca19O6AfAnsJ4MYBHu66fQyvKDYQkKt+YsX
         X/RGLeEVWz1hI7Afrj78R+7VbGKLd3UACmRCCi9Qxu/sV6QMhfa+6W8RIhHqCFW5fQcj
         v5ZQ==
X-Gm-Message-State: AO0yUKVZgZ8DTeZrgpDifLEhhwQ69+3QHb7NVfS3EU2ayMi6fIK9cepu
        c9qaihnC5iu8oPTEuwP0fkOuww==
X-Google-Smtp-Source: AK7set/5NtPMS9Adn1TyO9ajOxORLX91lowOP5e2ZAeZ0AY5dK2cmFRB765KQsI8Ua/Zauf+x5EFFg==
X-Received: by 2002:a05:600c:470a:b0:3eb:3843:9f31 with SMTP id v10-20020a05600c470a00b003eb38439f31mr8678171wmo.10.1678091884891;
        Mon, 06 Mar 2023 00:38:04 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id v7-20020a05600c444700b003eb0d6f48f3sm14184064wmn.27.2023.03.06.00.38.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Mar 2023 00:38:04 -0800 (PST)
From:   Neil Armstrong <neil.armstrong@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        Christian Hewitt <christianshewitt@gmail.com>
In-Reply-To: <20230305134512.1596572-1-christianshewitt@gmail.com>
References: <20230305134512.1596572-1-christianshewitt@gmail.com>
Subject: Re: [PATCH v2 0/2] arm64: amlogic: Add initial support for BPI-M2S
 variants
Message-Id: <167809188415.8899.9019667584179852304.b4-ty@linaro.org>
Date:   Mon, 06 Mar 2023 09:38:04 +0100
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

On Sun, 05 Mar 2023 13:45:10 +0000, Christian Hewitt wrote:
> Add support for the BananaPi M2S which ships in two board variants with
> the Amlogic S922X or A311D chipset. Schematics for the board are not
> currently available from Sinovoip so the device-tree is largely derived
> from the Khadas VIM3 (also S922X/A311D) and other recent BPI boards that
> have public documentation. The device-tree also supports the RTL8822CS
> WiFi/BT module. This is optional so the nodes must be enabled though an
> overlay or fdtput.
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.4/arm64-dt)

[1/2] dt-bindings: arm: amlogic: add support for BananaPi M2S variants
      https://git.kernel.org/amlogic/c/0e1598a112f2e270bdd5771bb821f12852c548ac
[2/2] arm64: dts: meson: add support for BananaPi M2S variants
      https://git.kernel.org/amlogic/c/14e14723d2f58964f13e825738d01f62a8629e90

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

