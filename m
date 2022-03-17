Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 927F94DCC15
	for <lists+devicetree@lfdr.de>; Thu, 17 Mar 2022 18:09:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236792AbiCQRKV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Mar 2022 13:10:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236788AbiCQRKU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Mar 2022 13:10:20 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 690F5D0AB4
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 10:09:03 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id bi12so12141468ejb.3
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 10:09:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=qnkSvmM2RLTDcYPOq9eNhcQfzzwiY4NpXIDwpU3VaFI=;
        b=Sornkk7buwSd+gYZlnieoa57pLOfbYNReimDpIoQUCqc2gwZHaDs9iAVjq005u12w5
         J8p8dTXstxDAcKqyEA9kqn9FuC5a6+YzzOsPOnvi0BFf2FXuYm8M/hDJwg0wSy5Cetx9
         sihyGtiVhTTPr1nqqxsNkcq8b5m17V2XJG5VI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=qnkSvmM2RLTDcYPOq9eNhcQfzzwiY4NpXIDwpU3VaFI=;
        b=IzjnSOyg8MkzUf+PfsAgLocF62VgWV3ec38rEJM7xgYnP7wSKLLnsliHwokGVa8ELh
         a8CtwMLb/Pb2QBz3AA29PtLb7u1p8MxcN/urLtE/y1CtExe4Sfj1oKUqaUhVwxT7hdUT
         Znmmr5iDaGz/NhiGGuW0nTy23AwuNYHr1ohXUx9XsL8O/jx48mGe4HoAFTZrXJHQS489
         4gyAY969EUUtdAdSzWoachpk4hW6CD6Rt6yUc+gYACZFnjQ1yV74C6iH4566JTNu8nd+
         1P3n+ytg8zFXpqu0CmtKaooBFmGwRgEPrOoduRiBMz0Ui6O0vYaMGR7GBgN5UwLmyDrX
         YCrA==
X-Gm-Message-State: AOAM530B4tVJTAVllyvckbCI+ypo32Wi1LE1iQhsbxoG63bmx2/DtbYM
        cVHvKQpg4HPCE8Ww5C9Xxs+dnt7Bp0zR/5Dn
X-Google-Smtp-Source: ABdhPJwSHUa0RwoM9Yk5zvCU9BmHyuRl4RyMQ4wYVIPMpbsI7cLFPGH4NtprhpNyfEsjR4PHsd91bQ==
X-Received: by 2002:a17:907:7da9:b0:6da:866a:3c59 with SMTP id oz41-20020a1709077da900b006da866a3c59mr5441066ejc.13.1647536941604;
        Thu, 17 Mar 2022 10:09:01 -0700 (PDT)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com. [209.85.221.46])
        by smtp.gmail.com with ESMTPSA id s4-20020a170906a18400b006db0a78bde8sm2670580ejy.87.2022.03.17.10.09.00
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Mar 2022 10:09:00 -0700 (PDT)
Received: by mail-wr1-f46.google.com with SMTP id j26so8292274wrb.1
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 10:09:00 -0700 (PDT)
X-Received: by 2002:a5d:53c6:0:b0:203:ee27:12ff with SMTP id
 a6-20020a5d53c6000000b00203ee2712ffmr2577669wrw.422.1647536940103; Thu, 17
 Mar 2022 10:09:00 -0700 (PDT)
MIME-Version: 1.0
References: <20220316172814.v1.1.I2deda8f2cd6adfbb525a97d8fee008a8477b7b0e@changeid>
 <20220316172814.v1.4.I37bdb77fdd06fb4143056366d7ec35b929528002@changeid>
In-Reply-To: <20220316172814.v1.4.I37bdb77fdd06fb4143056366d7ec35b929528002@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 17 Mar 2022 10:08:45 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UiRSHgX-TAy5vsCJ0k6bLWJO9oOd4CVHJ+8vnM_5pMOw@mail.gmail.com>
Message-ID: <CAD=FV=UiRSHgX-TAy5vsCJ0k6bLWJO9oOd4CVHJ+8vnM_5pMOw@mail.gmail.com>
Subject: Re: [PATCH v1 4/4] arm64: dts: qcom: sc7280: Add CRD rev5
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Mar 16, 2022 at 5:28 PM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> Add support for Qualcomm's SC7280 CRD rev5 (aka CRD 3.0/3.1).
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
>
>  arch/arm64/boot/dts/qcom/Makefile             |   1 +
>  .../boot/dts/qcom/sc7280-herobrine-crd.dts    | 313 ++++++++++++++++++
>  2 files changed, 314 insertions(+)

Since I already pre-reviewed this patch before it was posted, I have
no comments. ;-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
