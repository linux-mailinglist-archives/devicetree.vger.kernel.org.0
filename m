Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A5FDF738678
	for <lists+devicetree@lfdr.de>; Wed, 21 Jun 2023 16:13:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232808AbjFUON3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jun 2023 10:13:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57582 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232809AbjFUONC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jun 2023 10:13:02 -0400
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com [IPv6:2607:f8b0:4864:20::b2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B9201FC6
        for <devicetree@vger.kernel.org>; Wed, 21 Jun 2023 07:12:20 -0700 (PDT)
Received: by mail-yb1-xb2a.google.com with SMTP id 3f1490d57ef6-bff4f1e93caso581294276.0
        for <devicetree@vger.kernel.org>; Wed, 21 Jun 2023 07:12:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687356734; x=1689948734;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ErBfz/eE9PwEy6R3MCzuAtZChT+YesXd4xpw5KCkMaY=;
        b=ONfw9xNlBCMN+q8Wk9Bj2RaWaKH5m5cmGxsJITFMIXiYWflCj3SdkuzKuohwjD/YTb
         GQeMfsJwbiIGnadDwbbetgv0gl1phwEsI4g224ucjGqX8yl2ZbxON8f82hbrWUnYdiLz
         cdTZk+mDAqXaI7dy0ecomlT6hWqutVyL8EZZEXi5+c8Ru57IA4kiIa2XaqgHbxC3vWTl
         ENK10peTByd15gHXMWgla66vh1ktVIW0GthlB7Y1TTxZNOedYEFDFtz/5lI2GophoGgg
         GhD+x6jS2ykj0jQfj89jSs3Ba6u5JvDVKkQDX8erhw+hhVF1VGtbJEp4imZuIqE1RLWr
         rOyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687356734; x=1689948734;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ErBfz/eE9PwEy6R3MCzuAtZChT+YesXd4xpw5KCkMaY=;
        b=cQX4Tpx2FLR16sH/ijZPspoKgVeKGKc6eISKfA2sbWNa/KJAsBI27z/ACcFVAlpbgF
         dDi3TCbKQhCDF52T2vKtj8z0n9cWxUpfMp1cCaEujvMMhMh45gGZTgCkhnCGyJgsVXoB
         IMhjNKNEd8TDuYANYEHHPXMqJZZ7ClSisWq8FuscuNrmxZyez4lbYCG8WOGPlUCei8Mk
         6/xTS7VxKB1Sr37U1xjS2aM7adUCzgr2Ql/xw8SL6co38cF+ji4QYnx+PI8ygVX46ZoO
         VHsyQ3/k4ikD8LeNnngRflhUjSI2ZTEnpSszdx+3DcY6ODOkS1+v8qj7PYjDWVS+/AyN
         BISA==
X-Gm-Message-State: AC+VfDxpXADRKqBM/Fx5wVGQUlTCqLp1KUd4xXoqUiDeghWLRI2zSHpD
        ZOHDP7Wr1Jb8zhfruTkzAa/UXuK/zbaAczGKvHY4AA==
X-Google-Smtp-Source: ACHHUZ7cqDlxDOprUZhDcHvJBNqcJerx2HY1cmaV5EIzhCvX7MidMnlA75x51PBxKIB0Syn/nnot9axx/yUaPnUPBYU=
X-Received: by 2002:a25:2f82:0:b0:bca:3465:9ea2 with SMTP id
 v124-20020a252f82000000b00bca34659ea2mr11025537ybv.48.1687356734729; Wed, 21
 Jun 2023 07:12:14 -0700 (PDT)
MIME-Version: 1.0
References: <20230620-topic-gpu_tablet_disp-v2-0-0538ea1beb0b@linaro.org> <20230620-topic-gpu_tablet_disp-v2-2-0538ea1beb0b@linaro.org>
In-Reply-To: <20230620-topic-gpu_tablet_disp-v2-2-0538ea1beb0b@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Wed, 21 Jun 2023 17:12:03 +0300
Message-ID: <CAA8EJpph4zzcCiveV9Owjsf_y7FmTVk5WMuf5sFoWE+aOQp=3A@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] arm64: dts: qcom: sm6115p-j606f: Hook up display
To:     Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 21 Jun 2023 at 14:22, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> Enable the required nodes, add the required pins and tweak a
> regulator to enable non-simplefb display on the Tab P11.
>
> Do note that there exists a second SKU with a different panel+touch
> combo, but due to insufficient information, that will need to be
> handled separately.
>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts | 57 +++++++++++++++++++++--
>  1 file changed, 52 insertions(+), 5 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry
