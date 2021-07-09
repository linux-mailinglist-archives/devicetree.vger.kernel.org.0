Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 053233C1CCB
	for <lists+devicetree@lfdr.de>; Fri,  9 Jul 2021 02:36:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230219AbhGIAjQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Jul 2021 20:39:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43192 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230145AbhGIAjQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Jul 2021 20:39:16 -0400
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com [IPv6:2607:f8b0:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C0C3C061574
        for <devicetree@vger.kernel.org>; Thu,  8 Jul 2021 17:36:32 -0700 (PDT)
Received: by mail-ot1-x330.google.com with SMTP id 7-20020a9d0d070000b0290439abcef697so7721296oti.2
        for <devicetree@vger.kernel.org>; Thu, 08 Jul 2021 17:36:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=tuF3IuVNzqSNHva85jiAQLO3B1aho/MneB4ZBDZXRy8=;
        b=jpIHei6yaeR9akW+Y2UzwS3BRvAlIRfRrFNZhvlYnqWDx7G9nDGozYWuVtpWL/BHM3
         AfduFwh+mXRuS511r5CPbsQLpr3d+wy4/CKTpAB0UONTXs6Umz++imz9TOtz+faqMw3e
         A8AwypOmuQO/6PYrPosJ0P+dgDSl0gaE8YheE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=tuF3IuVNzqSNHva85jiAQLO3B1aho/MneB4ZBDZXRy8=;
        b=U2gGoltuLPSC9vIEbrISzOqEPhAH2wX063aBWpi+eh9rCwkLaQb4UHpDySD0IhCuOj
         uTSP+vzJqgjcCk71u/Xbi2huroqOfGhjYD7iy76cUdz6jZ0JxXigVVDavUbEX3NT9qbV
         WMI7IVvumUFPW/jJ5Z4bcDdLCTBHESKjNOtfJgJDS7W2uwdftv2UusHfQsfigZchXkPM
         qsn7sh5dIWs2BA5Kdq3Fgbhu9FsuMpBmpXMv7Y7DNIdjUEKX3fhbv1hu2ExGP99kS43l
         4KNoYkR3arqGe5cqRuw5LFaWUZgcVXp7xztamTCY6SA6DlP+2iw+grAd5vZ5dWFODaXy
         B6CQ==
X-Gm-Message-State: AOAM532lC0OJSjTqv/nSh4bwlxiU5YVWMgOqh0Z25JLt35CN2J2lLlGQ
        yZj588X3Op/ZJaYSfga5T11dnVFRQ1Ss93T403w2AA==
X-Google-Smtp-Source: ABdhPJx8hj2gTCj9PYRTgACjYv7kxabHym1eg1FH9L7bh5Agk44u+REO6GOw2ek1V3BqEZO2n50wOS9SKzQHTosBO2I=
X-Received: by 2002:a9d:8c7:: with SMTP id 65mr26372930otf.25.1625790992061;
 Thu, 08 Jul 2021 17:36:32 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 9 Jul 2021 00:36:31 +0000
MIME-Version: 1.0
In-Reply-To: <1625576413-12324-4-git-send-email-sanm@codeaurora.org>
References: <1625576413-12324-1-git-send-email-sanm@codeaurora.org> <1625576413-12324-4-git-send-email-sanm@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Fri, 9 Jul 2021 00:36:31 +0000
Message-ID: <CAE-0n520agdVS4H9Lfrs8agF4T6+P8665YTXjWcr_aqEDcRy4Q@mail.gmail.com>
Subject: Re: [PATCH v5 3/3] arm64: dts: qcom: sc7280: Add USB nodes for IDP board
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Doug Anderson <dianders@chromium.org>,
        Felipe Balbi <balbi@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sandeep Maheswaram <sanm@codeaurora.org>
Cc:     devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
        Pratham Pratap <prathampratap@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Sandeep Maheswaram (2021-07-06 06:00:13)
> Add USB nodes for sc7280 IDP board.
>
> Signed-off-by: Sandeep Maheswaram <sanm@codeaurora.org>
> Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
