Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 685693040FE
	for <lists+devicetree@lfdr.de>; Tue, 26 Jan 2021 15:55:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2391333AbhAZOyc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jan 2021 09:54:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50756 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2405839AbhAZOyG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jan 2021 09:54:06 -0500
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26EF5C0698C2
        for <devicetree@vger.kernel.org>; Tue, 26 Jan 2021 06:53:25 -0800 (PST)
Received: by mail-lf1-x12e.google.com with SMTP id b26so23044895lff.9
        for <devicetree@vger.kernel.org>; Tue, 26 Jan 2021 06:53:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2FZjycms5gnBCIpvZP+ctIDCiLaUF2g3Z9pOjKVsdC0=;
        b=YC1EV9dV4gLXUfWerPjvjrjQdSJ+wwfVBcUDEIaM0flplCFVLxlAChsv3hzwWoy7iz
         Hi0S30M8VFmQ8BsE4iPn7f80s/c66XPGgfA2t01Mjh484dbNXrOpb2yVjTqtAWqQ8cRk
         mJPIODGZR5ngh8wJEIT1rYkNxEj7xy4zsGH23iGkEgzlXHb4YaNKMTbsEVlAIrHaH4hL
         p6GCSBNLjPJML3NJMc4PO7Ae3TbHCp5XPliFMWLGLT4LLDMNDN2snpJhaqoqZRs6RmuQ
         0+eMcBEjfyuknWpS8iMeqRNP3VFSQbHl0Yxb4FuYt/+hFHftJxrFFgZzJHMVB5HPhr3d
         slSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2FZjycms5gnBCIpvZP+ctIDCiLaUF2g3Z9pOjKVsdC0=;
        b=qopNFnA8DorVHBvyhC3BXiuGhGp1q/hOo6LpTRmOVEaYiXdcUGCdQpXOeGbmxlSyER
         6ZOtjCK/wkL5dedDHIIMF4/c9XI+7BZEm7LBETPox9tMer9z+l6V1Hpevi3LthEv/qhK
         2mltXBnvwi3Qs5S9ayZxj2BhOLu5y8XvLKr8XuZ6QiW9AGZZMWV0F5zq9uQpQgK82gQ6
         okWmE+afF7qx9GSsbvYz4fNS9lQUQIPcHR75aTLwIeLgCXLVPo0SXQsoKy2xeO4Rfypv
         CqEvRDuXGRf6ofzpUkz+stxYNQ2WyzLUAeWaDWpMdk6t/dNCBA+f7g6X+7xC7N7FTQb5
         DStw==
X-Gm-Message-State: AOAM532ADbWfhb79OEl6K177X7bt+qtR455hPt11CjYxmfRnx1FOhF0d
        Gx2jvn5A77tCcKlCuVFhOGZb3SyDMQoqAtn/VbT7ZA==
X-Google-Smtp-Source: ABdhPJyaXqdBSRbne+mx+lif6Cq8WwZOJakN0nseaAW1Q7KoMw1ocidpAn9dDfM8IO/W87GNbGvCW6b3/uPSuBZrfGs=
X-Received: by 2002:ac2:4285:: with SMTP id m5mr2653252lfh.649.1611672803601;
 Tue, 26 Jan 2021 06:53:23 -0800 (PST)
MIME-Version: 1.0
References: <20210115171115.123155-1-konrad.dybcio@somainline.org>
In-Reply-To: <20210115171115.123155-1-konrad.dybcio@somainline.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 26 Jan 2021 15:53:12 +0100
Message-ID: <CACRpkdZ46OSTNited84091XzikVA9HFncmrX_iXZ62mGUJEmVQ@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: qcom-pmic-gpio: Add support for pm8019
To:     Konrad Dybcio <konrad.dybcio@somainline.org>
Cc:     phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        MSM <linux-arm-msm@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jan 15, 2021 at 6:11 PM Konrad Dybcio
<konrad.dybcio@somainline.org> wrote:

> PM8019 provides 6 GPIOs. Add a compatible to support that.
>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>

Patch applied.

Yours,
Linus Walleij
