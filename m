Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F21206C5399
	for <lists+devicetree@lfdr.de>; Wed, 22 Mar 2023 19:21:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229873AbjCVSVo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Mar 2023 14:21:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45956 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229497AbjCVSVn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Mar 2023 14:21:43 -0400
Received: from mail-qv1-xf2e.google.com (mail-qv1-xf2e.google.com [IPv6:2607:f8b0:4864:20::f2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F05B65040
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 11:21:42 -0700 (PDT)
Received: by mail-qv1-xf2e.google.com with SMTP id q88so6469891qvq.13
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 11:21:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1679509299;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FQxrNvV0gZz9GBG9UF+uE91SUr0DwwB7YS1OCSsuFvs=;
        b=Z0rHDAhW5uMFYFcecmeTRcBDiZBM+WeMsUWfOIXJPbIX3i1o/xugEPf4oW1esDJeJ0
         Ao2buZM895FlWk+lnYyUXNTFKLabxgJ6sZ2xomw42WZOAmgpNU09DqKbw4InbEWC1yHh
         p1HOvgwthz7o7+Lb27sHdn7D7WaExWk06Cv54=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679509299;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FQxrNvV0gZz9GBG9UF+uE91SUr0DwwB7YS1OCSsuFvs=;
        b=Ye/Gp3gXUycyOm6xlsBmVFML27hIMoQ6SIizfl0tjrlAo9IgPthuxUsLd9TvuenXyv
         e24xZyE3zkIr5CIkxkgi1niL3fTTpthQclms8NAKzkRFdOQhsyV3IqHoRXLY1SJ4+OIY
         riooaVgm9LY8HNvDLm+2J2S87k5F4zsa7w9Xk5Uk2jT01SL9KK0LP6T7L8QxocAVpeAA
         nl/isHSVsHWSHPXM4ISlm5Y+gyYMmDc3N43I+jKQXhO4NFv2knd84/5Mubt5PmwXGdXZ
         qevImGxF2ZsGT/JTy46iw0+QinXVu4tITuMTd57jvLpt8lMmI/g69fB5xYWHePcaO2NS
         8MFQ==
X-Gm-Message-State: AO0yUKVdKe/evuhOh0C5KhNU8NEF1bZCqPMlULiQotVtBu2/CcuNg56x
        fjrLTqjZexpDH6AK36DutbTsWOYJaNXY7YddOHE=
X-Google-Smtp-Source: AK7set8jv4Gv4fqC9ZmvudE0Dyqe/w8pwoakbebiwmQFqzhakh1A8BSVdRtcTFnnjGCHYq3490a9AA==
X-Received: by 2002:a05:6214:76e:b0:5b7:f1cb:74b6 with SMTP id f14-20020a056214076e00b005b7f1cb74b6mr8138764qvz.39.1679509298955;
        Wed, 22 Mar 2023 11:21:38 -0700 (PDT)
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com. [209.85.219.177])
        by smtp.gmail.com with ESMTPSA id s189-20020a372cc6000000b007429961e15csm11992320qkh.118.2023.03.22.11.21.37
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Mar 2023 11:21:38 -0700 (PDT)
Received: by mail-yb1-f177.google.com with SMTP id n125so22063379ybg.7
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 11:21:37 -0700 (PDT)
X-Received: by 2002:a05:6902:1081:b0:b21:a3b8:45cd with SMTP id
 v1-20020a056902108100b00b21a3b845cdmr549657ybu.0.1679509297542; Wed, 22 Mar
 2023 11:21:37 -0700 (PDT)
MIME-Version: 1.0
References: <20230220095401.64196-1-krzysztof.kozlowski@linaro.org> <20230220095401.64196-2-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230220095401.64196-2-krzysztof.kozlowski@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 22 Mar 2023 11:21:25 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XzU+TzHdsdruH_TaCVpwhsHBWPn9LMMTUORVPL08VyfA@mail.gmail.com>
Message-ID: <CAD=FV=XzU+TzHdsdruH_TaCVpwhsHBWPn9LMMTUORVPL08VyfA@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sc7280-qcard: drop incorrect
 dai-cells from WCD938x SDW
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>,
        Venkata Prasad Potturu <quic_potturu@quicinc.com>,
        Matthias Kaehlcke <mka@chromium.org>,
        Judy Hsiao <judyhsiao@chromium.org>
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

On Mon, Feb 20, 2023 at 1:54=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> The WCD938x audio codec Soundwire interface part is not a DAI and does
> not allow sound-dai-cells:
>
>   sc7280-herobrine-crd.dtb: codec@0,4: '#sound-dai-cells' does not match =
any of the regexes: 'pinctrl-[0-9]+'
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7280-qcard.dtsi | 2 --
>  1 file changed, 2 deletions(-)

Like with patch #1, I'm pretty soundwire ignorant but this looks right to m=
e.

Reviewed-by: Douglas Anderson <dianders@chromium.org>

Seems like folks who were involved in landing the patch that
originally added those properties should be CCed on this, though.
Adding them.

-Doug
