Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 115C86919C0
	for <lists+devicetree@lfdr.de>; Fri, 10 Feb 2023 09:06:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231191AbjBJIG0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Feb 2023 03:06:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48738 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231776AbjBJIGT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Feb 2023 03:06:19 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1666080777
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 00:05:49 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id r18so3181265wmq.5
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 00:05:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tRxo67T25+0gjEyyraFdudNI5jjD/ABVgQ3aCUXeUik=;
        b=pbT2mUJO+lF/78vhJ0LJ8+oAVak7mpDcARTg57+pKBCUFm38i2yNnno14mOBVLjoCI
         gwFTvIKjx04FaMiqA3G6tWU01sgnQEcbHFJGDG+vIKqpnkAsaRVI/RQ3XjfGIPlQVklC
         7qRqA3SqNJFcagLFjOlj8Rq9wrYC2tFhiLqhXgHEz5buZZ0Qo0VzZYnfA3w5LyAP9cKU
         47qYScrBTr3ZuxdFDBdV+HnMMoLQPvdohReT5GmvlpBNjeYrIvh+QAkganaHiPVILALy
         02z1D6dJZcP07rPHi3lETeMJ0Y7YcWoTnKCeV+ja4W1XglMHllShMsYPBGM3Z0xwJvTw
         e+Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tRxo67T25+0gjEyyraFdudNI5jjD/ABVgQ3aCUXeUik=;
        b=gnfTimapOKJZEnEMmaJIpkiDYbRuocZcSqXxg5bWcu8N5WLLQU1OEfvmQlL/DHw6/w
         Vij4MzvsNrW+Tn41gXnilqNhPafNG8R6tmHIoAJ1eaADqzanunn0QZEkfnkySSzjU5CX
         Luct99IP8XuZ6L3Sp3aUk0GgBXZKZPjVqdoH+XFJE8XgSdllShTfLYmn6E+blyFvaT9E
         UjsSLE5wEtmbN2drurRLEdd1tcuwJuMYYcdtaEw+UAFxGCSajMSaCsfHr/X3MWECMgCv
         Dq02+lfvk3aHJZK62VHv/yOFB3zmPZbz5hyXUwtHpWRYzfXqtvEFD3ddZMsLKEvToAT9
         7oAg==
X-Gm-Message-State: AO0yUKXhyYXULy0MSTMpLDj4yXASoYhZIkKKCiADSutNrJtJZP8NvYfW
        oMBuVhQ15RXGiNbhIeRl/8Nnlg==
X-Google-Smtp-Source: AK7set/20j1icqVn7U9Btadx5iyr0po7qpEg944rGdW8LSC9mxlQHBjpp8IrLVqYCOBDZiAt1dPvNQ==
X-Received: by 2002:a05:600c:1894:b0:3de:1d31:1048 with SMTP id x20-20020a05600c189400b003de1d311048mr12234734wmp.29.1676016340171;
        Fri, 10 Feb 2023 00:05:40 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id c2-20020a05600c0a4200b003de664d4c14sm4642196wmq.36.2023.02.10.00.05.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Feb 2023 00:05:39 -0800 (PST)
From:   Neil Armstrong <neil.armstrong@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Heiner Kallweit <hkallweit1@gmail.com>
Cc:     "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Nan Li <nan.li@amlogic.com>,
        Vyacheslav Bocharov <adeep@lexina.in>
In-Reply-To: <8a99341b-8546-8f90-c9a5-087d927cac48@gmail.com>
References: <8a99341b-8546-8f90-c9a5-087d927cac48@gmail.com>
Subject: Re: [PATCH 0/3] arm64: dts: amlogic: Make mmc host controller
 interrupts level-sensitive
Message-Id: <167601633914.2233184.2742706111229690687.b4-ty@linaro.org>
Date:   Fri, 10 Feb 2023 09:05:39 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.0
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, 09 Feb 2023 21:09:25 +0100, Heiner Kallweit wrote:
> The usage of edge-triggered interrupts lead to lost interrupts under load,
> see [0]. This was confirmed to be fixed by using level-triggered
> interrupts.
> The report was about SDIO. However, as the host controller is the same
> for SD and MMC, apply the change to all mmc controller instances.
> 
> [0] https://www.spinics.net/lists/linux-mmc/msg73991.html
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.2/fixes)

[1/3] arm64: dts: meson-axg: Make mmc host controller interrupts level-sensitive
      https://git.kernel.org/amlogic/c/d182bcf300772d8b2e5f43e47fa0ebda2b767cc4
[2/3] arm64: dts: meson-g12-common: Make mmc host controller interrupts level-sensitive
      https://git.kernel.org/amlogic/c/ac8db4cceed218cca21c84f9d75ce88182d8b04f
[3/3] arm64: dts: meson-gx: Make mmc host controller interrupts level-sensitive
      https://git.kernel.org/amlogic/c/66e45351f7d6798751f98001d1fcd572024d87f0

These changes has been applied on the intermediate git tree [1].

The v6.2/fixes branch will then be sent via a formal Pull Request to the Linux SoC maintainers
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

