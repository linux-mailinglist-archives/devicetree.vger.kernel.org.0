Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7EEAF43F73F
	for <lists+devicetree@lfdr.de>; Fri, 29 Oct 2021 08:34:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232047AbhJ2Ggo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Oct 2021 02:36:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50378 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232080AbhJ2Ggg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Oct 2021 02:36:36 -0400
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com [IPv6:2607:f8b0:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27897C061766
        for <devicetree@vger.kernel.org>; Thu, 28 Oct 2021 23:34:08 -0700 (PDT)
Received: by mail-oi1-x22b.google.com with SMTP id n11so3867642oig.6
        for <devicetree@vger.kernel.org>; Thu, 28 Oct 2021 23:34:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=LdyQlxrzWbOOM6IQVsQWADvITYm15m7lBgreQU0z+q8=;
        b=FfeV3dgWxql0/MwEQoefRECi0YBjn5xq8Vf0BdspxAPVqFc/BHdVVigsfqfsnAFIp8
         A08AFGm/3Aj8w0UiorJvW2f1qPIurz8yVTLy3fSZSGsIPLlLZRJNLsDzE119SgA5ZM/p
         qWfgf+i3lbywLfSFakZq9nspDmNew2xayGxp4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=LdyQlxrzWbOOM6IQVsQWADvITYm15m7lBgreQU0z+q8=;
        b=y08gKns0/tjxtnSWPkjgPLVdnSMSaSXPnwH/uMJxFzZEkx+olaelrWbhl1DgRMYL+4
         2Uw4HXogZ5WR8+VY9HNm8YuoGPPuHsrg/j/2rT6jzQ+g3AIX0F6l2sfi0DLCvFdq6dPl
         CJ9eTKjm+TROgUmTGGwlPgLmCyE6ecK1nbVB9XVsTGZnEDPAP40qpAinoRS4qKIBEerr
         lzSX7pGCoeZDrFlaoUwJqWhu17//42M/7d9b1uL751UsFvH1qsjcTAC8AAl6aKidj0TE
         aFsNl2rNmAcqGsNa5mhy0IRXdWRQyXc64bOXZQEKiXsbfIbe+W5SUNEWZU1m1xZ41CET
         rxRQ==
X-Gm-Message-State: AOAM5334yde4Te21CZtqAkNU9XQLs7mUmTPJtKtTBDHo4CuA2juzixob
        12Uc4c673vAeH1U9le/tMUv+CZrI+pTDafydop/Y8Q==
X-Google-Smtp-Source: ABdhPJwgu6i89h0U7jRPpXxCw5tTtZdaLWCyAQ11PiYXRiQJo51OYOULr10LHM/9CoAUc+h29HL2VQ/CN0+VgbnRZxo=
X-Received: by 2002:a05:6808:2128:: with SMTP id r40mr4875119oiw.164.1635489247551;
 Thu, 28 Oct 2021 23:34:07 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 28 Oct 2021 23:34:07 -0700
MIME-Version: 1.0
In-Reply-To: <000001d7cc8d$467fe1c0$d37fa540$@codeaurora.org>
References: <1633330133-29617-1-git-send-email-pillair@codeaurora.org>
 <CAE-0n53rkv5SKO74M+7bkuMgaD7tS0k6a8m7KeQL8j3DTHdB_Q@mail.gmail.com>
 <001401d7cbfc$f0d1d700$d2758500$@codeaurora.org> <CAE-0n53KCUoJWdKTY954OviRX4yShigByHB4L3OGTAGQEaHoqQ@mail.gmail.com>
 <000001d7cc8d$467fe1c0$d37fa540$@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Thu, 28 Oct 2021 23:34:07 -0700
Message-ID: <CAE-0n53ao4WCuQ8Z8aVc-hdcrA9dtcmjB79dnXUGsUbYiN1VWw@mail.gmail.com>
Subject: RE: [PATCH v6 0/3] Add support for sc7280 WPSS PIL loading
To:     agross@kernel.org, bjorn.andersson@linaro.org,
        mathieu.poirier@linaro.org, ohad@wizery.com,
        p.zabel@pengutronix.de, pillair@codeaurora.org, robh+dt@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, sibis@codeaurora.org,
        mpubbise@codeaurora.org, kuabhs@chromium.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting pillair@codeaurora.org (2021-10-28 23:21:49)
> >
> > Other firmwares have done it so it seems technically possible. So nothing is
> > preventing it?
>
> Yes it should be possible.
> I can probably add that support and post it as a different patch series, so as to
> not club it with the current patch series. Does that sound okay ?
>

Yes
