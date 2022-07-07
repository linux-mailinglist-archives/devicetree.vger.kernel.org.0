Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 74AFF56A3FC
	for <lists+devicetree@lfdr.de>; Thu,  7 Jul 2022 15:45:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235719AbiGGNo7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jul 2022 09:44:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235517AbiGGNo6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jul 2022 09:44:58 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D911515FD8
        for <devicetree@vger.kernel.org>; Thu,  7 Jul 2022 06:44:56 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id n8so23255950eda.0
        for <devicetree@vger.kernel.org>; Thu, 07 Jul 2022 06:44:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=UG3BBJeQ9RIjyjrD9MOB3B5ohCStf2aBTETpevs+XUA=;
        b=X39mUG+jYTlLCiofyr0kiIG3mDhenlIh8E2uip6pT9ESNsQWC+IFZws1LCAOeKhmv2
         uMZOU76uVeoFJf0TVrVQej/MyqWt41MdhSk3TUzUTlJ/+jsZFtPuXwe/GO9aR4WfUsgy
         FwL4VdBDHlh1wInQKar1y4jfn6kh8wQDtQXrM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=UG3BBJeQ9RIjyjrD9MOB3B5ohCStf2aBTETpevs+XUA=;
        b=igm4B8BK65ELVdorlu3AX61JNYfX+RlmLu5Rw3PWxDGmvfX4VDc4FlODO/ybBw1s0z
         DyIb2/T8TB8ydiMLMs2viRGb8RDX6GF7EkbOM1f7wtJR6iPrPzWdtcAXCiSCnYgxgos/
         SNrv+qhhflqB7/w/hKTcVCG3Tx6iOb/HmjOJS7shebdAr1U2cvd6G5TzBC/Yp+lkq8pF
         uLb+uSlYkmGhg4YRkyNPJ/8ynmyCHwbOdtERA9fFrc324XdQFSFDv2hT+b8Op7IP5Ta0
         7AauN4I7BNut3JVbqtfyh+PG33Etz780lE0v0SDH1qSRAYt7xBFZ7TIP/5lr7qLaRw5C
         RFPQ==
X-Gm-Message-State: AJIora9trOVjycdAfGi9FG677InwfmjHV72P2CxtWLFHo5ux4X9Y5Xt9
        bl95HFCVaBYyp8gcHrmC6LAi8yjnfBRDj8hBoGA=
X-Google-Smtp-Source: AGRyM1vg3Vf2LyDidF/62d8xPRb4hxUPRkqarlO0nEuTUUDIojvUC9rrQkiiDCULyZzlz5tuH/r98w==
X-Received: by 2002:aa7:ce8a:0:b0:43a:7b0e:9950 with SMTP id y10-20020aa7ce8a000000b0043a7b0e9950mr18656554edv.58.1657201495157;
        Thu, 07 Jul 2022 06:44:55 -0700 (PDT)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com. [209.85.221.50])
        by smtp.gmail.com with ESMTPSA id 2-20020a170906200200b0072b13fa5e4csm649681ejo.58.2022.07.07.06.44.53
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Jul 2022 06:44:54 -0700 (PDT)
Received: by mail-wr1-f50.google.com with SMTP id o4so26402315wrh.3
        for <devicetree@vger.kernel.org>; Thu, 07 Jul 2022 06:44:53 -0700 (PDT)
X-Received: by 2002:adf:ead2:0:b0:21d:8b49:6138 with SMTP id
 o18-20020adfead2000000b0021d8b496138mr959496wrn.138.1657201493566; Thu, 07
 Jul 2022 06:44:53 -0700 (PDT)
MIME-Version: 1.0
References: <1657197381-1271-1-git-send-email-quic_srivasam@quicinc.com>
In-Reply-To: <1657197381-1271-1-git-send-email-quic_srivasam@quicinc.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 7 Jul 2022 06:44:41 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XD8vDPqkax1z6cB7ujOv_82YqkzZA1YNaPAGO+by4xJw@mail.gmail.com>
Message-ID: <CAD=FV=XD8vDPqkax1z6cB7ujOv_82YqkzZA1YNaPAGO+by4xJw@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: sc7280: Move wcd specific pin conf
 to common file
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
        Judy Hsiao <judyhsiao@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Jul 7, 2022 at 5:36 AM Srinivasa Rao Mandadapu
<quic_srivasam@quicinc.com> wrote:
>
> Move wcd specific pin conf to common file to support various
> herbronie variant boards and to avoid duplicate nodes in dts files.
>
> Signed-off-by: Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
> ---
> Changes Since V1:
>     -- Remove redundant documentation.
>     -- Update the pincontrol header comment.
>
>  .../dts/qcom/sc7280-herobrine-audio-wcd9385.dtsi   | 64 ++++++++++++++++++++++
>  arch/arm64/boot/dts/qcom/sc7280-herobrine-crd.dts  | 61 ---------------------
>  2 files changed, 64 insertions(+), 61 deletions(-)

Looks fine to me now, thanks!

Reviewed-by: Douglas Anderson <dianders@chromium.org>
