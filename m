Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 006366C4504
	for <lists+devicetree@lfdr.de>; Wed, 22 Mar 2023 09:34:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230209AbjCVIeN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Mar 2023 04:34:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230216AbjCVIeD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Mar 2023 04:34:03 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98ACA3019B
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 01:33:59 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id v25so12646800wra.12
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 01:33:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679474038;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=PZZ78qLp77yZoHhc/roP4UrIg6dM+0qsSNFGhIMKyP0=;
        b=YJJP9ac7wXjfi7ytsNM1BSAKsLI/SpNopxFSWAdGM5+JooSMQ7SeazRpAvRUz/HD7j
         qXvP5sLiat6jy36Gf3FhW8dt+wPQ0pzVCzq5zYSfIDlVBG3h2nqEDHmzTl4WM+XXYLpc
         v4fUhLvjSXsSRkLpoEUA2Cb5wcUwQrbnqCwl1F5cY3U46dGUqJ/tPjZcBwdJmDHhmv70
         ToPVYhD9VAnPzc6V1zIhXImcPVKxlMSe1BTjqPUGBiL5XNGIvEfCGAqwMY0fw2udCnI7
         PH6F9PM/e8NXYSHdx/LPOY9J/ES2klqKNCySglb55ft9DjCt3T++xJkT1fXhoDuWoKOP
         po+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679474038;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PZZ78qLp77yZoHhc/roP4UrIg6dM+0qsSNFGhIMKyP0=;
        b=JtE5k28hgt1aQuuKciIRwm9XBZ+ilzTD/2tF44wySgMgyZHc3HPJh4NlafQD5fbA2F
         byyiwTxZew/2tqjdGUooQTPvXvnqeGcKGu1LLoCc0etHgF4gRNWEYeeY3RNjuOTQkajf
         5t+/YbCJbLQLMi3KZ1f2/5dDXCicmAHL94QIeFdjMixN1zC2+alhzXofRxCHbafydngz
         SoJUBdf9ygD9US4xouU0pxdOJYukPXOrWoe3vDABmpn2BUQ3510P8v0CzLNdCPoKH2Aj
         k9OuCk5U3O/fI2GThqtFOtRume9nrS9v3+xPKWeOo24ydBRetSnYnEAcQP+iFg4E6TQV
         moOw==
X-Gm-Message-State: AO0yUKXwcYTtj94Dv1cCZ3uFtUUFG8m7QX87RUMQs4n1z3RyL+fGxr45
        ybfZiMUV0aM3t3VJ1BIqzHPfCYLPDpTTPZwlpYdTng==
X-Google-Smtp-Source: AK7set+5Zdn6gWTvLWW6oktF+3IL7CkLsWSf8Iyrda182XSE94va2C+0pzBgjcZBral6xYkOEYXDlTtVS+p8GsHmHeM=
X-Received: by 2002:a5d:5445:0:b0:2d1:b0df:c027 with SMTP id
 w5-20020a5d5445000000b002d1b0dfc027mr1259547wrv.4.1679474037963; Wed, 22 Mar
 2023 01:33:57 -0700 (PDT)
MIME-Version: 1.0
References: <20230321190118.3327360-1-bhupesh.sharma@linaro.org> <41111f93-ef02-0e57-98af-01327213d854@linaro.org>
In-Reply-To: <41111f93-ef02-0e57-98af-01327213d854@linaro.org>
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
Date:   Wed, 22 Mar 2023 14:03:46 +0530
Message-ID: <CAH=2NtziWx2g_4K92iH+9DLo8XV0P32NNnEpxy6f0G_dQOVs+Q@mail.gmail.com>
Subject: Re: [PATCH 0/5] arm64: dts: qcom: Enable Crypto Engine for a few
 Qualcomm SoCs
To:     Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, agross@kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        andersson@kernel.org, bhupesh.linux@gmail.com,
        krzysztof.kozlowski@linaro.org, robh+dt@kernel.org,
        vladimir.zapolskiy@linaro.org, rfoss@kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 22 Mar 2023 at 00:57, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
>
>
> On 21.03.2023 20:01, Bhupesh Sharma wrote:
> > This patchset enables Crypto Engine support for Qualcomm SoCs like
> > SM6115, SM8150, SM8250 and SM8350.
> >
> > While at it, also fix the compatible string for BAM DMA engine
> > used in sdm845.dtsi
> >
> > Note that:
> > - SM8250 crypto engine patch utilizes the work already done by myself and
> >   Vladimir.
> > - SM8350 crypto engine patch utilizes the work already done by Robert.
> >
> > This patchset depends on the dt-bindings patch which added support for
> > SM6115 and QCS2290 SoCs:
> > https://lore.kernel.org/linux-arm-msm/20230321184811.3325725-1-bhupesh.sharma@linaro.org/
> You could have included that one here for easier tracking!

Err.. the dt-binding maintainers have been asking to split the
dt-binding patches from
the dts ones in the past. So, let's stick to that for now :)

Thanks.

> > Also this patchset is rebased on linux-next/master.
> >
> > Bhupesh Sharma (5):
> >   arm64: dts: qcom: sdm845: Fix the BAM DMA engine compatible string
> >   arm64: dts: qcom: sm6115: Add Crypto Engine support
> >   arm64: dts: qcom: sm8150: Add Crypto Engine support
> >   arm64: dts: qcom: sm8250: Add Crypto Engine support
> >   arm64: dts: qcom: sm8350: Add Crypto Engine support
> >
> >  arch/arm64/boot/dts/qcom/sdm845.dtsi |  2 +-
> >  arch/arm64/boot/dts/qcom/sm6115.dtsi | 26 ++++++++++++++++++++++++++
> >  arch/arm64/boot/dts/qcom/sm8150.dtsi | 26 ++++++++++++++++++++++++++
> >  arch/arm64/boot/dts/qcom/sm8250.dtsi | 26 ++++++++++++++++++++++++++
> >  arch/arm64/boot/dts/qcom/sm8350.dtsi | 26 ++++++++++++++++++++++++++
> >  5 files changed, 105 insertions(+), 1 deletion(-)
> >
