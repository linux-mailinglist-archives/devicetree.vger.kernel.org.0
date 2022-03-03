Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 303FE4CC882
	for <lists+devicetree@lfdr.de>; Thu,  3 Mar 2022 23:06:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236727AbiCCWHA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Mar 2022 17:07:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231673AbiCCWHA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Mar 2022 17:07:00 -0500
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com [IPv6:2607:f8b0:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9ED26169224
        for <devicetree@vger.kernel.org>; Thu,  3 Mar 2022 14:06:13 -0800 (PST)
Received: by mail-ot1-x32a.google.com with SMTP id g6-20020a9d6486000000b005acf9a0b644so5803557otl.12
        for <devicetree@vger.kernel.org>; Thu, 03 Mar 2022 14:06:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=pdvZcd1dCzTos36AEvo2XuYW96g/JSyyd6Ju386HZBA=;
        b=GU/VicsmSZRw1d2LkDZ6wzydbTYT4L8dB1zCnJwjzA08Es/V8nusp7J1acftodaTq0
         5HH7HAouRm088ujftN55DNIdMBENIQKdJvGbxCq+X2n4YuPls/MdNaItK8W+zOfxKnv/
         O+Fxmy7cnSFBcug80vgAZtRq7kEgQVZE07yfY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=pdvZcd1dCzTos36AEvo2XuYW96g/JSyyd6Ju386HZBA=;
        b=L0jpg4TcwF9BaMr6M/wyWqewaNiZxNbjMTk8Vn5h7JB3wk7UvZITggWdYflrOF8J3B
         m0FOVRO8OgWS+XysNRRk7MR0YCyCgNVOjMaWXzVvLZLmGcIikfugdMVCTI5G0x8DR1+/
         5iPEtvcgRxDwvalydT5rH7lbN2iaArll4nZpHzf9AyhrWUJm7xDWJJ7up2BAsszDL+oI
         bLtTWa1k2NNeG/pJiNkpsRx/6y6ySVvzpSOECku1C3+ews8oOQDFbaP5zA+W35Xyqavb
         /GhrgxGucKLM+x1GrL2+5w4yJm4xskBLSiRxAx5wP7hi79itIi7geifaj9t3Q5qKuyhS
         sWrA==
X-Gm-Message-State: AOAM5338bCl7LaI5pr1MxtG88nhduFVkr9zdV70cMPubVVSFWKgdX2SL
        At2FR8V47nLNWgYX1MlInWs6ajb9PmTQEc+gqmd4R2UdfCs=
X-Google-Smtp-Source: ABdhPJzIsZYjGMPB9mIKaz9We4al2KijnAO/aGSWVSgdvkGTTn/LV94gdLX1B1Wq6BQq3wFmiUQFljUdJvXq2KeLZYw=
X-Received: by 2002:a9d:22e9:0:b0:5ac:1754:342c with SMTP id
 y96-20020a9d22e9000000b005ac1754342cmr19987839ota.159.1646345172996; Thu, 03
 Mar 2022 14:06:12 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 3 Mar 2022 14:06:12 -0800
MIME-Version: 1.0
In-Reply-To: <1646300401-9063-3-git-send-email-quic_vpolimer@quicinc.com>
References: <1646300401-9063-1-git-send-email-quic_vpolimer@quicinc.com> <1646300401-9063-3-git-send-email-quic_vpolimer@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Thu, 3 Mar 2022 14:06:12 -0800
Message-ID: <CAE-0n539U9OzNRoaAG28TG7UJBUdiBYdJ-PKzGyF++ihK0Xo1A@mail.gmail.com>
Subject: Re: [PATCH v4 2/4] arm64/dts/qcom/sc7180: remove assigned-clock-rate
 property for mdp clk
To:     Vinod Polimera <quic_vpolimer@quicinc.com>,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-arm-msm@vger.kernel.org
Cc:     linux-kernel@vger.kernel.org, robdclark@gmail.com,
        dianders@chromium.org, quic_kalyant@quicinc.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Vinod Polimera (2022-03-03 01:39:59)
> Kernel clock driver assumes that initial rate is the
> max rate for that clock and was not allowing it to scale
> beyond the assigned clock value.
>
> Drop the assigned clock rate property and vote on the mdp clock as per
> calculated value during the usecase.
>
> Fixes: a3db7ad1af("arm64: dts: qcom: sc7180: add display dt nodes")
> Signed-off-by: Vinod Polimera <quic_vpolimer@quicinc.com>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
