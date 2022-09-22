Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6F1765E687F
	for <lists+devicetree@lfdr.de>; Thu, 22 Sep 2022 18:34:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229488AbiIVQeW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Sep 2022 12:34:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229575AbiIVQeV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Sep 2022 12:34:21 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8CC1B4CA0C
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 09:34:20 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id dv25so22183012ejb.12
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 09:34:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=Im4t9lnX5R8DyS/Oqe89/5RcWfGnhyqZe+p62UWe9Qo=;
        b=Xh7fkD8mev4MAGIdOZHvcOICVshIyRbeR0HigP2a9U/aMnCKzZ5Uctq7lQBfqZSZOf
         7obnHbGc8GXP7p+qEAJ2MZsfGsSP3qD2wR4Ud70TzcdKV3Lu1z+VwryD+FscawLJsm2R
         0n8MmSvs111TR+ULATFWpPn6MLHtWVGxNSD4U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=Im4t9lnX5R8DyS/Oqe89/5RcWfGnhyqZe+p62UWe9Qo=;
        b=AmruAVhG4kp2RDu8WMkZoAM3iLqb9xxXmdBFnoeWI4lrwd+v4UTxxhQfgjFiyi/iA8
         VLadXLnm4GEfl4MrRZhecymsPKwZgvVCUNjNKx+PxmATpEgLEK9elXe0DlsuBEXY3VPm
         N8lsBFnug4mWZaEOaIzRzHi4HTIa/rqfSl4/nlTE8f3zixVTWvmRVGv+EqnqxETsDxwd
         bLENFamLt+nsJ14GMxLyNg/kOxY1iqzhiX2WH+BnODHEFgVdzgEDFZ62+t8KaK6Dpzzl
         G4gDMM/+6mWa6QT1THeSs8xsamfqfQPgcxroC6b8dd9mN5yqEr2g0pPGFVwrUt56uolk
         93uA==
X-Gm-Message-State: ACrzQf1w07v6BvB0TWvio5Vt0KvNc/KIIBgzqbjRWLuqc9zqo5nmvUG1
        cWbEKCnZRLbYWzUzId9uRHw+V6OSVxsjFZUj
X-Google-Smtp-Source: AMsMyM5S98iK89k9uXU5331sBrsmsR6RMMLp2klJ7z05hUeRI5CBeEGGR5gK/657BP7CdX17RgNjvg==
X-Received: by 2002:a17:907:b04:b0:780:32ea:4fe with SMTP id h4-20020a1709070b0400b0078032ea04femr3443395ejl.452.1663864458866;
        Thu, 22 Sep 2022 09:34:18 -0700 (PDT)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com. [209.85.128.41])
        by smtp.gmail.com with ESMTPSA id p16-20020a1709060e9000b007707ec25071sm2761537ejf.220.2022.09.22.09.34.18
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 09:34:18 -0700 (PDT)
Received: by mail-wm1-f41.google.com with SMTP id fn7-20020a05600c688700b003b4fb113b86so1730268wmb.0
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 09:34:18 -0700 (PDT)
X-Received: by 2002:a05:600c:500d:b0:3b5:234:d7e9 with SMTP id
 n13-20020a05600c500d00b003b50234d7e9mr2841969wmr.57.1663864457846; Thu, 22
 Sep 2022 09:34:17 -0700 (PDT)
MIME-Version: 1.0
References: <20220922101813.v4.1.I3aa360986c0e7377ea5e96c116f014ff1ab8c968@changeid>
 <20220922101813.v4.2.Iea2d2918adfff2825b87d428b5732717425c196f@changeid>
In-Reply-To: <20220922101813.v4.2.Iea2d2918adfff2825b87d428b5732717425c196f@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 22 Sep 2022 09:34:05 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XiGJ27sGaAPafQW2B3yJe_dSPp55nA-+YFHZ29BPwPgQ@mail.gmail.com>
Message-ID: <CAD=FV=XiGJ27sGaAPafQW2B3yJe_dSPp55nA-+YFHZ29BPwPgQ@mail.gmail.com>
Subject: Re: [PATCH v4 2/4] arm64: dts: qcom: Add sc7180-pazquel360
To:     Yunlong Jia <ecs.beijing2022@gmail.com>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Yunlong Jia <yunlong.jia@ecs.com.tw>,
        Henry Sun <henrysun@google.com>,
        Bob Moragues <moragues@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Sep 22, 2022 at 3:22 AM Yunlong Jia <ecs.beijing2022@gmail.com> wrote:
>
> Create first version device tree for pazquel360
> pazquel360 is convertible and the pazquel it is based on is clamshell.
> sku 20 for lte & wifi
> sku 21 for wifi only
> sku 22 for lte w/o esim & wifi
>
> Signed-off-by: Yunlong Jia <ecs.beijing2022@gmail.com>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>
>
> ---
>
> Changes in v4:
>  1. Adjust the 'Signed-off-by'.
>  2. Add touchscreen setting in dtsi.

Just to be clear, I've looked at the differences in v4 and I'm still
fine with my Reviewed-by as was carried by Yunlong.

Also note that this should be the last patch in the series. The
"ekth3915" bindings are relevant to it and bindings should be earlier
in the series.


-Doug
