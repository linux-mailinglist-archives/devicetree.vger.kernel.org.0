Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CCACC65AFB0
	for <lists+devicetree@lfdr.de>; Mon,  2 Jan 2023 11:39:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229941AbjABKju (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Jan 2023 05:39:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229447AbjABKjt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Jan 2023 05:39:49 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28331111D
        for <devicetree@vger.kernel.org>; Mon,  2 Jan 2023 02:39:48 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id d17so6199900wrs.2
        for <devicetree@vger.kernel.org>; Mon, 02 Jan 2023 02:39:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TN3FpV1I7tFu/Kpha9CDnNvHD7KVpRjqtfkjCmVPUO0=;
        b=CakuEVBcyWpVCHtq/gK0WL8H5kopdxqYu/fVo/dM+vHh1V8sZ+azV8nsGYLtljTXD/
         Jan0bb1u2z6DBTbYgWOe3F3oWRQkEXTN7ztpNDX9uesOCbQwTs9b9Gy1XnACehMALSO9
         epAapZem3wE9CprqWtC4EIdMuPaKyykdTAI9wvrGR8ecRb9OdNyNT5dW/mHVs/l8/LEX
         vzsBl2x2BPr3Ifx3ZZcZZBGkUw1+odEJ4t+2weznXeuIh+RfNJcTOzij+gzqWzQ3DqQR
         wh88hwAqkaRW9U7tYi3O+oxdt5Q5UAigMXZtSxG5GVpOOl3XSzR82YsrFvWlDDt7UISs
         7Yvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TN3FpV1I7tFu/Kpha9CDnNvHD7KVpRjqtfkjCmVPUO0=;
        b=s0jpKzNK2/msmYSQyEUHpDMWKNtiV5/HVxaGvvFeimE1eyDimbPtTl43RoCE7CWjO0
         eqi1AbUmhbhS0YQXQHR9WNV4X3FQVLxNSlYhFynLDWCrTfRhYWLAHcFfpA7Tz9fo1twz
         cB+zqNoua9NexCbLpoPV5UxNMUNP4CGwJDOiVdu41RyXnc7EHP8Bqq8F+1UDa3QijZXM
         NOFo9PT0kFySeqVbs9OTa6AOeQ4W7PH+5ekzsRQVFerHV992kPXDCeIanWxczm2HbA/A
         ehOR8ATYtNbU3UKSXRQF5XC7J+1PpckGyGyfEiJkE0+o8902fmGovUoDqihoecRLb8uH
         nPjQ==
X-Gm-Message-State: AFqh2kpT0SU0SUaWcoc1yM4aKdekgcj/ggAeldxAfJ1IMeWauIM6pn4r
        AJeY9dOJ1eO/hesEn7vbbU7r/A==
X-Google-Smtp-Source: AMrXdXvJmLCCviOiLhVE2Fn/tGQ7qfOD6ZJjjx6/aj9+9AjFtmpkJtNmUE2jJpa+634KcFkd2p2Kuw==
X-Received: by 2002:adf:f243:0:b0:26d:798f:ab8a with SMTP id b3-20020adff243000000b0026d798fab8amr22489628wrp.68.1672655986705;
        Mon, 02 Jan 2023 02:39:46 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id r14-20020a5d4e4e000000b002549b649b62sm27810881wrt.50.2023.01.02.02.39.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Jan 2023 02:39:46 -0800 (PST)
From:   Neil Armstrong <neil.armstrong@linaro.org>
To:     Tomeu Vizoso <tomeu.vizoso@collabora.com>
Cc:     Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        open list <linux-kernel@vger.kernel.org>,
        Jerome Brunet <jbrunet@baylibre.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:DRM DRIVERS FOR VIVANTE GPU IP" 
        <etnaviv@lists.freedesktop.org>,
        Kevin Hilman <khilman@baylibre.com>,
        "moderated list:ARM/Amlogic Meson SoC support" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:DRM DRIVERS FOR VIVANTE GPU IP" 
        <dri-devel@lists.freedesktop.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        "open list:ARM/Amlogic Meson SoC support" 
        <linux-amlogic@lists.infradead.org>, italonicola@collabora.com,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        David Airlie <airlied@gmail.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Daniel Vetter <daniel@ffwll.ch>,
        Christian Gmeiner <christian.gmeiner@gmail.com>,
        Russell King <linux+etnaviv@armlinux.org.uk>
In-Reply-To: <20221202115223.39051-1-tomeu.vizoso@collabora.com>
References: <20221202115223.39051-1-tomeu.vizoso@collabora.com>
Subject: Re: (subset) [PATCH v6 0/8] Support for the NPU in Vim3
Message-Id: <167265598564.387036.9948295692448105822.b4-ty@linaro.org>
Date:   Mon, 02 Jan 2023 11:39:45 +0100
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

On Fri, 2 Dec 2022 12:52:12 +0100, Tomeu Vizoso wrote:
> This series adds support for the Verisilicon VIPNano-QI NPU in the A311D
> as in the VIM3 board.
> 
> The IP is very closely based on previous Vivante GPUs, so the etnaviv
> kernel driver works basically unchanged.
> 
> The userspace part of the driver is being reviewed at:
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.3/arm64-dt)

[4/8] arm64: dts: Add DT node for the VIPNano-QI on the A311D
      https://git.kernel.org/amlogic/c/18b542e544d3bd00e55d7135ee673b34dbfdb9b9
[8/8] arm64: dts: Fix NPU power domain references in Amlogic G12-based SoCs
      (no commit info)

These changes has been applied on the intermediate git tree [1].

The v6.3/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
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
