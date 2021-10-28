Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6D58643F23D
	for <lists+devicetree@lfdr.de>; Fri, 29 Oct 2021 00:02:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231221AbhJ1WFW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Oct 2021 18:05:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50658 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231361AbhJ1WFV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Oct 2021 18:05:21 -0400
Received: from mail-ot1-x331.google.com (mail-ot1-x331.google.com [IPv6:2607:f8b0:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFB80C0613B9
        for <devicetree@vger.kernel.org>; Thu, 28 Oct 2021 15:02:53 -0700 (PDT)
Received: by mail-ot1-x331.google.com with SMTP id w12-20020a056830410c00b0054e7ceecd88so10728901ott.2
        for <devicetree@vger.kernel.org>; Thu, 28 Oct 2021 15:02:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=DF04yPnmo0LbQaJ9E0egt2x9922ZUq9JvArAFYfNaB8=;
        b=aOqiQVgvO6V6A1UHdvKEX+MhCFFaSsYAau84X4E8bu03upfQXNFqgYCmTV2C/47t/Q
         ynVvehlb+SIU96GN+i5Q0UoLEPMt9fpdLUklWosIWRrA2hw6miK0/I7eVxa2YNjEB83b
         zFdAlVqAF165Vr6L+PWGUp6Kgs3KTk51Szw7o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=DF04yPnmo0LbQaJ9E0egt2x9922ZUq9JvArAFYfNaB8=;
        b=uzfRC1MtmWRZkhkT1gfjeL/TgaSmRGfAKI75CnupsMDcuZVvbAgTHpRQwXYxZJG1ND
         70M4o2ow83AzRIvUB5ejyLqJ+yUA10hX+IzoFAyjwCwzMrZZL9Eh1jH2xIfcpdfxGxLL
         9Ls6qqhLyMJSpV5mFbGu3BeYf8X7NYGi/mflSSUm+Zly6s+pM8MHh4jPJgoVGcPKt7YW
         ovC0zEdoTuRepL+a60YkxklW98hEElCU6Gk1azonZ8/btKRdrQ69gMASLTkBM/vk6kjw
         FtzUKjSdQtNbUGgCEe2OeuC2LhZWqZZ91rhaRom4URA0/FSoOPb8QbpSORRDAga21eO5
         DW2Q==
X-Gm-Message-State: AOAM530kVS6Ac29YqP+ohMULknpQ8FPX4rTqD4c6a8xOK1ITW7XFnbUi
        UCuEplfw+5NLaCwAcpi/4bsxI+97vBqFin5J7kCU/Q==
X-Google-Smtp-Source: ABdhPJytgzjZbpfcXHvH0e1ShYb/ZL5h3VAgUkdIdd6cBAjrzm1E9L9xIux/YTsyuf1mpTAyh6i5KiARwHWy8Q/k5HQ=
X-Received: by 2002:a05:6830:1c2e:: with SMTP id f14mr5361151ote.159.1635458573332;
 Thu, 28 Oct 2021 15:02:53 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 28 Oct 2021 15:02:52 -0700
MIME-Version: 1.0
In-Reply-To: <1633628923-25047-2-git-send-email-pmaliset@codeaurora.org>
References: <1633628923-25047-1-git-send-email-pmaliset@codeaurora.org> <1633628923-25047-2-git-send-email-pmaliset@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Thu, 28 Oct 2021 15:02:52 -0700
Message-ID: <CAE-0n51fLAYr9sZCZyKRHHuOLa=Qu=HvVDg6LiQR-QYwYGL2xQ@mail.gmail.com>
Subject: Re: [PATCH v12 1/5] dt-bindings: pci: qcom: Document PCIe bindings
 for SC7280
To:     Prasad Malisetty <pmaliset@codeaurora.org>, agross@kernel.org,
        bhelgaas@google.com, bjorn.andersson@linaro.org,
        lorenzo.pieralisi@arm.com, robh+dt@kernel.org, svarbanov@mm-sol.com
Cc:     devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
        dianders@chromium.org, mka@chromium.org, vbadigan@codeaurora.org,
        sallenki@codeaurora.org, manivannan.sadhasivam@linaro.org,
        linux-pci@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Prasad Malisetty (2021-10-07 10:48:39)
> Document the PCIe DT bindings for SC7280 SoC.The PCIe IP is similar
> to the one used on SM8250. Add the compatible for SC7280.
>
> Signed-off-by: Prasad Malisetty <pmaliset@codeaurora.org>
> Acked-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Stephen Boyd <swboyd@chromium.org>
> ---

I don't see this in linux-next still. Can it go through the pci tree?
