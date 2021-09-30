Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4174941DB2E
	for <lists+devicetree@lfdr.de>; Thu, 30 Sep 2021 15:35:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351490AbhI3Nh1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Sep 2021 09:37:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351495AbhI3NhS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Sep 2021 09:37:18 -0400
Received: from mail-io1-xd29.google.com (mail-io1-xd29.google.com [IPv6:2607:f8b0:4864:20::d29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79B58C06176F
        for <devicetree@vger.kernel.org>; Thu, 30 Sep 2021 06:35:33 -0700 (PDT)
Received: by mail-io1-xd29.google.com with SMTP id b78so7573291iof.2
        for <devicetree@vger.kernel.org>; Thu, 30 Sep 2021 06:35:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=dbEKu1/TvJPQ4Z2h0b6Gx0hXWCi4B3ME4HJBi8xU2sI=;
        b=ebdsjkrcaH7CkAYfRMGMlQzpTq2ttq8JNlE78u35qQkb7PkZwKuDFMV65o/txFLLp6
         O32jnwJtMXpU7CjUtkTHO2YsgHGLkLMDHFanpI/nQ3c15cIU/zVKtXCa+bf/aDSH+FTU
         01mj/Gzz513YnIwm6spZEseoZAyNa/uWEovEw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=dbEKu1/TvJPQ4Z2h0b6Gx0hXWCi4B3ME4HJBi8xU2sI=;
        b=xBpjKewxfg2rhWvo11e34RVv9HTppv/dkzWehC0k35AGpU6mYx+sp1zNG5IUe6YbR7
         0HQhu6PUrX1C0HbvA10ENSp2VPyEyn+/olN+jVbckKr6gljNrlf/0RjwtbroW9AZDNAn
         ogWv5FZlEapPnVfATQalF/ZRTJCJEbD++HYNNGFASi+IdoN4atVd1gCAa3Mz/Vi1cSg6
         lUpxs7ZC4tEIInfpcN+fPuVVb98ebxzk9ed5qEoIcJMtzbA4vsW2wlUAs7IS+2xnh/PV
         nfPusHHqmroec3FpFc0iiz7w03RMNU5oE1B8tz50AtpUGMEEn8HxJj+qbbuzTSGNh2tY
         OQ4g==
X-Gm-Message-State: AOAM531R6iLPJEkNzoCvdaOylu/wDEndm+SZ7Tlb/OnuS7NRFqOq9pEr
        EyX3FoX9Bo6yJcl7gKaUy+WQsAwbYHz4GA==
X-Google-Smtp-Source: ABdhPJybogDeTpV7p7sKHfVMy2JQxAq2dlzLGZ9rb9j8cHCg62nW77KthOx7rEt/BCQJ9N/IlvV1mQ==
X-Received: by 2002:a05:6638:1696:: with SMTP id f22mr4909175jat.15.1633008932801;
        Thu, 30 Sep 2021 06:35:32 -0700 (PDT)
Received: from mail-il1-f175.google.com (mail-il1-f175.google.com. [209.85.166.175])
        by smtp.gmail.com with ESMTPSA id v17sm1763725ilh.67.2021.09.30.06.35.30
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Sep 2021 06:35:30 -0700 (PDT)
Received: by mail-il1-f175.google.com with SMTP id b12so6819724ilf.11
        for <devicetree@vger.kernel.org>; Thu, 30 Sep 2021 06:35:30 -0700 (PDT)
X-Received: by 2002:a05:6e02:1bad:: with SMTP id n13mr4196229ili.142.1633008929712;
 Thu, 30 Sep 2021 06:35:29 -0700 (PDT)
MIME-Version: 1.0
References: <1632997450-32293-1-git-send-email-rajpat@codeaurora.org> <1632997450-32293-2-git-send-email-rajpat@codeaurora.org>
In-Reply-To: <1632997450-32293-2-git-send-email-rajpat@codeaurora.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 30 Sep 2021 06:35:18 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Veo+cRCRT6p=Di36mnO5cp7p+EGOUSo351-y=R1znGbQ@mail.gmail.com>
Message-ID: <CAD=FV=Veo+cRCRT6p=Di36mnO5cp7p+EGOUSo351-y=R1znGbQ@mail.gmail.com>
Subject: Re: [PATCH V1 1/2] dt-bindings: spi: Add sc7180 support
To:     Rajesh Patil <rajpat@codeaurora.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Brown <broonie@kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
        msavaliy@qti.qualcomm.com, satya priya <skakit@codeaurora.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Matthias Kaehlcke <mka@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Sep 30, 2021 at 3:25 AM Rajesh Patil <rajpat@codeaurora.org> wrote:
>
> Add device tree compatible for sc7180 SoC.
>
> Signed-off-by: Rajesh Patil <rajpat@codeaurora.org>
> ---
>  Documentation/devicetree/bindings/spi/qcom,spi-qcom-qspi.yaml | 1 +
>  1 file changed, 1 insertion(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
