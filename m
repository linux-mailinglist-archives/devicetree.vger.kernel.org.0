Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 49664409F47
	for <lists+devicetree@lfdr.de>; Mon, 13 Sep 2021 23:38:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343763AbhIMVjj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Sep 2021 17:39:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32918 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244952AbhIMVjg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Sep 2021 17:39:36 -0400
Received: from mail-il1-x134.google.com (mail-il1-x134.google.com [IPv6:2607:f8b0:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AABC9C061762
        for <devicetree@vger.kernel.org>; Mon, 13 Sep 2021 14:38:20 -0700 (PDT)
Received: by mail-il1-x134.google.com with SMTP id x2so3579654ila.11
        for <devicetree@vger.kernel.org>; Mon, 13 Sep 2021 14:38:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=oTXg4OkxA4gYmaLOUALhExrv2s3LoqS8/onFwK1MnZ8=;
        b=e3VfJk7ASvcBdgvYNAlNBeXh3UUudj7i1P+E2WM/PGgBYfWK72BaoDbXkGBeDE+W1W
         s/kzZmdY5oaQhZAY2YxG3wtGsNfnvmO3jfYqHzo+xjW7gy90Yi4AJNUTTLdYSOwy92UW
         HTAAZNoGrpzoHJ9ThsSQif8yTNpgcZ/hXBOs8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=oTXg4OkxA4gYmaLOUALhExrv2s3LoqS8/onFwK1MnZ8=;
        b=bSicE5tUhPWckwybLjjfFcQWt+hlvhY4myIfRKc75TIgfipSx9bf9uCcm5s/J9shy/
         0EhE3o73I71oiv+yZ6kleFXAC/619VBE+ufbA48xp49DP+FdECvoarsXu2568LGmEJaz
         PzOot2t7jsVtQeoAJ6eEy45agimnrciJFCRW1lg893dyf03Lxl2rRhgNQv9Xtyz4D+w2
         KH1YOjTZUNjSQeMwkuCIjq6Sz/HjLjmSAXgeF29brEhxx2rBppvR6g/bWJOEXkfPJ390
         sNYJbtfMTel5oVB7gb2I2a9naHkpRqgxWLG2Pj+ub1YfO+35/7GknqJV1SHHRf52PO+h
         7Jyg==
X-Gm-Message-State: AOAM532jR3Uir0ybooWx+8hrRF9d7KUafDRtomRHNm0iqk//si9KSy5y
        ed3DBsrBcM1OHbyQN4H/qILIlCKAU+JtCQ==
X-Google-Smtp-Source: ABdhPJzagCJUsXdLnT4u7sgOcag3/EKKZ0EFpxq1bw6rZWtm0KuWFlD5pqiPhn42IllrLIc/J0eYAg==
X-Received: by 2002:a05:6e02:13ef:: with SMTP id w15mr6137063ilj.255.1631569099881;
        Mon, 13 Sep 2021 14:38:19 -0700 (PDT)
Received: from mail-il1-f178.google.com (mail-il1-f178.google.com. [209.85.166.178])
        by smtp.gmail.com with ESMTPSA id i14sm5648297ilc.51.2021.09.13.14.38.19
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Sep 2021 14:38:19 -0700 (PDT)
Received: by mail-il1-f178.google.com with SMTP id m4so6665183ilj.9
        for <devicetree@vger.kernel.org>; Mon, 13 Sep 2021 14:38:19 -0700 (PDT)
X-Received: by 2002:a92:da0c:: with SMTP id z12mr9421434ilm.120.1631569099034;
 Mon, 13 Sep 2021 14:38:19 -0700 (PDT)
MIME-Version: 1.0
References: <1631530735-19811-1-git-send-email-rnayak@codeaurora.org>
In-Reply-To: <1631530735-19811-1-git-send-email-rnayak@codeaurora.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 13 Sep 2021 14:38:07 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Va55WWbBebieNsuS8LE1XBkPAmCT5BMR1nXtBn+EY0EQ@mail.gmail.com>
Message-ID: <CAD=FV=Va55WWbBebieNsuS8LE1XBkPAmCT5BMR1nXtBn+EY0EQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc7280-idp: Add vcc-supply for qfprom
To:     Rajendra Nayak <rnayak@codeaurora.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        "Ravi Kumar Bokka (Temp)" <rbokka@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Sep 13, 2021 at 4:00 AM Rajendra Nayak <rnayak@codeaurora.org> wrote:
>
> Add vcc-supply for the IDP boards that was missed when the
> qfprom device tree properties were added for the sc7280 SoC.
>
> Fixes: c1b2189a19cf ("arm64: dts: qcom: sc7280: Add qfprom node")
> Reported-by: satya priya <skakit@codeaurora.org>
> Signed-off-by: Rajendra Nayak <rnayak@codeaurora.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7280-idp.dtsi | 4 ++++
>  1 file changed, 4 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
