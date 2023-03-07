Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8D4D36AD891
	for <lists+devicetree@lfdr.de>; Tue,  7 Mar 2023 08:58:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229667AbjCGH6d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Mar 2023 02:58:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55730 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229653AbjCGH6c (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Mar 2023 02:58:32 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2C303B645
        for <devicetree@vger.kernel.org>; Mon,  6 Mar 2023 23:58:21 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id r19-20020a05600c459300b003eb3e2a5e7bso6643143wmo.0
        for <devicetree@vger.kernel.org>; Mon, 06 Mar 2023 23:58:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678175900;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cLMVTmhug5W/ViPhUZNv91aDNn2fde2rmlEoDo3GK6I=;
        b=MNbDJ8uIPK5/6ZARHUVLpH6EBKlBhOYov6UIRFf18yzIt3Jh1TQynzubbE0QmdvxoK
         e7Z+uC6xY7gDtaQcX1bC30mZkaAq5xaMsaATRNw/svH5LJAKYuE5sJGheNQGO/ZUcIs0
         otG6rEk90ZYcsPdKVGC1nzusRNKbXhL2BmrQXDr1j5VkJviZmM4r3FU+CDrNgQjDPOHh
         h8jpjqteWpPCMh4zE2s8WX3oxj84y0I3NqYVo0hrOi1paO73oYw+TRsSpcGsNDnkQ1DX
         /ScKOFnxPEuqao2ywfKjwWcimKVSGcdMi8i9ayhSXvGw2C/hpjpMO7u2AL8TpZuSHU1S
         nq3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678175900;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cLMVTmhug5W/ViPhUZNv91aDNn2fde2rmlEoDo3GK6I=;
        b=Tsnz0xp33lFIkyiR8Tv/nxFQhx/X94MMoI6roDbI/EtPNGcK3vvIFCx5429VXnWZxS
         4GfjukGwyO6gxJFhyCOUDc/xz18LS/aps8M91vhiBUjcW7aVuT+a+CXYTJPBv09O/mza
         cZy9lBO3mdGl7pyij6DJv+o1ICxv/qwenY+S6+i38eK3cZ9O4tbd6scXCcsB110T7Jes
         G1D3xjtiRZ6p69oLYviKO6Hzyd+3wHfQKOBZ5il6gFscAmgfr8N9yaDYJlmR9S7baRQb
         6KLAhkvUq+jPdW0bXVBn1rfTkaSqRFzf9I4n9ftchr4jpg6DAXK0Ej21IZkDhWjtO/st
         Vc/g==
X-Gm-Message-State: AO0yUKUckaQ2+R9HwU7+tIvL1pQ9kY8P028k89ZS1XvpAUPsLNudBr7r
        RwQpR9DOMFEdEqJi8p75koHEMg==
X-Google-Smtp-Source: AK7set/9bOskxsI40HBxPvMG59X6tvQhrLogkwCLCIPH50cPIOu3X5bNQiexyW5n0A+YqrEHHagXag==
X-Received: by 2002:a05:600c:1c9e:b0:3ea:f883:180 with SMTP id k30-20020a05600c1c9e00b003eaf8830180mr11574626wms.7.1678175900220;
        Mon, 06 Mar 2023 23:58:20 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id f18-20020a05600c43d200b003dec22de1b1sm12041776wmn.10.2023.03.06.23.58.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Mar 2023 23:58:19 -0800 (PST)
From:   Neil Armstrong <neil.armstrong@linaro.org>
To:     Kevin Hilman <khilman@baylibre.com>,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        Jerome Brunet <jbrunet@baylibre.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org
In-Reply-To: <20230306151354.132973-1-jbrunet@baylibre.com>
References: <20230306151354.132973-1-jbrunet@baylibre.com>
Subject: Re: [PATCH] arm64: dts: amlogic: gxl: use gxl mdio multiplexer
Message-Id: <167817589881.760403.18039732599742778608.b4-ty@linaro.org>
Date:   Tue, 07 Mar 2023 08:58:18 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, 06 Mar 2023 16:13:54 +0100, Jerome Brunet wrote:
> So the far, GXL SoCs were using the generic mmio register based mdio
> multiplexer. This properly sets one of the glue register but the SoC
> actually has 3 of those registers.
> 
> One of them sets the ID under which the internal phy will advertise
> itself. If nothing sets this register before linux boots (like u-boot), the
> internal phy path is broken.
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.4/arm64-dt)

[1/1] arm64: dts: amlogic: gxl: use gxl mdio multiplexer
      https://git.kernel.org/amlogic/c/c2e9012bb383f538186cf11d00d223d025d10c8d

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

