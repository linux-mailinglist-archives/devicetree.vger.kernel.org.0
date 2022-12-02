Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8136F640A83
	for <lists+devicetree@lfdr.de>; Fri,  2 Dec 2022 17:21:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234055AbiLBQVu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Dec 2022 11:21:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37194 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233968AbiLBQVc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Dec 2022 11:21:32 -0500
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D27CE1774
        for <devicetree@vger.kernel.org>; Fri,  2 Dec 2022 08:18:51 -0800 (PST)
Received: by mail-ej1-x633.google.com with SMTP id td2so12672968ejc.5
        for <devicetree@vger.kernel.org>; Fri, 02 Dec 2022 08:18:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9sSKXcDsyGwMJeWY4NDSO718BkFmb+d6Aniz+mE21XI=;
        b=DMcjVh5J0PLUm4KCi2yThPTKI61xrD/51r2/Ok5zUYgIBjhEOFJPoR+53vqsJaGXeb
         o4FgU79/sR8k7rABYurayQCm0emRdY+OM4hauUeAM60mGgGe7HGCp+icrlEziWASk2aa
         lZYKIVVT9zINcAIrUgC9muSsvr6Whu52Zt+ZY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9sSKXcDsyGwMJeWY4NDSO718BkFmb+d6Aniz+mE21XI=;
        b=52gnDyVGJRp20B5eVvgXYoMnXFj6n4ZxpoJ5a/IivdkZ96wuJyelYmjr/38scbbvDW
         g3V4bKsiXZkWTubIw/x61PlO+4HU5HT2ajPXv3M0pQvpxT8DYvIHIKocoaTHjeXB1Xzd
         WdfVihFpAvFH/cJMiZgMwytRZLPrpmxwkqo8cFRz/1XZkoOraCYQ6gyacM5EWvjJHPNO
         vIrJ9qwtBQpBZYjyJRqUP8wGlw6j2cH+zXa6mrumpQMfN0pij9LObpAXrjFHEVRNDpbl
         JnUhVsN14QFzLR+dov7N1DDyxr+nKRSSYdi/mF+GQnt/7WjuVhYl5jdgGdBrpnL8aGc6
         MDQg==
X-Gm-Message-State: ANoB5pkOXxT8jkbqZXjYN4LMpu1WQ9shrzfeQO2hJOLxBm0JIJA7o0EE
        Hu7HJyZj2GdbfCr7E5FZlHDHQA2CTg+keOT5wwM=
X-Google-Smtp-Source: AA0mqf5G3gbKM7IiiIsZsisCmbqHHtRNR7EdC0rFNi8KoeWkwVouTHlCnwTK9fMrYdKwKbP81Kk7DA==
X-Received: by 2002:a17:906:544b:b0:7c0:7e90:ec98 with SMTP id d11-20020a170906544b00b007c07e90ec98mr17899472ejp.537.1669997895541;
        Fri, 02 Dec 2022 08:18:15 -0800 (PST)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com. [209.85.221.44])
        by smtp.gmail.com with ESMTPSA id f29-20020a50d55d000000b00467960d7b62sm3162946edj.35.2022.12.02.08.18.13
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Dec 2022 08:18:14 -0800 (PST)
Received: by mail-wr1-f44.google.com with SMTP id f18so8534510wrj.5
        for <devicetree@vger.kernel.org>; Fri, 02 Dec 2022 08:18:13 -0800 (PST)
X-Received: by 2002:a5d:4943:0:b0:242:3ca3:b7bd with SMTP id
 r3-20020a5d4943000000b002423ca3b7bdmr4732468wrs.583.1669997893515; Fri, 02
 Dec 2022 08:18:13 -0800 (PST)
MIME-Version: 1.0
References: <20221202155738.383301-1-krzysztof.kozlowski@linaro.org> <CAD=FV=U86PyVQP4wbhwEkzYprJxz2-S3ooniuYKJBNQOudx2uA@mail.gmail.com>
In-Reply-To: <CAD=FV=U86PyVQP4wbhwEkzYprJxz2-S3ooniuYKJBNQOudx2uA@mail.gmail.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 2 Dec 2022 08:18:01 -0800
X-Gmail-Original-Message-ID: <CAD=FV=VjfFx_GBNh9zC=fdV5gUBHww+4BhSSpAq0iq-72i62TQ@mail.gmail.com>
Message-ID: <CAD=FV=VjfFx_GBNh9zC=fdV5gUBHww+4BhSSpAq0iq-72i62TQ@mail.gmail.com>
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

On Fri, Dec 2, 2022 at 8:08 AM Doug Anderson <dianders@chromium.org> wrote:
>
> Hi,
>
> On Fri, Dec 2, 2022 at 7:57 AM Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
> >
> > The pin config entry should have a string, not number, for the GPIO used
> > as WCD9340 audio codec interrupt.
> >
> > Reported-by: Doug Anderson <dianders@chromium.org>
> > Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> >
> > ---
> >
> > Cc: Doug Anderson <dianders@chromium.org>
> >
> > Changes since v2:
> > 1. New patch.
> > ---
> >  arch/arm64/boot/dts/qcom/sdm845-db845c.dts | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
>
> Presumably should have a "Fixes" tag since this is likely a true bug.
>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>

FWIW, this got copy-pasta-ed to another place, which I just noticed as
I'm looking at your v3. So while your change is correct, it'd be
better to also fix "sdm845-xiaomi-beryllium-common.dtsi"

-Doug
