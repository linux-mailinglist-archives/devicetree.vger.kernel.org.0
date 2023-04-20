Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A578C6E9A90
	for <lists+devicetree@lfdr.de>; Thu, 20 Apr 2023 19:21:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231446AbjDTRVC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Apr 2023 13:21:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230514AbjDTRU7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Apr 2023 13:20:59 -0400
Received: from mail-yb1-xb33.google.com (mail-yb1-xb33.google.com [IPv6:2607:f8b0:4864:20::b33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A5A84692
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 10:20:56 -0700 (PDT)
Received: by mail-yb1-xb33.google.com with SMTP id m14so2768096ybk.4
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 10:20:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1682011255; x=1684603255;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ASlcFMe+UBtl/yEkw/ihBI+w8rG6+336g8ZGmASVmQA=;
        b=b/4+/nMZ6aynqFmw6ukRQJ6kN5aO9iGKZziVH89g5HjOChwnrAToiWKV0Nqh2ldrXU
         USCRfiAOtZk15vo2BOeRn8xQGP6n5n3S40HFCb0cKuXP/z1Ycm1zI9ndUbYp9qTxPQ/t
         iFQQ7elgHeKTv2UDBjGZrp24qsbTc63nNKgnk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682011255; x=1684603255;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ASlcFMe+UBtl/yEkw/ihBI+w8rG6+336g8ZGmASVmQA=;
        b=a+xdYnoJQZ2K3vvL2UtQjjR8B/YQ1oJVzeeXCWiD04F2zP17eLON81LnNSva/2VOH0
         unJQhM45vjKiMw5gWQmYjSgExfn/PU83LPSCRwi4jLZqARlOsAF+UdBFwNX+lVhss2bz
         WPzFLvlY4ySht+gphmCYzvY29essrXBTf9r3iQpV1OyBeWAghCfZ3mIzKhZ1zRs9mwnD
         fLRs+HsE3pIbfTiIUc9NVUtKxSQPq3AJMe/vZEop7KrCA70ciMv4ICL4yooi7l6LQPpP
         KRiGthnRBemO0jLJNcaF++4Xr1IXdmQr9S5WXEKyldFYlSGSchart9zG3VO46TMh7QSP
         ITsw==
X-Gm-Message-State: AAQBX9eBk9Lt4gLasJAgNdnF2wFzPIOIsYJcrkURwx4FI8bsyCmQ8kho
        NdeiluIYJ1DhvcnJsYtl5z5ZE/8IKd5zo4xZM4U=
X-Google-Smtp-Source: AKy350axmPomM7Sjz+Y3qOgENU9xj/7Ce9AxZCysvV5Ocsdj29T9x01FS8UpPQkA5+Aj5LzpTSHQ1Q==
X-Received: by 2002:a25:ad4e:0:b0:b72:4ca:b3ce with SMTP id l14-20020a25ad4e000000b00b7204cab3cemr2232775ybe.16.1682011254756;
        Thu, 20 Apr 2023 10:20:54 -0700 (PDT)
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com. [209.85.219.174])
        by smtp.gmail.com with ESMTPSA id t2-20020a259ac2000000b00b7e0d092f91sm409543ybo.18.2023.04.20.10.20.51
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Apr 2023 10:20:51 -0700 (PDT)
Received: by mail-yb1-f174.google.com with SMTP id n17so2787538ybq.2
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 10:20:51 -0700 (PDT)
X-Received: by 2002:a25:c807:0:b0:b95:2315:a2c4 with SMTP id
 y7-20020a25c807000000b00b952315a2c4mr1169128ybf.0.1682011250803; Thu, 20 Apr
 2023 10:20:50 -0700 (PDT)
MIME-Version: 1.0
References: <1681996394-13099-1-git-send-email-quic_vnivarth@quicinc.com> <1681996394-13099-4-git-send-email-quic_vnivarth@quicinc.com>
In-Reply-To: <1681996394-13099-4-git-send-email-quic_vnivarth@quicinc.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 20 Apr 2023 10:20:38 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XxbLsaxJc7YKH+beaPFTxq7x_jS_oQQ+KHXXQ=LgX3ag@mail.gmail.com>
Message-ID: <CAD=FV=XxbLsaxJc7YKH+beaPFTxq7x_jS_oQQ+KHXXQ=LgX3ag@mail.gmail.com>
Subject: Re: [PATCH v4 3/5] arm64: dts: qcom: sc7280: Add stream-id of qspi to iommus
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
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
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
> v2 -> v3:
> - modified commit message
> ---
>  arch/arm64/boot/dts/qcom/sc7280.dtsi | 1 +
>  1 file changed, 1 insertion(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
