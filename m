Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CD70A6219B5
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 17:43:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233410AbiKHQnD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Nov 2022 11:43:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33914 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234236AbiKHQm6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Nov 2022 11:42:58 -0500
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B2C558030
        for <devicetree@vger.kernel.org>; Tue,  8 Nov 2022 08:42:57 -0800 (PST)
Received: by mail-ej1-x635.google.com with SMTP id bj12so40025299ejb.13
        for <devicetree@vger.kernel.org>; Tue, 08 Nov 2022 08:42:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=QMec66hp71TWs3o/wo3ARGg7ftBfO6FZm4lMQC+qaXY=;
        b=nygImnQwy/qQBpMTVv9i4AovKSBGIzVmc80uHobnTNMdDla+vBeLabbqi2Z8dx3NvM
         NRjIiF4VLgItz+pOl8NoCU2nR2oDURxS0PC5rY68adCIChLjv+dLkHLAKmAdX0YzADBw
         0IHXv6p9tFzZcUIxXCoIPgNpgHk016810nb2E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QMec66hp71TWs3o/wo3ARGg7ftBfO6FZm4lMQC+qaXY=;
        b=NDjzJvDvsaacZh38y/MIdYuZijIvUYVWvXee8rGgJi/LrhF7i6EeZU/SsvhX/aBe7c
         Ehpf7VlH655dLJ5yMJAFEnitn0lAe/G18iUG7ytr/zSe1znnO4jZ7OlF0JJwQ06unb28
         OlSH3jQEUHPwKbCiWxuiEcEC4W/VTlUA2yyYi8HHpKGgZjq+2Z76TuXaxpT3+rvp5Cfw
         vAZXnrGzBeqzDKGu6jnRxTaP9kjV+kCSWeyjF+Cah3gh2S4TmYHYqUG0lV/VFxXCLMvE
         C1AkSBGAaSrwciPIcHJLA18RrAuBPrjqgMCpOhBgJkPfsmWzwFJUHpFVg9rIiUJxeHlh
         /Nrg==
X-Gm-Message-State: ANoB5pnz0Ij5kPqpfz9SX8WwDvEwxIboPDITZ78faD4ly77d72/p+Q4u
        C57ZM+irfM2lDy1R6CYv0oFtdILpUnj5F1I2
X-Google-Smtp-Source: AA0mqf4CU4ZSsBy+1M4Ju3D2N6UmWjwcqMCllaIDILeY1s1CGAkLPOvKFLMENoeoUotjuCmX81ZAfg==
X-Received: by 2002:a17:907:608f:b0:7ae:8782:18a0 with SMTP id ht15-20020a170907608f00b007ae878218a0mr716564ejc.91.1667925775362;
        Tue, 08 Nov 2022 08:42:55 -0800 (PST)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com. [209.85.221.46])
        by smtp.gmail.com with ESMTPSA id vv2-20020a170907a68200b007417041fb2bsm4802386ejc.116.2022.11.08.08.42.47
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Nov 2022 08:42:50 -0800 (PST)
Received: by mail-wr1-f46.google.com with SMTP id z14so21876264wrn.7
        for <devicetree@vger.kernel.org>; Tue, 08 Nov 2022 08:42:47 -0800 (PST)
X-Received: by 2002:a5d:4410:0:b0:236:a8f9:268f with SMTP id
 z16-20020a5d4410000000b00236a8f9268fmr36396106wrq.405.1667925766971; Tue, 08
 Nov 2022 08:42:46 -0800 (PST)
MIME-Version: 1.0
References: <20221107235654.1769462-1-bryan.odonoghue@linaro.org> <20221107235654.1769462-18-bryan.odonoghue@linaro.org>
In-Reply-To: <20221107235654.1769462-18-bryan.odonoghue@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 8 Nov 2022 08:42:35 -0800
X-Gmail-Original-Message-ID: <CAD=FV=VL5C86kA0Z3fMu-uVwKmKj5CGuNmWeCuwOTbXi-7xKaQ@mail.gmail.com>
Message-ID: <CAD=FV=VL5C86kA0Z3fMu-uVwKmKj5CGuNmWeCuwOTbXi-7xKaQ@mail.gmail.com>
Subject: Re: [PATCH v2 17/18] arm64: dts: qcom: sdm845: Add compat qcom,mdss-dsi-ctrl-sdm845
To:     "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>
Cc:     robdclark@gmail.com, quic_abhinavk@quicinc.com,
        dmitry.baryshkov@linaro.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, quic_mkrishn@quicinc.com,
        linux-arm-msm@vger.kernel.org, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rajendra Nayak <rnayak@codeaurora.org>
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

On Mon, Nov 7, 2022 at 3:57 PM Bryan O'Donoghue
<bryan.odonoghue@linaro.org> wrote:
>
> Add silicon specific compatible qcom,mdss-dsi-ctrl-sdm845 to the
> mdss-dsi-ctrl block. This allows us to differentiate the specific bindings
> for sdm845 against the yaml documentation.
>
> Cc: Andy Gross <agross@kernel.org>
> Cc: Bjorn Andersson <andersson@kernel.org>
> Cc: Konrad Dybcio <konrad.dybcio@somainline.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: linux-arm-msm@vger.kernel.org
> Cc: devicetree@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> Cc: Bjorn Andersson <andersson@kernel.org>
> Cc: Douglas Anderson <dianders@chromium.org>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Cc: Rajendra Nayak <rnayak@codeaurora.org>
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sdm845.dtsi | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
