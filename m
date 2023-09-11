Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 60C2879AE82
	for <lists+devicetree@lfdr.de>; Tue, 12 Sep 2023 01:45:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234313AbjIKUtl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Sep 2023 16:49:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56822 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235941AbjIKJqm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Sep 2023 05:46:42 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70D43E4F
        for <devicetree@vger.kernel.org>; Mon, 11 Sep 2023 02:46:37 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-31c93d2a24fso3839718f8f.2
        for <devicetree@vger.kernel.org>; Mon, 11 Sep 2023 02:46:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694425596; x=1695030396; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Vu69MSnmFMeVmA/ywqNkVmNnVb7iUthstBma+X2X8nw=;
        b=zDSIid0UDR8DuNEU1fmc5uEVmzbO7LU95gcVyzyhALwxAPTlToVd6D+iLTJBmvNEFB
         vybvy08Vm+bNJFq61a31tc0/ffKzaxL4UJcgRCPMooTF/1AtXwWK6GkcYk9W8BPGeRcs
         tUvhSF23AZD74gXqMvIgFxDpzdTcVKUVF311/JOrOu7gHy+3D1/Sv2HpuRrCbB3LOa3F
         P1BYM3HPkrSut/cKLOG/1uU2al7ErWIZEn74ZYNM8nV0Qt0O0hu6SpaVUASrjhKIWNK3
         kqp4u8T79ArbO0/9aJ3A041YvGoPZZD27qdGhl1qMKPACsFoFOyWc9D0a7/Y8rH+cerG
         4r9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694425596; x=1695030396;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Vu69MSnmFMeVmA/ywqNkVmNnVb7iUthstBma+X2X8nw=;
        b=uEzR+Ja39ZxtbFmyunXpiQ/IfK+7gVKcfpokWTT1wJSGO1HIJnoq4/9SHq3gWeZmwx
         DH80ZpVlhXyY+OBHMEkocTVcP10KAQ91rsRNjl9a/Jnkq3EEv/TH+/nJB1k7m5GS1pbp
         QV+abJuW5bkogjBDWPd/PpMOeCyBWwrXqYdUOoKSUVFBMKVt2zqvSXaORtmMm7090iR+
         yOmOph4/VXGbyfn4XGAu6QJEfM2+a6+c69DcgIeLVjlguxTspf5TUv04jHDeToaYocXK
         5y2FgQzelaGyx9hdcRypBGHTfVDq+0DGNsrvUhnJDycxHHfdqY7iMa9RPMHOof0nOuGt
         iLow==
X-Gm-Message-State: AOJu0YyzYj4k67v7Qk+SeHrYFpsX9xsyIElNdGVYB1TYWLVILF2mALER
        I6lbwlRWb25Fsbm2prZqHSiJEg==
X-Google-Smtp-Source: AGHT+IEdAMsjg/8Nxa3KFLooWk85wnZwMH58KM+GWT3T2xUcp1qWIO6JZ3+20GfglYdb4VvXAog3zQ==
X-Received: by 2002:a5d:6504:0:b0:31a:d4a9:bdac with SMTP id x4-20020a5d6504000000b0031ad4a9bdacmr7348578wru.11.1694425595971;
        Mon, 11 Sep 2023 02:46:35 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id d13-20020adff84d000000b00317909f9985sm9503496wrq.113.2023.09.11.02.46.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Sep 2023 02:46:35 -0700 (PDT)
From:   Neil Armstrong <neil.armstrong@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Alexander Stein <alexander.stein@mailbox.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org
In-Reply-To: <20230808161755.31594-1-alexander.stein@mailbox.org>
References: <20230808161755.31594-1-alexander.stein@mailbox.org>
Subject: Re: [PATCH 1/2] arm64: dts: meson-g12: Fix clock order for
 amlogic,axg-tdm-iface devices
Message-Id: <169442559509.3235506.11421514573376566938.b4-ty@linaro.org>
Date:   Mon, 11 Sep 2023 11:46:35 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, 08 Aug 2023 18:17:52 +0200, Alexander Stein wrote:
> Binding specify order of clocks as:
> 1. "sclk"
> 2. "lrclk"
> 3. "mclk"
> Adjust clocks accordingly. Fixes warnings:
> arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtb: audio-controller-0: clock-names:0: 'sclk' was expected
>         from schema $id: http://devicetree.org/schemas/sound/amlogic,axg-tdm-iface.yaml#
> arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtb: audio-controller-0: clock-names:1: 'lrclk' was expected
>         from schema $id: http://devicetree.org/schemas/sound/amlogic,axg-tdm-iface.yaml#
> arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtb: audio-controller-0: clock-names:2: 'mclk' was expected
>         from schema $id: http://devicetree.org/schemas/sound/amlogic,axg-tdm-iface.yaml#
> arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtb: audio-controller-1: clock-names:0: 'sclk' was expected
>         from schema $id: http://devicetree.org/schemas/sound/amlogic,axg-tdm-iface.yaml#
> arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtb: audio-controller-1: clock-names:1: 'lrclk' was expected
>         from schema $id: http://devicetree.org/schemas/sound/amlogic,axg-tdm-iface.yaml#
> arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtb: audio-controller-1: clock-names:2: 'mclk' was expected
>         from schema $id: http://devicetree.org/schemas/sound/amlogic,axg-tdm-iface.yaml#
> arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtb: audio-controller-2: clock-names:0: 'sclk' was expected
>         from schema $id: http://devicetree.org/schemas/sound/amlogic,axg-tdm-iface.yaml#
> arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtb: audio-controller-2: clock-names:1: 'lrclk' was expected
>         from schema $id: http://devicetree.org/schemas/sound/amlogic,axg-tdm-iface.yaml#
> arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtb: audio-controller-2: clock-names:2: 'mclk' was expected
>         from schema $id: http://devicetree.org/schemas/sound/amlogic,axg-tdm-iface.yaml#
> 
> [...]

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.7/arm64-dt)

[1/2] arm64: dts: meson-g12: Fix clock order for amlogic,axg-tdm-iface devices
      https://git.kernel.org/amlogic/c/c92997482e70c67ce7b9b32344fe85c4b0cb701d
[2/2] arm64: dts: meson-g12: Fix compatible for amlogic,g12a-tdmin
      https://git.kernel.org/amlogic/c/a42b8f639298c57f119c6d5f55a0c0c87259096a

These changes has been applied on the intermediate git tree [1].

The v6.7/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
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

