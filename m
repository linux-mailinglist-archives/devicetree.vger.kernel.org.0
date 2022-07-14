Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EF83F575136
	for <lists+devicetree@lfdr.de>; Thu, 14 Jul 2022 16:58:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229986AbiGNO6G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jul 2022 10:58:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35434 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238171AbiGNO6F (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jul 2022 10:58:05 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 016FC5F10F
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 07:58:03 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id os14so3915203ejb.4
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 07:58:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rmwz5UdPDv24j9r/+qXMLUwb1qPdbsCqRql7+qkdLJs=;
        b=cBnF70BmBTyQ0KYw65AGC7GPK0gtdqWmk/Tf/JXFG8mMNz0BzuRU/6XEtfPK7jI2oH
         JcrIEjJLGRShuiUNIupNKcqHaWlWWgRpJIz+NlfLHgHWAthrpbz1xMJb/0zgX+TJPsBI
         d8vPIChTYB8Njs0gL8IgYBdFj4WFO2ABsZawg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rmwz5UdPDv24j9r/+qXMLUwb1qPdbsCqRql7+qkdLJs=;
        b=Q1DZqvcqhk8EnD86WVUvzQDfnHIKFiKpgBKXXiqVh8JI6XMcwtVPuCFFYhnYzDF8Hd
         iaKLwosz7IyK/vTIFpFW6gL73iBXX47MYVv1JwWt29uEpNs3Xb30FGb4d2uowqHtIl3K
         JdEgeaZ5tEyWQsh82rUUfPj1sQ1+PTJmlfoLvrFonIgFC1Z42EWoTDdAO9vIcXwjDjC1
         mZSYi2tlJp67QzuL4pI+OVheocio2kuUbHFG+X0U+33jNYr2gx1IbQiAZ0bLhsIiHpTD
         BdhJQ2OsNiJOik55jNTbjQySSUMwXNwtS8P5VvbZdMxMmNSMs9DFe0/5Cynwkomc9juZ
         i+Nw==
X-Gm-Message-State: AJIora9MjimjUTx4+e/KAkrFCd8XIfPPTIoKHOSA+XUrp9mAXTWIYcJP
        QZa+RTWaqmrmjB/80p0ZB40p1NkXn8ryR9WM
X-Google-Smtp-Source: AGRyM1teB18NbVwfgzLm9ToGsjhCvO/X+GUvit2k8oMkZhi89tADsTVs7TUoEizD4JRF9VqZQtaaHg==
X-Received: by 2002:a17:907:2c74:b0:72b:5ba7:d96f with SMTP id ib20-20020a1709072c7400b0072b5ba7d96fmr9343891ejc.33.1657810681386;
        Thu, 14 Jul 2022 07:58:01 -0700 (PDT)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com. [209.85.128.49])
        by smtp.gmail.com with ESMTPSA id k8-20020a056402048800b00435a08a3557sm1161782edv.27.2022.07.14.07.57.59
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 07:58:00 -0700 (PDT)
Received: by mail-wm1-f49.google.com with SMTP id b6so685836wmq.5
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 07:57:59 -0700 (PDT)
X-Received: by 2002:a05:600c:3ace:b0:3a0:4ea4:5f77 with SMTP id
 d14-20020a05600c3ace00b003a04ea45f77mr9537025wms.57.1657810679294; Thu, 14
 Jul 2022 07:57:59 -0700 (PDT)
MIME-Version: 1.0
References: <20220714074958.86721-1-jinghung.chen3@hotmail.com> <SG2PR03MB500619860DC13133A0B5EB4FCC889@SG2PR03MB5006.apcprd03.prod.outlook.com>
In-Reply-To: <SG2PR03MB500619860DC13133A0B5EB4FCC889@SG2PR03MB5006.apcprd03.prod.outlook.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 14 Jul 2022 07:57:47 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XFCjCx=uXHWpEi04C-V9p-3qOp1W1g_0WXA4k-nRr1Zw@mail.gmail.com>
Message-ID: <CAD=FV=XFCjCx=uXHWpEi04C-V9p-3qOp1W1g_0WXA4k-nRr1Zw@mail.gmail.com>
Subject: Re: [PATCH v4 1/3] dt-bindings: arm: qcom: document sc7280 and
 villager board
To:     Jimmy Chen <jinghung.chen3@hotmail.com>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Andy Gross <agross@kernel.org>,
        Alan Huang <alan-huang@quanta.corp-partner.google.com>,
        Rob Herring <robh+dt@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Jul 14, 2022 at 12:50 AM Jimmy Chen <jinghung.chen3@hotmail.com> wrote:
>
> This adds a LTE skus for Chromebook Villager to the yaml.
>
> Signed-off-by: Jimmy Chen <jinghung.chen3@hotmail.com>
>
> ---
>
> (no changes since v2)
>
> Changes in v2:
> -Add this patch
>
>  Documentation/devicetree/bindings/arm/qcom.yaml | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
