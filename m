Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A85C6E9A97
	for <lists+devicetree@lfdr.de>; Thu, 20 Apr 2023 19:21:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231441AbjDTRVU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Apr 2023 13:21:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231317AbjDTRVP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Apr 2023 13:21:15 -0400
Received: from mail-yw1-x112a.google.com (mail-yw1-x112a.google.com [IPv6:2607:f8b0:4864:20::112a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7849C4EEC
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 10:21:13 -0700 (PDT)
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-54fe3cd445aso51768377b3.5
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 10:21:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1682011271; x=1684603271;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=78/qGEvYe/lkrFdeVXssBK2xk+jn/Iin4nBiAlABPII=;
        b=W2KQMjbB2G3yMUkW1rPKlIip/zQTBozc2YLiGxo3HuRE3be0I5a2HuuaVWMADDYDjg
         c9vJwnivbXDs0xz7u38Hx9c4QXIymnpwL6DBieWn0CshyAFBgNELXiFzON8/FOcI3xRA
         PxSxbLKIQVefkaqDE6O8E2Nrmy3vAysBOwWD4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682011271; x=1684603271;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=78/qGEvYe/lkrFdeVXssBK2xk+jn/Iin4nBiAlABPII=;
        b=Rp8f5eMPinA54pBL4tLSe6I4WVPRJV450GAxMVRTp7A7qOtfEp3y0g9tMI2a8IXMFl
         LqXnWPeb+kBrouVaQujdKCbHtxTxcKkQ6TBS89z4R72sNO6SyZz9J04h5cV8sDA/+NDC
         Tnd3bGeIi7ptpDC0FNOgnKi2rkuGBdfyqhe1IRlnX7IPr004LrFIfCEb7789qc52JvMz
         oJMBGPzsY2ieJKgxLKqxM0fOrl4K71QmKlFkIZLdd7gav4qk2SUOnY1TlgoW2tZl61Ql
         ZYmyhzbb1F/proTtETq/UMr7hd/KZWzgvLg+Zxqib0nEIcoe3rw/xIfkdtvuyuycf/bN
         L2og==
X-Gm-Message-State: AAQBX9d/vLLn84chpAmoTyklLhNDiyCwiJWZFn3ZPOF//BmJxKvxDzN7
        uxog/cpf9c8B5A+lJbCg5aKh9uqKKIkildq5pIg=
X-Google-Smtp-Source: AKy350ZDnAG/RbpODpMhHbQQQKasMvJuDihQxHcCfATBfFyCYb3BRA8UkowrWeSY1k9BeHAT2jcVnQ==
X-Received: by 2002:a81:a092:0:b0:552:a840:9da0 with SMTP id x140-20020a81a092000000b00552a8409da0mr1429651ywg.10.1682011271062;
        Thu, 20 Apr 2023 10:21:11 -0700 (PDT)
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com. [209.85.219.181])
        by smtp.gmail.com with ESMTPSA id v124-20020a818582000000b0054f9da5e8cbsm429860ywf.146.2023.04.20.10.21.08
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Apr 2023 10:21:09 -0700 (PDT)
Received: by mail-yb1-f181.google.com with SMTP id l5so2697730ybe.7
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 10:21:08 -0700 (PDT)
X-Received: by 2002:a25:d895:0:b0:b98:6352:be20 with SMTP id
 p143-20020a25d895000000b00b986352be20mr684421ybg.0.1682011268498; Thu, 20 Apr
 2023 10:21:08 -0700 (PDT)
MIME-Version: 1.0
References: <1681996394-13099-1-git-send-email-quic_vnivarth@quicinc.com> <1681996394-13099-5-git-send-email-quic_vnivarth@quicinc.com>
In-Reply-To: <1681996394-13099-5-git-send-email-quic_vnivarth@quicinc.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 20 Apr 2023 10:20:56 -0700
X-Gmail-Original-Message-ID: <CAD=FV=ULfbQh7JgGTNh67JjQCwcBZD3nZqWGw7-fP1W2WX0pfg@mail.gmail.com>
Message-ID: <CAD=FV=ULfbQh7JgGTNh67JjQCwcBZD3nZqWGw7-fP1W2WX0pfg@mail.gmail.com>
Subject: Re: [PATCH v4 4/5] arm64: dts: qcom: sdm845: Add stream-id of qspi to iommus
To:     Vijaya Krishna Nivarthi <quic_vnivarth@quicinc.com>
Cc:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org,
        cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_msavaliy@quicinc.com,
        mka@chromium.org, swboyd@chromium.org, quic_vtanuku@quicinc.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Apr 20, 2023 at 6:13=E2=80=AFAM Vijaya Krishna Nivarthi
<quic_vnivarth@quicinc.com> wrote:
>
> As part of DMA mode support to qspi driver.
>
> Signed-off-by: Vijaya Krishna Nivarthi <quic_vnivarth@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sdm845.dtsi | 1 +
>  1 file changed, 1 insertion(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
