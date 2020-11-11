Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 62FA52AE622
	for <lists+devicetree@lfdr.de>; Wed, 11 Nov 2020 03:08:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731984AbgKKCIu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Nov 2020 21:08:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726307AbgKKCIu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Nov 2020 21:08:50 -0500
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com [IPv6:2607:f8b0:4864:20::e42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E68C0C0613D1
        for <devicetree@vger.kernel.org>; Tue, 10 Nov 2020 18:08:49 -0800 (PST)
Received: by mail-vs1-xe42.google.com with SMTP id f7so292001vsh.10
        for <devicetree@vger.kernel.org>; Tue, 10 Nov 2020 18:08:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9CTtCQABE7EZnyvMRJRp+ux2mvwXMPszr5VQjn2UmnU=;
        b=D4hYa65WfHrMf5alNOxHlfnicpj9Vucke/Ha0ieZmTy4CL5qv4AS08Mzgf3N5Dg3LP
         GloHepCI0Djj9Hb7x1bp/ejfxwmZbgkM7XrU5q5Yi+icuTUuhAI/m93GEiWOeeHuvt2h
         QW6MGb5eCzhsMdU4s31tUXt4719VQbYGFbwL8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9CTtCQABE7EZnyvMRJRp+ux2mvwXMPszr5VQjn2UmnU=;
        b=VPTFI1oLnDaSgTDoBD6jrOJBO6xS8fzTSJb+ZkYKjl5HDVD4ybYKX8oA7lGR9lyfeX
         B5/vKoMcDgMShV6vznjF/3khscj/usY1Bf/IhXh2Y/ldIiDgVkpU5q9sYLcBiAh6WhO+
         yJqe0TqqMzb9AFgaWYohhDwe95jjTYWcTyVWpUTWufQhzzFQY0fe6C+8IYXxTALzPLJz
         X9SgLUy7cdTI2wlv3ftiQIictDagPqStjiNJH6GUksFo9fu13DNKPG04UgxYpU/l8gWi
         abVBMf/Vu1olT8Ogx1U3pBJmst5yA1L3S8YrAAAv5a77jChbEjLx1fRMcSO+8DlMaUny
         I9lg==
X-Gm-Message-State: AOAM530425i74lFQNLmVtPKcNa+c33ijF+djOx3s4bFrpvu8Irl3xkbm
        zyiK5I6OCvyzhgFZ71vGFAiN03LSwyCpfA==
X-Google-Smtp-Source: ABdhPJyAeCxrh+6pXoPvG9dgRi/DoEqdEV7WQ93o8moPTde/FwiNB0kZV4oi0PEXD8ic4+gks+3fRQ==
X-Received: by 2002:a67:b043:: with SMTP id q3mr14101104vsh.29.1605060528451;
        Tue, 10 Nov 2020 18:08:48 -0800 (PST)
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com. [209.85.217.44])
        by smtp.gmail.com with ESMTPSA id c135sm79025vke.16.2020.11.10.18.08.47
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Nov 2020 18:08:47 -0800 (PST)
Received: by mail-vs1-f44.google.com with SMTP id f7so291961vsh.10
        for <devicetree@vger.kernel.org>; Tue, 10 Nov 2020 18:08:47 -0800 (PST)
X-Received: by 2002:a67:f142:: with SMTP id t2mr13882174vsm.34.1605060526929;
 Tue, 10 Nov 2020 18:08:46 -0800 (PST)
MIME-Version: 1.0
References: <1604687907-25712-1-git-send-email-tdas@codeaurora.org>
In-Reply-To: <1604687907-25712-1-git-send-email-tdas@codeaurora.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 10 Nov 2020 18:08:35 -0800
X-Gmail-Original-Message-ID: <CAD=FV=Ws=s_XU8Fk0mtVmjbFDOrmYrDPk7pbLpWfBAw=bzRmsA@mail.gmail.com>
Message-ID: <CAD=FV=Ws=s_XU8Fk0mtVmjbFDOrmYrDPk7pbLpWfBAw=bzRmsA@mail.gmail.com>
Subject: Re: [PATCH v1] arm64: dts: sc7180: Add camera clock controller node
To:     Taniya Das <tdas@codeaurora.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Andy Gross <agross@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Nov 6, 2020 at 10:39 AM Taniya Das <tdas@codeaurora.org> wrote:
>
> Add the camera clock controller node supported on SC7180.
>
> Signed-off-by: Taniya Das <tdas@codeaurora.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7180.dtsi | 13 +++++++++++++
>  1 file changed, 13 insertions(+)

This matches the bindings, which has landed in the clock tree.  It's
also sorted properly.  Thus:

Reviewed-by: Douglas Anderson <dianders@chromium.org>
