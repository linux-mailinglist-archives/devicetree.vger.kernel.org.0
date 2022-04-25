Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 04DE750E652
	for <lists+devicetree@lfdr.de>; Mon, 25 Apr 2022 18:57:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243659AbiDYQ7V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Apr 2022 12:59:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44944 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240422AbiDYQ7V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Apr 2022 12:59:21 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B277C15727
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 09:56:16 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id u15so30758501ejf.11
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 09:56:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=YXo+ObBRhEePToAUIshvslaAhUHCrrCP+3VFCVvt/4I=;
        b=Rgajd143kZY1K05Q9IPBzZEAvOdKl5fnxOqPjswV36E0PnneOrdTDzlLXfk6kEff2p
         ZleTcs3nOA0IxBGmk1VYNU3WpY+ADRDhClHGbKOIHkIpq3ZO8o2kLyocP4GGHG9F4YKq
         dQz+eUcxWYQmasGuiAGMdUiluNB71N08enuC4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=YXo+ObBRhEePToAUIshvslaAhUHCrrCP+3VFCVvt/4I=;
        b=BRCBC3NpyhxGRYNHaSMuHszFntXiEleHoqXOHty6kknb4S+dVuYOmpIXF0La1AudPT
         V/5fZE+irPdiuGdw4ROdvSik29CR6BqUP6+lKnfBblwz4mpMpfp8PlAQLluxIH64c2on
         lFx4BrI1DyZmXRXSTngIasnICwdRJeW+oYIYFIBF3HCkf4qvaxicBxYL9SKU3GGTHuxU
         WZHXVfT1VyQDoGOVjUICSjDLwtSoL6Vjsi13DeT2/gnAg7nK3W8RSjn5BxtNeF901axI
         0QeR4r8SAxDgwRGZVqO4kajLZQjvroUj2G46iR4E+pYzXqvvhuYI1KhdLGNriE8JuKtr
         Yf2w==
X-Gm-Message-State: AOAM533G3isyawDvUSu+UhPc3LEWulPX+J3GDwvDX4GTLg9quGDrR3hP
        U8nC+14FNIEQFH10tugjWTJbiuQ5/doBGA==
X-Google-Smtp-Source: ABdhPJxWAv1qiwRV6oSEIoutE38i+8qX74bgIrC8mlkOehnYSzSnqG0vDgDLEPhJC1+vybBiyLZeRQ==
X-Received: by 2002:a17:906:5811:b0:6e8:47dd:c55d with SMTP id m17-20020a170906581100b006e847ddc55dmr17262793ejq.191.1650905775052;
        Mon, 25 Apr 2022 09:56:15 -0700 (PDT)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com. [209.85.221.49])
        by smtp.gmail.com with ESMTPSA id n14-20020a50934e000000b0042053e79386sm4876156eda.91.2022.04.25.09.56.12
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Apr 2022 09:56:13 -0700 (PDT)
Received: by mail-wr1-f49.google.com with SMTP id w4so21715931wrg.12
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 09:56:12 -0700 (PDT)
X-Received: by 2002:adf:f50d:0:b0:20a:e096:ef with SMTP id q13-20020adff50d000000b0020ae09600efmr1827132wro.679.1650905772336;
 Mon, 25 Apr 2022 09:56:12 -0700 (PDT)
MIME-Version: 1.0
References: <1650621734-10297-1-git-send-email-quic_srivasam@quicinc.com>
In-Reply-To: <1650621734-10297-1-git-send-email-quic_srivasam@quicinc.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 25 Apr 2022 09:56:00 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VoKE7DwoqSffXCbmx6MvOUEs7LbHiYtaR42BkHAei0dQ@mail.gmail.com>
Message-ID: <CAD=FV=VoKE7DwoqSffXCbmx6MvOUEs7LbHiYtaR42BkHAei0dQ@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: sc7280-qcard: Add ldo_l17b regulator node
To:     Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        quic_rohkumar@quicinc.com,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Judy Hsiao <judyhsiao@chromium.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Venkata Prasad Potturu <quic_potturu@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Apr 22, 2022 at 3:02 AM Srinivasa Rao Mandadapu
<quic_srivasam@quicinc.com> wrote:
>
> Add pm7325 ldo_l17b regulator, which is required for
> wcd codec vdd buck supply on sc7280-qcard board.
>
> Signed-off-by: Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
> Co-developed-by: Venkata Prasad Potturu <quic_potturu@quicinc.com>
> Signed-off-by: Venkata Prasad Potturu <quic_potturu@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sc7280-qcard.dtsi | 6 ++++++
>  1 file changed, 6 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
