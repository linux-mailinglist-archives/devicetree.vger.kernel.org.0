Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 332856C5363
	for <lists+devicetree@lfdr.de>; Wed, 22 Mar 2023 19:15:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230389AbjCVSO7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Mar 2023 14:14:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60488 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230283AbjCVSO7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Mar 2023 14:14:59 -0400
Received: from mail-qt1-x82e.google.com (mail-qt1-x82e.google.com [IPv6:2607:f8b0:4864:20::82e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1F6262334
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 11:14:57 -0700 (PDT)
Received: by mail-qt1-x82e.google.com with SMTP id hf2so19619057qtb.3
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 11:14:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1679508896;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mv/fhOOQ5K5aUx1ATfnJVpvBsiQzQ1dAgrwhuKG15KE=;
        b=JPaYTWYPShpC7YBN55hC2xNu5ZwkVWGDWMzLWemCp02wGcvGE/9X5imOGV8xe/OhGW
         74lYjAGxXM0WuLbKK2BajbfYlcbtMT0iBq0+RUFpHUtLK7wTECFUS2NTJM4e8mJTfvWG
         TjLEGOI0edERLvhBq4ZorAUTWZ10cXcoSKVjo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679508896;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mv/fhOOQ5K5aUx1ATfnJVpvBsiQzQ1dAgrwhuKG15KE=;
        b=rTyx4iYoK8YlGLZyuLwj1rtGaDUO2b8cCCliUjr2kcJF9d4D/FNLS9zkurkNW4rp0t
         wHXb9W+dhmG1vig41BPsMc1AYy8I7jZV1FTtAWcGS6ptbKRcXnKVObz+0FKcu8HLnShK
         ZjPCfltksfbMW64DueT7hqg20zptz04E250gBC6Ij0Y5/bVPJ2dUNczl09S86H+HtizD
         gtVM+y5mF9vake8DrlZ11eQ2kV6yrgk1bwpm03cAl25MxoiTUgEIkCST2Jj3ksOc5p5t
         UEKtvFr+TEuzX7Nh7Ze4y/S7sNr6DgIy8ezdX3d/wukUeCH+0WqZo9KP8UHPdHehtFsR
         sFZw==
X-Gm-Message-State: AO0yUKUR25MKbB/J+wdAXbC8EwidsH8x3gZrYnU+rQzCWhoAxK/gNZNK
        iuITwJW8425aYbZSTskuqKj6IqyZsjnoqOjj+FQ=
X-Google-Smtp-Source: AK7set9WBgKKKlEX8GBDSRP477vr2F17fZsz/urTFl2yBatn//0gWCeEhr34u+DfrvD1GwX1C9duuw==
X-Received: by 2002:a05:622a:83:b0:3bf:cfaa:737e with SMTP id o3-20020a05622a008300b003bfcfaa737emr8799684qtw.23.1679508896298;
        Wed, 22 Mar 2023 11:14:56 -0700 (PDT)
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com. [209.85.219.170])
        by smtp.gmail.com with ESMTPSA id x14-20020ac8538e000000b003e38d6c013dsm1068796qtp.60.2023.03.22.11.14.53
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Mar 2023 11:14:53 -0700 (PDT)
Received: by mail-yb1-f170.google.com with SMTP id e71so22126037ybc.0
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 11:14:52 -0700 (PDT)
X-Received: by 2002:a05:6902:1083:b0:b69:ca6f:452c with SMTP id
 v3-20020a056902108300b00b69ca6f452cmr531063ybu.0.1679508892480; Wed, 22 Mar
 2023 11:14:52 -0700 (PDT)
MIME-Version: 1.0
References: <20230217155838.848403-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230217155838.848403-1-krzysztof.kozlowski@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 22 Mar 2023 11:14:39 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XTJsrnPszQ6GHMqYm0hUedA+N126jDSm2uVyVZ+L1e1Q@mail.gmail.com>
Message-ID: <CAD=FV=XTJsrnPszQ6GHMqYm0hUedA+N126jDSm2uVyVZ+L1e1Q@mail.gmail.com>
Subject: Re: [PATCH 1/3] arm64: dts: qcom: sc7180-trogdor-pazquel360: drop
 incorrect RT5682S VBAT-supply
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Judy Hsiao <judyhsiao@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Feb 17, 2023 at 7:58=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> It seems that the RT5682S codec does not use VBAT-supply:
>
>   sc7180-trogdor-pazquel360-lte.dtb: codec@1a: Unevaluated properties are=
 not allowed ('VBAT-supply' was unexpected)
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>
> ---
>
> I don't have access to datasheet. Driver still requests VBAT-supply but
> other boards simply remove this property for RT5682S.

I checked and I don't see the driver requesting VBAT. Specifically
note that this is the "s" variant which seems to share no code with
the old variants (the "i" variant and the SDW variant).

> ---
>  arch/arm64/boot/dts/qcom/sc7180-trogdor-pazquel360.dtsi | 1 +
>  1 file changed, 1 insertion(+)

This seems right to me.

Reviewed-by: Douglas Anderson <dianders@chromium.org>
