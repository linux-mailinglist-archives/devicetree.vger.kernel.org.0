Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1952A77ED1B
	for <lists+devicetree@lfdr.de>; Thu, 17 Aug 2023 00:30:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346922AbjHPWaR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Aug 2023 18:30:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46630 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346924AbjHPW36 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Aug 2023 18:29:58 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E47211B2
        for <devicetree@vger.kernel.org>; Wed, 16 Aug 2023 15:29:56 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-31757edd9edso5860048f8f.2
        for <devicetree@vger.kernel.org>; Wed, 16 Aug 2023 15:29:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1692224994; x=1692829794;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ofsQzKETVgmfPHXQQZon3G3gLHq5Qa7KzbmqfjJ776Q=;
        b=X1GDi+zpGxSogh7EKTMyJOKuc40EwExE+FYAowWr3vp6cdUuWjXOzfjWZ3jJPi0E4e
         8dASNzEDF/YIK0IlmubZthVWsPp06UP5bDKg43hnTIwwhWxpTAn/Tio5ItbIqsODir8L
         aEhmX5q+EqHmY8qyZPPcmeydbZ80ctxKoCWOY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692224994; x=1692829794;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ofsQzKETVgmfPHXQQZon3G3gLHq5Qa7KzbmqfjJ776Q=;
        b=Fjww5jugkpUTzM8iHzykl0Ntjugi7g+B8nwxnINVlDfPUrqrwkFpmEiSYHBFcviFV6
         PRjbJeBQ9Am7Ya9R9BOSFOxK2W4Skig7Kj+e9hoKDQlAEPQ7AwE6RtmDOIemdvAHcnT1
         0UwaagIR7iZG5B8cszpYADiyJofJWSllqGsri8OLgaj5Z77Xnmhbuit8rqEJWugMjZeP
         9o+5D4wp4/a14mTa3jJkrwdNpp0qlM8ublnZ/sHQ94Ks6NNzwyE5TiTgCoh8Nhaz33hm
         +b9SqqHj+tvytKWzBFt+xEvFCQ9YQ6ZbdiorvE45G+ujOxZst2IEWLmeeBUJPr25xVYe
         dCpw==
X-Gm-Message-State: AOJu0YzbdnA2rEPw+KrovDMBvt7IpqcSbMEU0T+UN7PKhB2eN/o4b+nZ
        j6Vy3z33+gNXPHptx/NO8NpNuAGxIi512oTE1ZMgqS3b
X-Google-Smtp-Source: AGHT+IEdGt8V6PEP5dB94UBk0kdGx/kcJUlwbUJ5mLg7RlhuBI2ko53GALL7kumE6AFngTzOnug/3A==
X-Received: by 2002:a5d:6506:0:b0:317:e5dc:5cd0 with SMTP id x6-20020a5d6506000000b00317e5dc5cd0mr2190012wru.21.1692224994462;
        Wed, 16 Aug 2023 15:29:54 -0700 (PDT)
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com. [209.85.208.41])
        by smtp.gmail.com with ESMTPSA id q6-20020aa7d446000000b005234e6cc6d5sm8887507edr.90.2023.08.16.15.29.53
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Aug 2023 15:29:53 -0700 (PDT)
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5232ce75e26so2116a12.1
        for <devicetree@vger.kernel.org>; Wed, 16 Aug 2023 15:29:53 -0700 (PDT)
X-Received: by 2002:a50:cd02:0:b0:519:7d2:e256 with SMTP id
 z2-20020a50cd02000000b0051907d2e256mr43260edi.0.1692224993170; Wed, 16 Aug
 2023 15:29:53 -0700 (PDT)
MIME-Version: 1.0
References: <20230816060502.16789-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230816060502.16789-1-krzysztof.kozlowski@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 16 Aug 2023 15:29:40 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VGC6LgcMZBT=5ZQSB2Td3+B4qxyUMzNY0UrfCMHTy21A@mail.gmail.com>
Message-ID: <CAD=FV=VGC6LgcMZBT=5ZQSB2Td3+B4qxyUMzNY0UrfCMHTy21A@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: sc7280-crd: add Bluetooth VDDIO supply
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     cros-qcom-dts-watchers@chromium.org,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Aug 15, 2023 at 11:05=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> Bluetooth requires VDDIO supply and Doug Anderson suggested it is
> vreg_l18b_1p8.  Add one to satisfy `dtbs_check`:
>
>   sc7280-crd-r3.dtb: bluetooth: 'vddio-supply' is a required property
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>
> ---
>
> Changes in v2:
> 1. Use vreg_l18b_1p8 (Doug). Due to such change, don't add Rb tag.
> ---
>  arch/arm64/boot/dts/qcom/sc7280-crd-r3.dts | 4 ++++
>  1 file changed, 4 insertions(+)

Right. Previous discussion was at:

https://lore.kernel.org/r/CAD=3DFV=3DUMqrAU9cLy3Ew5o1MJyNDAAG2TY1mvMkY2-8ki=
w6qpjg@mail.gmail.com

Reviewed-by: Douglas Anderson <dianders@chromium.org>
