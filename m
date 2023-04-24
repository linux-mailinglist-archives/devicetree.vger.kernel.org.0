Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A88E96ED0B6
	for <lists+devicetree@lfdr.de>; Mon, 24 Apr 2023 16:52:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231830AbjDXOwR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Apr 2023 10:52:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42044 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231995AbjDXOwF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Apr 2023 10:52:05 -0400
Received: from mail-il1-x133.google.com (mail-il1-x133.google.com [IPv6:2607:f8b0:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8DF07EF1
        for <devicetree@vger.kernel.org>; Mon, 24 Apr 2023 07:51:38 -0700 (PDT)
Received: by mail-il1-x133.google.com with SMTP id e9e14a558f8ab-32943f2063cso11099725ab.0
        for <devicetree@vger.kernel.org>; Mon, 24 Apr 2023 07:51:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1682347891; x=1684939891;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0LGZkqwX4EU9DdgtbcEz0RVWmR0Z/MRzMUh+6ISg2Gg=;
        b=ju0Z/nU47kuo9LbsbKWAIdpPtbsi86JUxRXuEcBMEheuXMbmkyxHEWVusQecwm9Wlf
         OP8mhegcV3fWzzeIUajBH64IBj37Wfrrr6M5wCCKG6kif7d7AEB9yBggff4HLVUIXiqo
         gjqj27Y5GWnHhF99fYzSRMruEGvVKXIGwRWYY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682347891; x=1684939891;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0LGZkqwX4EU9DdgtbcEz0RVWmR0Z/MRzMUh+6ISg2Gg=;
        b=Z+hAtyBjcKGRpKWUXHOFRLM+5jsYZJPZey4LcKZ30f86oczE2UZ6nd5SZd8IcrD2ti
         L+/psWx/WfSHKVzSCDAEIiAyD4biESdMQg3evlfxuDvpjuCi5AO8Kqz1LBzOAvKyOPK1
         N9tB4RF+ZWtCRp25qvVVbUzgQ/K+QOjL0bcCCPOmma3R7N5uWV4Gx+c4P3K/2xKiJ6pA
         BQocckWUkU9z0ytYc4TXtsdUgJnFxZ+XIbHWMlJOPPG+rlzHi4WMgALirgLPI3DMCd7+
         t04CslwSAqzWNnldJOL1QtA2D9JUTOLARtq3cFgMUpxZsx6SrBHc3rOjI+Bcr6dD21uF
         T9KA==
X-Gm-Message-State: AAQBX9cyG+gk9/Zw8vAhg60l1hTWxZbkqAzwTbxLs5R7eOfmAfpJONY/
        UrITW56RbYTbSvWdKe3c3DYez/vHUyCURYWAI6M=
X-Google-Smtp-Source: AKy350aZSoOrOLDov+/dFfsyoIApvOVJf82D0wxYLJIIFTmG4pPYqfz/MQdGflXuhyKeRjI6k64I2Q==
X-Received: by 2002:a92:ce08:0:b0:31f:9b6e:2f4d with SMTP id b8-20020a92ce08000000b0031f9b6e2f4dmr6018076ilo.0.1682347890801;
        Mon, 24 Apr 2023 07:51:30 -0700 (PDT)
Received: from mail-il1-f170.google.com (mail-il1-f170.google.com. [209.85.166.170])
        by smtp.gmail.com with ESMTPSA id o11-20020a92dacb000000b00326ceaf3d96sm3028230ilq.71.2023.04.24.07.51.26
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Apr 2023 07:51:27 -0700 (PDT)
Received: by mail-il1-f170.google.com with SMTP id e9e14a558f8ab-329577952c5so1050965ab.1
        for <devicetree@vger.kernel.org>; Mon, 24 Apr 2023 07:51:26 -0700 (PDT)
X-Received: by 2002:a92:c24c:0:b0:32b:5cff:3e3b with SMTP id
 k12-20020a92c24c000000b0032b5cff3e3bmr455771ilo.9.1682347886370; Mon, 24 Apr
 2023 07:51:26 -0700 (PDT)
MIME-Version: 1.0
References: <1682328761-17517-1-git-send-email-quic_vnivarth@quicinc.com> <1682328761-17517-6-git-send-email-quic_vnivarth@quicinc.com>
In-Reply-To: <1682328761-17517-6-git-send-email-quic_vnivarth@quicinc.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 24 Apr 2023 07:51:13 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XEsLeAzFDqcXjeGAxovSwzVENeF4km5wLkhjgpSOKR5g@mail.gmail.com>
Message-ID: <CAD=FV=XEsLeAzFDqcXjeGAxovSwzVENeF4km5wLkhjgpSOKR5g@mail.gmail.com>
Subject: Re: [PATCH v5 5/5] spi: spi-qcom-qspi: Add DMA mode support
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
X-Spam-Status: No, score=-2.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Apr 24, 2023 at 2:32=E2=80=AFAM Vijaya Krishna Nivarthi
<quic_vnivarth@quicinc.com> wrote:
>
> Current driver supports only PIO mode.
>
> HW supports DMA, so add DMA mode support to the driver
> for better performance for larger xfers.
>
> Signed-off-by: Vijaya Krishna Nivarthi <quic_vnivarth@quicinc.com>
> ---
> v4 -> v5:
> - dropped xfer_mode
> - clear all interrupts in handle_err()
> - dont log ptr value
> - dropped some dev_err()
> - converted some dev_err() to dev_warn_once()
> - drop few redundant comments
> - can_dma() disabled if iommus not present in dev_node
> - other nits
>
> v3 -> v4:
> - corrected tabs spacing
> - dropped dma data descriptors
> - dropped INVALID from xfer_mode enum
> - qspi_buswidth_to_iomode() to return iomode without shifting
> - dropped non-functional change in qcom_qspi_set_speed()
> - drop redundant call to wmb()
> - fallback to pio if dma fails to setup
> - use dmam_pool_create() the devm version
> - thus drop dma_pool_destroy()
> - set dma_alignment field in probe()
> - other minor changes
>
> v2 -> v3:
> - dropped Reported-by tag
>
> v1 -> v2:
> - modified commit message
> - addressed kernel test robot error
> - correct placement of header file includes
> - added more comments
> - coding style related changes
> - renamed variables
> - used u32/u8 instead of uint32_t/8_t
> - removed unnecessary casting
> - retain same MSTR_CONFIG as PIO for DMA
> - unset fragment bit only for last cmd_desc of last xfer
> ---
>  drivers/spi/spi-qcom-qspi.c | 218 ++++++++++++++++++++++++++++++++++++++=
++++--
>  1 file changed, 212 insertions(+), 6 deletions(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
