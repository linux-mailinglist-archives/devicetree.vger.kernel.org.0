Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 106AA31DEE3
	for <lists+devicetree@lfdr.de>; Wed, 17 Feb 2021 19:12:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233688AbhBQSLv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Feb 2021 13:11:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233333AbhBQSLt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Feb 2021 13:11:49 -0500
Received: from mail-qk1-x72e.google.com (mail-qk1-x72e.google.com [IPv6:2607:f8b0:4864:20::72e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED5BCC061788
        for <devicetree@vger.kernel.org>; Wed, 17 Feb 2021 10:11:08 -0800 (PST)
Received: by mail-qk1-x72e.google.com with SMTP id f17so13682889qkl.5
        for <devicetree@vger.kernel.org>; Wed, 17 Feb 2021 10:11:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=kp4C7XkUvCKkyitZt4af77Yjtt5rxtynt/7/UUrqttM=;
        b=nWcCk8KtzOPRqRHRUrSWpGb507dYh0DntRmO/OKj0eEmS0h3E5g/bGVFgzEc+45cDM
         MEbpJL6cB+23N+JX9+urTWpY9AEibOipxoT2vn7PfKipnJgFERAArVtTYF2xw4cf5d3i
         am0xiG+SrEvhqBJ1+JYzIxGqz4bcFy9bHAsvo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=kp4C7XkUvCKkyitZt4af77Yjtt5rxtynt/7/UUrqttM=;
        b=nSsn5Iggxydqlm0z5sa/cX+x1rZE6ottYIBnHtE/F/+tQZH2ITVJWN1sJRwSP84lnu
         z2bn/Ll9LaPh702kakRqPo31vpN9sn9WOOuZDpm90oULlqa1Asyf6BA06SmcKOniLQXB
         3J0XeX6CW2XlRzfBuXlKA/UOH9/1DjqEzsHJtS5cJyLjrn2BVJIlbMHlfpq+WENekLe1
         aPxZuVwa/k4e+nvPFoTdlTmJvQ7ILqGauI2CG7NgD0apUoDhn0bjqw2R/mjW3R2ne5yD
         CXr3580oVjTCYy1Z3BWkjVqGMPns6k/HV0ed4UbeigEdMlDDH27CBoE/wsl7pj8EVtAZ
         pxPg==
X-Gm-Message-State: AOAM530eiRDq3ffGbkkZkK9RmUbYmG7d6/NC7/skjrz0YyaoXf/VAIPe
        eRT1xOlVK3RhFRt1d6c1xS1UeabCxWL2AQ==
X-Google-Smtp-Source: ABdhPJwi3NJ1UDhNvYKC2LD0srJ1KYTUjGcdtAZmiBfg6PUfrKOJ4xabNCfD3iPWIrCScxAMT+9zqw==
X-Received: by 2002:a05:620a:10:: with SMTP id j16mr445940qki.310.1613585467851;
        Wed, 17 Feb 2021 10:11:07 -0800 (PST)
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com. [209.85.219.179])
        by smtp.gmail.com with ESMTPSA id r190sm2191203qka.54.2021.02.17.10.11.06
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Feb 2021 10:11:06 -0800 (PST)
Received: by mail-yb1-f179.google.com with SMTP id b10so14691655ybn.3
        for <devicetree@vger.kernel.org>; Wed, 17 Feb 2021 10:11:06 -0800 (PST)
X-Received: by 2002:a25:4fc3:: with SMTP id d186mr774185ybb.343.1613585466302;
 Wed, 17 Feb 2021 10:11:06 -0800 (PST)
MIME-Version: 1.0
References: <1613582792-5225-1-git-send-email-rbokka@codeaurora.org>
In-Reply-To: <1613582792-5225-1-git-send-email-rbokka@codeaurora.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 17 Feb 2021 10:10:53 -0800
X-Gmail-Original-Message-ID: <CAD=FV=Vcijx0CCSnJuDM1evGqaa42Sf4BURyVeHt0RnLX+ai8g@mail.gmail.com>
Message-ID: <CAD=FV=Vcijx0CCSnJuDM1evGqaa42Sf4BURyVeHt0RnLX+ai8g@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc7180:: modified qfprom CORR size as
 per RAW size
To:     Ravi Kumar Bokka <rbokka@codeaurora.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
        dhavalp@codeaurora.org, mturney@codeaurora.org,
        sparate@codeaurora.org, mkurumel@codeaurora.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Feb 17, 2021 at 9:27 AM Ravi Kumar Bokka <rbokka@codeaurora.org> wrote:
>
> modified QFPROM controller CORRECTED region size as per RAW region size
>
> Signed-off-by: Ravi Kumar Bokka <rbokka@codeaurora.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7180.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
