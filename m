Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6FA30570642
	for <lists+devicetree@lfdr.de>; Mon, 11 Jul 2022 16:53:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229996AbiGKOxd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Jul 2022 10:53:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229868AbiGKOxc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Jul 2022 10:53:32 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2439ABFC
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 07:53:30 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id u12so9251147eja.8
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 07:53:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=B+DfESfcXMEMmXuDDJXvPYmOkPUKFW71mpdMtJevL6Y=;
        b=k7PwvkOX9vMswnngnpFJUR2Yim1tQzngfTgvN+kCBYpI1huL1ZQcx9t9kq1P/LJt/R
         PF2+6hYpLabGkw3gMvvi/HqDFOnXjayJCtaIrlo9A4HZqGWfd5eA7Ox4gFkYsY5QY6+N
         wIuDOcK8xlSMPM8Qu5fedhAMOfkNGz4Ew5pik=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=B+DfESfcXMEMmXuDDJXvPYmOkPUKFW71mpdMtJevL6Y=;
        b=4kELyOEmUNIVl9GpSiO2BrqyfbpJrHdODtuiYlWGUwbBeW+4NtgNQXyuXC7RffWWfy
         DNXLiXyQhjLNzMtlzfN/yVGAWDA85phTybLR72d3Ck+qr1vICh+wLJCQYIAsjeOfEmQy
         St+nzG4/AgCKUcmvoOmeMtIm7KvAJfd5C4ECKxjVeSl6OSbMXfUGP4R0YBmdXqfnwUQD
         ncSj803l+jiCOH+x4NVMhY95ARj22mtBelZcUwffqCUMN19dDGb7Yw49Lt/Uy0o551UH
         Z5/1lHSMwrgr6mbUpoWUaYLwN4BXe2jvixHFC9eIunMaSiAX4JH6/drV7HcwoECHrIuz
         1QxQ==
X-Gm-Message-State: AJIora9a9X6iH0K1ygzM8iq6AFEEvUINgGjfn65POH8LwRhVGFz/V8fO
        m7nnf9Ruy3kYIGtkjruNzaTdeyPHorE+TmZ8
X-Google-Smtp-Source: AGRyM1u0h4KUL6Dbe9P97tcBvRV4413u1olit5SpFASuffCBXOJgGjU4D4kjPA9VVDZhuBxTt2rBBA==
X-Received: by 2002:a17:907:2cee:b0:72b:3b63:200 with SMTP id hz14-20020a1709072cee00b0072b3b630200mr12115308ejc.678.1657551208443;
        Mon, 11 Jul 2022 07:53:28 -0700 (PDT)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com. [209.85.221.43])
        by smtp.gmail.com with ESMTPSA id s10-20020a170906960a00b006fec4ee28d0sm2719114ejx.189.2022.07.11.07.53.26
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Jul 2022 07:53:27 -0700 (PDT)
Received: by mail-wr1-f43.google.com with SMTP id r14so7378337wrg.1
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 07:53:26 -0700 (PDT)
X-Received: by 2002:adf:f90d:0:b0:20c:de32:4d35 with SMTP id
 b13-20020adff90d000000b0020cde324d35mr16792836wrr.583.1657551206156; Mon, 11
 Jul 2022 07:53:26 -0700 (PDT)
MIME-Version: 1.0
References: <20220711082709.39102-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220711082709.39102-1-krzysztof.kozlowski@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 11 Jul 2022 07:53:13 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Ue+LUHKmG_ceMO-qGqJXkmqMcvyjLFCGNK8s2VBDDd2A@mail.gmail.com>
Message-ID: <CAD=FV=Ue+LUHKmG_ceMO-qGqJXkmqMcvyjLFCGNK8s2VBDDd2A@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: mmc: sdhci-msm: add MSM8998
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Adrian Hunter <adrian.hunter@intel.com>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        Linux MMC List <linux-mmc@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
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

On Mon, Jul 11, 2022 at 1:27 AM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> Add a MSM8998-specific SDCC compatible, because using only a generic
> qcom,sdhci-msm-v4 fallback is deprecated.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  Documentation/devicetree/bindings/mmc/sdhci-msm.yaml | 1 +
>  1 file changed, 1 insertion(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
