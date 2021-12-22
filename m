Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A8BA347CB3F
	for <lists+devicetree@lfdr.de>; Wed, 22 Dec 2021 03:04:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238484AbhLVCEW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Dec 2021 21:04:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235345AbhLVCEW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Dec 2021 21:04:22 -0500
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com [IPv6:2607:f8b0:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13298C061574
        for <devicetree@vger.kernel.org>; Tue, 21 Dec 2021 18:04:22 -0800 (PST)
Received: by mail-ot1-x32b.google.com with SMTP id r10-20020a056830080a00b0055c8fd2cebdso858724ots.6
        for <devicetree@vger.kernel.org>; Tue, 21 Dec 2021 18:04:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Al9bVe7ZlBBHxflPN7dDbRiQZxeGn2j4XWyGYUriWq4=;
        b=mlBAw9YdE/jogBzhUlrHKbx2cOXg5XI0v+CxuCs2lnBROr9s9cu+pUB+KQ8CzijjKq
         t9k/Xeeh3M7aUPlNUjMNfkDXxlKjRCUaTVQvAYgBxJp0TQZruoa2JjQKVSXplDS90yI/
         +0+v3XJHhw7ku3kr1ufQL+oZbL4HU0hrQCmF4vm+rdYPMDl/MXtd9b3l0z4QyTKJwnWw
         HkLXg6x54/+dIlkkY0L8eZQZFyOLmSuEyePf8QrUsKCpo+rUHzkmwdl1Et+AdjXjpIgy
         ZOrcCkOXfg4mss29mb1L15b8oNP25/5vAZjUvKanLdBsD8a38ECCTixEDylDsDB8gSFx
         uB7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Al9bVe7ZlBBHxflPN7dDbRiQZxeGn2j4XWyGYUriWq4=;
        b=7HOQLPPQYVw6zZUrB848RiW/gowYOWqiFj/0p5Ki7Es1r0UELQJuEgpW3Fgv5Toh2h
         hRG89HOdhXaH0nQhqjhocvRPE2fWAxy/Q//8H0crWX0Xix2opOJYGNiJeou+XtlJvXaY
         XRdT8Um9l9dHNx2s2DSgaR5hL8idtihWCzrCpn9mHmpRHkdrVejqg4bXtJZnMPdTi5Py
         AhhFjsb0pGPTwHDifYz/cG7M0o3ibPBA4/nCyado93bxiP9bJsT24+EVJtwGMpUru8im
         9q56Tlg04/t7UfAmyBvVDXPF5wN0voyLF9DYMBSKJ7PyGH2cxrwof1dwrAqjhnadfTg3
         g31Q==
X-Gm-Message-State: AOAM533B0oomMl9RxOpzLDdsmSfE8XaFVBlpjVSlIMz+utFuK/d3hkk4
        wv026SU7fsbxVul9xX0R/wgoAX4g9myLCMJgEYVYxA==
X-Google-Smtp-Source: ABdhPJzP8xGfPla++awyn1G27r3LXkIK3wvrijkd0Yt2tCqMYT1XZqk96h9xZY+z6BFU5GitM9gSj9v4Yy16fmVlvh4=
X-Received: by 2002:a9d:74d0:: with SMTP id a16mr708127otl.237.1640138661156;
 Tue, 21 Dec 2021 18:04:21 -0800 (PST)
MIME-Version: 1.0
References: <cover.1639696427.git.quic_vamslank@quicinc.com> <ff9abf953c274a1e34f59114642f67ecf02acb6f.1639696427.git.quic_vamslank@quicinc.com>
In-Reply-To: <ff9abf953c274a1e34f59114642f67ecf02acb6f.1639696427.git.quic_vamslank@quicinc.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 22 Dec 2021 03:04:09 +0100
Message-ID: <CACRpkdYR2e3PgtzS5T69m9B4yEZ0wgAm=6HxOSpwwMz95nBBXg@mail.gmail.com>
Subject: Re: [PATCH v6 1/2] dt-bindings: pinctrl: qcom: Add SDX65 pinctrl bindings
To:     quic_vamslank@quicinc.com
Cc:     agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        manivannan.sadhasivam@linaro.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Dec 17, 2021 at 12:19 AM <quic_vamslank@quicinc.com> wrote:

> From: Vamsi Krishna Lanka <quic_vamslank@quicinc.com>
>
> Add device tree binding Documentation details for Qualcomm SDX65
> pinctrl driver.
>
> Signed-off-by: Vamsi Krishna Lanka <quic_vamslank@quicinc.com>
> Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

I applied this updated binding instead of the broken one
that I reverted a while back.

Yours,
Linus Walleij
