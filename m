Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 62555729285
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 10:17:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240157AbjFIIRc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jun 2023 04:17:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51628 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240165AbjFIIRa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jun 2023 04:17:30 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4955626B1
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 01:16:56 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2b219ed9915so15660751fa.3
        for <devicetree@vger.kernel.org>; Fri, 09 Jun 2023 01:16:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686298610; x=1688890610;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sbn/vidH7Q/LymlGmJYhGt3pz85OqWNGAZA4SRnTzBo=;
        b=fK9Ln5svpVf7phjZS+mbqw7W8KLEUddvL82nQQBDjWef1EMHZyKJu5uSv0ylG497DS
         77MDbGVz1ZJvyDJZ9TjECpi9s94vl0lFXkz6ecpCvDqgEUjDl/Upf0uiqbB0dWBChzOu
         2ermRRb2EaSeuuAPz/RLtXhUUHu/O2eSGWzGcv6WqHiMuopaSxz2F5WTcJwHAEb+DXn/
         xxURipHrESsmhHsJzbs8DTZxRnWA3ZeVb5Qx+rYMdnWqgWiCg8xCvdhSe1neH97i0MBQ
         RTQRbC4I5/z9CibtNsSEzrWYEodFJ6Bb14j8xKSNI/Bo4vQX9JayOrs9SIFG4f8LVI20
         qQJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686298610; x=1688890610;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sbn/vidH7Q/LymlGmJYhGt3pz85OqWNGAZA4SRnTzBo=;
        b=XLoFJBoqDaTpFKl1UmfPWaM/dLStCrWioiAeheviXMgDdKc44D6Bl11kfYGqkozDLv
         s4axUPr+SNfGCCcBVhoXZBKeWjZ0LHA4awvc2o0bbTK0L1lXsERF3fwKem8sEslKfeZf
         V5zYtk/C9L1FJrGPGO0K5ZerdzB0DLOs32b50zvDkfLMhgJqOsgVcGguTOOESls3CAD7
         UGEByYjEA34V56hCiSuF5gADqjG1nj+6BT55j5oinfkq09NYJ/2R6BK6VTpY1CWJFse4
         iil2MqHtPIDy6mF/BdtutY3lOkgwadwy/0tw9mfstIZiLZRvawz2+TVf1XoCF6dBw24J
         cL2Q==
X-Gm-Message-State: AC+VfDwmj/wYeJWMltyHhOKxWMrF8Z04pmOGt7tqUlYJAVesQp6oS/rZ
        vAT7AacHum8iTWs9F8TbSAf1IN+oklGFwuiISC4ClA==
X-Google-Smtp-Source: ACHHUZ72gjhpE6xfNIyCw1g194Gn1jxiJKWv4N13KPXnSFqysK5VlWgjRHhNj6J11ET014zr7Acx1Q==
X-Received: by 2002:a19:4f52:0:b0:4f4:eeb4:ba70 with SMTP id a18-20020a194f52000000b004f4eeb4ba70mr424776lfk.32.1686298610392;
        Fri, 09 Jun 2023 01:16:50 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id m6-20020adfdc46000000b0030e5bd253aasm3768435wrj.39.2023.06.09.01.16.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jun 2023 01:16:49 -0700 (PDT)
From:   Neil Armstrong <neil.armstrong@linaro.org>
To:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        Xianwei Zhao <xianwei.zhao@amlogic.com>
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
In-Reply-To: <20230510091129.151669-1-xianwei.zhao@amlogic.com>
References: <20230510091129.151669-1-xianwei.zhao@amlogic.com>
Subject: Re: [PATCH V4] arm64: dts: add support for C3 based Amlogic AW409
Message-Id: <168629860953.1192110.7115363386706217680.b4-ty@linaro.org>
Date:   Fri, 09 Jun 2023 10:16:49 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.2
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, 10 May 2023 17:11:29 +0800, Xianwei Zhao wrote:
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

