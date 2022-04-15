Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D38E2501F72
	for <lists+devicetree@lfdr.de>; Fri, 15 Apr 2022 02:04:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347918AbiDOAGW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Apr 2022 20:06:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347912AbiDOAGT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Apr 2022 20:06:19 -0400
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com [IPv6:2607:f8b0:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D8FABBE32
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 17:03:53 -0700 (PDT)
Received: by mail-oi1-x232.google.com with SMTP id r85so1896816oie.7
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 17:03:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=ro+gSfD7MjZ+mLIINFFkXoXNc/h+CjL8cuFVRh2byk8=;
        b=BFR5pAl2lEtAbigA2lyeUxNxd+VrlRZvDrD2+dCzsqu5BGthaWCGx8PGgAo5jQ6/n2
         36LLdQIOTS7fChlUT2/JWuBigQvtLEYAz+JK2UqhP5ueSlb8BEgRZV9Acw8mNXj/Mtff
         T49YhL2p8YcBr5smvMyAh0G2YCcgxAIW752eU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=ro+gSfD7MjZ+mLIINFFkXoXNc/h+CjL8cuFVRh2byk8=;
        b=s3WpVhlcL9Ieor3wXVS9/GGITyJRoObWtfFjOHwM0ZvHsKOqhzC/hAAYHdnl6q69H+
         U2vpaffd2sqU+3R57+pIflOIX0ff1j8EtQfyoQXn8JfaRTTpg7eAXJAk8P33tJ4w3PcK
         zXoDYttCU0EJ5HzKLO8xxHPJ5+dLG49LNKELqNleEgBKep5cNz2ApCn4O+m9r6TULuh3
         qIoIJlPcMJEO51AiZ700Xztjl6Aljc+tbZMcLM0fIwUnTppJ2a5RMCJK3O2MVwj/wmcY
         pehJ39bso8Oq+JWcvWTwRb7AFtBwJNBrZXVaFbtGATkMTMOHZLkK2vL0Hm6fmY7HUDYj
         xs8w==
X-Gm-Message-State: AOAM533A93mllk/GCcxKuRyIofhzLJJY/rrTGUx3c+ET0pw7FwXPekbL
        t6i2YYTphGWm9wZAQQ/uPj4AfM8anRs42R+58ZIFfA==
X-Google-Smtp-Source: ABdhPJyvlqfJpLh6LqpUZLTRAdRrRZ5O4NePRzZQuh/RNO0gZkwkRyFNFYkE75jZPHHTY70a+zi3S+y/ofsIwFxwS/c=
X-Received: by 2002:aca:bd41:0:b0:2ec:ff42:814f with SMTP id
 n62-20020acabd41000000b002ecff42814fmr504998oif.63.1649981032577; Thu, 14 Apr
 2022 17:03:52 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 14 Apr 2022 17:03:52 -0700
MIME-Version: 1.0
In-Reply-To: <1649944827-6455-3-git-send-email-quic_srivasam@quicinc.com>
References: <1649944827-6455-1-git-send-email-quic_srivasam@quicinc.com> <1649944827-6455-3-git-send-email-quic_srivasam@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Thu, 14 Apr 2022 17:03:52 -0700
Message-ID: <CAE-0n51bQxX8pDeT-nArmt3x1Yv=2T6B8RrapfB4EgHtmdLT_Q@mail.gmail.com>
Subject: Re: [PATCH v10 2/2] arm64: dts: qcom: sc7280: add lpass lpi pin
 controller node
To:     Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>,
        agross@kernel.org, bjorn.andersson@linaro.org,
        devicetree@vger.kernel.org, dianders@chromium.org,
        judyhsiao@chromium.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_rohkumar@quicinc.com,
        robh+dt@kernel.org, srinivas.kandagatla@linaro.org
Cc:     Venkata Prasad Potturu <quic_potturu@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Srinivasa Rao Mandadapu (2022-04-14 07:00:27)
> Add LPASS LPI pinctrl node required for Audio functionality on sc7280
> based platforms.
>
> Signed-off-by: Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
> Co-developed-by: Venkata Prasad Potturu <quic_potturu@quicinc.com>
> Signed-off-by: Venkata Prasad Potturu <quic_potturu@quicinc.com>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
