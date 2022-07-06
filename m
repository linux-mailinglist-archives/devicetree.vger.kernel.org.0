Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E26525695DC
	for <lists+devicetree@lfdr.de>; Thu,  7 Jul 2022 01:31:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232006AbiGFXbI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jul 2022 19:31:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42774 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230009AbiGFXbH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jul 2022 19:31:07 -0400
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com [IPv6:2607:f8b0:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7991C2C106
        for <devicetree@vger.kernel.org>; Wed,  6 Jul 2022 16:31:06 -0700 (PDT)
Received: by mail-ot1-x332.google.com with SMTP id s13-20020a0568301e0d00b00616ad12fee7so12865397otr.10
        for <devicetree@vger.kernel.org>; Wed, 06 Jul 2022 16:31:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=bLBb96h4o+6m7G+7u8bDwIvQ0631/O8eJZaab+T17s0=;
        b=Vd9gt8Urb8w6iPVD/v7g1pifq9NFSRgh2NgsOEiOp86rfRNkozal3BpenJIcvOsru7
         hd/x3zZjpU27fNbXhoBEFjgDh60CtsSYn2xjmDu5QQC5dwSC8XDrgSgUEz872suYRmAm
         rTEei11GOXk7LwwvlTJdb2p04gTABzcIZMz6g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=bLBb96h4o+6m7G+7u8bDwIvQ0631/O8eJZaab+T17s0=;
        b=gLJ3J6F81BTI/0hqAknZkGlacPjQWq5MwkVbXaJO0uW0nvxuxmgW8EKb2TLb/7lsws
         Iy2mMqMwv7VsAeL8NZa8bo0KK+p+8vsEqjx9wqXxBK2cprrPqn5PKJZ5HzXqcFPgHmCt
         fAdEXaGnGGAbZzTSCtcVbWz4zOq9DsI8JLnkqJzolq+gzu9LPa+6EClnenv4VYBJ7a8l
         2y5CZHqNq9bkVZGJoEukUo/KD1ItY39sT0O8UJDVuVTP9bO6mX8L+3Eb3j7ZQInKWL1I
         RXteU//dMNvnj8PH58gRrcVYo7N4IBGYhfPThaPyDmOXXB7ydMkx4DOE+yAA73UJzaBk
         4SBA==
X-Gm-Message-State: AJIora8hISjjD77Gjgcc9OWba3V9Y2QEus8r9KAuQKMWzbCA7GPpgvdm
        CgyfWiDq6AIl724e2UymCK3+WAAu5J0qFl+VVxEuLQ==
X-Google-Smtp-Source: AGRyM1vNuiQwjPxBKLkD9XvgxVOjYM4F2c7Ajdm7Hss8UtcjtIkKw8yz94vtZ+yqZ/p1OH7O2q6wqiiOuLyTQ0m+HQQ=
X-Received: by 2002:a05:6830:d81:b0:616:c424:6f22 with SMTP id
 bv1-20020a0568300d8100b00616c4246f22mr19265666otb.77.1657150265868; Wed, 06
 Jul 2022 16:31:05 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 6 Jul 2022 19:31:05 -0400
MIME-Version: 1.0
In-Reply-To: <1656690436-15221-1-git-send-email-quic_khsieh@quicinc.com>
References: <1656690436-15221-1-git-send-email-quic_khsieh@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Wed, 6 Jul 2022 19:31:05 -0400
Message-ID: <CAE-0n50+-FUxLZZRCGr14csROPK=zqEc=kWfyMK_Qo_q_up3tQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dta: qcom: sc7180: delete vdda-1p2 and vdda-0p9
 from mdss_dp
To:     Kuogee Hsieh <quic_khsieh@quicinc.com>, agross@kernel.org,
        bjorn.andersson@linaro.org, devicetree@vger.kernel.org,
        dianders@chromium.org, robdclark@gmail.com, robh+dt@kernel.org,
        sean@poorly.run, vkoul@kernel.org
Cc:     quic_abhinavk@quicinc.com, quic_aravindh@quicinc.com,
        quic_sbillaka@quicinc.com, quic_mkrishn@quicinc.com,
        quic_kalyant@quicinc.coml, freedreno@lists.freedesktop.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
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

Subject should have 'dts', not 'dta'.

Quoting Kuogee Hsieh (2022-07-01 08:47:16)
> Both vdda-1p2-supply and vdda-0p9-supply regulators are controlled
> by dp combo phy. Therefore remove them from dp controller.
>
> Signed-off-by: Kuogee Hsieh <quic_khsieh@quicinc.com>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
