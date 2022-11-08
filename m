Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1B67F620FE7
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 13:08:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233895AbiKHMIg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Nov 2022 07:08:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59200 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234027AbiKHMI0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Nov 2022 07:08:26 -0500
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 067B44FF91
        for <devicetree@vger.kernel.org>; Tue,  8 Nov 2022 04:08:23 -0800 (PST)
Received: by mail-ed1-x52d.google.com with SMTP id l11so22140434edb.4
        for <devicetree@vger.kernel.org>; Tue, 08 Nov 2022 04:08:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=grSyOaCRo6TQJVxhX/3R51EXHCwzJ6WhC857Fhfih98=;
        b=B02te6kXG6P/t/PkYUCc6Lv/otIIBm1qePalgjo7XJITLsmNOUsKMIZnL66kqalVe1
         Fac9mC4NpFrq+upzr542yRIBhTMsv4muCQCbn96zkHY/2qjN4RZR6Hxfmd3oC9Mlin8o
         1ikXkGkN1zniXFOJ/PSO9G0tDKFnaLj4EPo44GL2uoAIcQWQS8shSsCCtlPqVhzhWgPA
         9YzJt7SiptO9vGPIyNEgt9biNzsU/IgQ4OaLqLflSBN8dChvCD2ZvbFW9JSpMfgD7Kkk
         +e+GKDGNcBHoV1kleoJ8IFEW/L0NdxsjUWkEggWV3QauAsRj1f2QLf01kCZdK49Wdswu
         nkxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=grSyOaCRo6TQJVxhX/3R51EXHCwzJ6WhC857Fhfih98=;
        b=fEoHt6bGsjHmMS8K1Iv78wimhu++8bFd7KaBzgp4L/fCHNJxai5gGy1f/vRXxoTe2e
         DgHuz3It3E5D0WReWnjhpeABOEugZbTaPcsNUa8/w8bYGUFRx3Z6EGAX1zjRSW8cgyr3
         wuWWL7OdjynP+StpH/FDAHE+nbk1JFpMU2wfiZNS0M3KY+/QZajkr3YgCICNjNonT3bv
         1b8ayN5zHtQQbdF/iwjNCUNF4hxRT1fDZUr0CN03yZIPzTwAlgxHC3lP6r2zZoENusmd
         jwOnjLVPseI/YD7VDX1vSeDySodwHedWOj4OzHeGa+3azYnRJmnZNMlWR/i0RsgF665Y
         /q+A==
X-Gm-Message-State: ACrzQf1/rmNlPyAjaO6xpKoEAyn+zXuu6PhXLY//HA3S0TqafkJQUfki
        qT11FhaijeoNAYWvg+xR25FoyX4xiF/eAYGjHzyOEg==
X-Google-Smtp-Source: AMsMyM47mPv9vBTxaC8ghusdFxqlb0Qj9KBoSD51roW7OmhUSi6H9DVQVtt3Z8+1i2OBelmKJL1LVIiklYImuBVWtp8=
X-Received: by 2002:a05:6402:d0b:b0:458:a244:4e99 with SMTP id
 eb11-20020a0564020d0b00b00458a2444e99mr55520803edb.46.1667909301609; Tue, 08
 Nov 2022 04:08:21 -0800 (PST)
MIME-Version: 1.0
References: <20221103080217.2533-1-zhuyinbo@loongson.cn> <20221103080217.2533-2-zhuyinbo@loongson.cn>
In-Reply-To: <20221103080217.2533-2-zhuyinbo@loongson.cn>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 8 Nov 2022 13:08:10 +0100
Message-ID: <CACRpkdaPK-_a=394wz2q2FkPPsVLfy0zZQ3EY04r-0x=CaRu2g@mail.gmail.com>
Subject: Re: [PATCH v7 2/2] dt-bindings: pinctrl: add loongson-2 pinctrl
To:     Yinbo Zhu <zhuyinbo@loongson.cn>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        zhanghongchen <zhanghongchen@loongson.cn>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Nov 3, 2022 at 9:02 AM Yinbo Zhu <zhuyinbo@loongson.cn> wrote:

> Add the Loongson-2 pinctrl binding with DT schema format using
> json-schema.
>
> Signed-off-by: Yinbo Zhu <zhuyinbo@loongson.cn>

Collected Rob's review tag from an old identical patch and applied,
thanks!

Yours,
Linus Walleij
