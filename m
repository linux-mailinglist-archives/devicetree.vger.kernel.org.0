Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9AC7656A589
	for <lists+devicetree@lfdr.de>; Thu,  7 Jul 2022 16:35:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235492AbiGGOfr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jul 2022 10:35:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57198 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235312AbiGGOfq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jul 2022 10:35:46 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58F282F67C
        for <devicetree@vger.kernel.org>; Thu,  7 Jul 2022 07:35:44 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id r6so11981752edd.7
        for <devicetree@vger.kernel.org>; Thu, 07 Jul 2022 07:35:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6R/ddtNSwfm7ty86Jg8Rk/94EllRS1alXZobv2bNWis=;
        b=nop4+PYaSie6cLDfOoz79jPZj+LmcL3qmT5jqfFfbawptaU2DSYNGb9uCsJ6ie6CBA
         044wbTmELbC6ll9dHCgX/qKoXRUW4Gt58A8QRV6+vaYK5VZxmSNh9JGnRQJEzvaXSXoZ
         p894kw4QPJoW/iXmBPjcZx7ieiwtgw4Ew+ydA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6R/ddtNSwfm7ty86Jg8Rk/94EllRS1alXZobv2bNWis=;
        b=22XSOHED8yorKmSd74TKTZFkjOL0yrDHLOE5In67KA4yO1UCfqun08KNqGRJdbKgVK
         4kWtW2jMDGG/al4g/iyR0THFVmysjr6hE8/f/g+FCQQp7aQjSGWnDoTYPvanP9XFtPXM
         7ob+D0EHqjRj3a53AzIGKzCL4yh9XtfAyt9hbZn0DWj5cHUyoNY/H7tz3RwcrmeNuEwU
         W7DcK145MRF8FUSil4EvBgcL4J1LsLbmOfZjGKpIIJlm46lt/gH32pT4NAs904ODVsb/
         /Oqdfe5CqgACvuJpU3D9pPsenwiVKEy8kfczfxz71n7nQ3gym1CUWt7dCVc/oO+TuXqD
         6+Mg==
X-Gm-Message-State: AJIora+MhWhUm9cMYBb1GkTS+hYGqDEvWdkxJv1Rm6wmjG/GMcJe+CiH
        K3zADOEKGmtm81e3sAKdeMW5+29JzbYkzr4GRGQ=
X-Google-Smtp-Source: AGRyM1sN9P9kmbIcawdzRzxZG0nQZeqrNHRa31j28YY1fjUBhygw3igzM7vgooGi3F6QHlJEDbrMxQ==
X-Received: by 2002:a05:6402:5303:b0:435:7c46:e411 with SMTP id eo3-20020a056402530300b004357c46e411mr64391000edb.221.1657204542748;
        Thu, 07 Jul 2022 07:35:42 -0700 (PDT)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com. [209.85.221.46])
        by smtp.gmail.com with ESMTPSA id l18-20020a1709060cd200b0072b131815e2sm773670ejh.113.2022.07.07.07.35.41
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Jul 2022 07:35:42 -0700 (PDT)
Received: by mail-wr1-f46.google.com with SMTP id v14so26631295wra.5
        for <devicetree@vger.kernel.org>; Thu, 07 Jul 2022 07:35:41 -0700 (PDT)
X-Received: by 2002:adf:d1c1:0:b0:21b:a5e9:b7b2 with SMTP id
 b1-20020adfd1c1000000b0021ba5e9b7b2mr45296183wrd.405.1657204541324; Thu, 07
 Jul 2022 07:35:41 -0700 (PDT)
MIME-Version: 1.0
References: <20220707075151.67335-1-krzysztof.kozlowski@linaro.org> <20220707075151.67335-6-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220707075151.67335-6-krzysztof.kozlowski@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 7 Jul 2022 07:35:29 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XOGLH9UH4Bwd3E6RC_PT5A4bf20muhnZoW5Rb8O3b2LA@mail.gmail.com>
Message-ID: <CAD=FV=XOGLH9UH4Bwd3E6RC_PT5A4bf20muhnZoW5Rb8O3b2LA@mail.gmail.com>
Subject: Re: [PATCH 5/5] ARM: dts: qcom: align SDHCI clocks with DT schema
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        Linux MMC List <linux-mmc@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Jul 7, 2022 at 1:04 AM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> The DT schema expects clocks iface-core order.  No functional change.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  arch/arm/boot/dts/qcom-apq8084.dtsi    | 12 ++++++------
>  arch/arm/boot/dts/qcom-ipq4019.dtsi    |  4 ++--
>  arch/arm/boot/dts/qcom-msm8226.dtsi    | 18 +++++++++---------
>  arch/arm/boot/dts/qcom-msm8974.dtsi    | 18 +++++++++---------
>  arch/arm/boot/dts/qcom-msm8974pro.dtsi |  6 +++---
>  5 files changed, 29 insertions(+), 29 deletions(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
