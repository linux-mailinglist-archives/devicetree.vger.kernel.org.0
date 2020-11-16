Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4C6172B467B
	for <lists+devicetree@lfdr.de>; Mon, 16 Nov 2020 15:58:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730615AbgKPO5z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Nov 2020 09:57:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730608AbgKPO5z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Nov 2020 09:57:55 -0500
Received: from mail-ua1-x941.google.com (mail-ua1-x941.google.com [IPv6:2607:f8b0:4864:20::941])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F0A5C0613CF
        for <devicetree@vger.kernel.org>; Mon, 16 Nov 2020 06:57:55 -0800 (PST)
Received: by mail-ua1-x941.google.com with SMTP id h26so5432289uan.10
        for <devicetree@vger.kernel.org>; Mon, 16 Nov 2020 06:57:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=sg3eMzSsvsFQKF9WYrus0kI2hc/riBKKXYCgRDx0GaI=;
        b=cDYymRXmY7cN1YqBVrDKxLtgp3HsW+XjlleSpOJL3ZvY+i5aDFQlDVe1bvmxNoormg
         F+/Yv/XabrzCe9u7fiBvT6VQg3Ose4LHuY8wcFNuSr/SS0roJaLvBKDbwBnVfeMDVVym
         srYMs68PWUkfmH5asG++lDq8nFRWyh5eNMQ/w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=sg3eMzSsvsFQKF9WYrus0kI2hc/riBKKXYCgRDx0GaI=;
        b=j6lDCVsWhNX9fmm6h3XA9Nt7gXw212v/20UtL26wM/RQ1va1kyh7Pj+9NTu83OA2ms
         SwzPwxi2cbPpPWNPKkLU6JQVbtGg6i7DLn32freetW4NMh2z+Y51zCYM8byJRJYqEp+q
         J2dw0XwMyAsMPB5F4I429990dYlZHEb1qPzNoHKQEGLn272wGZFXDsVdyN1fPQHsaKCL
         EX3BDfWU6iyMrBrOu0j70tIXjykzCqdRALM23pgZqntV1xM4WL7v6hCmCe3FEdzo9m/1
         gciIsjVCHJLkDFtq+aZmsPymO7/RvI01k8XznlLolvHVv1teLKSarNlAXLYscLyhTgEP
         LCJg==
X-Gm-Message-State: AOAM530vWHB1rrzEs177zAuuNPuGrZ+829RpBl6zA8s61s3wwYUJ69Ih
        EH26VMHnWkFU9BcTtgwjdX4Zn7B7fRbb7A==
X-Google-Smtp-Source: ABdhPJz6Xe5jFV4vQ19tHjxOSgQnjnlhYs9HZ1b16SYu6j4rZAcFcjEojcgO8Bj+VUZPBXa+6MOKUw==
X-Received: by 2002:ab0:7858:: with SMTP id y24mr2731004uaq.83.1605538673998;
        Mon, 16 Nov 2020 06:57:53 -0800 (PST)
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com. [209.85.217.47])
        by smtp.gmail.com with ESMTPSA id j6sm2016127vsj.29.2020.11.16.06.57.52
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Nov 2020 06:57:53 -0800 (PST)
Received: by mail-vs1-f47.google.com with SMTP id b67so9282678vsc.3
        for <devicetree@vger.kernel.org>; Mon, 16 Nov 2020 06:57:52 -0800 (PST)
X-Received: by 2002:a67:ef98:: with SMTP id r24mr7638617vsp.37.1605538672446;
 Mon, 16 Nov 2020 06:57:52 -0800 (PST)
MIME-Version: 1.0
References: <20201116083014.547-1-terry_hsiao@compal.corp-partner.google.com>
In-Reply-To: <20201116083014.547-1-terry_hsiao@compal.corp-partner.google.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 16 Nov 2020 06:57:40 -0800
X-Gmail-Original-Message-ID: <CAD=FV=UetS0P++02rRfkxuxAau6i6pHDyc_9iz_OwZ5h_T_Fug@mail.gmail.com>
Message-ID: <CAD=FV=UetS0P++02rRfkxuxAau6i6pHDyc_9iz_OwZ5h_T_Fug@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc7180-trogdor: add "pen-insert" label
 for trogdor
To:     Terry Hsiao <a804335@gmail.com>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        terry_hsiao@compal.corp-partner.google.com,
        danny_kuo@compal.corp-partner.google.com,
        jasper_lee@compal.corp-partner.google.com,
        van_chen@compal.corp-partner.google.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Nov 16, 2020 at 12:30 AM Terry Hsiao <a804335@gmail.com> wrote:
>
> Add a label to the "pen-insert" node in sc7180-trogdor.dtsi
>
> Signed-off-by: Terry Hsiao <terry_hsiao@compal.corp-partner.google.com>
> ---
>  arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
