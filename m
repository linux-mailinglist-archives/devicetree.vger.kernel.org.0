Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 068384E30F5
	for <lists+devicetree@lfdr.de>; Mon, 21 Mar 2022 20:52:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352849AbiCUTxv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Mar 2022 15:53:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352843AbiCUTxu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Mar 2022 15:53:50 -0400
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com [IPv6:2607:f8b0:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7648416C0AB
        for <devicetree@vger.kernel.org>; Mon, 21 Mar 2022 12:52:22 -0700 (PDT)
Received: by mail-oi1-x235.google.com with SMTP id n7so17394275oif.5
        for <devicetree@vger.kernel.org>; Mon, 21 Mar 2022 12:52:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=ok3RVltL8xCbLsqr5CfkTVPVWz4EKRmC9g7u5BKP3cI=;
        b=OYavUS59dk26LyBiY+BKFcEy8oe1jkfCsSArFJSB7rd8OZWWrOT0siAlHH/9NgcdBw
         wOmfgRGJWgh+cgDTD5QHC1UDlyIWoU/O3mkHW0oYxQJlNqvFQxPcdnqzJLf9QhrGLA1A
         EhbzmrkEX5Ns2SmbMFkLDkCKxWvYIfvEV9RrI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=ok3RVltL8xCbLsqr5CfkTVPVWz4EKRmC9g7u5BKP3cI=;
        b=RU7s9eRl8EMYC+DrIWUG/QB+/gmC8FmWFuhZFxz1rC/5uz2fpxmn26lNKJFR17Gy6E
         sz/OKBNmvqo0vIHW/r3OBF5sLUKa/ibc/b4sPiWORDMX0KcYeZirQ7Q+l0lzrd4d1ldc
         gcY0I2vp3nnWWoM7kfGy5kkvMT+smWvw0+sxV+OrpFTDBVu1gQoVULqqY7OnmbUG+oEz
         m2cOywhmf32U5ovAzGODLzxU8JlY9iSQ5D8uT16d4ZtHPpDJORdua4WQked1FmOz51yl
         nW8GhyrnSN4afC2cU4KnQvH5AphVJczbYZbDtk7CxVvLRbzNyXJHZ6gconvpQVumfC+G
         CQtQ==
X-Gm-Message-State: AOAM531W3i1W5XEqeM72hhIPpbRZQfbwzxGtNtJ/uObxXVy3GCOzWiw7
        Ag8uYm4uqVUFluW0D1Oi3ULvbzbuI3tFdc7C6Rduzg==
X-Google-Smtp-Source: ABdhPJw/w3E47RE2s1O6mJ0xGYZGoSVgYc7BhnMuoFT0ytHU1sjUK0Ss3SAsOoPu7b3lNEtFDeCqCZfCoVVY74aLXVY=
X-Received: by 2002:aca:bd41:0:b0:2ec:ff42:814f with SMTP id
 n62-20020acabd41000000b002ecff42814fmr399339oif.63.1647892341694; Mon, 21 Mar
 2022 12:52:21 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 21 Mar 2022 20:52:21 +0100
MIME-Version: 1.0
In-Reply-To: <1647865696-19192-3-git-send-email-quic_srivasam@quicinc.com>
References: <1647865696-19192-1-git-send-email-quic_srivasam@quicinc.com> <1647865696-19192-3-git-send-email-quic_srivasam@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Mon, 21 Mar 2022 20:52:21 +0100
Message-ID: <CAE-0n51iMpwMXayMEbPrqO2b=wX-Lz8DYiZMNnzRNGY1BNSKYg@mail.gmail.com>
Subject: Re: [PATCH v5 2/3] arm64: dts: qcom: sc7280: Add lpass cpu node
To:     Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>,
        agross@kernel.org, bjorn.andersson@linaro.org,
        devicetree@vger.kernel.org, dianders@chromium.org,
        judyhsiao@chromium.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, robh+dt@kernel.org,
        rohitkr@codeaurora.org, srinivas.kandagatla@linaro.org
Cc:     Venkata Prasad Potturu <quic_potturu@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Srinivasa Rao Mandadapu (2022-03-21 05:28:15)
> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> index 499299a..e6ec334 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -19,6 +19,7 @@
>  #include <dt-bindings/reset/qcom,sdm845-aoss.h>
>  #include <dt-bindings/reset/qcom,sdm845-pdc.h>
>  #include <dt-bindings/soc/qcom,rpmh-rsc.h>
> +#include <dt-bindings/sound/qcom,lpass.h>
>  #include <dt-bindings/thermal/thermal.h>
>
>  / {
> @@ -1980,6 +1981,68 @@
>                         #clock-cells = <1>;
>                 };
>
> +               lpass_cpu: audio-subsystem@3260000 {

The unit address should match the first reg address. This should be
3987000. By the way, 'subsystem' looks redundant. Maybe just
'audio@3987000' or 'subsystem@3987000'?
