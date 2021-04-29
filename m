Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 04F0D36EB6B
	for <lists+devicetree@lfdr.de>; Thu, 29 Apr 2021 15:39:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237225AbhD2NkZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Apr 2021 09:40:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57366 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237130AbhD2NkY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Apr 2021 09:40:24 -0400
Received: from mail-qt1-x82e.google.com (mail-qt1-x82e.google.com [IPv6:2607:f8b0:4864:20::82e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20C53C06138B
        for <devicetree@vger.kernel.org>; Thu, 29 Apr 2021 06:39:37 -0700 (PDT)
Received: by mail-qt1-x82e.google.com with SMTP id z5so10991556qts.3
        for <devicetree@vger.kernel.org>; Thu, 29 Apr 2021 06:39:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=IgdBnMydFBzwsG7W3uYP/xp1blAOpZ2iF3BFsqoCBR4=;
        b=D72PPw3JOCL5ArWLKUg1LwdWV4i791yrbbio9+d1fGpbB8TfYgO9ZgsEgt9+WcSW0G
         H0/6BTJkS5OExQWGTmZx9vWat6g65+R7TtSNFJ730vVMQDjLQKbnhd/iKtKqeqMhlhVg
         eMD8gTXifjMb9FPkds4hkkYV5AKQSl5Rj5+SQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=IgdBnMydFBzwsG7W3uYP/xp1blAOpZ2iF3BFsqoCBR4=;
        b=aCE2SUAjRJ9gieWqlz2XA8UV4LV3xpz30hv1rag5Ye9OgLjKGmcECoEIyqgyezTpni
         Urhf3dWOMB9JaFBzesWILvfzCPGiIAl6+3vykE8VqxYuM49hg5UsC+kBNzH/4XXMjFvJ
         0GRzHLcGOxhka/owa5LftfCxDVZZNQEkaQkEetEzpsNz6l2GnqYhgFy4UAC73EyqMYHR
         oN9sr8xT03kOnD0/5NyjEl0qTj6QWDskB43ykGmG+3k3pOMvr99NdUTVR2g85y3IQ0/U
         N6LJitJGTdvRI2n4Id68oRO7oO4NCwtWQC7Fq0qTT1ftPAJAWvBFmKzWydAKEHZ4oyrF
         SiaA==
X-Gm-Message-State: AOAM530MdUM+LE8fUoYjoRwjan/I4UUD7agI+h5r4tk/GTMuQk9iyWSl
        4DWJ7/XkVV/UEIfQDkinZHKqx7O4fLEJZw==
X-Google-Smtp-Source: ABdhPJwxJzLy9KHjveiJzL1NR2J6AV2DPcQeNgiaHnzQepc/+1pjirWqbA0vaynrmdjE75OauqHSQQ==
X-Received: by 2002:ac8:5ac6:: with SMTP id d6mr32515279qtd.18.1619703575651;
        Thu, 29 Apr 2021 06:39:35 -0700 (PDT)
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com. [209.85.219.179])
        by smtp.gmail.com with ESMTPSA id v6sm1306705qkg.94.2021.04.29.06.39.34
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Apr 2021 06:39:35 -0700 (PDT)
Received: by mail-yb1-f179.google.com with SMTP id p126so24882292yba.1
        for <devicetree@vger.kernel.org>; Thu, 29 Apr 2021 06:39:34 -0700 (PDT)
X-Received: by 2002:a05:6902:4e2:: with SMTP id w2mr17570245ybs.79.1619703574539;
 Thu, 29 Apr 2021 06:39:34 -0700 (PDT)
MIME-Version: 1.0
References: <1619674827-26650-1-git-send-email-rnayak@codeaurora.org> <1619674827-26650-2-git-send-email-rnayak@codeaurora.org>
In-Reply-To: <1619674827-26650-2-git-send-email-rnayak@codeaurora.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 29 Apr 2021 06:39:23 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UUowpvn_2uPrOQG9hOCdX6GYZDojBdW+w8hg5q6PfvAQ@mail.gmail.com>
Message-ID: <CAD=FV=UUowpvn_2uPrOQG9hOCdX6GYZDojBdW+w8hg5q6PfvAQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sc7280: Add "google,senor" to the compatible
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

On Wed, Apr 28, 2021 at 10:40 PM Rajendra Nayak <rnayak@codeaurora.org> wrote:
>
> The sc7280 IDP board is also called senor in the Chrome OS builds.
> Add the "google,senor" compatible so coreboot/depthcharge knows what
> device tree blob to pick
>
> Signed-off-by: Rajendra Nayak <rnayak@codeaurora.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7280-idp.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
