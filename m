Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5E4633F8D81
	for <lists+devicetree@lfdr.de>; Thu, 26 Aug 2021 20:03:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243271AbhHZSD7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Aug 2021 14:03:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53166 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230525AbhHZSD7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Aug 2021 14:03:59 -0400
Received: from mail-ot1-x331.google.com (mail-ot1-x331.google.com [IPv6:2607:f8b0:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B3ACC0613CF
        for <devicetree@vger.kernel.org>; Thu, 26 Aug 2021 11:03:11 -0700 (PDT)
Received: by mail-ot1-x331.google.com with SMTP id l7-20020a0568302b0700b0051c0181deebso4595963otv.12
        for <devicetree@vger.kernel.org>; Thu, 26 Aug 2021 11:03:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=00ODvXs1l1HYHHrVAuYyIJapQwyyGrk/oOlWTo9m+TU=;
        b=WbggYB2Lvr7+Q/6+NWHy46OZj1WFebI+KRiOz5W47r894IlWRkmgYlRsc0tHKqJpjZ
         +M/TDvww4SI/dyAX7iYUs36JT2KQxaNSG1L/w8NHlO2IBkJP42xMc0IeIo5vC8R0ReZS
         ZwcwgTwVFW2fs5wWIHBshyL6Km5LgYwUSeHeg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=00ODvXs1l1HYHHrVAuYyIJapQwyyGrk/oOlWTo9m+TU=;
        b=jNVKROtFQt6f2n/qcNPSc4vEJyfGXpgvjncP5XV4XvmejQjdXVMsjomD+j+dnPW0qK
         MSIzL+dIMNOCQiJZH8xGBi0l8ExDCfcwZYHC2UTHSgca7PlaOodIk4yp4yWeETVO9o7j
         BfVljm27xaX5lG1T8sQqBCIqWtSYy7MTptAf6AVrFb6NGYStw+IRTaEGwPPAdVZF2mbm
         8PRUEK4F2S0fELO05DvCCr5prxAblXP5q0ISjHFZP0QMjO0uJX3uWpau8gpEqcrRxlVK
         TAfPEMDs/RTBUhgtHSj1sFJKBGhoKDo5xLX44MeXzCJgcGqYDhFUWEWtBfbhZdKLOzPQ
         8NkA==
X-Gm-Message-State: AOAM533NbC2tznXp2SU27y9RW2yB8IqjYV5wdpygB2szuBwLDL0kUzMv
        WsIBpxnyqN4Y+fzlgj4oGJgo8vDPXn7Rmz4QxbXUm09g9xY=
X-Google-Smtp-Source: ABdhPJwmkQ2w0Xwjdr/f/uXXwZO/sebVNyhc77oliNLZi0eNUmH/M3BHPOskp1JOzWaKTs0k1iO2Ws1l/ruAWBkZVaA=
X-Received: by 2002:a05:6830:2b24:: with SMTP id l36mr4328242otv.25.1630000990926;
 Thu, 26 Aug 2021 11:03:10 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 26 Aug 2021 18:03:10 +0000
MIME-Version: 1.0
In-Reply-To: <1629983731-10595-3-git-send-email-rajpat@codeaurora.org>
References: <1629983731-10595-1-git-send-email-rajpat@codeaurora.org> <1629983731-10595-3-git-send-email-rajpat@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Thu, 26 Aug 2021 18:03:10 +0000
Message-ID: <CAE-0n50u1Jfa-HEkM0Hj2p5B7wwy0XQ8cu5DBacpVGZdG4SkaA@mail.gmail.com>
Subject: Re: [PATCH V6 2/7] arm64: dts: sc7280: Configure SPI-NOR FLASH for sc7280-idp
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rajesh Patil <rajpat@codeaurora.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, rnayak@codeaurora.org,
        saiprakash.ranjan@codeaurora.org, msavaliy@qti.qualcomm.com,
        skakit@codeaurora.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Rajesh Patil (2021-08-26 06:15:26)
> Add spi-nor flash node and pinctrl configurations for the SC7280 IDP.
>
> Signed-off-by: Rajesh Patil <rajpat@codeaurora.org>
> Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
