Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 76F4C78BA36
	for <lists+devicetree@lfdr.de>; Mon, 28 Aug 2023 23:25:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231928AbjH1VYe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Aug 2023 17:24:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232573AbjH1VYO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Aug 2023 17:24:14 -0400
Received: from mail-ua1-x92f.google.com (mail-ua1-x92f.google.com [IPv6:2607:f8b0:4864:20::92f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4222CE1
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 14:24:11 -0700 (PDT)
Received: by mail-ua1-x92f.google.com with SMTP id a1e0cc1a2514c-79a10807b4fso1380368241.2
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 14:24:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693257850; x=1693862650;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7lV67ue8O8irkvkGHuS/WBKm22CaGpU8fd8tzzbnekE=;
        b=YKgZ07SBHl90UfeK1BOTq1Cl7cD+BDiGvhvbKGCn8XWQcwQ0GUVGGnIjxVmFLkuYOZ
         zol/G6ktBYRNUNTGU3DYy2KRnznB3neeUD+iv+8T+v1d27tdu4EYg/HJUN8gXLDzvEGK
         adbNRy2apTHmXCczeRARWGunDOP+MvHHLgYyMrE88PMCpBnP7RAm+o4+RFawz11exgZW
         bjSx3HvyI/sROjNARxXjA9vRoG4GZ5AntMcuBCl744E0K5nMn0D1jHvdjk+fE2ENWM+2
         DueZmhbaLNpxfLi3y+quM0VXblHvTfj9EIIZCigLWepdrIE7A8WOyy/snlAsqGHma9w4
         VN1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693257850; x=1693862650;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7lV67ue8O8irkvkGHuS/WBKm22CaGpU8fd8tzzbnekE=;
        b=AsuxFReDfZcnQ9dRhu19mVIbrlHjoj+cvKQ6LtYP8kl1LKohgPDWqvzL8NVbwxmfGf
         iAkIm+muyWaGIwkNHE1vAc5v7d4CZGPKqGpQgxlVO2xrwBwLXElrhl0gvatqHp8opsMw
         3OPud+WYqBM8RjkPh/g9o5VsvJojSL64SdGPSzYmyDzY6sDe7lwmyLXCaOv+3s59WoVL
         jgoCU16ZE45wgHGzKZmjkv0DmznnKvRzLOoqRWRF58Z66oZ8tFYquk3/f677GodZXI3+
         YwBXKociHgKdY4sRVieiQs+gq2KmmVB1HnZwGyWIf2zsJTRAhFiro4WZNAJMCN815oyG
         cl3w==
X-Gm-Message-State: AOJu0YxqVpRteVQDd/R0R3BIJ98LQN8KLYRhOENIQcHcMuTu9cd28T4N
        Rx9yob5iu9ESt/om/Jsg+99aklyW0EFySmOAc2kSXA==
X-Google-Smtp-Source: AGHT+IGREmO10YLmOwqdXyZCDAQIWVCiwCAVv/qlPkk2x3End3xHg5+MrsahL1WcwopFckKtTRbphYhNItA8ysw5Cis=
X-Received: by 2002:a67:ef90:0:b0:44d:5c17:d067 with SMTP id
 r16-20020a67ef90000000b0044d5c17d067mr16776983vsp.8.1693257850001; Mon, 28
 Aug 2023 14:24:10 -0700 (PDT)
MIME-Version: 1.0
References: <20230828192507.117334-1-bartosz.golaszewski@linaro.org>
In-Reply-To: <20230828192507.117334-1-bartosz.golaszewski@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Tue, 29 Aug 2023 00:23:59 +0300
Message-ID: <CAA8EJpp_Uu62TDknZ-X0DQYinnwxxoriPpetfppCySxg_25YQg@mail.gmail.com>
Subject: Re: [PATCH 00/11] arm64: qcom: add and enable SHM Bridge support
To:     Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Alex Elder <elder@linaro.org>,
        Srini Kandagatla <srinivas.kandagatla@linaro.org>,
        kernel@quicinc.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 28 Aug 2023 at 22:29, Bartosz Golaszewski
<bartosz.golaszewski@linaro.org> wrote:
>
> SHM Bridge is a mechanism allowing to map limited areas of kernel's
> virtual memory to physical addresses and share those with the
> trustzone in order to not expose the entire RAM for SMC calls.
>
> This series adds support for Qualcomm SHM Bridge in form of a platform
> driver and library functions available to users. It enables SHM Bridge
> support for three platforms and contains a bunch of cleanups for
> qcom-scm.

Which users do you expect for this API?

Also, could you please describe your design a bit more? Why have you
implemented the shm-bridge as a separate driver rather than a part of
the SCM driver?

>
> Bartosz Golaszewski (11):
>   firmware: qcom-scm: drop unneeded 'extern' specifiers
>   firmware: qcom-scm: order includes alphabetically
>   firmware: qcom-scm: atomically assign and read the global __scm
>     pointer
>   firmware: qcom-scm: add support for SHM bridge operations
>   dt-bindings: document the Qualcomm TEE Shared Memory Bridge
>   firmware: qcom-shm-bridge: new driver
>   firmware: qcom-scm: use SHM bridge if available
>   arm64: defconfig: enable Qualcomm SHM bridge module
>   arm64: dts: qcom: sm8450: enable SHM bridge
>   arm64: dts: qcom: sa8775p: enable SHM bridge
>   arm64: dts: qcom: sm8150: enable SHM bridge
>
>  .../bindings/firmware/qcom,shm-bridge.yaml    |  36 ++
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi         |   4 +
>  arch/arm64/boot/dts/qcom/sm8150.dtsi          |   4 +
>  arch/arm64/boot/dts/qcom/sm8450.dtsi          |   4 +
>  arch/arm64/configs/defconfig                  |   1 +
>  drivers/firmware/Kconfig                      |   8 +
>  drivers/firmware/Makefile                     |   1 +
>  drivers/firmware/qcom-shm-bridge.c            | 452 ++++++++++++++++++
>  drivers/firmware/qcom_scm-smc.c               |  20 +-
>  drivers/firmware/qcom_scm.c                   | 106 +++-
>  drivers/firmware/qcom_scm.h                   |   3 +
>  include/linux/firmware/qcom/qcom_scm.h        | 109 +++--
>  include/linux/firmware/qcom/shm-bridge.h      |  32 ++
>  13 files changed, 712 insertions(+), 68 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/firmware/qcom,shm-bridge.yaml
>  create mode 100644 drivers/firmware/qcom-shm-bridge.c
>  create mode 100644 include/linux/firmware/qcom/shm-bridge.h
>
> --
> 2.39.2
>


-- 
With best wishes
Dmitry
