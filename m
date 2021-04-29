Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 163BC36EB71
	for <lists+devicetree@lfdr.de>; Thu, 29 Apr 2021 15:40:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237084AbhD2Nkn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Apr 2021 09:40:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57452 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234147AbhD2Nkm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Apr 2021 09:40:42 -0400
Received: from mail-qv1-xf2f.google.com (mail-qv1-xf2f.google.com [IPv6:2607:f8b0:4864:20::f2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C83D2C06138D
        for <devicetree@vger.kernel.org>; Thu, 29 Apr 2021 06:39:55 -0700 (PDT)
Received: by mail-qv1-xf2f.google.com with SMTP id i8so2839341qvv.0
        for <devicetree@vger.kernel.org>; Thu, 29 Apr 2021 06:39:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nayZswG1pGWH/1ZVEDlOm+OC2v9MFMOWazufEH7nVHg=;
        b=m2IptUcSZXqa1ZQ2PcIocz7TAM9fkvwY26tRwZC1KB4hwMB/b7f3fZvwKk+IbRrDTv
         TZKSui3NWe0UTSLJSfrfP1NHMSRrFPuoOgFluUMWIY/oUtj90ili9/Z+8EpkuSMDxd9Z
         9gcgKhxEE5WrYbaqR19u+uEFAOQhqvpSt0n6E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nayZswG1pGWH/1ZVEDlOm+OC2v9MFMOWazufEH7nVHg=;
        b=gqduVJ5fzsJV6X1tsH/o/S9t9YLARrIL1mubBwYwaHlxLKgAEtAhO4Y4vDKxjSUCW7
         /REUHF3koedxYWW0s6+B6C8X03CdRk27SK/VdC+M+x18JxOysyEyk7oQzGhWvcJNxXYP
         1T/Dqp8zhBVTDchfQJboCjzM8riDQojjgtqlVWyPVz2kpyV4OatM9qtVtwa60/LJKG1b
         oW6hevmKJH5ZKmkqiGwUJVE+kIqI+L5FgnRYdHneQ/I+OnKfhE1TtmRZVEwzx/gs/SRz
         b1n781L8bbl+NJNZElV96DQdR4sGsfQU4NZ5tABlVdaa7iZfQKsWwBV7cPDjd379iY2e
         zwmQ==
X-Gm-Message-State: AOAM530IsuZjxNvLOzDx6wHvdm3s+r/HUYqJ8ITKlbFgKNkCOxAFROu5
        yYvScEwhlj0BXAiSGr5zeemR2eG0cSbIFA==
X-Google-Smtp-Source: ABdhPJyBqhm99H6NvPfhObnGo58avwVBnbatpOk0BvgyMAmuvT+qlBXo5s4fSbmo95gakZvSOsxbCQ==
X-Received: by 2002:ad4:55ca:: with SMTP id bt10mr18787810qvb.6.1619703594664;
        Thu, 29 Apr 2021 06:39:54 -0700 (PDT)
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com. [209.85.219.175])
        by smtp.gmail.com with ESMTPSA id n18sm2071247qtv.87.2021.04.29.06.39.54
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Apr 2021 06:39:54 -0700 (PDT)
Received: by mail-yb1-f175.google.com with SMTP id 82so78551446yby.7
        for <devicetree@vger.kernel.org>; Thu, 29 Apr 2021 06:39:54 -0700 (PDT)
X-Received: by 2002:a05:6902:567:: with SMTP id a7mr20668343ybt.276.1619703593609;
 Thu, 29 Apr 2021 06:39:53 -0700 (PDT)
MIME-Version: 1.0
References: <1619674827-26650-1-git-send-email-rnayak@codeaurora.org>
In-Reply-To: <1619674827-26650-1-git-send-email-rnayak@codeaurora.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 29 Apr 2021 06:39:42 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UARyDuE+vEQGX4kTaQdMiPg6rX3K5CuYzkriQaviQbAQ@mail.gmail.com>
Message-ID: <CAD=FV=UARyDuE+vEQGX4kTaQdMiPg6rX3K5CuYzkriQaviQbAQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: qcom: Document google,senor board
To:     Rajendra Nayak <rnayak@codeaurora.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Apr 28, 2021 at 10:41 PM Rajendra Nayak <rnayak@codeaurora.org> wrote:
>
> Document the google,senor board based on sc7280 SoC
>
> Signed-off-by: Rajendra Nayak <rnayak@codeaurora.org>
> ---
>  Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
>  1 file changed, 1 insertion(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
