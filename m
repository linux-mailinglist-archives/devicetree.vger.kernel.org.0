Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9E6E26B7AB4
	for <lists+devicetree@lfdr.de>; Mon, 13 Mar 2023 15:45:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229623AbjCMOpF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Mar 2023 10:45:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40310 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231504AbjCMOos (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Mar 2023 10:44:48 -0400
Received: from mail-oi1-x231.google.com (mail-oi1-x231.google.com [IPv6:2607:f8b0:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A4D1125A6
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 07:44:02 -0700 (PDT)
Received: by mail-oi1-x231.google.com with SMTP id bh20so9578369oib.9
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 07:44:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1678718640;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z9wviaciFaFNhJ1J1XpkBbRHYzGEiVtgdsNXSIrpY6o=;
        b=LwaYfBp7u1kjm5hj/kiMBuYqnQb+KwJtSDcxEdJab5S+j16jS1gc6M4WD+1MeA6U01
         5f8bieba9qLRBQcz0AWO/DdNLiGuBZRAAvOB7oNML7JB1LAj15hv1cwLKvAKyc6udsB0
         f9RjPdU+k2Ltp4YXhMS+BqRJQui/lptcs2V78=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678718640;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z9wviaciFaFNhJ1J1XpkBbRHYzGEiVtgdsNXSIrpY6o=;
        b=qxlNgpTpV9rjBJVGW3kjPRNh7iKDVrjMdJg7ZhnRkyMp8airnCIhLgZJmNVodHqNxc
         AMPWFnZStusbfBTeV10ifDSaq8q1CK8+Qsy5RRk8Z/I2dciOvLBdzLEeZGBp8W81v/fr
         msa3V71dHrCgf6xf8wtKuFMIJr67Hm+jaEOMTSZnSO2xL+JsZ6jx73rRNvnH2oGRX4zi
         h/vU9eBdyQH6EtKvzhLdEMG34VNrocvINr2L3zyPMw8wqSB2CuW+exxooBn9NofkKD5K
         WiIbRgrbgNhUMNbFD4JPF9n3zCDTPUI+Q2CiRgLv++lZv9mKQ7fffLl20EiDELRQHDBQ
         eINw==
X-Gm-Message-State: AO0yUKXUb8Yq5plFtccATqgB1+CF/yph1mN0/q1HRUZCuHLrMZmdpl9C
        VGbETbjIrUhuwdgVOL8G5dY47VK4x23ZPok2c6Q=
X-Google-Smtp-Source: AK7set+5xhedETmZM+bp+oTEv5VHjCOsy8+ozssGnAeWfjyrNovoy5CfI489P/TJO/0++d0+8DntmA==
X-Received: by 2002:aca:1218:0:b0:37a:b61b:2f8f with SMTP id 24-20020aca1218000000b0037ab61b2f8fmr15510727ois.54.1678718640330;
        Mon, 13 Mar 2023 07:44:00 -0700 (PDT)
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com. [209.85.167.170])
        by smtp.gmail.com with ESMTPSA id o83-20020acabe56000000b0038476262f65sm3185406oif.33.2023.03.13.07.44.00
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Mar 2023 07:44:00 -0700 (PDT)
Received: by mail-oi1-f170.google.com with SMTP id bp19so9581901oib.4
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 07:44:00 -0700 (PDT)
X-Received: by 2002:a81:af4f:0:b0:541:8ce6:b9ad with SMTP id
 x15-20020a81af4f000000b005418ce6b9admr3376649ywj.2.1678718263282; Mon, 13 Mar
 2023 07:37:43 -0700 (PDT)
MIME-Version: 1.0
References: <20230312183622.460488-1-krzysztof.kozlowski@linaro.org> <20230312183622.460488-2-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230312183622.460488-2-krzysztof.kozlowski@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 13 Mar 2023 07:37:32 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Va7M=9LzPumUrk-U-XrN1va0Afnib5X-Bt8cfkU6SyNA@mail.gmail.com>
Message-ID: <CAD=FV=Va7M=9LzPumUrk-U-XrN1va0Afnib5X-Bt8cfkU6SyNA@mail.gmail.com>
Subject: Re: [PATCH 2/8] arm64: dts: qcom: sc7280-herobrine-villager: correct
 trackpad supply
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        "Joseph S. Barrera III" <joebar@chromium.org>,
        Gustave Monce <gustave.monce@outlook.com>,
        Vinod Koul <vkoul@kernel.org>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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


On Sun, Mar 12, 2023 at 11:36=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> The hid-over-i2c takes VDD, not VCC supply.  Fix copy-pasta from other
> Herobrine boards which use elan,ekth3000 with valid VCC:
>
>   sc7280-herobrine-villager-r1-lte.dtb: trackpad@2c: 'vcc-supply' does no=
t match any of the regexes: 'pinctrl-[0-9]+'
>
> Fixes: ee2a62116015 ("arm64: dts: qcom: sc7280: Add device tree for herob=
rine villager")
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7280-herobrine-villager.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Luckily it didn't matter since this regulator is always on, but good
to have things described properly.

Reviewed-by: Douglas Anderson <dianders@chromium.org>
