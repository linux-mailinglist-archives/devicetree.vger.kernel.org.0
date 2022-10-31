Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4826F6139A1
	for <lists+devicetree@lfdr.de>; Mon, 31 Oct 2022 16:04:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231663AbiJaPEQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Oct 2022 11:04:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40754 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231664AbiJaPEN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Oct 2022 11:04:13 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4721B1117F
        for <devicetree@vger.kernel.org>; Mon, 31 Oct 2022 08:04:11 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id kt23so30078610ejc.7
        for <devicetree@vger.kernel.org>; Mon, 31 Oct 2022 08:04:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=pM+EME3eyCdoJ/xxkiTXgs6GllJVb6Ce+OkXhHkauYc=;
        b=NQ4du2SfcZNeBPrM8o0kO/d76Vi5vsnVzuaMa2kSNSzzXN8ztWFSU2oqHzCWq9T3CH
         VWkM2u8z4aRk8QwQkBX5BV9RCDAN1EPSSKP/v1l3qLX8M+cWkzHCkvEsoLryN9IoPCov
         BLBGaGALIR2vA7gdafh5iRrZxih7gg9DcjQYc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pM+EME3eyCdoJ/xxkiTXgs6GllJVb6Ce+OkXhHkauYc=;
        b=blcQuPWF1UsSL/Nokz04emZprLnOxPIoDjPEp5VRZ1O3dHdMDdqsneFYVhhrh6ePVu
         rJ4zUYm51xcWAeym+vW4EelQoS2a3/x2tNygl1YP65NSuxGL/Vw1rJ6wnmjO/H9EgTOc
         sDwsmKsses9fLI2YVxitJwCmUr0pHHJd2uwtg7tIRvx5RKXPtSagYauE72QUCGRzjfEH
         7S57hsawZ5x0FgZ13ILDoWV1+WtZuhzSmlUoRkrRfKcppqDiFyh65HEnidOhnykcrTpt
         SbsAC6NaPEo9Ui17dViVkvzFqkCTSVdM6jS7YRuyO0gVAkEot+ygEp6UNcYn2lgnlTYn
         7PRQ==
X-Gm-Message-State: ACrzQf0HMStKsm2zXcPd4Nx9z3sTKsvMjh/hSUWrhVX47/oyy08WjoZa
        MjXMl7Gu9SIFVINcSb8jLSQpUcA5WMApbggf
X-Google-Smtp-Source: AMsMyM4grECKjcnKvR4tIQfIIEj317amGqO9ClSQZNwwjaUEP6V3f3IVSIFj+TljB1H5MNbjIkT/RQ==
X-Received: by 2002:a17:907:3e20:b0:7ad:b54a:442f with SMTP id hp32-20020a1709073e2000b007adb54a442fmr11151819ejc.636.1667228649566;
        Mon, 31 Oct 2022 08:04:09 -0700 (PDT)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com. [209.85.221.52])
        by smtp.gmail.com with ESMTPSA id n2-20020a056402514200b00456d2721d93sm3309453edd.64.2022.10.31.08.04.07
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Oct 2022 08:04:08 -0700 (PDT)
Received: by mail-wr1-f52.google.com with SMTP id a14so16384454wru.5
        for <devicetree@vger.kernel.org>; Mon, 31 Oct 2022 08:04:07 -0700 (PDT)
X-Received: by 2002:adf:f641:0:b0:236:737f:8e00 with SMTP id
 x1-20020adff641000000b00236737f8e00mr8221382wrp.659.1667228647404; Mon, 31
 Oct 2022 08:04:07 -0700 (PDT)
MIME-Version: 1.0
References: <20221031102011.136945-1-sheng-liang.pan@quanta.corp-partner.google.com>
In-Reply-To: <20221031102011.136945-1-sheng-liang.pan@quanta.corp-partner.google.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 31 Oct 2022 08:03:53 -0700
X-Gmail-Original-Message-ID: <CAD=FV=U1UcPZ95rPpjVRFB85d4oHNsM3kpRMhUQfh61tnZqjgw@mail.gmail.com>
Message-ID: <CAD=FV=U1UcPZ95rPpjVRFB85d4oHNsM3kpRMhUQfh61tnZqjgw@mail.gmail.com>
Subject: Re: [PATCH v9 0/4] Add LTE SKU for sc7280-evoker family
To:     Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Bjorn,

On Mon, Oct 31, 2022 at 3:20 AM Sheng-Liang Pan
<sheng-liang.pan@quanta.corp-partner.google.com> wrote:
>
> This patch add common dtsi and WIFI/LTE dts for evoker.
>
> Changes in v9:
> - new patch for evoker include rt5682.dtsi
>
> Changes in v8:
> - updated patch subjects
>
> Changes in v7:
> - goodix gt7986 dt bindings added in v7
> - add compiatable for gt7986
>
> Changes in v6:
> - add removed pinctrl and align touchscreen label with herobrine board
>
> Changes in v5:
> - recover whitespace change
> - new patch for Touchscreen/trackpad in v5
>
> Changes in v4:
> - fix typo in tittle and commit
> - recover change for trackpad and touchscreen
>
> Changes in v3:
> - none
>
> Changes in v2:
> - none
>
> Sheng-Liang Pan (4):
>   dt-bindings: arm: qcom: Separate LTE/WIFI SKU for sc7280-evoker
>   arm64: dts: qcom: sc7280: Add LTE SKU for sc7280-evoker family
>   arm64: dts: qcom: sc7280: Add touchscreen and touchpad support for
>     evoker
>   arm64: dts: qcom: sc7280: include sc7280-herobrine-audio-rt5682.dtsi
>     in evoker
>
>  .../devicetree/bindings/arm/qcom.yaml         |   5 +
>  arch/arm64/boot/dts/qcom/Makefile             |   3 +-
>  .../dts/qcom/sc7280-herobrine-evoker-lte.dts  |  14 ++
>  .../boot/dts/qcom/sc7280-herobrine-evoker.dts | 147 ++++++++++++++++++
>  ...er-r0.dts => sc7280-herobrine-evoker.dtsi} |  22 +--
>  5 files changed, 175 insertions(+), 16 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/qcom/sc7280-herobrine-evoker-lte.dts
>  create mode 100644 arch/arm64/boot/dts/qcom/sc7280-herobrine-evoker.dts
>  rename arch/arm64/boot/dts/qcom/{sc7280-herobrine-evoker-r0.dts => sc7280-herobrine-evoker.dtsi} (95%)

FWIW: even though I had a bunch of comments on patch #4, the first 3
patches are ready to go and it'd be great to get them landed. They've
been outstanding for a while now.

Thanks!

-Doug
