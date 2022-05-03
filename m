Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4EC4751888F
	for <lists+devicetree@lfdr.de>; Tue,  3 May 2022 17:29:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238519AbiECPdU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 May 2022 11:33:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43446 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238511AbiECPdT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 May 2022 11:33:19 -0400
Received: from mail-io1-xd32.google.com (mail-io1-xd32.google.com [IPv6:2607:f8b0:4864:20::d32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4557628E1A
        for <devicetree@vger.kernel.org>; Tue,  3 May 2022 08:29:47 -0700 (PDT)
Received: by mail-io1-xd32.google.com with SMTP id e194so19311179iof.11
        for <devicetree@vger.kernel.org>; Tue, 03 May 2022 08:29:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rPC8+21dGVPrqmLTCbG4CdID6aBZE3p2csZDn91eaqM=;
        b=D5jX00kZ19+ALU+47QbVZQSduLJxg5L8nwz4y/EPRt0zP2KgYTt9qsvaQ+Ph89HGm0
         EA0VmTJDTS7hsvjcxX7QMqtdaac7cNeHVZE0WUSPAcjyXzUrGEi5uOSjifoduBQhMFHU
         fNAXQ4kMt+Cl8L4gawpNUTDTyl5zzXwIk9Qgg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rPC8+21dGVPrqmLTCbG4CdID6aBZE3p2csZDn91eaqM=;
        b=Zadrwbd03uLAZTdq0Qvx2nUi2EG9JHUEvaxQdy4B7A3xcPbSeuQgi2hxTT3erOnEDJ
         /PafQOfk36kOtxxwEXNcXL6+cSsDWfMTNrg9NKABLfdnVHHtmNnNG8Te/XIHCmvN4g8a
         Ke4UeJEVGtGJK2gOXTpDMoAosFg/ZRze82OJOF5YPj5AyaUxRABdkhst1gcRk6+6hRS4
         dGMa4Lp6dtp75lgpRIv2X/tPE8luZ2iT0mncC7O9PFlWN+KlsjdyXRVqFhJqijoiedLw
         pUjlL0nGrKQ90Je3WmBLqBMFl+KrQ3W7RSyD8vjjggkFhGUFutkPKOYbvHEDvmcN/o6l
         bReA==
X-Gm-Message-State: AOAM532dvrSuF5Tz1hzDmBv7/8ne7TcmKVTR1U3vhp6njIoRn4K5oIqP
        nld2Vj7/jLFGF89+GFVxdo9QhZ4a2evko5lG
X-Google-Smtp-Source: ABdhPJz5lQ5HuP8g60E0iFdW5nTq+BDfp/dbUiccTS46KyQTdLjFti8XWXVNIJZQFDYVO0meHndzLg==
X-Received: by 2002:a02:bb87:0:b0:32a:f103:60ce with SMTP id g7-20020a02bb87000000b0032af10360cemr7102468jan.223.1651591786446;
        Tue, 03 May 2022 08:29:46 -0700 (PDT)
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com. [209.85.166.53])
        by smtp.gmail.com with ESMTPSA id z16-20020a6b0a10000000b0065a47e16f42sm3031658ioi.20.2022.05.03.08.29.44
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 May 2022 08:29:45 -0700 (PDT)
Received: by mail-io1-f53.google.com with SMTP id z26so19318484iot.8
        for <devicetree@vger.kernel.org>; Tue, 03 May 2022 08:29:44 -0700 (PDT)
X-Received: by 2002:a02:a98f:0:b0:315:19db:27a3 with SMTP id
 q15-20020a02a98f000000b0031519db27a3mr6898987jam.184.1651591783652; Tue, 03
 May 2022 08:29:43 -0700 (PDT)
MIME-Version: 1.0
References: <1650556567-4995-1-git-send-email-quic_vnivarth@quicinc.com>
In-Reply-To: <1650556567-4995-1-git-send-email-quic_vnivarth@quicinc.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 3 May 2022 08:29:23 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WbHJq_2gcpcuNHwBLFsi2UZR+JetWFfdZBvwD68RSnEg@mail.gmail.com>
Message-ID: <CAD=FV=WbHJq_2gcpcuNHwBLFsi2UZR+JetWFfdZBvwD68RSnEg@mail.gmail.com>
Subject: Re: [V6 0/2] arm64: dts: qcom: Configure CTS pin to bias-bus-hold for bluetooth
To:     Vijaya Krishna Nivarthi <quic_vnivarth@quicinc.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        quic_msavaliy@quicinc.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Bjorn,

On Thu, Apr 21, 2022 at 8:56 AM Vijaya Krishna Nivarthi
<quic_vnivarth@quicinc.com> wrote:
>
> WLAN rail was leaking power during RBSC/sleep even after turning BT off.
> Change pinctrl configuration to handle same.
>
> Signed-off-by: Vijaya Krishna Nivarthi <quic_vnivarth@quicinc.com>
> ---
> v6: add code comments about how bias-bus-hold could save power
> v5: modify subject to include bluetooth
> v4: modify subject of each patch to indicate what it is applying to
> v3: apply same change to active state and other sc7280*.dts* as well
> v2: used bias-bus-hold as per review comments
> v1: intial patch used bias-disable for sleep pinctrl in sc7280-idp only
> ---
>
> Vijaya Krishna Nivarthi (2):
>   arm64: dts: qcom: sc7280-idp: Configure CTS pin to bias-bus-hold for
>     bluetooth
>   arm64: dts: qcom: sc7280-qcard: Configure CTS pin to bias-bus-hold for
>     bluetooth
>
>  arch/arm64/boot/dts/qcom/sc7280-idp.dtsi   | 18 ++++++++++++------
>  arch/arm64/boot/dts/qcom/sc7280-qcard.dtsi | 19 ++++++++++++++-----
>  2 files changed, 26 insertions(+), 11 deletions(-)

If the tree hasn't closed yet, I think these two patches are waiting
to land and ready to go.

Thanks!

-Doug
