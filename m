Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E8AB8640A4C
	for <lists+devicetree@lfdr.de>; Fri,  2 Dec 2022 17:09:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232011AbiLBQJE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Dec 2022 11:09:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48802 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233509AbiLBQJD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Dec 2022 11:09:03 -0500
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DB4CACA6A
        for <devicetree@vger.kernel.org>; Fri,  2 Dec 2022 08:09:02 -0800 (PST)
Received: by mail-ej1-x62f.google.com with SMTP id ud5so12610582ejc.4
        for <devicetree@vger.kernel.org>; Fri, 02 Dec 2022 08:09:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9Lv5UzsGC5MNuyMX51lzq8lQHZSD5qCFW0KbPV3N8yA=;
        b=dHkIQtDWVxEzkcR9PWkORdgWl8wQJYfleFiUtDlLhO2HldA84X5tRjuMoTlAAEsMGo
         Qulu3evExmDVuVSuIYaMi5eDn18ElcfYbcklsiHd1mLy48yHzoBKd4YfJgIutpRBcYz4
         L2xut/t837fa812aTvn25G+M4SLiEhL47Vxhc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9Lv5UzsGC5MNuyMX51lzq8lQHZSD5qCFW0KbPV3N8yA=;
        b=FbU3O50T1Ivu/aUHmOz8LszracOQ1L2nuSe2cSwq3lbnvAUjzRITidPwY8XxFW5LMj
         /CN02eEqJNUDiujGRiQt5u+T05C0MqM/4XWz1rS2jkNB04rsJ2V2Myve5Ymdzz8QVgJl
         n5WfoDapToED1CWBzHEqjdp1f2+2PPhKFbkYHTaK6fhD1dAuD63/f1vrOK3Oo3mh32X/
         tmrQRqZcpRipJmY27EVszoOm+q08bODc/PsrWnBIExFPypc6di9ldaCaXluZiyq3TRSe
         O7SqdaaQDhnyhKp8LahLYJbShLlbB48s4TExITLB0BjF+/3vmYqYq3u4QjDlxPXZw4Pw
         MMOA==
X-Gm-Message-State: ANoB5pkgJ3u4Kz5DdsRm+H6xDjpRQUlp1xOC3lBhejlC5LQ/i5zo1azp
        iK42hSE55Z326ExLASsYcSlwic4kwGd4aUiR10g=
X-Google-Smtp-Source: AA0mqf5OAlcHRZjgTK86BIQ53CfJSrl5pSmeWWbbtPte0JqifSvlHMoXGqGhoT8D6nWLZrczuJJzZA==
X-Received: by 2002:a17:906:794b:b0:7bb:a098:988c with SMTP id l11-20020a170906794b00b007bba098988cmr35375265ejo.11.1669997341002;
        Fri, 02 Dec 2022 08:09:01 -0800 (PST)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com. [209.85.128.51])
        by smtp.gmail.com with ESMTPSA id q25-20020a17090676d900b007803083a36asm3144524ejn.115.2022.12.02.08.08.59
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Dec 2022 08:08:59 -0800 (PST)
Received: by mail-wm1-f51.google.com with SMTP id m19so3855105wms.5
        for <devicetree@vger.kernel.org>; Fri, 02 Dec 2022 08:08:59 -0800 (PST)
X-Received: by 2002:a1c:cc04:0:b0:3cf:7716:8954 with SMTP id
 h4-20020a1ccc04000000b003cf77168954mr52698641wmb.57.1669997339063; Fri, 02
 Dec 2022 08:08:59 -0800 (PST)
MIME-Version: 1.0
References: <20221202155738.383301-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221202155738.383301-1-krzysztof.kozlowski@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 2 Dec 2022 08:08:46 -0800
X-Gmail-Original-Message-ID: <CAD=FV=U86PyVQP4wbhwEkzYprJxz2-S3ooniuYKJBNQOudx2uA@mail.gmail.com>
Message-ID: <CAD=FV=U86PyVQP4wbhwEkzYprJxz2-S3ooniuYKJBNQOudx2uA@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] arm64: dts: qcom: sdm845-db845c: fix audio codec
 interrupt pin name
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Dec 2, 2022 at 7:57 AM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> The pin config entry should have a string, not number, for the GPIO used
> as WCD9340 audio codec interrupt.
>
> Reported-by: Doug Anderson <dianders@chromium.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>
> ---
>
> Cc: Doug Anderson <dianders@chromium.org>
>
> Changes since v2:
> 1. New patch.
> ---
>  arch/arm64/boot/dts/qcom/sdm845-db845c.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Presumably should have a "Fixes" tag since this is likely a true bug.

Reviewed-by: Douglas Anderson <dianders@chromium.org>
