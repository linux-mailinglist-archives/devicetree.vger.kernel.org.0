Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C7E0D3D19EB
	for <lists+devicetree@lfdr.de>; Thu, 22 Jul 2021 00:47:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230191AbhGUWGj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 18:06:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57986 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230172AbhGUWGi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jul 2021 18:06:38 -0400
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com [IPv6:2607:f8b0:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3BABCC061757
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 15:47:14 -0700 (PDT)
Received: by mail-oi1-x22b.google.com with SMTP id w194so4602550oie.5
        for <devicetree@vger.kernel.org>; Wed, 21 Jul 2021 15:47:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=Eb9LtJ+dHz6N32929nApb7lA/UIZOw51y5HXWJHV+No=;
        b=ae7czq1GJIt6/U9uknbS3lZhF0Es0qC8uQrp91abICEwPi2CmNsX/81grbYaBxloeg
         kCN1dcAW83duYP7JjCCy91IMC0jaz9ZWXIRAaTl+9OpXpqGC8GiOLvedJ3B9mudH72L+
         1BPc6oEPkUa4OwveafowmjlXgZIVXrVT9Ky/s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=Eb9LtJ+dHz6N32929nApb7lA/UIZOw51y5HXWJHV+No=;
        b=jF7wHdGuv4k00JsaJhnIiT+bXsP89QQgSzhk6InsI9i8EsaUIQ604iIdSh+F9ITyIA
         pBlRDgROOahwCQrMRMozeN/0YlNI03wTzlWr62NxUW4Tcv1EosUCTG4c64GXkD2pXc1a
         G5bHxAOQpLsMTuNVDWLhnhAZ5Yzz5BuyrPUTCOKLLCMB65AN2Lt0O+bv2e05Ec4L0sMQ
         B0QtPLu8uG2lTNLluqnZf5vRnTgB3tbaK+pLlZ1EwCocnZ8HwkZh1YoNKCC5+Y4Tm279
         X+I+u0ragBp9p2XYJZohVZggIvp+Jut6VFCLrVzACHKqbTR/70zQQ8G+q3kBEcjwRmd0
         9SeA==
X-Gm-Message-State: AOAM532gT6zdIcdrV9HXsZpkkzrNlaG7/WdovnRfxo0QKGr+iDsV6Zvj
        DvlPmyrVV7k0ZrGp0B1bK1zPZcDEcu7WSvo/mGWwjA==
X-Google-Smtp-Source: ABdhPJxKLlU4iEyDub6KsvBCRzbn8E5b7zF0GhNns46okWb58lLiQ4aPNlO5eLKI5knszc6xGab98KGS2NnMz0rUrBY=
X-Received: by 2002:aca:4dc6:: with SMTP id a189mr4162941oib.166.1626907633575;
 Wed, 21 Jul 2021 15:47:13 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 21 Jul 2021 22:47:13 +0000
MIME-Version: 1.0
In-Reply-To: <1623650391-28144-1-git-send-email-dikshita@codeaurora.org>
References: <1623650391-28144-1-git-send-email-dikshita@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Wed, 21 Jul 2021 22:47:13 +0000
Message-ID: <CAE-0n52YzaP=Av9dfh8_87WBfD6DFgAb3a7i-TBg8inxQNnzhQ@mail.gmail.com>
Subject: Re: [PATCH v4] arm64: dts: qcom: sc7280: Add venus DT node
To:     Dikshita Agarwal <dikshita@codeaurora.org>, david.brown@linaro.org,
        devicetree@vger.kernel.org, mark.rutland@arm.com,
        robh+dt@kernel.org, stanimir.varbanov@linaro.org
Cc:     linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        vgarodia@codeaurora.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Dikshita Agarwal (2021-06-13 22:59:51)
> Add DT entries for the sc7280 venus encoder/decoder.
>
> Co-developed-by: Mansur Alisha Shaik <mansur@codeaurora.org>
> Signed-off-by: Dikshita Agarwal <dikshita@codeaurora.org>
>
> change since v3:
>  - added firmware node back.
> change since v2:
>  - removed firmware node.
> change since v1:
>  - added rpmh power domain and opp table.
>
> this patch depends on [1],[2] & [3].
>
> [1] https://patchwork.kernel.org/project/linux-clk/list/?series=449621
> [2] https://lkml.org/lkml/2021/4/9/812
> [3] https://lore.kernel.org/patchwork/project/lkml/list/?series=488429#
> ---

Is this going to be resent?
