Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B6AED3DF63B
	for <lists+devicetree@lfdr.de>; Tue,  3 Aug 2021 22:14:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240417AbhHCUOY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Aug 2021 16:14:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59730 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240423AbhHCUOY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Aug 2021 16:14:24 -0400
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com [IPv6:2607:f8b0:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C21BEC06175F
        for <devicetree@vger.kernel.org>; Tue,  3 Aug 2021 13:14:11 -0700 (PDT)
Received: by mail-oi1-x234.google.com with SMTP id q6so171579oiw.7
        for <devicetree@vger.kernel.org>; Tue, 03 Aug 2021 13:14:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=+/u7Fqz7b4vpkLt4MfAZ/z+pcTRWv1PaR2RpZemYy98=;
        b=b9dQbTwK/D4lySrEAu/umOYtkrvoiDNO3Mu0Wcpy0CjtqD0MNuVnnzMQfTqZMe2sB3
         3eezOEhb45vWXDxUhYopOCu8KFl4ApeNBciplagUwPiAI3Tsn3NUD4bqaXBdYUx+T62K
         OrUMmDwHVhyIWF9yon2q1NVN8/hfgpVqGG++8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=+/u7Fqz7b4vpkLt4MfAZ/z+pcTRWv1PaR2RpZemYy98=;
        b=qzVfBKgz/Z/27G12Yt/HioNbOmb7jnhYYM4zMHQezQTUg9dPlprPKySWFANPAvOccu
         JB7fTQjOgfvH30IgVdR0a4Kx9uQOalyiw1zHYYsXLYl8RZo/5CSMd/EHELGRQCBvNKW3
         Zpd9qGSv9NXGQzvE1EWwcj6V8RbWQJUXZAcfaiSSdgrFR88CJ0PwE1ZJ0juWGlf/RTw+
         qlpZ7vZpPstMa5VF4+Af5j3F4IgjNDN4TQ0HlxfriND7rv0IjEp7c/vDi5O5fzqKf4YE
         yq2s+B5aznap0YWYc6kzvw4jW4dF0gDn/3WndCL8TyBRxQdlOTqZ5YY3Jr+8FmNhFA6V
         soKg==
X-Gm-Message-State: AOAM532YLIKn0Q+30gcFFThwtrDG/hLk/m/ZdfNHxDn0EM5L3Q/0bVrN
        TuJRayFTodwrVVb2OVyYHjusPHvwvMeEgN5fpqQSxTQhnHc=
X-Google-Smtp-Source: ABdhPJwr23vRylG1JcVhTsx1vfrLS9ICAjf5ZYipJ+b5RlDF+2ftl6o18fFFBkKAK+UaEShz4DZg1FNxU2pxHZZYzJQ=
X-Received: by 2002:a05:6808:619:: with SMTP id y25mr167166oih.166.1628021651259;
 Tue, 03 Aug 2021 13:14:11 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 3 Aug 2021 15:14:10 -0500
MIME-Version: 1.0
In-Reply-To: <1627880576-22391-1-git-send-email-sanm@codeaurora.org>
References: <1627880576-22391-1-git-send-email-sanm@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Tue, 3 Aug 2021 15:14:10 -0500
Message-ID: <CAE-0n50YSvKm6fYxFm1P6jkmuS-AA2HTCWdsC1c==fdKJDc+zA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc7280: Add interconnect properties for USB
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

Quoting Sandeep Maheswaram (2021-08-01 22:02:56)
> Add interconnect properties in USB DT nodes for sc7280.
>
> Signed-off-by: Sandeep Maheswaram <sanm@codeaurora.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
